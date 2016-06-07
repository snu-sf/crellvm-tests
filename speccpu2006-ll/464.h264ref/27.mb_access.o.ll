; ModuleID = 'mb_access.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [40 x i8] c"getNeighbour: invalid macroblock number\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mb_is_available(i32 %mbAddr, i32 %currMbAddr) #0 {
entry:
  %retval = alloca i32, align 4
  %mbAddr.addr = alloca i32, align 4
  %currMbAddr.addr = alloca i32, align 4
  store i32 %mbAddr, i32* %mbAddr.addr, align 4
  store i32 %currMbAddr, i32* %currMbAddr.addr, align 4
  %0 = load i32, i32* %mbAddr.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mbAddr.addr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 110
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %sub = sub nsw i32 %3, 1
  %cmp1 = icmp sgt i32 %1, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 143
  %5 = load i32, i32* %DeblockCall, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.10, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %mbAddr.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 51
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 1
  %9 = load i32, i32* %slice_nr, align 4
  %10 = load i32, i32* %currMbAddr.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 51
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom3
  %slice_nr6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx5, i32 0, i32 1
  %13 = load i32, i32* %slice_nr6, align 4
  %cmp7 = icmp ne i32 %9, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @CheckAvailabilityOfNeighbors() #0 {
entry:
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 51
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 6
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up, align 8
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 7
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 90
  %8 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mb_nr, align 4
  %div = sdiv i32 %9, 2
  %sub = sub nsw i32 %div, 1
  %mul = mul nsw i32 2, %sub
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 23
  store i32 %mul, i32* %mbAddrA, align 4
  %11 = load i32, i32* %mb_nr, align 4
  %div1 = sdiv i32 %11, 2
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 106
  %13 = load i32, i32* %PicWidthInMbs, align 4
  %sub2 = sub i32 %div1, %13
  %mul3 = mul i32 2, %sub2
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 24
  store i32 %mul3, i32* %mbAddrB, align 4
  %15 = load i32, i32* %mb_nr, align 4
  %div4 = sdiv i32 %15, 2
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 106
  %17 = load i32, i32* %PicWidthInMbs5, align 4
  %sub6 = sub i32 %div4, %17
  %add = add i32 %sub6, 1
  %mul7 = mul i32 2, %add
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 25
  store i32 %mul7, i32* %mbAddrC, align 4
  %19 = load i32, i32* %mb_nr, align 4
  %div8 = sdiv i32 %19, 2
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 106
  %21 = load i32, i32* %PicWidthInMbs9, align 4
  %sub10 = sub i32 %div8, %21
  %sub11 = sub i32 %sub10, 1
  %mul12 = mul i32 2, %sub11
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 26
  store i32 %mul12, i32* %mbAddrD, align 4
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 23
  %24 = load i32, i32* %mbAddrA13, align 4
  %25 = load i32, i32* %mb_nr, align 4
  %call = call i32 @mb_is_available(i32 %24, i32 %25)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %26 = load i32, i32* %mb_nr, align 4
  %div15 = sdiv i32 %26, 2
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 106
  %28 = load i32, i32* %PicWidthInMbs16, align 4
  %rem = urem i32 %div15, %28
  %cmp = icmp ne i32 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %29 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  %30 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 27
  store i32 %land.ext, i32* %mbAvailA, align 4
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 24
  %32 = load i32, i32* %mbAddrB17, align 4
  %33 = load i32, i32* %mb_nr, align 4
  %call18 = call i32 @mb_is_available(i32 %32, i32 %33)
  %34 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 28
  store i32 %call18, i32* %mbAvailB, align 4
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 25
  %36 = load i32, i32* %mbAddrC19, align 4
  %37 = load i32, i32* %mb_nr, align 4
  %call20 = call i32 @mb_is_available(i32 %36, i32 %37)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.28

land.rhs.22:                                      ; preds = %land.end
  %38 = load i32, i32* %mb_nr, align 4
  %div23 = sdiv i32 %38, 2
  %add24 = add nsw i32 %div23, 1
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 106
  %40 = load i32, i32* %PicWidthInMbs25, align 4
  %rem26 = urem i32 %add24, %40
  %cmp27 = icmp ne i32 %rem26, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.22, %land.end
  %41 = phi i1 [ false, %land.end ], [ %cmp27, %land.rhs.22 ]
  %land.ext29 = zext i1 %41 to i32
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 29
  store i32 %land.ext29, i32* %mbAvailC, align 4
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 26
  %44 = load i32, i32* %mbAddrD30, align 4
  %45 = load i32, i32* %mb_nr, align 4
  %call31 = call i32 @mb_is_available(i32 %44, i32 %45)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.rhs.33, label %land.end.38

land.rhs.33:                                      ; preds = %land.end.28
  %46 = load i32, i32* %mb_nr, align 4
  %div34 = sdiv i32 %46, 2
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 106
  %48 = load i32, i32* %PicWidthInMbs35, align 4
  %rem36 = urem i32 %div34, %48
  %cmp37 = icmp ne i32 %rem36, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.33, %land.end.28
  %49 = phi i1 [ false, %land.end.28 ], [ %cmp37, %land.rhs.33 ]
  %land.ext39 = zext i1 %49 to i32
  %50 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 30
  store i32 %land.ext39, i32* %mbAvailD, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %51 = load i32, i32* %mb_nr, align 4
  %sub40 = sub nsw i32 %51, 1
  %52 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 23
  store i32 %sub40, i32* %mbAddrA41, align 4
  %53 = load i32, i32* %mb_nr, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 106
  %55 = load i32, i32* %PicWidthInMbs42, align 4
  %sub43 = sub i32 %53, %55
  %56 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 24
  store i32 %sub43, i32* %mbAddrB44, align 4
  %57 = load i32, i32* %mb_nr, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 106
  %59 = load i32, i32* %PicWidthInMbs45, align 4
  %sub46 = sub i32 %57, %59
  %add47 = add i32 %sub46, 1
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 25
  store i32 %add47, i32* %mbAddrC48, align 4
  %61 = load i32, i32* %mb_nr, align 4
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 106
  %63 = load i32, i32* %PicWidthInMbs49, align 4
  %sub50 = sub i32 %61, %63
  %sub51 = sub i32 %sub50, 1
  %64 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 26
  store i32 %sub51, i32* %mbAddrD52, align 4
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 23
  %66 = load i32, i32* %mbAddrA53, align 4
  %67 = load i32, i32* %mb_nr, align 4
  %call54 = call i32 @mb_is_available(i32 %66, i32 %67)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.rhs.56, label %land.end.60

land.rhs.56:                                      ; preds = %if.else
  %68 = load i32, i32* %mb_nr, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 106
  %70 = load i32, i32* %PicWidthInMbs57, align 4
  %rem58 = urem i32 %68, %70
  %cmp59 = icmp ne i32 %rem58, 0
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.56, %if.else
  %71 = phi i1 [ false, %if.else ], [ %cmp59, %land.rhs.56 ]
  %land.ext61 = zext i1 %71 to i32
  %72 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %72, i32 0, i32 27
  store i32 %land.ext61, i32* %mbAvailA62, align 4
  %73 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB63 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %73, i32 0, i32 24
  %74 = load i32, i32* %mbAddrB63, align 4
  %75 = load i32, i32* %mb_nr, align 4
  %call64 = call i32 @mb_is_available(i32 %74, i32 %75)
  %76 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %76, i32 0, i32 28
  store i32 %call64, i32* %mbAvailB65, align 4
  %77 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC66 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 25
  %78 = load i32, i32* %mbAddrC66, align 4
  %79 = load i32, i32* %mb_nr, align 4
  %call67 = call i32 @mb_is_available(i32 %78, i32 %79)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %land.rhs.69, label %land.end.74

land.rhs.69:                                      ; preds = %land.end.60
  %80 = load i32, i32* %mb_nr, align 4
  %add70 = add nsw i32 %80, 1
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 106
  %82 = load i32, i32* %PicWidthInMbs71, align 4
  %rem72 = urem i32 %add70, %82
  %cmp73 = icmp ne i32 %rem72, 0
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.69, %land.end.60
  %83 = phi i1 [ false, %land.end.60 ], [ %cmp73, %land.rhs.69 ]
  %land.ext75 = zext i1 %83 to i32
  %84 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC76 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 29
  store i32 %land.ext75, i32* %mbAvailC76, align 4
  %85 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %85, i32 0, i32 26
  %86 = load i32, i32* %mbAddrD77, align 4
  %87 = load i32, i32* %mb_nr, align 4
  %call78 = call i32 @mb_is_available(i32 %86, i32 %87)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %land.rhs.80, label %land.end.84

land.rhs.80:                                      ; preds = %land.end.74
  %88 = load i32, i32* %mb_nr, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 106
  %90 = load i32, i32* %PicWidthInMbs81, align 4
  %rem82 = urem i32 %88, %90
  %cmp83 = icmp ne i32 %rem82, 0
  br label %land.end.84

land.end.84:                                      ; preds = %land.rhs.80, %land.end.74
  %91 = phi i1 [ false, %land.end.74 ], [ %cmp83, %land.rhs.80 ]
  %land.ext85 = zext i1 %91 to i32
  %92 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD86 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %92, i32 0, i32 30
  store i32 %land.ext85, i32* %mbAvailD86, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.84, %land.end.38
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 27
  %94 = load i32, i32* %mbAvailA87, align 4
  %tobool88 = icmp ne i32 %94, 0
  br i1 %tobool88, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end
  %95 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 23
  %96 = load i32, i32* %mbAddrA90, align 4
  %idxprom91 = sext i32 %96 to i64
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 51
  %98 = load %struct.macroblock*, %struct.macroblock** %mb_data92, align 8
  %arrayidx93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %98, i64 %idxprom91
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 7
  store %struct.macroblock* %arrayidx93, %struct.macroblock** %mb_available_left94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.89, %if.end
  %100 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 28
  %101 = load i32, i32* %mbAvailB96, align 4
  %tobool97 = icmp ne i32 %101, 0
  br i1 %tobool97, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %if.end.95
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB99 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 24
  %103 = load i32, i32* %mbAddrB99, align 4
  %idxprom100 = sext i32 %103 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 51
  %105 = load %struct.macroblock*, %struct.macroblock** %mb_data101, align 8
  %arrayidx102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i64 %idxprom100
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up103 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 6
  store %struct.macroblock* %arrayidx102, %struct.macroblock** %mb_available_up103, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.98, %if.end.95
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_block_pos(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 90
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %mb_addr.addr, align 4
  %div = sdiv i32 %2, 2
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 106
  %4 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %div, %4
  %5 = load i32*, i32** %x.addr, align 8
  store i32 %rem, i32* %5, align 4
  %6 = load i32, i32* %mb_addr.addr, align 4
  %div1 = sdiv i32 %6, 2
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 106
  %8 = load i32, i32* %PicWidthInMbs2, align 4
  %div3 = udiv i32 %div1, %8
  %mul = mul i32 %div3, 2
  %9 = load i32, i32* %mb_addr.addr, align 4
  %rem4 = srem i32 %9, 2
  %add = add i32 %mul, %rem4
  %10 = load i32*, i32** %y.addr, align 8
  store i32 %add, i32* %10, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %mb_addr.addr, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 106
  %13 = load i32, i32* %PicWidthInMbs5, align 4
  %rem6 = urem i32 %11, %13
  %14 = load i32*, i32** %x.addr, align 8
  store i32 %rem6, i32* %14, align 4
  %15 = load i32, i32* %mb_addr.addr, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 106
  %17 = load i32, i32* %PicWidthInMbs7, align 4
  %div8 = udiv i32 %15, %17
  %18 = load i32*, i32** %y.addr, align 8
  store i32 %div8, i32* %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_pos(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %mb_addr.addr, align 4
  %1 = load i32*, i32** %x.addr, align 8
  %2 = load i32*, i32** %y.addr, align 8
  call void @get_mb_block_pos(i32 %0, i32* %1, i32* %2)
  %3 = load i32*, i32** %x.addr, align 8
  %4 = load i32, i32* %3, align 4
  %mul = mul nsw i32 %4, 16
  store i32 %mul, i32* %3, align 4
  %5 = load i32*, i32** %y.addr, align 8
  %6 = load i32, i32* %5, align 4
  %mul1 = mul nsw i32 %6, 16
  store i32 %mul1, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %luma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %luma, i32* %luma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 51
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  %3 = load i32, i32* %luma.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 16, i32* %maxW, align 4
  store i32 16, i32* %maxH, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 161
  %5 = load i32, i32* %mb_cr_size_x, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 162
  %7 = load i32, i32* %mb_cr_size_y, align 4
  store i32 %7, i32* %maxH, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %xN.addr, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.3

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %yN.addr, align 4
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %land.lhs.true
  %10 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 26
  %11 = load i32, i32* %mbAddrD, align 4
  %12 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %12, i32 0, i32 1
  store i32 %11, i32* %mb_addr, align 4
  %13 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 30
  %14 = load i32, i32* %mbAvailD, align 4
  %15 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %15, i32 0, i32 0
  store i32 %14, i32* %available, align 4
  br label %if.end.45

if.else.3:                                        ; preds = %land.lhs.true, %if.end
  %16 = load i32, i32* %xN.addr, align 4
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else.12

land.lhs.true.5:                                  ; preds = %if.else.3
  %17 = load i32, i32* %yN.addr, align 4
  %cmp6 = icmp sge i32 %17, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.else.12

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %18 = load i32, i32* %yN.addr, align 4
  %19 = load i32, i32* %maxH, align 4
  %cmp8 = icmp slt i32 %18, %19
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %20 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 23
  %21 = load i32, i32* %mbAddrA, align 4
  %22 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr10 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %22, i32 0, i32 1
  store i32 %21, i32* %mb_addr10, align 4
  %23 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 27
  %24 = load i32, i32* %mbAvailA, align 4
  %25 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available11 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %25, i32 0, i32 0
  store i32 %24, i32* %available11, align 4
  br label %if.end.44

if.else.12:                                       ; preds = %land.lhs.true.7, %land.lhs.true.5, %if.else.3
  %26 = load i32, i32* %xN.addr, align 4
  %cmp13 = icmp sge i32 %26, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.21

land.lhs.true.14:                                 ; preds = %if.else.12
  %27 = load i32, i32* %xN.addr, align 4
  %28 = load i32, i32* %maxW, align 4
  %cmp15 = icmp slt i32 %27, %28
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.21

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %29 = load i32, i32* %yN.addr, align 4
  %cmp17 = icmp slt i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %land.lhs.true.16
  %30 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 24
  %31 = load i32, i32* %mbAddrB, align 4
  %32 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %32, i32 0, i32 1
  store i32 %31, i32* %mb_addr19, align 4
  %33 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 28
  %34 = load i32, i32* %mbAvailB, align 4
  %35 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %35, i32 0, i32 0
  store i32 %34, i32* %available20, align 4
  br label %if.end.43

if.else.21:                                       ; preds = %land.lhs.true.16, %land.lhs.true.14, %if.else.12
  %36 = load i32, i32* %xN.addr, align 4
  %cmp22 = icmp sge i32 %36, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.32

land.lhs.true.23:                                 ; preds = %if.else.21
  %37 = load i32, i32* %xN.addr, align 4
  %38 = load i32, i32* %maxW, align 4
  %cmp24 = icmp slt i32 %37, %38
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.32

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %39 = load i32, i32* %yN.addr, align 4
  %cmp26 = icmp sge i32 %39, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %40 = load i32, i32* %yN.addr, align 4
  %41 = load i32, i32* %maxH, align 4
  %cmp28 = icmp slt i32 %40, %41
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %land.lhs.true.27
  %42 = load i32, i32* %curr_mb_nr.addr, align 4
  %43 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %43, i32 0, i32 1
  store i32 %42, i32* %mb_addr30, align 4
  %44 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %44, i32 0, i32 0
  store i32 1, i32* %available31, align 4
  br label %if.end.42

if.else.32:                                       ; preds = %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true.23, %if.else.21
  %45 = load i32, i32* %xN.addr, align 4
  %46 = load i32, i32* %maxW, align 4
  %cmp33 = icmp sge i32 %45, %46
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.32
  %47 = load i32, i32* %yN.addr, align 4
  %cmp35 = icmp slt i32 %47, 0
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %land.lhs.true.34
  %48 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 25
  %49 = load i32, i32* %mbAddrC, align 4
  %50 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr37 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %50, i32 0, i32 1
  store i32 %49, i32* %mb_addr37, align 4
  %51 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 29
  %52 = load i32, i32* %mbAvailC, align 4
  %53 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available38 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %53, i32 0, i32 0
  store i32 %52, i32* %available38, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.32
  %54 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available40 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %54, i32 0, i32 0
  store i32 0, i32* %available40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.18
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.9
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.2
  %55 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %55, i32 0, i32 0
  %56 = load i32, i32* %available46, align 4
  %tobool47 = icmp ne i32 %56, 0
  br i1 %tobool47, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 143
  %58 = load i32, i32* %DeblockCall, align 4
  %tobool48 = icmp ne i32 %58, 0
  br i1 %tobool48, label %if.then.49, label %if.end.76

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.45
  %59 = load i32, i32* %xN.addr, align 4
  %60 = load i32, i32* %maxW, align 4
  %add = add nsw i32 %59, %60
  %61 = load i32, i32* %maxW, align 4
  %rem = srem i32 %add, %61
  %62 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %62, i32 0, i32 2
  store i32 %rem, i32* %x, align 4
  %63 = load i32, i32* %yN.addr, align 4
  %64 = load i32, i32* %maxH, align 4
  %add50 = add nsw i32 %63, %64
  %65 = load i32, i32* %maxH, align 4
  %rem51 = srem i32 %add50, %65
  %66 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %66, i32 0, i32 3
  store i32 %rem51, i32* %y, align 4
  %67 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %67, i32 0, i32 1
  %68 = load i32, i32* %mb_addr52, align 4
  %69 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %69, i32 0, i32 4
  %70 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %70, i32 0, i32 5
  call void @get_mb_pos(i32 %68, i32* %pos_x, i32* %pos_y)
  %71 = load i32, i32* %luma.addr, align 4
  %tobool53 = icmp ne i32 %71, 0
  br i1 %tobool53, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.then.49
  %72 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x55 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %72, i32 0, i32 2
  %73 = load i32, i32* %x55, align 4
  %74 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x56 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %74, i32 0, i32 4
  %75 = load i32, i32* %pos_x56, align 4
  %add57 = add nsw i32 %75, %73
  store i32 %add57, i32* %pos_x56, align 4
  %76 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y58 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %76, i32 0, i32 3
  %77 = load i32, i32* %y58, align 4
  %78 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %78, i32 0, i32 5
  %79 = load i32, i32* %pos_y59, align 4
  %add60 = add nsw i32 %79, %77
  store i32 %add60, i32* %pos_y59, align 4
  br label %if.end.75

if.else.61:                                       ; preds = %if.then.49
  %80 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %80, i32 0, i32 4
  %81 = load i32, i32* %pos_x62, align 4
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 161
  %83 = load i32, i32* %mb_cr_size_x63, align 4
  %div = sdiv i32 16, %83
  %div64 = sdiv i32 %81, %div
  %84 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x65 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %84, i32 0, i32 2
  %85 = load i32, i32* %x65, align 4
  %add66 = add nsw i32 %div64, %85
  %86 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %86, i32 0, i32 4
  store i32 %add66, i32* %pos_x67, align 4
  %87 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y68 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %87, i32 0, i32 5
  %88 = load i32, i32* %pos_y68, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 162
  %90 = load i32, i32* %mb_cr_size_y69, align 4
  %div70 = sdiv i32 16, %90
  %div71 = sdiv i32 %88, %div70
  %91 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y72 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %91, i32 0, i32 3
  %92 = load i32, i32* %y72, align 4
  %add73 = add nsw i32 %div71, %92
  %93 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y74 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %93, i32 0, i32 5
  store i32 %add73, i32* %pos_y74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.61, %if.then.54
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %luma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  %yM = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %luma, i32* %luma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 51
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  store i32 -1, i32* %yM, align 4
  %3 = load i32, i32* %luma.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 16, i32* %maxW, align 4
  store i32 16, i32* %maxH, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 161
  %5 = load i32, i32* %mb_cr_size_x, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 162
  %7 = load i32, i32* %mb_cr_size_y, align 4
  store i32 %7, i32* %maxH, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %8, i32 0, i32 0
  store i32 0, i32* %available, align 4
  %9 = load i32, i32* %yN.addr, align 4
  %10 = load i32, i32* %maxH, align 4
  %sub = sub nsw i32 %10, 1
  %cmp = icmp sgt i32 %9, %sub
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %if.end.376

if.end.2:                                         ; preds = %if.end
  %11 = load i32, i32* %xN.addr, align 4
  %12 = load i32, i32* %maxW, align 4
  %sub3 = sub nsw i32 %12, 1
  %cmp4 = icmp sgt i32 %11, %sub3
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.2
  %13 = load i32, i32* %yN.addr, align 4
  %cmp5 = icmp sge i32 %13, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %yN.addr, align 4
  %15 = load i32, i32* %maxH, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  br label %if.end.376

if.end.9:                                         ; preds = %land.lhs.true.6, %land.lhs.true, %if.end.2
  %16 = load i32, i32* %xN.addr, align 4
  %cmp10 = icmp slt i32 %16, 0
  br i1 %cmp10, label %if.then.11, label %if.else.203

if.then.11:                                       ; preds = %if.end.9
  %17 = load i32, i32* %yN.addr, align 4
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.else.69

if.then.13:                                       ; preds = %if.then.11
  %18 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 22
  %19 = load i32, i32* %mb_field, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.else.38, label %if.then.15

if.then.15:                                       ; preds = %if.then.13
  %20 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem = urem i32 %20, 2
  %cmp16 = icmp eq i32 %rem, 0
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.then.15
  %21 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 26
  %22 = load i32, i32* %mbAddrD, align 4
  %add = add nsw i32 %22, 1
  %23 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %23, i32 0, i32 1
  store i32 %add, i32* %mb_addr, align 4
  %24 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 30
  %25 = load i32, i32* %mbAvailD, align 4
  %26 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available18 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %26, i32 0, i32 0
  store i32 %25, i32* %available18, align 4
  %27 = load i32, i32* %yN.addr, align 4
  store i32 %27, i32* %yM, align 4
  br label %if.end.37

if.else.19:                                       ; preds = %if.then.15
  %28 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i32 0, i32 23
  %29 = load i32, i32* %mbAddrA, align 4
  %30 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %30, i32 0, i32 1
  store i32 %29, i32* %mb_addr20, align 4
  %31 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 27
  %32 = load i32, i32* %mbAvailA, align 4
  %33 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available21 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %33, i32 0, i32 0
  store i32 %32, i32* %available21, align 4
  %34 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 27
  %35 = load i32, i32* %mbAvailA22, align 4
  %tobool23 = icmp ne i32 %35, 0
  br i1 %tobool23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.else.19
  %36 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 23
  %37 = load i32, i32* %mbAddrA25, align 4
  %idxprom26 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 51
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_data27, align 8
  %arrayidx28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i64 %idxprom26
  %mb_field29 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx28, i32 0, i32 22
  %40 = load i32, i32* %mb_field29, align 4
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.24
  %41 = load i32, i32* %yN.addr, align 4
  store i32 %41, i32* %yM, align 4
  br label %if.end.35

if.else.32:                                       ; preds = %if.then.24
  %42 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr33 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %42, i32 0, i32 1
  %43 = load i32, i32* %mb_addr33, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %mb_addr33, align 4
  %44 = load i32, i32* %yN.addr, align 4
  %45 = load i32, i32* %maxH, align 4
  %add34 = add nsw i32 %44, %45
  %shr = ashr i32 %add34, 1
  store i32 %shr, i32* %yM, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else.19
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.17
  br label %if.end.68

if.else.38:                                       ; preds = %if.then.13
  %46 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem39 = urem i32 %46, 2
  %cmp40 = icmp eq i32 %rem39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.61

if.then.41:                                       ; preds = %if.else.38
  %47 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 26
  %48 = load i32, i32* %mbAddrD42, align 4
  %49 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr43 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %49, i32 0, i32 1
  store i32 %48, i32* %mb_addr43, align 4
  %50 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 30
  %51 = load i32, i32* %mbAvailD44, align 4
  %52 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %52, i32 0, i32 0
  store i32 %51, i32* %available45, align 4
  %53 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %53, i32 0, i32 30
  %54 = load i32, i32* %mbAvailD46, align 4
  %tobool47 = icmp ne i32 %54, 0
  br i1 %tobool47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %if.then.41
  %55 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 26
  %56 = load i32, i32* %mbAddrD49, align 4
  %idxprom50 = sext i32 %56 to i64
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 51
  %58 = load %struct.macroblock*, %struct.macroblock** %mb_data51, align 8
  %arrayidx52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i64 %idxprom50
  %mb_field53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx52, i32 0, i32 22
  %59 = load i32, i32* %mb_field53, align 4
  %tobool54 = icmp ne i32 %59, 0
  br i1 %tobool54, label %if.else.58, label %if.then.55

if.then.55:                                       ; preds = %if.then.48
  %60 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr56 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %60, i32 0, i32 1
  %61 = load i32, i32* %mb_addr56, align 4
  %inc57 = add nsw i32 %61, 1
  store i32 %inc57, i32* %mb_addr56, align 4
  %62 = load i32, i32* %yN.addr, align 4
  %mul = mul nsw i32 2, %62
  store i32 %mul, i32* %yM, align 4
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.48
  %63 = load i32, i32* %yN.addr, align 4
  store i32 %63, i32* %yM, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.41
  br label %if.end.67

if.else.61:                                       ; preds = %if.else.38
  %64 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 26
  %65 = load i32, i32* %mbAddrD62, align 4
  %add63 = add nsw i32 %65, 1
  %66 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr64 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %66, i32 0, i32 1
  store i32 %add63, i32* %mb_addr64, align 4
  %67 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 30
  %68 = load i32, i32* %mbAvailD65, align 4
  %69 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available66 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %69, i32 0, i32 0
  store i32 %68, i32* %available66, align 4
  %70 = load i32, i32* %yN.addr, align 4
  store i32 %70, i32* %yM, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.61, %if.end.60
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.37
  br label %if.end.202

if.else.69:                                       ; preds = %if.then.11
  %71 = load i32, i32* %yN.addr, align 4
  %cmp70 = icmp sge i32 %71, 0
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.201

land.lhs.true.71:                                 ; preds = %if.else.69
  %72 = load i32, i32* %yN.addr, align 4
  %73 = load i32, i32* %maxH, align 4
  %cmp72 = icmp slt i32 %72, %73
  br i1 %cmp72, label %if.then.73, label %if.end.201

if.then.73:                                       ; preds = %land.lhs.true.71
  %74 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field74 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %74, i32 0, i32 22
  %75 = load i32, i32* %mb_field74, align 4
  %tobool75 = icmp ne i32 %75, 0
  br i1 %tobool75, label %if.else.138, label %if.then.76

if.then.76:                                       ; preds = %if.then.73
  %76 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem77 = urem i32 %76, 2
  %cmp78 = icmp eq i32 %rem77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.106

if.then.79:                                       ; preds = %if.then.76
  %77 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 23
  %78 = load i32, i32* %mbAddrA80, align 4
  %79 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr81 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %79, i32 0, i32 1
  store i32 %78, i32* %mb_addr81, align 4
  %80 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA82 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 27
  %81 = load i32, i32* %mbAvailA82, align 4
  %82 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available83 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %82, i32 0, i32 0
  store i32 %81, i32* %available83, align 4
  %83 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA84 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i32 0, i32 27
  %84 = load i32, i32* %mbAvailA84, align 4
  %tobool85 = icmp ne i32 %84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.105

if.then.86:                                       ; preds = %if.then.79
  %85 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %85, i32 0, i32 23
  %86 = load i32, i32* %mbAddrA87, align 4
  %idxprom88 = sext i32 %86 to i64
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 51
  %88 = load %struct.macroblock*, %struct.macroblock** %mb_data89, align 8
  %arrayidx90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i64 %idxprom88
  %mb_field91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx90, i32 0, i32 22
  %89 = load i32, i32* %mb_field91, align 4
  %tobool92 = icmp ne i32 %89, 0
  br i1 %tobool92, label %if.else.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.86
  %90 = load i32, i32* %yN.addr, align 4
  store i32 %90, i32* %yM, align 4
  br label %if.end.104

if.else.94:                                       ; preds = %if.then.86
  %91 = load i32, i32* %yN.addr, align 4
  %rem95 = srem i32 %91, 2
  %cmp96 = icmp eq i32 %rem95, 0
  br i1 %cmp96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.else.94
  %92 = load i32, i32* %yN.addr, align 4
  %shr98 = ashr i32 %92, 1
  store i32 %shr98, i32* %yM, align 4
  br label %if.end.103

if.else.99:                                       ; preds = %if.else.94
  %93 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr100 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %93, i32 0, i32 1
  %94 = load i32, i32* %mb_addr100, align 4
  %inc101 = add nsw i32 %94, 1
  store i32 %inc101, i32* %mb_addr100, align 4
  %95 = load i32, i32* %yN.addr, align 4
  %shr102 = ashr i32 %95, 1
  store i32 %shr102, i32* %yM, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.99, %if.then.97
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.93
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.79
  br label %if.end.137

if.else.106:                                      ; preds = %if.then.76
  %96 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA107 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i32 0, i32 23
  %97 = load i32, i32* %mbAddrA107, align 4
  %98 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr108 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %98, i32 0, i32 1
  store i32 %97, i32* %mb_addr108, align 4
  %99 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 27
  %100 = load i32, i32* %mbAvailA109, align 4
  %101 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available110 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %101, i32 0, i32 0
  store i32 %100, i32* %available110, align 4
  %102 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA111 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 27
  %103 = load i32, i32* %mbAvailA111, align 4
  %tobool112 = icmp ne i32 %103, 0
  br i1 %tobool112, label %if.then.113, label %if.end.136

if.then.113:                                      ; preds = %if.else.106
  %104 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %104, i32 0, i32 23
  %105 = load i32, i32* %mbAddrA114, align 4
  %idxprom115 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 51
  %107 = load %struct.macroblock*, %struct.macroblock** %mb_data116, align 8
  %arrayidx117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i64 %idxprom115
  %mb_field118 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx117, i32 0, i32 22
  %108 = load i32, i32* %mb_field118, align 4
  %tobool119 = icmp ne i32 %108, 0
  br i1 %tobool119, label %if.else.123, label %if.then.120

if.then.120:                                      ; preds = %if.then.113
  %109 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr121 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %109, i32 0, i32 1
  %110 = load i32, i32* %mb_addr121, align 4
  %inc122 = add nsw i32 %110, 1
  store i32 %inc122, i32* %mb_addr121, align 4
  %111 = load i32, i32* %yN.addr, align 4
  store i32 %111, i32* %yM, align 4
  br label %if.end.135

if.else.123:                                      ; preds = %if.then.113
  %112 = load i32, i32* %yN.addr, align 4
  %rem124 = srem i32 %112, 2
  %cmp125 = icmp eq i32 %rem124, 0
  br i1 %cmp125, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %if.else.123
  %113 = load i32, i32* %yN.addr, align 4
  %114 = load i32, i32* %maxH, align 4
  %add127 = add nsw i32 %113, %114
  %shr128 = ashr i32 %add127, 1
  store i32 %shr128, i32* %yM, align 4
  br label %if.end.134

if.else.129:                                      ; preds = %if.else.123
  %115 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr130 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %115, i32 0, i32 1
  %116 = load i32, i32* %mb_addr130, align 4
  %inc131 = add nsw i32 %116, 1
  store i32 %inc131, i32* %mb_addr130, align 4
  %117 = load i32, i32* %yN.addr, align 4
  %118 = load i32, i32* %maxH, align 4
  %add132 = add nsw i32 %117, %118
  %shr133 = ashr i32 %add132, 1
  store i32 %shr133, i32* %yM, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.129, %if.then.126
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.120
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.else.106
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.105
  br label %if.end.200

if.else.138:                                      ; preds = %if.then.73
  %119 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem139 = urem i32 %119, 2
  %cmp140 = icmp eq i32 %rem139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.167

if.then.141:                                      ; preds = %if.else.138
  %120 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %120, i32 0, i32 23
  %121 = load i32, i32* %mbAddrA142, align 4
  %122 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr143 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %122, i32 0, i32 1
  store i32 %121, i32* %mb_addr143, align 4
  %123 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA144 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %123, i32 0, i32 27
  %124 = load i32, i32* %mbAvailA144, align 4
  %125 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available145 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %125, i32 0, i32 0
  store i32 %124, i32* %available145, align 4
  %126 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA146 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %126, i32 0, i32 27
  %127 = load i32, i32* %mbAvailA146, align 4
  %tobool147 = icmp ne i32 %127, 0
  br i1 %tobool147, label %if.then.148, label %if.end.166

if.then.148:                                      ; preds = %if.then.141
  %128 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %128, i32 0, i32 23
  %129 = load i32, i32* %mbAddrA149, align 4
  %idxprom150 = sext i32 %129 to i64
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data151 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 51
  %131 = load %struct.macroblock*, %struct.macroblock** %mb_data151, align 8
  %arrayidx152 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %131, i64 %idxprom150
  %mb_field153 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx152, i32 0, i32 22
  %132 = load i32, i32* %mb_field153, align 4
  %tobool154 = icmp ne i32 %132, 0
  br i1 %tobool154, label %if.else.164, label %if.then.155

if.then.155:                                      ; preds = %if.then.148
  %133 = load i32, i32* %yN.addr, align 4
  %134 = load i32, i32* %maxH, align 4
  %div = sdiv i32 %134, 2
  %cmp156 = icmp slt i32 %133, %div
  br i1 %cmp156, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.then.155
  %135 = load i32, i32* %yN.addr, align 4
  %shl = shl i32 %135, 1
  store i32 %shl, i32* %yM, align 4
  br label %if.end.163

if.else.158:                                      ; preds = %if.then.155
  %136 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr159 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %136, i32 0, i32 1
  %137 = load i32, i32* %mb_addr159, align 4
  %inc160 = add nsw i32 %137, 1
  store i32 %inc160, i32* %mb_addr159, align 4
  %138 = load i32, i32* %yN.addr, align 4
  %shl161 = shl i32 %138, 1
  %139 = load i32, i32* %maxH, align 4
  %sub162 = sub nsw i32 %shl161, %139
  store i32 %sub162, i32* %yM, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.158, %if.then.157
  br label %if.end.165

if.else.164:                                      ; preds = %if.then.148
  %140 = load i32, i32* %yN.addr, align 4
  store i32 %140, i32* %yM, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.end.163
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.141
  br label %if.end.199

if.else.167:                                      ; preds = %if.else.138
  %141 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA168 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 23
  %142 = load i32, i32* %mbAddrA168, align 4
  %143 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr169 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %143, i32 0, i32 1
  store i32 %142, i32* %mb_addr169, align 4
  %144 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA170 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %144, i32 0, i32 27
  %145 = load i32, i32* %mbAvailA170, align 4
  %146 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available171 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %146, i32 0, i32 0
  store i32 %145, i32* %available171, align 4
  %147 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i32 0, i32 27
  %148 = load i32, i32* %mbAvailA172, align 4
  %tobool173 = icmp ne i32 %148, 0
  br i1 %tobool173, label %if.then.174, label %if.end.198

if.then.174:                                      ; preds = %if.else.167
  %149 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA175 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %149, i32 0, i32 23
  %150 = load i32, i32* %mbAddrA175, align 4
  %idxprom176 = sext i32 %150 to i64
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 51
  %152 = load %struct.macroblock*, %struct.macroblock** %mb_data177, align 8
  %arrayidx178 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %152, i64 %idxprom176
  %mb_field179 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx178, i32 0, i32 22
  %153 = load i32, i32* %mb_field179, align 4
  %tobool180 = icmp ne i32 %153, 0
  br i1 %tobool180, label %if.else.194, label %if.then.181

if.then.181:                                      ; preds = %if.then.174
  %154 = load i32, i32* %yN.addr, align 4
  %155 = load i32, i32* %maxH, align 4
  %div182 = sdiv i32 %155, 2
  %cmp183 = icmp slt i32 %154, %div182
  br i1 %cmp183, label %if.then.184, label %if.else.187

if.then.184:                                      ; preds = %if.then.181
  %156 = load i32, i32* %yN.addr, align 4
  %shl185 = shl i32 %156, 1
  %add186 = add nsw i32 %shl185, 1
  store i32 %add186, i32* %yM, align 4
  br label %if.end.193

if.else.187:                                      ; preds = %if.then.181
  %157 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr188 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %157, i32 0, i32 1
  %158 = load i32, i32* %mb_addr188, align 4
  %inc189 = add nsw i32 %158, 1
  store i32 %inc189, i32* %mb_addr188, align 4
  %159 = load i32, i32* %yN.addr, align 4
  %shl190 = shl i32 %159, 1
  %add191 = add nsw i32 %shl190, 1
  %160 = load i32, i32* %maxH, align 4
  %sub192 = sub nsw i32 %add191, %160
  store i32 %sub192, i32* %yM, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.187, %if.then.184
  br label %if.end.197

if.else.194:                                      ; preds = %if.then.174
  %161 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr195 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %161, i32 0, i32 1
  %162 = load i32, i32* %mb_addr195, align 4
  %inc196 = add nsw i32 %162, 1
  store i32 %inc196, i32* %mb_addr195, align 4
  %163 = load i32, i32* %yN.addr, align 4
  store i32 %163, i32* %yM, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.end.193
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.else.167
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.166
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.137
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.71, %if.else.69
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.68
  br label %if.end.341

if.else.203:                                      ; preds = %if.end.9
  %164 = load i32, i32* %xN.addr, align 4
  %cmp204 = icmp sge i32 %164, 0
  br i1 %cmp204, label %land.lhs.true.205, label %if.else.292

land.lhs.true.205:                                ; preds = %if.else.203
  %165 = load i32, i32* %xN.addr, align 4
  %166 = load i32, i32* %maxW, align 4
  %cmp206 = icmp slt i32 %165, %166
  br i1 %cmp206, label %if.then.207, label %if.else.292

if.then.207:                                      ; preds = %land.lhs.true.205
  %167 = load i32, i32* %yN.addr, align 4
  %cmp208 = icmp slt i32 %167, 0
  br i1 %cmp208, label %if.then.209, label %if.else.271

if.then.209:                                      ; preds = %if.then.207
  %168 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field210 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %168, i32 0, i32 22
  %169 = load i32, i32* %mb_field210, align 4
  %tobool211 = icmp ne i32 %169, 0
  br i1 %tobool211, label %if.else.239, label %if.then.212

if.then.212:                                      ; preds = %if.then.209
  %170 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem213 = urem i32 %170, 2
  %cmp214 = icmp eq i32 %rem213, 0
  br i1 %cmp214, label %if.then.215, label %if.else.234

if.then.215:                                      ; preds = %if.then.212
  %171 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %171, i32 0, i32 24
  %172 = load i32, i32* %mbAddrB, align 4
  %173 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr216 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %173, i32 0, i32 1
  store i32 %172, i32* %mb_addr216, align 4
  %174 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %174, i32 0, i32 28
  %175 = load i32, i32* %mbAvailB, align 4
  %tobool217 = icmp ne i32 %175, 0
  br i1 %tobool217, label %if.then.218, label %if.end.231

if.then.218:                                      ; preds = %if.then.215
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 143
  %177 = load i32, i32* %DeblockCall, align 4
  %cmp219 = icmp eq i32 %177, 1
  br i1 %cmp219, label %land.lhs.true.220, label %if.then.227

land.lhs.true.220:                                ; preds = %if.then.218
  %178 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB221 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %178, i32 0, i32 24
  %179 = load i32, i32* %mbAddrB221, align 4
  %idxprom222 = sext i32 %179 to i64
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 51
  %181 = load %struct.macroblock*, %struct.macroblock** %mb_data223, align 8
  %arrayidx224 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %181, i64 %idxprom222
  %mb_field225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx224, i32 0, i32 22
  %182 = load i32, i32* %mb_field225, align 4
  %tobool226 = icmp ne i32 %182, 0
  br i1 %tobool226, label %if.end.230, label %if.then.227

if.then.227:                                      ; preds = %land.lhs.true.220, %if.then.218
  %183 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr228 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %183, i32 0, i32 1
  %184 = load i32, i32* %mb_addr228, align 4
  %add229 = add nsw i32 %184, 1
  store i32 %add229, i32* %mb_addr228, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.227, %land.lhs.true.220
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.215
  %185 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB232 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %185, i32 0, i32 28
  %186 = load i32, i32* %mbAvailB232, align 4
  %187 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available233 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %187, i32 0, i32 0
  store i32 %186, i32* %available233, align 4
  %188 = load i32, i32* %yN.addr, align 4
  store i32 %188, i32* %yM, align 4
  br label %if.end.238

if.else.234:                                      ; preds = %if.then.212
  %189 = load i32, i32* %curr_mb_nr.addr, align 4
  %sub235 = sub i32 %189, 1
  %190 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr236 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %190, i32 0, i32 1
  store i32 %sub235, i32* %mb_addr236, align 4
  %191 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available237 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %191, i32 0, i32 0
  store i32 1, i32* %available237, align 4
  %192 = load i32, i32* %yN.addr, align 4
  store i32 %192, i32* %yM, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.234, %if.end.231
  br label %if.end.270

if.else.239:                                      ; preds = %if.then.209
  %193 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem240 = urem i32 %193, 2
  %cmp241 = icmp eq i32 %rem240, 0
  br i1 %cmp241, label %if.then.242, label %if.else.263

if.then.242:                                      ; preds = %if.else.239
  %194 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB243 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %194, i32 0, i32 24
  %195 = load i32, i32* %mbAddrB243, align 4
  %196 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr244 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %196, i32 0, i32 1
  store i32 %195, i32* %mb_addr244, align 4
  %197 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB245 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %197, i32 0, i32 28
  %198 = load i32, i32* %mbAvailB245, align 4
  %199 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available246 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %199, i32 0, i32 0
  store i32 %198, i32* %available246, align 4
  %200 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB247 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %200, i32 0, i32 28
  %201 = load i32, i32* %mbAvailB247, align 4
  %tobool248 = icmp ne i32 %201, 0
  br i1 %tobool248, label %if.then.249, label %if.end.262

if.then.249:                                      ; preds = %if.then.242
  %202 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB250 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %202, i32 0, i32 24
  %203 = load i32, i32* %mbAddrB250, align 4
  %idxprom251 = sext i32 %203 to i64
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data252 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 51
  %205 = load %struct.macroblock*, %struct.macroblock** %mb_data252, align 8
  %arrayidx253 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %205, i64 %idxprom251
  %mb_field254 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx253, i32 0, i32 22
  %206 = load i32, i32* %mb_field254, align 4
  %tobool255 = icmp ne i32 %206, 0
  br i1 %tobool255, label %if.else.260, label %if.then.256

if.then.256:                                      ; preds = %if.then.249
  %207 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr257 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %207, i32 0, i32 1
  %208 = load i32, i32* %mb_addr257, align 4
  %inc258 = add nsw i32 %208, 1
  store i32 %inc258, i32* %mb_addr257, align 4
  %209 = load i32, i32* %yN.addr, align 4
  %mul259 = mul nsw i32 2, %209
  store i32 %mul259, i32* %yM, align 4
  br label %if.end.261

if.else.260:                                      ; preds = %if.then.249
  %210 = load i32, i32* %yN.addr, align 4
  store i32 %210, i32* %yM, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.260, %if.then.256
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.then.242
  br label %if.end.269

if.else.263:                                      ; preds = %if.else.239
  %211 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB264 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %211, i32 0, i32 24
  %212 = load i32, i32* %mbAddrB264, align 4
  %add265 = add nsw i32 %212, 1
  %213 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr266 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %213, i32 0, i32 1
  store i32 %add265, i32* %mb_addr266, align 4
  %214 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB267 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %214, i32 0, i32 28
  %215 = load i32, i32* %mbAvailB267, align 4
  %216 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available268 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %216, i32 0, i32 0
  store i32 %215, i32* %available268, align 4
  %217 = load i32, i32* %yN.addr, align 4
  store i32 %217, i32* %yM, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.263, %if.end.262
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.238
  br label %if.end.291

if.else.271:                                      ; preds = %if.then.207
  %218 = load i32, i32* %yN.addr, align 4
  %cmp272 = icmp eq i32 %218, 0
  br i1 %cmp272, label %land.lhs.true.273, label %if.else.282

land.lhs.true.273:                                ; preds = %if.else.271
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 143
  %220 = load i32, i32* %DeblockCall274, align 4
  %cmp275 = icmp eq i32 %220, 2
  br i1 %cmp275, label %if.then.276, label %if.else.282

if.then.276:                                      ; preds = %land.lhs.true.273
  %221 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB277 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %221, i32 0, i32 24
  %222 = load i32, i32* %mbAddrB277, align 4
  %add278 = add nsw i32 %222, 1
  %223 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr279 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %223, i32 0, i32 1
  store i32 %add278, i32* %mb_addr279, align 4
  %224 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available280 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %224, i32 0, i32 0
  store i32 1, i32* %available280, align 4
  %225 = load i32, i32* %yN.addr, align 4
  %sub281 = sub nsw i32 %225, 1
  store i32 %sub281, i32* %yM, align 4
  br label %if.end.290

if.else.282:                                      ; preds = %land.lhs.true.273, %if.else.271
  %226 = load i32, i32* %yN.addr, align 4
  %cmp283 = icmp sge i32 %226, 0
  br i1 %cmp283, label %land.lhs.true.284, label %if.end.289

land.lhs.true.284:                                ; preds = %if.else.282
  %227 = load i32, i32* %yN.addr, align 4
  %228 = load i32, i32* %maxH, align 4
  %cmp285 = icmp slt i32 %227, %228
  br i1 %cmp285, label %if.then.286, label %if.end.289

if.then.286:                                      ; preds = %land.lhs.true.284
  %229 = load i32, i32* %curr_mb_nr.addr, align 4
  %230 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr287 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %230, i32 0, i32 1
  store i32 %229, i32* %mb_addr287, align 4
  %231 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available288 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %231, i32 0, i32 0
  store i32 1, i32* %available288, align 4
  %232 = load i32, i32* %yN.addr, align 4
  store i32 %232, i32* %yM, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.286, %land.lhs.true.284, %if.else.282
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.276
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.270
  br label %if.end.340

if.else.292:                                      ; preds = %land.lhs.true.205, %if.else.203
  %233 = load i32, i32* %yN.addr, align 4
  %cmp293 = icmp slt i32 %233, 0
  br i1 %cmp293, label %if.then.294, label %if.end.339

if.then.294:                                      ; preds = %if.else.292
  %234 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field295 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %234, i32 0, i32 22
  %235 = load i32, i32* %mb_field295, align 4
  %tobool296 = icmp ne i32 %235, 0
  br i1 %tobool296, label %if.else.307, label %if.then.297

if.then.297:                                      ; preds = %if.then.294
  %236 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem298 = urem i32 %236, 2
  %cmp299 = icmp eq i32 %rem298, 0
  br i1 %cmp299, label %if.then.300, label %if.else.304

if.then.300:                                      ; preds = %if.then.297
  %237 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %237, i32 0, i32 25
  %238 = load i32, i32* %mbAddrC, align 4
  %add301 = add nsw i32 %238, 1
  %239 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr302 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %239, i32 0, i32 1
  store i32 %add301, i32* %mb_addr302, align 4
  %240 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %240, i32 0, i32 29
  %241 = load i32, i32* %mbAvailC, align 4
  %242 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available303 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %242, i32 0, i32 0
  store i32 %241, i32* %available303, align 4
  %243 = load i32, i32* %yN.addr, align 4
  store i32 %243, i32* %yM, align 4
  br label %if.end.306

if.else.304:                                      ; preds = %if.then.297
  %244 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available305 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %244, i32 0, i32 0
  store i32 0, i32* %available305, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.304, %if.then.300
  br label %if.end.338

if.else.307:                                      ; preds = %if.then.294
  %245 = load i32, i32* %curr_mb_nr.addr, align 4
  %rem308 = urem i32 %245, 2
  %cmp309 = icmp eq i32 %rem308, 0
  br i1 %cmp309, label %if.then.310, label %if.else.331

if.then.310:                                      ; preds = %if.else.307
  %246 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC311 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %246, i32 0, i32 25
  %247 = load i32, i32* %mbAddrC311, align 4
  %248 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr312 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %248, i32 0, i32 1
  store i32 %247, i32* %mb_addr312, align 4
  %249 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC313 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %249, i32 0, i32 29
  %250 = load i32, i32* %mbAvailC313, align 4
  %251 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available314 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %251, i32 0, i32 0
  store i32 %250, i32* %available314, align 4
  %252 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC315 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %252, i32 0, i32 29
  %253 = load i32, i32* %mbAvailC315, align 4
  %tobool316 = icmp ne i32 %253, 0
  br i1 %tobool316, label %if.then.317, label %if.end.330

if.then.317:                                      ; preds = %if.then.310
  %254 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC318 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %254, i32 0, i32 25
  %255 = load i32, i32* %mbAddrC318, align 4
  %idxprom319 = sext i32 %255 to i64
  %256 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %256, i32 0, i32 51
  %257 = load %struct.macroblock*, %struct.macroblock** %mb_data320, align 8
  %arrayidx321 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %257, i64 %idxprom319
  %mb_field322 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx321, i32 0, i32 22
  %258 = load i32, i32* %mb_field322, align 4
  %tobool323 = icmp ne i32 %258, 0
  br i1 %tobool323, label %if.else.328, label %if.then.324

if.then.324:                                      ; preds = %if.then.317
  %259 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr325 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %259, i32 0, i32 1
  %260 = load i32, i32* %mb_addr325, align 4
  %inc326 = add nsw i32 %260, 1
  store i32 %inc326, i32* %mb_addr325, align 4
  %261 = load i32, i32* %yN.addr, align 4
  %mul327 = mul nsw i32 2, %261
  store i32 %mul327, i32* %yM, align 4
  br label %if.end.329

if.else.328:                                      ; preds = %if.then.317
  %262 = load i32, i32* %yN.addr, align 4
  store i32 %262, i32* %yM, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.328, %if.then.324
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.310
  br label %if.end.337

if.else.331:                                      ; preds = %if.else.307
  %263 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC332 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %263, i32 0, i32 25
  %264 = load i32, i32* %mbAddrC332, align 4
  %add333 = add nsw i32 %264, 1
  %265 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr334 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %265, i32 0, i32 1
  store i32 %add333, i32* %mb_addr334, align 4
  %266 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC335 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %266, i32 0, i32 29
  %267 = load i32, i32* %mbAvailC335, align 4
  %268 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available336 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %268, i32 0, i32 0
  store i32 %267, i32* %available336, align 4
  %269 = load i32, i32* %yN.addr, align 4
  store i32 %269, i32* %yM, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.331, %if.end.330
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.end.306
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.else.292
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.end.291
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.202
  %270 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available342 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %270, i32 0, i32 0
  %271 = load i32, i32* %available342, align 4
  %tobool343 = icmp ne i32 %271, 0
  br i1 %tobool343, label %if.then.346, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.341
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall344 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 143
  %273 = load i32, i32* %DeblockCall344, align 4
  %tobool345 = icmp ne i32 %273, 0
  br i1 %tobool345, label %if.then.346, label %if.end.376

if.then.346:                                      ; preds = %lor.lhs.false, %if.end.341
  %274 = load i32, i32* %xN.addr, align 4
  %275 = load i32, i32* %maxW, align 4
  %add347 = add nsw i32 %274, %275
  %276 = load i32, i32* %maxW, align 4
  %rem348 = srem i32 %add347, %276
  %277 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %277, i32 0, i32 2
  store i32 %rem348, i32* %x, align 4
  %278 = load i32, i32* %yM, align 4
  %279 = load i32, i32* %maxH, align 4
  %add349 = add nsw i32 %278, %279
  %280 = load i32, i32* %maxH, align 4
  %rem350 = srem i32 %add349, %280
  %281 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %281, i32 0, i32 3
  store i32 %rem350, i32* %y, align 4
  %282 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr351 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %282, i32 0, i32 1
  %283 = load i32, i32* %mb_addr351, align 4
  %284 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %284, i32 0, i32 4
  %285 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %285, i32 0, i32 5
  call void @get_mb_pos(i32 %283, i32* %pos_x, i32* %pos_y)
  %286 = load i32, i32* %luma.addr, align 4
  %tobool352 = icmp ne i32 %286, 0
  br i1 %tobool352, label %if.then.353, label %if.else.360

if.then.353:                                      ; preds = %if.then.346
  %287 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x354 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %287, i32 0, i32 2
  %288 = load i32, i32* %x354, align 4
  %289 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x355 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %289, i32 0, i32 4
  %290 = load i32, i32* %pos_x355, align 4
  %add356 = add nsw i32 %290, %288
  store i32 %add356, i32* %pos_x355, align 4
  %291 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y357 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %291, i32 0, i32 3
  %292 = load i32, i32* %y357, align 4
  %293 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y358 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %293, i32 0, i32 5
  %294 = load i32, i32* %pos_y358, align 4
  %add359 = add nsw i32 %294, %292
  store i32 %add359, i32* %pos_y358, align 4
  br label %if.end.375

if.else.360:                                      ; preds = %if.then.346
  %295 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x361 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %295, i32 0, i32 4
  %296 = load i32, i32* %pos_x361, align 4
  %297 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x362 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %297, i32 0, i32 161
  %298 = load i32, i32* %mb_cr_size_x362, align 4
  %div363 = sdiv i32 16, %298
  %div364 = sdiv i32 %296, %div363
  %299 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x365 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %299, i32 0, i32 2
  %300 = load i32, i32* %x365, align 4
  %add366 = add nsw i32 %div364, %300
  %301 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x367 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %301, i32 0, i32 4
  store i32 %add366, i32* %pos_x367, align 4
  %302 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y368 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %302, i32 0, i32 5
  %303 = load i32, i32* %pos_y368, align 4
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y369 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 162
  %305 = load i32, i32* %mb_cr_size_y369, align 4
  %div370 = sdiv i32 16, %305
  %div371 = sdiv i32 %303, %div370
  %306 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y372 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %306, i32 0, i32 3
  %307 = load i32, i32* %y372, align 4
  %add373 = add nsw i32 %div371, %307
  %308 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y374 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %308, i32 0, i32 5
  store i32 %add373, i32* %pos_y374, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.360, %if.then.353
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.1, %if.then.8, %if.end.375, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %luma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %luma, i32* %luma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 90
  %2 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load i32, i32* %curr_mb_nr.addr, align 4
  %4 = load i32, i32* %xN.addr, align 4
  %5 = load i32, i32* %yN.addr, align 4
  %6 = load i32, i32* %luma.addr, align 4
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void @getAffNeighbour(i32 %3, i32 %4, i32 %5, i32 %6, %struct.pix_pos* %7)
  br label %if.end.2

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %curr_mb_nr.addr, align 4
  %9 = load i32, i32* %xN.addr, align 4
  %10 = load i32, i32* %yN.addr, align 4
  %11 = load i32, i32* %luma.addr, align 4
  %12 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void @getNonAffNeighbour(i32 %8, i32 %9, i32 %10, i32 %11, %struct.pix_pos* %12)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  ret void
}

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @getLuma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %rel_x.addr = alloca i32, align 4
  %rel_y.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %rel_x, i32* %rel_x.addr, align 4
  store i32 %rel_y, i32* %rel_y.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %block_x.addr, align 4
  %mul = mul nsw i32 4, %0
  %1 = load i32, i32* %rel_x.addr, align 4
  %add = add nsw i32 %mul, %1
  store i32 %add, i32* %x, align 4
  %2 = load i32, i32* %block_y.addr, align 4
  %mul1 = mul nsw i32 4, %2
  %3 = load i32, i32* %rel_y.addr, align 4
  %add2 = add nsw i32 %mul1, %3
  store i32 %add2, i32* %y, align 4
  %4 = load i32, i32* %curr_mb_nr.addr, align 4
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void @getNeighbour(i32 %4, i32 %5, i32 %6, i32 1, %struct.pix_pos* %7)
  %8 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %8, i32 0, i32 0
  %9 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x3 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %10, i32 0, i32 2
  %11 = load i32, i32* %x3, align 4
  %div = sdiv i32 %11, 4
  store i32 %div, i32* %x3, align 4
  %12 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y4 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %12, i32 0, i32 3
  %13 = load i32, i32* %y4, align 4
  %div5 = sdiv i32 %13, 4
  store i32 %div5, i32* %y4, align 4
  %14 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %14, i32 0, i32 4
  %15 = load i32, i32* %pos_x, align 4
  %div6 = sdiv i32 %15, 4
  store i32 %div6, i32* %pos_x, align 4
  %16 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %16, i32 0, i32 5
  %17 = load i32, i32* %pos_y, align 4
  %div7 = sdiv i32 %17, 4
  store i32 %div7, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @getChroma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %rel_x.addr = alloca i32, align 4
  %rel_y.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %rel_x, i32* %rel_x.addr, align 4
  store i32 %rel_y, i32* %rel_y.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %block_x.addr, align 4
  %mul = mul nsw i32 4, %0
  %1 = load i32, i32* %rel_x.addr, align 4
  %add = add nsw i32 %mul, %1
  store i32 %add, i32* %x, align 4
  %2 = load i32, i32* %block_y.addr, align 4
  %mul1 = mul nsw i32 4, %2
  %3 = load i32, i32* %rel_y.addr, align 4
  %add2 = add nsw i32 %mul1, %3
  store i32 %add2, i32* %y, align 4
  %4 = load i32, i32* %curr_mb_nr.addr, align 4
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void @getNeighbour(i32 %4, i32 %5, i32 %6, i32 0, %struct.pix_pos* %7)
  %8 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %8, i32 0, i32 0
  %9 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x3 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %10, i32 0, i32 2
  %11 = load i32, i32* %x3, align 4
  %div = sdiv i32 %11, 4
  store i32 %div, i32* %x3, align 4
  %12 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y4 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %12, i32 0, i32 3
  %13 = load i32, i32* %y4, align 4
  %div5 = sdiv i32 %13, 4
  store i32 %div5, i32* %y4, align 4
  %14 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %14, i32 0, i32 4
  %15 = load i32, i32* %pos_x, align 4
  %div6 = sdiv i32 %15, 4
  store i32 %div6, i32* %pos_x, align 4
  %16 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %16, i32 0, i32 5
  %17 = load i32, i32* %pos_y, align 4
  %div7 = sdiv i32 %17, 4
  store i32 %div7, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
