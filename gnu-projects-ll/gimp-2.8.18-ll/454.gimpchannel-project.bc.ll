; ModuleID = './app/core/gimpchannel-project.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_channel_project_region(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height, %struct._PixelRegion* %projPR, i32 %combine) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %projPR.addr = alloca %struct._PixelRegion*, align 8
  %combine.addr = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %temp_tiles = alloca %struct._TileManager*, align 8
  %col = alloca [3 x i8], align 1
  %opacity = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._PixelRegion* %projPR, %struct._PixelRegion** %projPR.addr, align 8
  store i32 %combine, i32* %combine.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 1
  %arrayidx3 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 2
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx, i8* %arrayidx2, i8* %arrayidx3, i8* %opacity)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_init_src_region(%struct._GimpDrawable* %4, %struct._PixelRegion* %srcPR, i32 %5, i32 %6, i32 %7, i32 %8, %struct._TileManager** %temp_tiles)
  %9 = load i32, i32* %combine.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i32 0
  %12 = load i8, i8* %opacity, align 1
  %conv = zext i8 %12 to i32
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call4 = call i32 @gimp_channel_get_show_masked(%struct._GimpChannel* %13)
  %tobool5 = icmp ne i32 %call4, 0
  %cond = select i1 %tobool5, i32 6, i32 7
  call void @combine_regions(%struct._PixelRegion* %10, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %11, %struct._PixelRegion* null, i8* %arraydecay, i32 %conv, i32 0, i32* null, i32 %cond)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i32 0
  %15 = load i8, i8* %opacity, align 1
  %conv7 = zext i8 %15 to i32
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call8 = call i32 @gimp_channel_get_show_masked(%struct._GimpChannel* %16)
  %tobool9 = icmp ne i32 %call8, 0
  %cond10 = select i1 %tobool9, i32 0, i32 1
  call void @initial_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %14, %struct._PixelRegion* null, i8* %arraydecay6, i32 %conv7, i32 0, i32* null, i32 %cond10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._TileManager*, %struct._TileManager** %temp_tiles, align 8
  %tobool11 = icmp ne %struct._TileManager* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %18 = load %struct._TileManager*, %struct._TileManager** %temp_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_drawable_init_src_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i32, i32, i32, %struct._TileManager**) #1

declare void @combine_regions(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #1

declare i32 @gimp_channel_get_show_masked(%struct._GimpChannel*) #1

declare void @initial_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
