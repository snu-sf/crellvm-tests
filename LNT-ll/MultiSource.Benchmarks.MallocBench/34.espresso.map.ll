; ModuleID = './MultiSource.Benchmarks.MallocBench/34.espresso.map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8
@Gminterm = internal global i32* null, align 8
@Gcube = internal global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"\0A\0AOutput space # %d\0A\00", align 1
@mapindex = internal global [16 x [16 x i32]] [[16 x i32] [i32 0, i32 1, i32 3, i32 2, i32 16, i32 17, i32 19, i32 18, i32 80, i32 81, i32 83, i32 82, i32 64, i32 65, i32 67, i32 66], [16 x i32] [i32 4, i32 5, i32 7, i32 6, i32 20, i32 21, i32 23, i32 22, i32 84, i32 85, i32 87, i32 86, i32 68, i32 69, i32 71, i32 70], [16 x i32] [i32 12, i32 13, i32 15, i32 14, i32 28, i32 29, i32 31, i32 30, i32 92, i32 93, i32 95, i32 94, i32 76, i32 77, i32 79, i32 78], [16 x i32] [i32 8, i32 9, i32 11, i32 10, i32 24, i32 25, i32 27, i32 26, i32 88, i32 89, i32 91, i32 90, i32 72, i32 73, i32 75, i32 74], [16 x i32] [i32 32, i32 33, i32 35, i32 34, i32 48, i32 49, i32 51, i32 50, i32 112, i32 113, i32 115, i32 114, i32 96, i32 97, i32 99, i32 98], [16 x i32] [i32 36, i32 37, i32 39, i32 38, i32 52, i32 53, i32 55, i32 54, i32 116, i32 117, i32 119, i32 118, i32 100, i32 101, i32 103, i32 102], [16 x i32] [i32 44, i32 45, i32 47, i32 46, i32 60, i32 61, i32 63, i32 62, i32 124, i32 125, i32 127, i32 126, i32 108, i32 109, i32 111, i32 110], [16 x i32] [i32 40, i32 41, i32 43, i32 42, i32 56, i32 57, i32 59, i32 58, i32 120, i32 121, i32 123, i32 122, i32 104, i32 105, i32 107, i32 106], [16 x i32] [i32 160, i32 161, i32 163, i32 162, i32 176, i32 177, i32 179, i32 178, i32 240, i32 241, i32 243, i32 242, i32 224, i32 225, i32 227, i32 226], [16 x i32] [i32 164, i32 165, i32 167, i32 166, i32 180, i32 181, i32 183, i32 182, i32 244, i32 245, i32 247, i32 246, i32 228, i32 229, i32 231, i32 230], [16 x i32] [i32 172, i32 173, i32 175, i32 174, i32 188, i32 189, i32 191, i32 190, i32 252, i32 253, i32 255, i32 254, i32 236, i32 237, i32 239, i32 238], [16 x i32] [i32 168, i32 169, i32 171, i32 170, i32 184, i32 185, i32 187, i32 186, i32 248, i32 249, i32 251, i32 250, i32 232, i32 233, i32 235, i32 234], [16 x i32] [i32 128, i32 129, i32 131, i32 130, i32 144, i32 145, i32 147, i32 146, i32 208, i32 209, i32 211, i32 210, i32 192, i32 193, i32 195, i32 194], [16 x i32] [i32 132, i32 133, i32 135, i32 134, i32 148, i32 149, i32 151, i32 150, i32 212, i32 213, i32 215, i32 214, i32 196, i32 197, i32 199, i32 198], [16 x i32] [i32 140, i32 141, i32 143, i32 142, i32 156, i32 157, i32 159, i32 158, i32 220, i32 221, i32 223, i32 222, i32 204, i32 205, i32 207, i32 206], [16 x i32] [i32 136, i32 137, i32 139, i32 138, i32 152, i32 153, i32 155, i32 154, i32 216, i32 217, i32 219, i32 218, i32 200, i32 201, i32 203, i32 202]], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: nounwind uwtable
define i32* @minterms(%struct.set_family* %T) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %size = alloca i32, align 4
  %var = alloca i32, align 4
  %last = alloca i32*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32 1, i32* %size, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, i32* %size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %var, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %size, align 4
  %cmp1 = icmp sle i32 %7, 32
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %8 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %8, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul3 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul3)
  %9 = bitcast i8* %call to i32*
  %10 = load i32, i32* %size, align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %9, i32 %10)
  store i32* %call4, i32** @Gminterm, align 8
  %11 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 5
  %12 = load i32*, i32** %data, align 8
  store i32* %12, i32** @Gcube, align 8
  %13 = load i32*, i32** @Gcube, align 8
  %14 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count, align 4
  %16 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize, align 4
  %mul5 = mul nsw i32 %15, %17
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %cond.end
  %18 = load i32*, i32** @Gcube, align 8
  %19 = load i32*, i32** %last, align 8
  %cmp7 = icmp ult i32* %18, %19
  br i1 %cmp7, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.6
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub10 = sub nsw i32 %20, 1
  call void @explode(i32 %sub10, i32 0)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.9
  %21 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize12, align 4
  %23 = load i32*, i32** @Gcube, align 8
  %idx.ext13 = sext i32 %22 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %23, i64 %idx.ext13
  store i32* %add.ptr14, i32** @Gcube, align 8
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  %24 = load i32*, i32** @Gminterm, align 8
  ret i32* %24
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @explode(i32 %var, i32 %z) #0 {
entry:
  %var.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  store i32 %var, i32* %var.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %last, align 4
  %3 = load i32, i32* %var.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %var.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %z.addr, align 4
  %mul = mul nsw i32 %9, %8
  store i32 %mul, i32* %z.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %shr = ashr i32 %12, 5
  %add = add nsw i32 %shr, 1
  %idxprom5 = sext i32 %add to i64
  %13 = load i32*, i32** @Gcube, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32, i32* %i, align 4
  %and = and i32 %15, 31
  %shl = shl i32 1, %and
  %and7 = and i32 %14, %shl
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %var.addr, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %17 = load i32, i32* %z.addr, align 4
  %and10 = and i32 %17, 31
  %shl11 = shl i32 1, %and10
  %18 = load i32, i32* %z.addr, align 4
  %shr12 = ashr i32 %18, 5
  %add13 = add nsw i32 %shr12, 1
  %idxprom14 = sext i32 %add13 to i64
  %19 = load i32*, i32** @Gminterm, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 %idxprom14
  %20 = load i32, i32* %arrayidx15, align 4
  %or = or i32 %20, %shl11
  store i32 %or, i32* %arrayidx15, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i32, i32* %var.addr, align 4
  %sub = sub nsw i32 %21, 1
  %22 = load i32, i32* %z.addr, align 4
  call void @explode(i32 %sub, i32 %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load i32, i32* %z.addr, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %z.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @map(%struct.set_family* %T) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %other_input_offset = alloca i32, align 4
  %output_offset = alloca i32, align 4
  %outnum = alloca i32, align 4
  %ind = alloca i32, align 4
  %largest_input_ind = alloca i32, align 4
  %numout = alloca i32, align 4
  %c = alloca i8, align 1
  %m = alloca i32*, align 8
  %some_output = alloca i32, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %call = call i32* @minterms(%struct.set_family* %0)
  store i32* %call, i32** %m, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %shl = shl i32 1, %1
  store i32 %shl, i32* %largest_input_ind, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %numout, align 4
  store i32 0, i32* %outnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %entry
  %5 = load i32, i32* %outnum, align 4
  %6 = load i32, i32* %numout, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %outnum, align 4
  %8 = load i32, i32* %largest_input_ind, align 4
  %mul = mul nsw i32 %7, %8
  store i32 %mul, i32* %output_offset, align 4
  %9 = load i32, i32* %outnum, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %9)
  store i32 0, i32* %l, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.74, %for.body
  %10 = load i32, i32* %l, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub3 = sub nsw i32 %11, 8
  %cmp4 = icmp sgt i32 %sub3, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.2
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub5 = sub nsw i32 %12, 8
  br label %cond.end

cond.false:                                       ; preds = %for.cond.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ 0, %cond.false ]
  %cmp6 = icmp sle i32 %10, %cond
  br i1 %cmp6, label %for.body.7, label %for.end.76

for.body.7:                                       ; preds = %cond.end
  %13 = load i32, i32* %l, align 4
  %mul8 = mul nsw i32 %13, 256
  store i32 %mul8, i32* %other_input_offset, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.71, %for.body.7
  %14 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %14, 16
  br i1 %cmp10, label %for.body.11, label %for.end.73

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %some_output, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.11
  %15 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %15, 16
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @mapindex, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %18 = load i32, i32* %arrayidx18, align 4
  %19 = load i32, i32* %other_input_offset, align 4
  %add = add nsw i32 %18, %19
  store i32 %add, i32* %ind, align 4
  %20 = load i32, i32* %ind, align 4
  %21 = load i32, i32* %largest_input_ind, align 4
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %22 = load i32, i32* %ind, align 4
  %23 = load i32, i32* %output_offset, align 4
  %add20 = add nsw i32 %22, %23
  %shr = ashr i32 %add20, 5
  %add21 = add nsw i32 %shr, 1
  %idxprom22 = sext i32 %add21 to i64
  %24 = load i32*, i32** %m, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %24, i64 %idxprom22
  %25 = load i32, i32* %arrayidx23, align 4
  %26 = load i32, i32* %ind, align 4
  %27 = load i32, i32* %output_offset, align 4
  %add24 = add nsw i32 %26, %27
  %and = and i32 %add24, 31
  %shl25 = shl i32 1, %and
  %and26 = and i32 %25, %shl25
  %tobool = icmp ne i32 %and26, 0
  %cond27 = select i1 %tobool, i32 49, i32 46
  %conv = trunc i32 %cond27 to i8
  store i8 %conv, i8* %c, align 1
  %28 = load i8, i8* %c, align 1
  %conv28 = sext i8 %28 to i32
  %call29 = call i32 @putchar(i32 %conv28)
  store i32 1, i32* %some_output, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  %29 = load i32, i32* %j, align 4
  %add30 = add nsw i32 %29, 1
  %rem = srem i32 %add30, 4
  %cmp31 = icmp eq i32 %rem, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end
  %call34 = call i32 @putchar(i32 32)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end
  %30 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %30, 1
  %rem37 = srem i32 %add36, 8
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.35
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %32 = load i32, i32* %some_output, align 4
  %tobool43 = icmp ne i32 %32, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.end
  %call45 = call i32 @putchar(i32 10)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.end
  %33 = load i32, i32* %k, align 4
  %add47 = add nsw i32 %33, 1
  %rem48 = srem i32 %add47, 4
  %cmp49 = icmp eq i32 %rem48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %if.end.46
  %34 = load i32, i32* %k, align 4
  %cmp52 = icmp ne i32 %34, 15
  br i1 %cmp52, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then.51
  %35 = load i32, i32* %k, align 4
  %add54 = add nsw i32 %35, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @mapindex, i32 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx56, i32 0, i64 0
  %36 = load i32, i32* %arrayidx57, align 4
  %37 = load i32, i32* %largest_input_ind, align 4
  %cmp58 = icmp sge i32 %36, %37
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true
  br label %for.end.73

if.end.61:                                        ; preds = %land.lhs.true, %if.then.51
  %call62 = call i32 @putchar(i32 10)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %if.end.46
  %38 = load i32, i32* %k, align 4
  %add64 = add nsw i32 %38, 1
  %rem65 = srem i32 %add64, 8
  %cmp66 = icmp eq i32 %rem65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.63
  %call69 = call i32 @putchar(i32 10)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.63
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %39 = load i32, i32* %k, align 4
  %inc72 = add nsw i32 %39, 1
  store i32 %inc72, i32* %k, align 4
  br label %for.cond.9

for.end.73:                                       ; preds = %if.then.60, %for.cond.9
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %40 = load i32, i32* %l, align 4
  %inc75 = add nsw i32 %40, 1
  store i32 %inc75, i32* %l, align 4
  br label %for.cond.2

for.end.76:                                       ; preds = %cond.end
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %41 = load i32, i32* %outnum, align 4
  %inc78 = add nsw i32 %41, 1
  store i32 %inc78, i32* %outnum, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %42 = load i32*, i32** %m, align 8
  %tobool80 = icmp ne i32* %42, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.79
  %43 = load i32*, i32** %m, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44)
  store i32* null, i32** %m, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %for.end.79
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
