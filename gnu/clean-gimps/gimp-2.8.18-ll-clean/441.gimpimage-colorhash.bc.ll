; ModuleID = './app/core/gimpimage-colorhash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ColorHash = type { i32, i32, %struct._GimpImage* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque

@color_hash_table = internal global [1021 x %struct._ColorHash] zeroinitializer, align 16
@color_hash_misses = internal global i32 0, align 4
@color_hash_hits = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_color_hash_invalidate = private unnamed_addr constant [33 x i8] c"gimp_image_color_hash_invalidate\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_color_hash_init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1021
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom
  %pixel = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx, i32 0, i32 0
  store i32 0, i32* %pixel, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom1
  %index = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %index, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom3
  %image = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx4, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @color_hash_misses, align 4
  store i32 0, i32* @color_hash_hits, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_color_hash_exit() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_color_hash_invalidate(%struct._GimpImage* %image, i32 %index) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_color_hash_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.53

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %index.addr, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then.12, label %if.else.26

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %14 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %14, 1021
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom
  %image14 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image14, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp15 = icmp eq %struct._GimpImage* %16, %17
  br i1 %cmp15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom17
  %pixel = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx18, i32 0, i32 0
  store i32 0, i32* %pixel, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom19
  %index21 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx20, i32 0, i32 1
  store i32 0, i32* %index21, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom22
  %image24 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx23, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else.26:                                       ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.50, %if.else.26
  %22 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %22, 1021
  br i1 %cmp28, label %for.body.29, label %for.end.52

for.body.29:                                      ; preds = %for.cond.27
  %23 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom30
  %image32 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx31, i32 0, i32 2
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image32, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp33 = icmp eq %struct._GimpImage* %24, %25
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.49

land.lhs.true.34:                                 ; preds = %for.body.29
  %26 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom35
  %index37 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx36, i32 0, i32 1
  %27 = load i32, i32* %index37, align 4
  %28 = load i32, i32* %index.addr, align 4
  %cmp38 = icmp eq i32 %27, %28
  br i1 %cmp38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %land.lhs.true.34
  %29 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom40
  %pixel42 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx41, i32 0, i32 0
  store i32 0, i32* %pixel42, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom43
  %index45 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx44, i32 0, i32 1
  store i32 0, i32* %index45, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom46
  %image48 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx47, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %land.lhs.true.34, %for.body.29
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %32 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %32, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.27

for.end.52:                                       ; preds = %for.cond.27
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.9, %for.end.52, %for.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_color_hash_rgb_to_indexed(%struct._GimpImage* %image, i32 %r, i32 %g, i32 %b) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %num_cols = alloca i32, align 4
  %pixel = alloca i32, align 4
  %hash_index = alloca i32, align 4
  %cmap_index = alloca i32, align 4
  %col = alloca i8*, align 8
  %diff = alloca i32, align 4
  %sum = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gimp_image_get_colormap(%struct._GimpImage* %0)
  store i8* %call, i8** %cmap, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %1)
  store i32 %call1, i32* %num_cols, align 4
  %2 = load i32, i32* %r.addr, align 4
  %shl = shl i32 %2, 16
  %3 = load i32, i32* %g.addr, align 4
  %shl2 = shl i32 %3, 8
  %or = or i32 %shl, %shl2
  %4 = load i32, i32* %b.addr, align 4
  %or3 = or i32 %or, %4
  store i32 %or3, i32* %pixel, align 4
  %5 = load i32, i32* %pixel, align 4
  %rem = urem i32 %5, 1021
  store i32 %rem, i32* %hash_index, align 4
  %6 = load i32, i32* %hash_index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom
  %image4 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx, i32 0, i32 2
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %hash_index, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom5
  %pixel7 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx6, i32 0, i32 0
  %10 = load i32, i32* %pixel7, align 4
  %11 = load i32, i32* %pixel, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %hash_index, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom9
  %index = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx10, i32 0, i32 1
  %13 = load i32, i32* %index, align 4
  store i32 %13, i32* %cmap_index, align 4
  %14 = load i32, i32* @color_hash_hits, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @color_hash_hits, align 4
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 195076, i32* %max, align 4
  store i32 0, i32* %cmap_index, align 4
  %15 = load i8*, i8** %cmap, align 8
  store i8* %15, i8** %col, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %num_cols, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %r.addr, align 4
  %19 = load i8*, i8** %col, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %col, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  %sub = sub nsw i32 %18, %conv
  store i32 %sub, i32* %diff, align 4
  %21 = load i32, i32* %diff, align 4
  %22 = load i32, i32* %diff, align 4
  %mul = mul nsw i32 %21, %22
  store i32 %mul, i32* %sum, align 4
  %23 = load i32, i32* %g.addr, align 4
  %24 = load i8*, i8** %col, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr12, i8** %col, align 8
  %25 = load i8, i8* %24, align 1
  %conv13 = zext i8 %25 to i32
  %sub14 = sub nsw i32 %23, %conv13
  store i32 %sub14, i32* %diff, align 4
  %26 = load i32, i32* %diff, align 4
  %27 = load i32, i32* %diff, align 4
  %mul15 = mul nsw i32 %26, %27
  %28 = load i32, i32* %sum, align 4
  %add = add nsw i32 %28, %mul15
  store i32 %add, i32* %sum, align 4
  %29 = load i32, i32* %b.addr, align 4
  %30 = load i8*, i8** %col, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr16, i8** %col, align 8
  %31 = load i8, i8* %30, align 1
  %conv17 = zext i8 %31 to i32
  %sub18 = sub nsw i32 %29, %conv17
  store i32 %sub18, i32* %diff, align 4
  %32 = load i32, i32* %diff, align 4
  %33 = load i32, i32* %diff, align 4
  %mul19 = mul nsw i32 %32, %33
  %34 = load i32, i32* %sum, align 4
  %add20 = add nsw i32 %34, %mul19
  store i32 %add20, i32* %sum, align 4
  %35 = load i32, i32* %sum, align 4
  %36 = load i32, i32* %max, align 4
  %cmp21 = icmp slt i32 %35, %36
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  store i32 %37, i32* %cmap_index, align 4
  %38 = load i32, i32* %sum, align 4
  store i32 %38, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %39, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %pixel, align 4
  %41 = load i32, i32* %hash_index, align 4
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom25
  %pixel27 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx26, i32 0, i32 0
  store i32 %40, i32* %pixel27, align 4
  %42 = load i32, i32* %cmap_index, align 4
  %43 = load i32, i32* %hash_index, align 4
  %idxprom28 = sext i32 %43 to i64
  %arrayidx29 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom28
  %index30 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx29, i32 0, i32 1
  store i32 %42, i32* %index30, align 4
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %45 = load i32, i32* %hash_index, align 4
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds [1021 x %struct._ColorHash], [1021 x %struct._ColorHash]* @color_hash_table, i32 0, i64 %idxprom31
  %image33 = getelementptr inbounds %struct._ColorHash, %struct._ColorHash* %arrayidx32, i32 0, i32 2
  store %struct._GimpImage* %44, %struct._GimpImage** %image33, align 8
  %46 = load i32, i32* @color_hash_misses, align 4
  %inc34 = add nsw i32 %46, 1
  store i32 %inc34, i32* @color_hash_misses, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.then
  %47 = load i32, i32* %cmap_index, align 4
  ret i32 %47
}

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #3

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
