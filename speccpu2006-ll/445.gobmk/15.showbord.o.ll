; ModuleID = 'engine/showbord.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@board_size = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %-2d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dragon_num = internal global [400 x i8] zeroinitializer, align 16
@next_white = internal global i32 0, align 4
@next_black = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"     WHITE has captured %d stones\00", align 1
@black_captured = external global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"     BLACK has captured %d stones\00", align 1
@white_captured = external global i32, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"    green=alive\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"    cyan=dead\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"    red=critical\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"    yellow=unknown\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"    magenta=unchecked\00", align 1
@board = external global [421 x i8], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"engine/showbord.c\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ON_BOARD2((i), (j))\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@domain_colors = internal constant [4 x i32] [i32 5, i32 1, i32 2, i32 3], align 16
@colors = internal constant [3 x [5 x i32]] [[5 x i32] zeroinitializer, [5 x i32] [i32 6, i32 2, i32 1, i32 3, i32 5], [5 x i32] [i32 6, i32 2, i32 1, i32 3, i32 5]], align 16

; Function Attrs: nounwind uwtable
define void @start_draw_board() #0 {
entry:
  call void @gg_init_color()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %0)
  ret void
}

declare void @gg_init_color() #1

; Function Attrs: nounwind uwtable
define internal void @draw_letter_coordinates(%struct._IO_FILE* %outfile) #0 {
entry:
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i32 65, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %3, 73
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %6 = load i32, i32* %ch, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %i, align 4
  %8 = load i32, i32* %ch, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @draw_color_char(i32 %m, i32 %n, i32 %c, i32 %color) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* @board_size, align 4
  %3 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %2, %3
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %m.addr, align 4
  %6 = load i32, i32* %n.addr, align 4
  %call3 = call i32 @is_hoshi_point(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  store i32 43, i32* %c.addr, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.then.2
  store i32 46, i32* %c.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %7 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %c.addr, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %9)
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.6
  %10 = load i32, i32* %color.addr, align 4
  %11 = load i32, i32* %c.addr, align 4
  call void @write_color_char(i32 %10, i32 %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.8
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* @board_size, align 4
  %sub12 = sub nsw i32 %13, 1
  %cmp13 = icmp eq i32 %12, %sub12
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* @board_size, align 4
  %16 = load i32, i32* %m.addr, align 4
  %sub15 = sub nsw i32 %15, %16
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %sub15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.11
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_hoshi_point(i32 %m, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %hoshi = alloca i32, align 4
  %middle = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @board_size, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @board_size, align 4
  %cmp2 = icmp eq i32 %2, 3
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.then.3
  %4 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %5 = load i32, i32* @board_size, align 4
  %cmp9 = icmp eq i32 %5, 5
  br i1 %cmp9, label %if.then.10, label %if.end.30

if.then.10:                                       ; preds = %if.end.8
  %6 = load i32, i32* %m.addr, align 4
  %cmp11 = icmp eq i32 %6, 1
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.17

land.lhs.true.12:                                 ; preds = %if.then.10
  %7 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp eq i32 %7, 1
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.12
  %8 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp eq i32 %8, 3
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.14, %land.lhs.true.12
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.14, %if.then.10
  %9 = load i32, i32* %m.addr, align 4
  %cmp18 = icmp eq i32 %9, 2
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.22

land.lhs.true.19:                                 ; preds = %if.end.17
  %10 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp eq i32 %10, 2
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.19, %if.end.17
  %11 = load i32, i32* %m.addr, align 4
  %cmp23 = icmp eq i32 %11, 3
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %if.end.22
  %12 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp eq i32 %12, 1
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.24
  %13 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp eq i32 %13, 3
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.26, %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.26, %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.8
  %14 = load i32, i32* @board_size, align 4
  %cmp31 = icmp sle i32 %14, 11
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.30
  store i32 2, i32* %hoshi, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end.30
  store i32 3, i32* %hoshi, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  %15 = load i32, i32* @board_size, align 4
  %div = sdiv i32 %15, 2
  store i32 %div, i32* %middle, align 4
  %16 = load i32, i32* %m.addr, align 4
  %17 = load i32, i32* %middle, align 4
  %cmp34 = icmp sge i32 %16, %17
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %18 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %18, 1
  %19 = load i32, i32* %m.addr, align 4
  %sub36 = sub nsw i32 %sub, %19
  store i32 %sub36, i32* %m.addr, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %20 = load i32, i32* %n.addr, align 4
  %21 = load i32, i32* %middle, align 4
  %cmp38 = icmp sge i32 %20, %21
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.37
  %22 = load i32, i32* @board_size, align 4
  %sub40 = sub nsw i32 %22, 1
  %23 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 %sub40, %23
  store i32 %sub41, i32* %n.addr, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %24 = load i32, i32* %m.addr, align 4
  %25 = load i32, i32* %hoshi, align 4
  %cmp43 = icmp eq i32 %24, %25
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.47

land.lhs.true.44:                                 ; preds = %if.end.42
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %hoshi, align 4
  %cmp45 = icmp eq i32 %26, %27
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.44, %if.end.42
  %28 = load i32, i32* @board_size, align 4
  %rem = srem i32 %28, 2
  %cmp48 = icmp eq i32 %rem, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.47
  %29 = load i32, i32* @board_size, align 4
  %cmp51 = icmp slt i32 %29, 12
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.50
  %30 = load i32, i32* %m.addr, align 4
  %31 = load i32, i32* %middle, align 4
  %cmp53 = icmp eq i32 %30, %31
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.57

land.lhs.true.54:                                 ; preds = %if.then.52
  %32 = load i32, i32* %n.addr, align 4
  %33 = load i32, i32* %middle, align 4
  %cmp55 = icmp eq i32 %32, %33
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %land.lhs.true.54, %if.then.52
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.50
  %34 = load i32, i32* %m.addr, align 4
  %35 = load i32, i32* %hoshi, align 4
  %cmp59 = icmp eq i32 %34, %35
  br i1 %cmp59, label %land.lhs.true.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.58
  %36 = load i32, i32* %m.addr, align 4
  %37 = load i32, i32* %middle, align 4
  %cmp61 = icmp eq i32 %36, %37
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.67

land.lhs.true.62:                                 ; preds = %lor.lhs.false.60, %if.end.58
  %38 = load i32, i32* %n.addr, align 4
  %39 = load i32, i32* %hoshi, align 4
  %cmp63 = icmp eq i32 %38, %39
  br i1 %cmp63, label %if.then.66, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.62
  %40 = load i32, i32* %n.addr, align 4
  %41 = load i32, i32* %middle, align 4
  %cmp65 = icmp eq i32 %40, %41
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false.64, %land.lhs.true.62
  store i32 1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %lor.lhs.false.64, %lor.lhs.false.60
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.66, %if.end.57, %if.then.56, %if.then.49, %if.then.46, %if.end.29, %if.then.28, %if.then.21, %if.then.16, %if.end.7, %if.then.6, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare void @write_color_char(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @draw_char(i32 %m, i32 %n, i32 %c) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  call void @draw_color_char(i32 %0, i32 %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_draw_board() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @showboard(i32 %xo) #0 {
entry:
  %xo.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32 %xo, i32* %xo.addr, align 4
  call void @gg_init_color()
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @dragon_num, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  store i32 233, i32* @next_white, align 4
  store i32 26, i32* @next_black, align 4
  call void @start_draw_board()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @board_size, align 4
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %ii, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %ii, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %5)
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call4 = call i32 @is_hoshi_point(i32 %10, i32 %11)
  %tobool = icmp ne i32 %call4, 0
  %cond = select i1 %tobool, i32 43, i32 46
  %12 = load i32, i32* %xo.addr, align 4
  call void @showchar(i32 %8, i32 %9, i32 %cond, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %ii, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %15)
  %16 = load i32, i32* %xo.addr, align 4
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %17 = load i32, i32* @board_size, align 4
  %cmp7 = icmp slt i32 %17, 10
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @board_size, align 4
  %sub9 = sub nsw i32 %19, 2
  %cmp10 = icmp eq i32 %18, %sub9
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true
  %20 = load i32, i32* @board_size, align 4
  %cmp11 = icmp sge i32 %20, 10
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %i, align 4
  %cmp13 = icmp eq i32 %21, 8
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12, %land.lhs.true.8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i32, i32* @black_captured, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.12, %lor.lhs.false, %for.end
  %24 = load i32, i32* %xo.addr, align 4
  %cmp15 = icmp eq i32 %24, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.27

land.lhs.true.16:                                 ; preds = %if.end
  %25 = load i32, i32* @board_size, align 4
  %cmp17 = icmp slt i32 %25, 10
  br i1 %cmp17, label %land.lhs.true.18, label %lor.lhs.false.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* @board_size, align 4
  %sub19 = sub nsw i32 %27, 1
  %cmp20 = icmp eq i32 %26, %sub19
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.18, %land.lhs.true.16
  %28 = load i32, i32* @board_size, align 4
  %cmp22 = icmp sge i32 %28, 10
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21
  %29 = load i32, i32* %i, align 4
  %cmp24 = icmp eq i32 %29, 9
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.23, %land.lhs.true.18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i32, i32* @white_captured, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true.23, %lor.lhs.false.21, %if.end
  %32 = load i32, i32* %xo.addr, align 4
  %cmp28 = icmp eq i32 %32, 3
  br i1 %cmp28, label %if.then.29, label %if.end.50

if.then.29:                                       ; preds = %if.end.27
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* @board_size, align 4
  %sub30 = sub nsw i32 %34, 5
  %cmp31 = icmp eq i32 %33, %sub30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  call void @write_color_string(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.29
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* @board_size, align 4
  %sub34 = sub nsw i32 %36, 4
  %cmp35 = icmp eq i32 %35, %sub34
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  call void @write_color_string(i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* @board_size, align 4
  %sub38 = sub nsw i32 %38, 3
  %cmp39 = icmp eq i32 %37, %sub38
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  call void @write_color_string(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @board_size, align 4
  %sub42 = sub nsw i32 %40, 2
  %cmp43 = icmp eq i32 %39, %sub42
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  call void @write_color_string(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @board_size, align 4
  %sub46 = sub nsw i32 %42, 1
  %cmp47 = icmp eq i32 %41, %sub46
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  call void @write_color_string(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.27
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %43 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %43, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  call void @end_draw_board()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @showchar(i32 %i, i32 %j, i32 %empty, i32 %xo) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %empty.addr = alloca i32, align 4
  %xo.addr = alloca i32, align 4
  %d = alloca %struct.dragon_data*, align 8
  %x = alloca i32, align 4
  %empty_color = alloca i32, align 4
  %empty_char = alloca i8, align 1
  %w = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %empty, i32* %empty.addr, align 4
  store i32 %xo, i32* %xo.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp1 = icmp ult i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %i.addr, align 4
  %5 = load i32, i32* %j.addr, align 4
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %6, 20
  %add = add nsw i32 21, %mul
  %7 = load i32, i32* %j.addr, align 4
  %add2 = add nsw i32 %add, %7
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %x, align 4
  %9 = load i32, i32* %i.addr, align 4
  %mul3 = mul nsw i32 %9, 20
  %add4 = add nsw i32 21, %mul3
  %10 = load i32, i32* %j.addr, align 4
  %add5 = add nsw i32 %add4, %10
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  store %struct.dragon_data* %arrayidx7, %struct.dragon_data** %d, align 8
  %11 = load i32, i32* %x, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.10, label %if.else.67

if.then.10:                                       ; preds = %if.end
  %12 = load i32, i32* %xo.addr, align 4
  %cmp11 = icmp ne i32 %12, 2
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.then.10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i32, i32* %empty.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  br label %if.end.66

if.else.14:                                       ; preds = %if.then.10
  %15 = load i32, i32* %i.addr, align 4
  %mul15 = mul nsw i32 %15, 20
  %add16 = add nsw i32 21, %mul15
  %16 = load i32, i32* %j.addr, align 4
  %add17 = add nsw i32 %add16, %16
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom18
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 0
  %17 = load i32, i32* %color, align 4
  %cmp20 = icmp eq i32 %17, 5
  br i1 %cmp20, label %if.then.22, label %if.else.42

if.then.22:                                       ; preds = %if.else.14
  %18 = load i32, i32* %i.addr, align 4
  %mul23 = mul nsw i32 %18, 20
  %add24 = add nsw i32 21, %mul23
  %19 = load i32, i32* %j.addr, align 4
  %add25 = add nsw i32 %add24, %19
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom26
  %color28 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx27, i32 0, i32 0
  %20 = load i32, i32* %color28, align 4
  %cmp29 = icmp eq i32 %20, 4
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.then.22
  %21 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 3), align 4
  store i32 %21, i32* %empty_color, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.then.22
  %22 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 1), align 4
  store i32 %22, i32* %empty_color, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  %23 = load i32, i32* %i.addr, align 4
  %mul34 = mul nsw i32 %23, 20
  %add35 = add nsw i32 21, %mul34
  %24 = load i32, i32* %j.addr, align 4
  %add36 = add nsw i32 %add35, %24
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom37
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx38, i32 0, i32 7
  %25 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.33
  store i8 33, i8* %empty_char, align 1
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.33
  store i8 120, i8* %empty_char, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.64

if.else.42:                                       ; preds = %if.else.14
  %26 = load i32, i32* %i.addr, align 4
  %mul43 = mul nsw i32 %26, 20
  %add44 = add nsw i32 21, %mul43
  %27 = load i32, i32* %j.addr, align 4
  %add45 = add nsw i32 %add44, %27
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom46
  %color48 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx47, i32 0, i32 0
  %28 = load i32, i32* %color48, align 4
  %cmp49 = icmp eq i32 %28, 4
  br i1 %cmp49, label %if.then.51, label %if.else.62

if.then.51:                                       ; preds = %if.else.42
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 2), align 4
  store i32 %29, i32* %empty_color, align 4
  %30 = load i32, i32* %i.addr, align 4
  %mul52 = mul nsw i32 %30, 20
  %add53 = add nsw i32 21, %mul52
  %31 = load i32, i32* %j.addr, align 4
  %add54 = add nsw i32 %add53, %31
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom55
  %marginal57 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx56, i32 0, i32 7
  %32 = load i8, i8* %marginal57, align 1
  %tobool58 = icmp ne i8 %32, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.51
  store i8 33, i8* %empty_char, align 1
  br label %if.end.61

if.else.60:                                       ; preds = %if.then.51
  store i8 111, i8* %empty_char, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.else.62:                                       ; preds = %if.else.42
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 0), align 4
  store i32 %33, i32* %empty_color, align 4
  store i8 46, i8* %empty_char, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.41
  %34 = load i32, i32* %empty_color, align 4
  %35 = load i8, i8* %empty_char, align 1
  %conv65 = sext i8 %35 to i32
  call void @write_color_char(i32 %34, i32 %conv65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %if.then.13
  br label %if.end.185

if.else.67:                                       ; preds = %if.end
  %36 = load i32, i32* %xo.addr, align 4
  %cmp68 = icmp eq i32 %36, 0
  br i1 %cmp68, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.67
  %37 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %37, i32 0, i32 2
  %38 = load i32, i32* %origin, align 4
  %cmp70 = icmp ult i32 %38, 421
  br i1 %cmp70, label %land.lhs.true.72, label %if.then.79

land.lhs.true.72:                                 ; preds = %lor.lhs.false
  %39 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin73 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %39, i32 0, i32 2
  %40 = load i32, i32* %origin73, align 4
  %idxprom74 = sext i32 %40 to i64
  %arrayidx75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom74
  %41 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %41 to i32
  %cmp77 = icmp ne i32 %conv76, 3
  br i1 %cmp77, label %if.end.89, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.72, %lor.lhs.false, %if.else.67
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %i.addr, align 4
  %mul80 = mul nsw i32 %43, 20
  %add81 = add nsw i32 21, %mul80
  %44 = load i32, i32* %j.addr, align 4
  %add82 = add nsw i32 %add81, %44
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom83
  %45 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %45 to i32
  %cmp86 = icmp eq i32 %conv85, 2
  %cond = select i1 %cmp86, i32 88, i32 79
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %cond)
  br label %if.end.185

if.end.89:                                        ; preds = %land.lhs.true.72
  %46 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin90 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 2
  %47 = load i32, i32* %origin90, align 4
  %idxprom91 = sext i32 %47 to i64
  %arrayidx92 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i32 0, i64 %idxprom91
  %48 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %48 to i32
  store i32 %conv93, i32* %w, align 4
  %49 = load i32, i32* %w, align 4
  %tobool94 = icmp ne i32 %49, 0
  br i1 %tobool94, label %if.end.117, label %if.then.95

if.then.95:                                       ; preds = %if.end.89
  %50 = load i32, i32* %i.addr, align 4
  %mul96 = mul nsw i32 %50, 20
  %add97 = add nsw i32 21, %mul96
  %51 = load i32, i32* %j.addr, align 4
  %add98 = add nsw i32 %add97, %51
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %52 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %52 to i32
  %cmp102 = icmp eq i32 %conv101, 2
  br i1 %cmp102, label %if.then.104, label %if.else.110

if.then.104:                                      ; preds = %if.then.95
  %53 = load i32, i32* @next_black, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* @next_black, align 4
  %conv105 = trunc i32 %53 to i8
  %54 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin106 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %54, i32 0, i32 2
  %55 = load i32, i32* %origin106, align 4
  %idxprom107 = sext i32 %55 to i64
  %arrayidx108 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i32 0, i64 %idxprom107
  store i8 %conv105, i8* %arrayidx108, align 1
  %conv109 = zext i8 %conv105 to i32
  store i32 %conv109, i32* %w, align 4
  br label %if.end.116

if.else.110:                                      ; preds = %if.then.95
  %56 = load i32, i32* @next_white, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* @next_white, align 4
  %conv111 = trunc i32 %56 to i8
  %57 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin112 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %57, i32 0, i32 2
  %58 = load i32, i32* %origin112, align 4
  %idxprom113 = sext i32 %58 to i64
  %arrayidx114 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i32 0, i64 %idxprom113
  store i8 %conv111, i8* %arrayidx114, align 1
  %conv115 = zext i8 %conv111 to i32
  store i32 %conv115, i32* %w, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.110, %if.then.104
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.89
  %59 = load i32, i32* %w, align 4
  %rem = srem i32 %59, 26
  %60 = load i32, i32* %i.addr, align 4
  %mul118 = mul nsw i32 %60, 20
  %add119 = add nsw i32 21, %mul118
  %61 = load i32, i32* %j.addr, align 4
  %add120 = add nsw i32 %add119, %61
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom121
  %62 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %62 to i32
  %cmp124 = icmp eq i32 %conv123, 2
  %cond126 = select i1 %cmp124, i32 65, i32 97
  %add127 = add nsw i32 %rem, %cond126
  store i32 %add127, i32* %w, align 4
  %63 = load i32, i32* %xo.addr, align 4
  %cmp128 = icmp eq i32 %63, 1
  br i1 %cmp128, label %if.then.130, label %if.else.140

if.then.130:                                      ; preds = %if.end.117
  %64 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %64, i32 0, i32 5
  %65 = load i32, i32* %crude_status, align 4
  %idxprom131 = sext i32 %65 to i64
  %66 = load i32, i32* %i.addr, align 4
  %mul132 = mul nsw i32 %66, 20
  %add133 = add nsw i32 21, %mul132
  %67 = load i32, i32* %j.addr, align 4
  %add134 = add nsw i32 %add133, %67
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom135
  %68 = load i8, i8* %arrayidx136, align 1
  %idxprom137 = zext i8 %68 to i64
  %arrayidx138 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx138, i32 0, i64 %idxprom131
  %69 = load i32, i32* %arrayidx139, align 4
  %70 = load i32, i32* %w, align 4
  call void @write_color_char(i32 %69, i32 %70)
  br label %if.end.184

if.else.140:                                      ; preds = %if.end.117
  %71 = load i32, i32* %xo.addr, align 4
  %cmp141 = icmp eq i32 %71, 2
  br i1 %cmp141, label %if.then.143, label %if.else.155

if.then.143:                                      ; preds = %if.else.140
  %72 = load i32, i32* %i.addr, align 4
  %mul144 = mul nsw i32 %72, 20
  %add145 = add nsw i32 21, %mul144
  %73 = load i32, i32* %j.addr, align 4
  %add146 = add nsw i32 %add145, %73
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom147
  %74 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %74 to i32
  %cmp150 = icmp eq i32 %conv149, 2
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.then.143
  %75 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 1), align 4
  call void @write_color_char(i32 %75, i32 88)
  br label %if.end.154

if.else.153:                                      ; preds = %if.then.143
  %76 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i32 0, i64 2), align 4
  call void @write_color_char(i32 %76, i32 79)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.153, %if.then.152
  br label %if.end.183

if.else.155:                                      ; preds = %if.else.140
  %77 = load i32, i32* %xo.addr, align 4
  %cmp156 = icmp eq i32 %77, 3
  br i1 %cmp156, label %if.then.158, label %if.else.168

if.then.158:                                      ; preds = %if.else.155
  %78 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %78, i32 0, i32 7
  %79 = load i32, i32* %owl_status, align 4
  %idxprom159 = sext i32 %79 to i64
  %80 = load i32, i32* %i.addr, align 4
  %mul160 = mul nsw i32 %80, 20
  %add161 = add nsw i32 21, %mul160
  %81 = load i32, i32* %j.addr, align 4
  %add162 = add nsw i32 %add161, %81
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom163
  %82 = load i8, i8* %arrayidx164, align 1
  %idxprom165 = zext i8 %82 to i64
  %arrayidx166 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx166, i32 0, i64 %idxprom159
  %83 = load i32, i32* %arrayidx167, align 4
  %84 = load i32, i32* %w, align 4
  call void @write_color_char(i32 %83, i32 %84)
  br label %if.end.182

if.else.168:                                      ; preds = %if.else.155
  %85 = load i32, i32* %xo.addr, align 4
  %cmp169 = icmp eq i32 %85, 4
  br i1 %cmp169, label %if.then.171, label %if.end.181

if.then.171:                                      ; preds = %if.else.168
  %86 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %86, i32 0, i32 16
  %87 = load i32, i32* %status, align 4
  %idxprom172 = sext i32 %87 to i64
  %88 = load i32, i32* %i.addr, align 4
  %mul173 = mul nsw i32 %88, 20
  %add174 = add nsw i32 21, %mul173
  %89 = load i32, i32* %j.addr, align 4
  %add175 = add nsw i32 %add174, %89
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom176
  %90 = load i8, i8* %arrayidx177, align 1
  %idxprom178 = zext i8 %90 to i64
  %arrayidx179 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx179, i32 0, i64 %idxprom172
  %91 = load i32, i32* %arrayidx180, align 4
  %92 = load i32, i32* %w, align 4
  call void @write_color_char(i32 %91, i32 %92)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.171, %if.else.168
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.158
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.154
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.130
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.79, %if.end.184, %if.end.66
  ret void
}

declare void @write_color_string(i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @simple_showboard(%struct._IO_FILE* %outfile) #0 {
entry:
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %4 = load i32, i32* @board_size, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, %5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %sub)
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %8, 20
  %add = add nsw i32 21, %mul
  %9 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %9
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %call7 = call i32 @is_hoshi_point(i32 %12, i32 %13)
  %tobool = icmp ne i32 %call7, 0
  %cond = select i1 %tobool, i32 43, i32 46
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %cond)
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %15, 20
  %add10 = add nsw i32 21, %mul9
  %16 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %add10, %16
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  %cond17 = select i1 %cmp15, i32 88, i32 79
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %cond17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %20 = load i32, i32* @board_size, align 4
  %21 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %20, %21
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %sub19)
  %22 = load i32, i32* @board_size, align 4
  %cmp21 = icmp slt i32 %22, 10
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @board_size, align 4
  %sub23 = sub nsw i32 %24, 2
  %cmp24 = icmp eq i32 %23, %sub23
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %25 = load i32, i32* @board_size, align 4
  %cmp26 = icmp sge i32 %25, 10
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %26, 8
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.28, %land.lhs.true
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %28 = load i32, i32* @black_captured, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i32 %28)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.28, %lor.lhs.false
  %29 = load i32, i32* @board_size, align 4
  %cmp34 = icmp slt i32 %29, 10
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false.40

land.lhs.true.36:                                 ; preds = %if.end.33
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* @board_size, align 4
  %sub37 = sub nsw i32 %31, 1
  %cmp38 = icmp eq i32 %30, %sub37
  br i1 %cmp38, label %if.then.46, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.36, %if.end.33
  %32 = load i32, i32* @board_size, align 4
  %cmp41 = icmp sge i32 %32, 10
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.48

land.lhs.true.43:                                 ; preds = %lor.lhs.false.40
  %33 = load i32, i32* %i, align 4
  %cmp44 = icmp eq i32 %33, 9
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true.43, %land.lhs.true.36
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %35 = load i32, i32* @white_captured, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 %35)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true.43, %lor.lhs.false.40
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %36 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %38)
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
