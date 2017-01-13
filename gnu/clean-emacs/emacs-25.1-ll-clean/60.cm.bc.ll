; ModuleID = './src/cm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_display_info = type { %struct.tty_display_info*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.emacs_tty*, i8, i32, %struct.terminal*, %struct.cm*, i64, %struct.frame*, i32, %struct.Mouse_HLInfo, [4096 x i8], [4096 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_tty = type opaque
%struct.terminal = type opaque
%struct.cm = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }

@cost = common global i32 0, align 4
@current_tty = common global %struct.tty_display_info* null, align 8
@UP = external global i8*, align 8
@BC = external global i8*, align 8
@.str = private unnamed_addr constant [5 x i8] c"OOPS\00", align 1

; Function Attrs: nounwind uwtable
define i32 @evalcost(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @cost, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @cost, align 4
  %1 = load i32, i32* %c.addr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @cmputc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** @current_tty, align 8
  %termscript = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %and = and i32 %2, 127
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** @current_tty, align 8
  %termscript1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript1, align 8
  %call = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %c.addr, align 4
  %and2 = and i32 %5, 127
  %6 = load %struct.tty_display_info*, %struct.tty_display_info** @current_tty, align 8
  %output = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %6, i32 0, i32 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %call3 = call i32 @_IO_putc(i32 %and2, %struct._IO_FILE* %7)
  %8 = load i32, i32* %c.addr, align 4
  ret i32 %8
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @cmcheckmagic(%struct.tty_display_info* %tty) #0 {
entry:
  %tty.addr = alloca %struct.tty_display_info*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 10
  %1 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_curX = getelementptr inbounds %struct.cm, %struct.cm* %1, i32 0, i32 1
  %2 = load i32, i32* %cm_curX, align 4
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 10
  %4 = load %struct.cm*, %struct.cm** %Wcm1, align 8
  %cm_cols = getelementptr inbounds %struct.cm, %struct.cm* %4, i32 0, i32 18
  %5 = load i32, i32* %cm_cols, align 4
  %cmp = icmp eq i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %6 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm2 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %6, i32 0, i32 10
  %7 = load %struct.cm*, %struct.cm** %Wcm2, align 8
  %cm_magicwrap = getelementptr inbounds %struct.cm, %struct.cm* %7, i32 0, i32 21
  %bf.load = load i8, i8* %cm_magicwrap, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm3 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %8, i32 0, i32 10
  %9 = load %struct.cm*, %struct.cm** %Wcm3, align 8
  %cm_curY = getelementptr inbounds %struct.cm, %struct.cm* %9, i32 0, i32 0
  %10 = load i32, i32* %cm_curY, align 4
  %11 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm4 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %11, i32 0, i32 10
  %12 = load %struct.cm*, %struct.cm** %Wcm4, align 8
  %cm_rows = getelementptr inbounds %struct.cm, %struct.cm* %12, i32 0, i32 19
  %13 = load i32, i32* %cm_rows, align 4
  %sub = sub nsw i32 %13, 1
  %cmp5 = icmp sge i32 %10, %sub
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %termscript = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %14, i32 0, i32 5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript, align 8
  %tobool = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %termscript8 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %16, i32 0, i32 5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript8, align 8
  %call = call i32 @_IO_putc(i32 13, %struct._IO_FILE* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %18 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %output = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %18, i32 0, i32 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %call10 = call i32 @_IO_putc(i32 13, %struct._IO_FILE* %19)
  %20 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %termscript11 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %20, i32 0, i32 5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript11, align 8
  %tobool12 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %22 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %termscript14 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %22, i32 0, i32 5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %termscript14, align 8
  %call15 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.9
  %24 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %output17 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %24, i32 0, i32 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %output17, align 8
  %call18 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  %26 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm19 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %26, i32 0, i32 10
  %27 = load %struct.cm*, %struct.cm** %Wcm19, align 8
  %cm_curX20 = getelementptr inbounds %struct.cm, %struct.cm* %27, i32 0, i32 1
  store i32 0, i32* %cm_curX20, align 4
  %28 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm21 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %28, i32 0, i32 10
  %29 = load %struct.cm*, %struct.cm** %Wcm21, align 8
  %cm_curY22 = getelementptr inbounds %struct.cm, %struct.cm* %29, i32 0, i32 0
  %30 = load i32, i32* %cm_curY22, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %cm_curY22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.16, %entry
  ret void
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define void @cmcostinit(%struct.tty_display_info* %tty) #0 {
entry:
  %tty.addr = alloca %struct.tty_display_info*, align 8
  %p = alloca i8*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 10
  %1 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_up = getelementptr inbounds %struct.cm, %struct.cm* %1, i32 0, i32 2
  %2 = load i8*, i8** %cm_up, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  store i32 0, i32* @cost, align 4
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 10
  %4 = load %struct.cm*, %struct.cm** %Wcm1, align 8
  %cm_up2 = getelementptr inbounds %struct.cm, %struct.cm* %4, i32 0, i32 2
  %5 = load i8*, i8** %cm_up2, align 8
  call void @tputs(i8* %5, i32 1, i32 (i32)* @evalcost)
  %6 = load i32, i32* @cost, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 9999, %cond.false ]
  %7 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm3 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %7, i32 0, i32 10
  %8 = load %struct.cm*, %struct.cm** %Wcm3, align 8
  %cc_up = getelementptr inbounds %struct.cm, %struct.cm* %8, i32 0, i32 22
  store i32 %cond, i32* %cc_up, align 4
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm4 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 10
  %10 = load %struct.cm*, %struct.cm** %Wcm4, align 8
  %cm_down = getelementptr inbounds %struct.cm, %struct.cm* %10, i32 0, i32 3
  %11 = load i8*, i8** %cm_down, align 8
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %cond.end
  store i32 0, i32* @cost, align 4
  %12 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm7 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %12, i32 0, i32 10
  %13 = load %struct.cm*, %struct.cm** %Wcm7, align 8
  %cm_down8 = getelementptr inbounds %struct.cm, %struct.cm* %13, i32 0, i32 3
  %14 = load i8*, i8** %cm_down8, align 8
  call void @tputs(i8* %14, i32 1, i32 (i32)* @evalcost)
  %15 = load i32, i32* @cost, align 4
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.6
  %cond11 = phi i32 [ %15, %cond.true.6 ], [ 9999, %cond.false.9 ]
  %16 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm12 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %16, i32 0, i32 10
  %17 = load %struct.cm*, %struct.cm** %Wcm12, align 8
  %cc_down = getelementptr inbounds %struct.cm, %struct.cm* %17, i32 0, i32 23
  store i32 %cond11, i32* %cc_down, align 4
  %18 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm13 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %18, i32 0, i32 10
  %19 = load %struct.cm*, %struct.cm** %Wcm13, align 8
  %cm_left = getelementptr inbounds %struct.cm, %struct.cm* %19, i32 0, i32 4
  %20 = load i8*, i8** %cm_left, align 8
  %tobool14 = icmp ne i8* %20, null
  br i1 %tobool14, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.10
  store i32 0, i32* @cost, align 4
  %21 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm16 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %21, i32 0, i32 10
  %22 = load %struct.cm*, %struct.cm** %Wcm16, align 8
  %cm_left17 = getelementptr inbounds %struct.cm, %struct.cm* %22, i32 0, i32 4
  %23 = load i8*, i8** %cm_left17, align 8
  call void @tputs(i8* %23, i32 1, i32 (i32)* @evalcost)
  %24 = load i32, i32* @cost, align 4
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end.10
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.15
  %cond20 = phi i32 [ %24, %cond.true.15 ], [ 9999, %cond.false.18 ]
  %25 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm21 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %25, i32 0, i32 10
  %26 = load %struct.cm*, %struct.cm** %Wcm21, align 8
  %cc_left = getelementptr inbounds %struct.cm, %struct.cm* %26, i32 0, i32 24
  store i32 %cond20, i32* %cc_left, align 4
  %27 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm22 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %27, i32 0, i32 10
  %28 = load %struct.cm*, %struct.cm** %Wcm22, align 8
  %cm_right = getelementptr inbounds %struct.cm, %struct.cm* %28, i32 0, i32 5
  %29 = load i8*, i8** %cm_right, align 8
  %tobool23 = icmp ne i8* %29, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.end.19
  store i32 0, i32* @cost, align 4
  %30 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm25 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %30, i32 0, i32 10
  %31 = load %struct.cm*, %struct.cm** %Wcm25, align 8
  %cm_right26 = getelementptr inbounds %struct.cm, %struct.cm* %31, i32 0, i32 5
  %32 = load i8*, i8** %cm_right26, align 8
  call void @tputs(i8* %32, i32 1, i32 (i32)* @evalcost)
  %33 = load i32, i32* @cost, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.19
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.24
  %cond29 = phi i32 [ %33, %cond.true.24 ], [ 9999, %cond.false.27 ]
  %34 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm30 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %34, i32 0, i32 10
  %35 = load %struct.cm*, %struct.cm** %Wcm30, align 8
  %cc_right = getelementptr inbounds %struct.cm, %struct.cm* %35, i32 0, i32 25
  store i32 %cond29, i32* %cc_right, align 4
  %36 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm31 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %36, i32 0, i32 10
  %37 = load %struct.cm*, %struct.cm** %Wcm31, align 8
  %cm_home = getelementptr inbounds %struct.cm, %struct.cm* %37, i32 0, i32 6
  %38 = load i8*, i8** %cm_home, align 8
  %tobool32 = icmp ne i8* %38, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.end.28
  store i32 0, i32* @cost, align 4
  %39 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm34 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %39, i32 0, i32 10
  %40 = load %struct.cm*, %struct.cm** %Wcm34, align 8
  %cm_home35 = getelementptr inbounds %struct.cm, %struct.cm* %40, i32 0, i32 6
  %41 = load i8*, i8** %cm_home35, align 8
  call void @tputs(i8* %41, i32 1, i32 (i32)* @evalcost)
  %42 = load i32, i32* @cost, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.28
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.33
  %cond38 = phi i32 [ %42, %cond.true.33 ], [ 9999, %cond.false.36 ]
  %43 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm39 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %43, i32 0, i32 10
  %44 = load %struct.cm*, %struct.cm** %Wcm39, align 8
  %cc_home = getelementptr inbounds %struct.cm, %struct.cm* %44, i32 0, i32 26
  store i32 %cond38, i32* %cc_home, align 4
  %45 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm40 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %45, i32 0, i32 10
  %46 = load %struct.cm*, %struct.cm** %Wcm40, align 8
  %cm_cr = getelementptr inbounds %struct.cm, %struct.cm* %46, i32 0, i32 7
  %47 = load i8*, i8** %cm_cr, align 8
  %tobool41 = icmp ne i8* %47, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %cond.end.37
  store i32 0, i32* @cost, align 4
  %48 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm43 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %48, i32 0, i32 10
  %49 = load %struct.cm*, %struct.cm** %Wcm43, align 8
  %cm_cr44 = getelementptr inbounds %struct.cm, %struct.cm* %49, i32 0, i32 7
  %50 = load i8*, i8** %cm_cr44, align 8
  call void @tputs(i8* %50, i32 1, i32 (i32)* @evalcost)
  %51 = load i32, i32* @cost, align 4
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end.37
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.42
  %cond47 = phi i32 [ %51, %cond.true.42 ], [ 9999, %cond.false.45 ]
  %52 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm48 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %52, i32 0, i32 10
  %53 = load %struct.cm*, %struct.cm** %Wcm48, align 8
  %cc_cr = getelementptr inbounds %struct.cm, %struct.cm* %53, i32 0, i32 27
  store i32 %cond47, i32* %cc_cr, align 4
  %54 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm49 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %54, i32 0, i32 10
  %55 = load %struct.cm*, %struct.cm** %Wcm49, align 8
  %cm_ll = getelementptr inbounds %struct.cm, %struct.cm* %55, i32 0, i32 8
  %56 = load i8*, i8** %cm_ll, align 8
  %tobool50 = icmp ne i8* %56, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.54

cond.true.51:                                     ; preds = %cond.end.46
  store i32 0, i32* @cost, align 4
  %57 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm52 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %57, i32 0, i32 10
  %58 = load %struct.cm*, %struct.cm** %Wcm52, align 8
  %cm_ll53 = getelementptr inbounds %struct.cm, %struct.cm* %58, i32 0, i32 8
  %59 = load i8*, i8** %cm_ll53, align 8
  call void @tputs(i8* %59, i32 1, i32 (i32)* @evalcost)
  %60 = load i32, i32* @cost, align 4
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end.46
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.51
  %cond56 = phi i32 [ %60, %cond.true.51 ], [ 9999, %cond.false.54 ]
  %61 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm57 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %61, i32 0, i32 10
  %62 = load %struct.cm*, %struct.cm** %Wcm57, align 8
  %cc_ll = getelementptr inbounds %struct.cm, %struct.cm* %62, i32 0, i32 28
  store i32 %cond56, i32* %cc_ll, align 4
  %63 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm58 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %63, i32 0, i32 10
  %64 = load %struct.cm*, %struct.cm** %Wcm58, align 8
  %cm_tabwidth = getelementptr inbounds %struct.cm, %struct.cm* %64, i32 0, i32 20
  %65 = load i32, i32* %cm_tabwidth, align 4
  %tobool59 = icmp ne i32 %65, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.69

cond.true.60:                                     ; preds = %cond.end.55
  %66 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm61 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %66, i32 0, i32 10
  %67 = load %struct.cm*, %struct.cm** %Wcm61, align 8
  %cm_tab = getelementptr inbounds %struct.cm, %struct.cm* %67, i32 0, i32 9
  %68 = load i8*, i8** %cm_tab, align 8
  %tobool62 = icmp ne i8* %68, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.true.60
  store i32 0, i32* @cost, align 4
  %69 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm64 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %69, i32 0, i32 10
  %70 = load %struct.cm*, %struct.cm** %Wcm64, align 8
  %cm_tab65 = getelementptr inbounds %struct.cm, %struct.cm* %70, i32 0, i32 9
  %71 = load i8*, i8** %cm_tab65, align 8
  call void @tputs(i8* %71, i32 1, i32 (i32)* @evalcost)
  %72 = load i32, i32* @cost, align 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.true.60
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.63
  %cond68 = phi i32 [ %72, %cond.true.63 ], [ 9999, %cond.false.66 ]
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.55
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.end.67
  %cond71 = phi i32 [ %cond68, %cond.end.67 ], [ 9999, %cond.false.69 ]
  %73 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm72 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %73, i32 0, i32 10
  %74 = load %struct.cm*, %struct.cm** %Wcm72, align 8
  %cc_tab = getelementptr inbounds %struct.cm, %struct.cm* %74, i32 0, i32 29
  store i32 %cond71, i32* %cc_tab, align 4
  %75 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm73 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %75, i32 0, i32 10
  %76 = load %struct.cm*, %struct.cm** %Wcm73, align 8
  %cm_abs = getelementptr inbounds %struct.cm, %struct.cm* %76, i32 0, i32 11
  %77 = load i8*, i8** %cm_abs, align 8
  %cmp = icmp eq i8* %77, null
  br i1 %cmp, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.70
  br label %cond.end.83

cond.false.75:                                    ; preds = %cond.end.70
  %78 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm76 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %78, i32 0, i32 10
  %79 = load %struct.cm*, %struct.cm** %Wcm76, align 8
  %cm_abs77 = getelementptr inbounds %struct.cm, %struct.cm* %79, i32 0, i32 11
  %80 = load i8*, i8** %cm_abs77, align 8
  %call = call i8* @tgoto(i8* %80, i32 0, i32 0)
  store i8* %call, i8** %p, align 8
  %81 = load i8*, i8** %p, align 8
  %tobool78 = icmp ne i8* %81, null
  br i1 %tobool78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.75
  store i32 0, i32* @cost, align 4
  %82 = load i8*, i8** %p, align 8
  call void @tputs(i8* %82, i32 1, i32 (i32)* @evalcost)
  %83 = load i32, i32* @cost, align 4
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.false.75
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.79
  %cond82 = phi i32 [ %83, %cond.true.79 ], [ 9999, %cond.false.80 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.74
  %cond84 = phi i32 [ 9999, %cond.true.74 ], [ %cond82, %cond.end.81 ]
  %84 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm85 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %84, i32 0, i32 10
  %85 = load %struct.cm*, %struct.cm** %Wcm85, align 8
  %cc_abs = getelementptr inbounds %struct.cm, %struct.cm* %85, i32 0, i32 31
  store i32 %cond84, i32* %cc_abs, align 4
  %86 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm86 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %86, i32 0, i32 10
  %87 = load %struct.cm*, %struct.cm** %Wcm86, align 8
  %cm_habs = getelementptr inbounds %struct.cm, %struct.cm* %87, i32 0, i32 12
  %88 = load i8*, i8** %cm_habs, align 8
  %cmp87 = icmp eq i8* %88, null
  br i1 %cmp87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.83
  br label %cond.end.98

cond.false.89:                                    ; preds = %cond.end.83
  %89 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm90 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %89, i32 0, i32 10
  %90 = load %struct.cm*, %struct.cm** %Wcm90, align 8
  %cm_habs91 = getelementptr inbounds %struct.cm, %struct.cm* %90, i32 0, i32 12
  %91 = load i8*, i8** %cm_habs91, align 8
  %call92 = call i8* @tgoto(i8* %91, i32 0, i32 0)
  store i8* %call92, i8** %p, align 8
  %92 = load i8*, i8** %p, align 8
  %tobool93 = icmp ne i8* %92, null
  br i1 %tobool93, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.false.89
  store i32 0, i32* @cost, align 4
  %93 = load i8*, i8** %p, align 8
  call void @tputs(i8* %93, i32 1, i32 (i32)* @evalcost)
  %94 = load i32, i32* @cost, align 4
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.89
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i32 [ %94, %cond.true.94 ], [ 9999, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.88
  %cond99 = phi i32 [ 9999, %cond.true.88 ], [ %cond97, %cond.end.96 ]
  %95 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm100 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %95, i32 0, i32 10
  %96 = load %struct.cm*, %struct.cm** %Wcm100, align 8
  %cc_habs = getelementptr inbounds %struct.cm, %struct.cm* %96, i32 0, i32 32
  store i32 %cond99, i32* %cc_habs, align 4
  %97 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm101 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %97, i32 0, i32 10
  %98 = load %struct.cm*, %struct.cm** %Wcm101, align 8
  %cm_vabs = getelementptr inbounds %struct.cm, %struct.cm* %98, i32 0, i32 13
  %99 = load i8*, i8** %cm_vabs, align 8
  %cmp102 = icmp eq i8* %99, null
  br i1 %cmp102, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.end.98
  br label %cond.end.113

cond.false.104:                                   ; preds = %cond.end.98
  %100 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm105 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %100, i32 0, i32 10
  %101 = load %struct.cm*, %struct.cm** %Wcm105, align 8
  %cm_vabs106 = getelementptr inbounds %struct.cm, %struct.cm* %101, i32 0, i32 13
  %102 = load i8*, i8** %cm_vabs106, align 8
  %call107 = call i8* @tgoto(i8* %102, i32 0, i32 0)
  store i8* %call107, i8** %p, align 8
  %103 = load i8*, i8** %p, align 8
  %tobool108 = icmp ne i8* %103, null
  br i1 %tobool108, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.104
  store i32 0, i32* @cost, align 4
  %104 = load i8*, i8** %p, align 8
  call void @tputs(i8* %104, i32 1, i32 (i32)* @evalcost)
  %105 = load i32, i32* @cost, align 4
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.false.104
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi i32 [ %105, %cond.true.109 ], [ 9999, %cond.false.110 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.true.103
  %cond114 = phi i32 [ 9999, %cond.true.103 ], [ %cond112, %cond.end.111 ]
  %106 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm115 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %106, i32 0, i32 10
  %107 = load %struct.cm*, %struct.cm** %Wcm115, align 8
  %cc_vabs = getelementptr inbounds %struct.cm, %struct.cm* %107, i32 0, i32 33
  store i32 %cond114, i32* %cc_vabs, align 4
  ret void
}

declare void @tputs(i8*, i32, i32 (i32)*) #1

declare i8* @tgoto(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @cmgoto(%struct.tty_display_info* %tty, i32 %row, i32 %col) #0 {
entry:
  %tty.addr = alloca %struct.tty_display_info*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %homecost = alloca i32, align 4
  %crcost = alloca i32, align 4
  %llcost = alloca i32, align 4
  %relcost = alloca i32, align 4
  %directcost = alloca i32, align 4
  %use = alloca i32, align 4
  %p = alloca i8*, align 8
  %dcm = alloca i8*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %1, i32 0, i32 10
  %2 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_curY = getelementptr inbounds %struct.cm, %struct.cm* %2, i32 0, i32 0
  %3 = load i32, i32* %cm_curY, align 4
  %cmp = icmp eq i32 %0, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %col.addr, align 4
  %5 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %5, i32 0, i32 10
  %6 = load %struct.cm*, %struct.cm** %Wcm1, align 8
  %cm_curX = getelementptr inbounds %struct.cm, %struct.cm* %6, i32 0, i32 1
  %7 = load i32, i32* %cm_curX, align 4
  %cmp2 = icmp eq i32 %4, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm3 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %8, i32 0, i32 10
  %9 = load %struct.cm*, %struct.cm** %Wcm3, align 8
  %cm_curY4 = getelementptr inbounds %struct.cm, %struct.cm* %9, i32 0, i32 0
  %10 = load i32, i32* %cm_curY4, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.86

land.lhs.true.6:                                  ; preds = %if.end
  %11 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm7 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %11, i32 0, i32 10
  %12 = load %struct.cm*, %struct.cm** %Wcm7, align 8
  %cm_curX8 = getelementptr inbounds %struct.cm, %struct.cm* %12, i32 0, i32 1
  %13 = load i32, i32* %cm_curX8, align 4
  %cmp9 = icmp sge i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.else.86

if.then.10:                                       ; preds = %land.lhs.true.6
  %14 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %15 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm11 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %15, i32 0, i32 10
  %16 = load %struct.cm*, %struct.cm** %Wcm11, align 8
  %cm_curY12 = getelementptr inbounds %struct.cm, %struct.cm* %16, i32 0, i32 0
  %17 = load i32, i32* %cm_curY12, align 4
  %18 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm13 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %18, i32 0, i32 10
  %19 = load %struct.cm*, %struct.cm** %Wcm13, align 8
  %cm_curX14 = getelementptr inbounds %struct.cm, %struct.cm* %19, i32 0, i32 1
  %20 = load i32, i32* %cm_curX14, align 4
  %21 = load i32, i32* %row.addr, align 4
  %22 = load i32, i32* %col.addr, align 4
  %call = call i32 @calccost(%struct.tty_display_info* %14, i32 %17, i32 %20, i32 %21, i32 %22, i32 0)
  store i32 %call, i32* %relcost, align 4
  store i32 0, i32* %use, align 4
  %23 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm15 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %23, i32 0, i32 10
  %24 = load %struct.cm*, %struct.cm** %Wcm15, align 8
  %cc_home = getelementptr inbounds %struct.cm, %struct.cm* %24, i32 0, i32 26
  %25 = load i32, i32* %cc_home, align 4
  store i32 %25, i32* %homecost, align 4
  %cmp16 = icmp slt i32 %25, 9999
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.10
  %26 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %27 = load i32, i32* %row.addr, align 4
  %28 = load i32, i32* %col.addr, align 4
  %call18 = call i32 @calccost(%struct.tty_display_info* %26, i32 0, i32 0, i32 %27, i32 %28, i32 0)
  %29 = load i32, i32* %homecost, align 4
  %add = add nsw i32 %29, %call18
  store i32 %add, i32* %homecost, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.10
  %30 = load i32, i32* %homecost, align 4
  %31 = load i32, i32* %relcost, align 4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %32 = load i32, i32* %homecost, align 4
  store i32 %32, i32* %relcost, align 4
  store i32 1, i32* %use, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %33 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm23 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %33, i32 0, i32 10
  %34 = load %struct.cm*, %struct.cm** %Wcm23, align 8
  %cc_ll = getelementptr inbounds %struct.cm, %struct.cm* %34, i32 0, i32 28
  %35 = load i32, i32* %cc_ll, align 4
  store i32 %35, i32* %llcost, align 4
  %cmp24 = icmp slt i32 %35, 9999
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %36 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %37 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm26 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %37, i32 0, i32 10
  %38 = load %struct.cm*, %struct.cm** %Wcm26, align 8
  %cm_rows = getelementptr inbounds %struct.cm, %struct.cm* %38, i32 0, i32 19
  %39 = load i32, i32* %cm_rows, align 4
  %sub = sub nsw i32 %39, 1
  %40 = load i32, i32* %row.addr, align 4
  %41 = load i32, i32* %col.addr, align 4
  %call27 = call i32 @calccost(%struct.tty_display_info* %36, i32 %sub, i32 0, i32 %40, i32 %41, i32 0)
  %42 = load i32, i32* %llcost, align 4
  %add28 = add nsw i32 %42, %call27
  store i32 %add28, i32* %llcost, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.22
  %43 = load i32, i32* %llcost, align 4
  %44 = load i32, i32* %relcost, align 4
  %cmp30 = icmp slt i32 %43, %44
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %45 = load i32, i32* %llcost, align 4
  store i32 %45, i32* %relcost, align 4
  store i32 2, i32* %use, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %46 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm33 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %46, i32 0, i32 10
  %47 = load %struct.cm*, %struct.cm** %Wcm33, align 8
  %cc_cr = getelementptr inbounds %struct.cm, %struct.cm* %47, i32 0, i32 27
  %48 = load i32, i32* %cc_cr, align 4
  store i32 %48, i32* %crcost, align 4
  %cmp34 = icmp slt i32 %48, 9999
  br i1 %cmp34, label %if.then.35, label %if.end.57

if.then.35:                                       ; preds = %if.end.32
  %49 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm36 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %49, i32 0, i32 10
  %50 = load %struct.cm*, %struct.cm** %Wcm36, align 8
  %cm_autolf = getelementptr inbounds %struct.cm, %struct.cm* %50, i32 0, i32 21
  %bf.load = load i8, i8* %cm_autolf, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %if.then.35
  %51 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm38 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %51, i32 0, i32 10
  %52 = load %struct.cm*, %struct.cm** %Wcm38, align 8
  %cm_curY39 = getelementptr inbounds %struct.cm, %struct.cm* %52, i32 0, i32 0
  %53 = load i32, i32* %cm_curY39, align 4
  %add40 = add nsw i32 %53, 1
  %54 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm41 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %54, i32 0, i32 10
  %55 = load %struct.cm*, %struct.cm** %Wcm41, align 8
  %cm_rows42 = getelementptr inbounds %struct.cm, %struct.cm* %55, i32 0, i32 19
  %56 = load i32, i32* %cm_rows42, align 4
  %cmp43 = icmp sge i32 %add40, %56
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.37
  store i32 9999, i32* %crcost, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.then.37
  %57 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %58 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm45 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %58, i32 0, i32 10
  %59 = load %struct.cm*, %struct.cm** %Wcm45, align 8
  %cm_curY46 = getelementptr inbounds %struct.cm, %struct.cm* %59, i32 0, i32 0
  %60 = load i32, i32* %cm_curY46, align 4
  %add47 = add nsw i32 %60, 1
  %61 = load i32, i32* %row.addr, align 4
  %62 = load i32, i32* %col.addr, align 4
  %call48 = call i32 @calccost(%struct.tty_display_info* %57, i32 %add47, i32 0, i32 %61, i32 %62, i32 0)
  %63 = load i32, i32* %crcost, align 4
  %add49 = add nsw i32 %63, %call48
  store i32 %add49, i32* %crcost, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.44
  br label %if.end.56

if.else.51:                                       ; preds = %if.then.35
  %64 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %65 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm52 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %65, i32 0, i32 10
  %66 = load %struct.cm*, %struct.cm** %Wcm52, align 8
  %cm_curY53 = getelementptr inbounds %struct.cm, %struct.cm* %66, i32 0, i32 0
  %67 = load i32, i32* %cm_curY53, align 4
  %68 = load i32, i32* %row.addr, align 4
  %69 = load i32, i32* %col.addr, align 4
  %call54 = call i32 @calccost(%struct.tty_display_info* %64, i32 %67, i32 0, i32 %68, i32 %69, i32 0)
  %70 = load i32, i32* %crcost, align 4
  %add55 = add nsw i32 %70, %call54
  store i32 %add55, i32* %crcost, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.51, %if.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.32
  %71 = load i32, i32* %crcost, align 4
  %72 = load i32, i32* %relcost, align 4
  %cmp58 = icmp slt i32 %71, %72
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %73 = load i32, i32* %crcost, align 4
  store i32 %73, i32* %relcost, align 4
  store i32 3, i32* %use, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  %74 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm61 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %74, i32 0, i32 10
  %75 = load %struct.cm*, %struct.cm** %Wcm61, align 8
  %cc_abs = getelementptr inbounds %struct.cm, %struct.cm* %75, i32 0, i32 31
  %76 = load i32, i32* %cc_abs, align 4
  store i32 %76, i32* %directcost, align 4
  %77 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm62 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %77, i32 0, i32 10
  %78 = load %struct.cm*, %struct.cm** %Wcm62, align 8
  %cm_abs = getelementptr inbounds %struct.cm, %struct.cm* %78, i32 0, i32 11
  %79 = load i8*, i8** %cm_abs, align 8
  store i8* %79, i8** %dcm, align 8
  %80 = load i32, i32* %row.addr, align 4
  %81 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm63 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %81, i32 0, i32 10
  %82 = load %struct.cm*, %struct.cm** %Wcm63, align 8
  %cm_curY64 = getelementptr inbounds %struct.cm, %struct.cm* %82, i32 0, i32 0
  %83 = load i32, i32* %cm_curY64, align 4
  %cmp65 = icmp eq i32 %80, %83
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.73

land.lhs.true.66:                                 ; preds = %if.end.60
  %84 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm67 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %84, i32 0, i32 10
  %85 = load %struct.cm*, %struct.cm** %Wcm67, align 8
  %cc_habs = getelementptr inbounds %struct.cm, %struct.cm* %85, i32 0, i32 32
  %86 = load i32, i32* %cc_habs, align 4
  %cmp68 = icmp slt i32 %86, 9999
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %land.lhs.true.66
  %87 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm70 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %87, i32 0, i32 10
  %88 = load %struct.cm*, %struct.cm** %Wcm70, align 8
  %cc_habs71 = getelementptr inbounds %struct.cm, %struct.cm* %88, i32 0, i32 32
  %89 = load i32, i32* %cc_habs71, align 4
  store i32 %89, i32* %directcost, align 4
  %90 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm72 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %90, i32 0, i32 10
  %91 = load %struct.cm*, %struct.cm** %Wcm72, align 8
  %cm_habs = getelementptr inbounds %struct.cm, %struct.cm* %91, i32 0, i32 12
  %92 = load i8*, i8** %cm_habs, align 8
  store i8* %92, i8** %dcm, align 8
  br label %if.end.85

if.else.73:                                       ; preds = %land.lhs.true.66, %if.end.60
  %93 = load i32, i32* %col.addr, align 4
  %94 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm74 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %94, i32 0, i32 10
  %95 = load %struct.cm*, %struct.cm** %Wcm74, align 8
  %cm_curX75 = getelementptr inbounds %struct.cm, %struct.cm* %95, i32 0, i32 1
  %96 = load i32, i32* %cm_curX75, align 4
  %cmp76 = icmp eq i32 %93, %96
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.84

land.lhs.true.77:                                 ; preds = %if.else.73
  %97 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm78 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %97, i32 0, i32 10
  %98 = load %struct.cm*, %struct.cm** %Wcm78, align 8
  %cc_vabs = getelementptr inbounds %struct.cm, %struct.cm* %98, i32 0, i32 33
  %99 = load i32, i32* %cc_vabs, align 4
  %cmp79 = icmp slt i32 %99, 9999
  br i1 %cmp79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %land.lhs.true.77
  %100 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm81 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %100, i32 0, i32 10
  %101 = load %struct.cm*, %struct.cm** %Wcm81, align 8
  %cc_vabs82 = getelementptr inbounds %struct.cm, %struct.cm* %101, i32 0, i32 33
  %102 = load i32, i32* %cc_vabs82, align 4
  store i32 %102, i32* %directcost, align 4
  %103 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm83 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %103, i32 0, i32 10
  %104 = load %struct.cm*, %struct.cm** %Wcm83, align 8
  %cm_vabs = getelementptr inbounds %struct.cm, %struct.cm* %104, i32 0, i32 13
  %105 = load i8*, i8** %cm_vabs, align 8
  store i8* %105, i8** %dcm, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.else.73
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.69
  br label %if.end.89

if.else.86:                                       ; preds = %land.lhs.true.6, %if.end
  store i32 0, i32* %directcost, align 4
  store i32 100000, i32* %relcost, align 4
  %106 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm87 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %106, i32 0, i32 10
  %107 = load %struct.cm*, %struct.cm** %Wcm87, align 8
  %cm_abs88 = getelementptr inbounds %struct.cm, %struct.cm* %107, i32 0, i32 11
  %108 = load i8*, i8** %cm_abs88, align 8
  store i8* %108, i8** %dcm, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.end.85
  %109 = load i32, i32* %directcost, align 4
  %110 = load i32, i32* %relcost, align 4
  %cmp90 = icmp sle i32 %109, %110
  br i1 %cmp90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %if.end.89
  store i32 0, i32* @cost, align 4
  %111 = load i8*, i8** %dcm, align 8
  %112 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm92 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %112, i32 0, i32 10
  %113 = load %struct.cm*, %struct.cm** %Wcm92, align 8
  %cm_habs93 = getelementptr inbounds %struct.cm, %struct.cm* %113, i32 0, i32 12
  %114 = load i8*, i8** %cm_habs93, align 8
  %cmp94 = icmp eq i8* %111, %114
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.91
  %115 = load i8*, i8** %dcm, align 8
  %116 = load i32, i32* %row.addr, align 4
  %117 = load i32, i32* %col.addr, align 4
  %call95 = call i8* @tgoto(i8* %115, i32 %116, i32 %117)
  br label %cond.end

cond.false:                                       ; preds = %if.then.91
  %118 = load i8*, i8** %dcm, align 8
  %119 = load i32, i32* %col.addr, align 4
  %120 = load i32, i32* %row.addr, align 4
  %call96 = call i8* @tgoto(i8* %118, i32 %119, i32 %120)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call95, %cond.true ], [ %call96, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %121 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %121, %struct.tty_display_info** @current_tty, align 8
  %122 = load i8*, i8** %p, align 8
  call void @tputs(i8* %122, i32 1, i32 (i32)* @evalcost)
  %123 = load i32, i32* @cost, align 4
  %124 = load i32, i32* %relcost, align 4
  %cmp97 = icmp sle i32 %123, %124
  br i1 %cmp97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %cond.end
  %125 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %125, %struct.tty_display_info** @current_tty, align 8
  %126 = load i8*, i8** %p, align 8
  call void @tputs(i8* %126, i32 1, i32 (i32)* @cmputc)
  %127 = load i32, i32* %row.addr, align 4
  %128 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm99 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %128, i32 0, i32 10
  %129 = load %struct.cm*, %struct.cm** %Wcm99, align 8
  %cm_curY100 = getelementptr inbounds %struct.cm, %struct.cm* %129, i32 0, i32 0
  store i32 %127, i32* %cm_curY100, align 4
  %130 = load i32, i32* %col.addr, align 4
  %131 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm101 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %131, i32 0, i32 10
  %132 = load %struct.cm*, %struct.cm** %Wcm101, align 8
  %cm_curX102 = getelementptr inbounds %struct.cm, %struct.cm* %132, i32 0, i32 1
  store i32 %130, i32* %cm_curX102, align 4
  br label %return

if.end.103:                                       ; preds = %cond.end
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.89
  %133 = load i32, i32* %use, align 4
  switch i32 %133, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.110
    i32 3, label %sw.bb.119
  ]

sw.bb:                                            ; preds = %if.end.104
  %134 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %134, %struct.tty_display_info** @current_tty, align 8
  %135 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm105 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %135, i32 0, i32 10
  %136 = load %struct.cm*, %struct.cm** %Wcm105, align 8
  %cm_home = getelementptr inbounds %struct.cm, %struct.cm* %136, i32 0, i32 6
  %137 = load i8*, i8** %cm_home, align 8
  call void @tputs(i8* %137, i32 1, i32 (i32)* @cmputc)
  %138 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm106 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %138, i32 0, i32 10
  %139 = load %struct.cm*, %struct.cm** %Wcm106, align 8
  %cm_curY107 = getelementptr inbounds %struct.cm, %struct.cm* %139, i32 0, i32 0
  store i32 0, i32* %cm_curY107, align 4
  %140 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm108 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %140, i32 0, i32 10
  %141 = load %struct.cm*, %struct.cm** %Wcm108, align 8
  %cm_curX109 = getelementptr inbounds %struct.cm, %struct.cm* %141, i32 0, i32 1
  store i32 0, i32* %cm_curX109, align 4
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.104
  %142 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %142, %struct.tty_display_info** @current_tty, align 8
  %143 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm111 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %143, i32 0, i32 10
  %144 = load %struct.cm*, %struct.cm** %Wcm111, align 8
  %cm_ll = getelementptr inbounds %struct.cm, %struct.cm* %144, i32 0, i32 8
  %145 = load i8*, i8** %cm_ll, align 8
  call void @tputs(i8* %145, i32 1, i32 (i32)* @cmputc)
  %146 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm112 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %146, i32 0, i32 10
  %147 = load %struct.cm*, %struct.cm** %Wcm112, align 8
  %cm_rows113 = getelementptr inbounds %struct.cm, %struct.cm* %147, i32 0, i32 19
  %148 = load i32, i32* %cm_rows113, align 4
  %sub114 = sub nsw i32 %148, 1
  %149 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm115 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %149, i32 0, i32 10
  %150 = load %struct.cm*, %struct.cm** %Wcm115, align 8
  %cm_curY116 = getelementptr inbounds %struct.cm, %struct.cm* %150, i32 0, i32 0
  store i32 %sub114, i32* %cm_curY116, align 4
  %151 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm117 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %151, i32 0, i32 10
  %152 = load %struct.cm*, %struct.cm** %Wcm117, align 8
  %cm_curX118 = getelementptr inbounds %struct.cm, %struct.cm* %152, i32 0, i32 1
  store i32 0, i32* %cm_curX118, align 4
  br label %sw.epilog

sw.bb.119:                                        ; preds = %if.end.104
  %153 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %153, %struct.tty_display_info** @current_tty, align 8
  %154 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm120 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %154, i32 0, i32 10
  %155 = load %struct.cm*, %struct.cm** %Wcm120, align 8
  %cm_cr = getelementptr inbounds %struct.cm, %struct.cm* %155, i32 0, i32 7
  %156 = load i8*, i8** %cm_cr, align 8
  call void @tputs(i8* %156, i32 1, i32 (i32)* @cmputc)
  %157 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm121 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %157, i32 0, i32 10
  %158 = load %struct.cm*, %struct.cm** %Wcm121, align 8
  %cm_autolf122 = getelementptr inbounds %struct.cm, %struct.cm* %158, i32 0, i32 21
  %bf.load123 = load i8, i8* %cm_autolf122, align 4
  %bf.lshr124 = lshr i8 %bf.load123, 4
  %bf.clear125 = and i8 %bf.lshr124, 1
  %bf.cast126 = trunc i8 %bf.clear125 to i1
  br i1 %bf.cast126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %sw.bb.119
  %159 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm128 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %159, i32 0, i32 10
  %160 = load %struct.cm*, %struct.cm** %Wcm128, align 8
  %cm_curY129 = getelementptr inbounds %struct.cm, %struct.cm* %160, i32 0, i32 0
  %161 = load i32, i32* %cm_curY129, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %cm_curY129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %sw.bb.119
  %162 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm131 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %162, i32 0, i32 10
  %163 = load %struct.cm*, %struct.cm** %Wcm131, align 8
  %cm_curX132 = getelementptr inbounds %struct.cm, %struct.cm* %163, i32 0, i32 1
  store i32 0, i32* %cm_curX132, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.104, %if.end.130, %sw.bb.110, %sw.bb
  %164 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %165 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm133 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %165, i32 0, i32 10
  %166 = load %struct.cm*, %struct.cm** %Wcm133, align 8
  %cm_curY134 = getelementptr inbounds %struct.cm, %struct.cm* %166, i32 0, i32 0
  %167 = load i32, i32* %cm_curY134, align 4
  %168 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm135 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %168, i32 0, i32 10
  %169 = load %struct.cm*, %struct.cm** %Wcm135, align 8
  %cm_curX136 = getelementptr inbounds %struct.cm, %struct.cm* %169, i32 0, i32 1
  %170 = load i32, i32* %cm_curX136, align 4
  %171 = load i32, i32* %row.addr, align 4
  %172 = load i32, i32* %col.addr, align 4
  %call137 = call i32 @calccost(%struct.tty_display_info* %164, i32 %167, i32 %170, i32 %171, i32 %172, i32 1)
  %173 = load i32, i32* %row.addr, align 4
  %174 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm138 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %174, i32 0, i32 10
  %175 = load %struct.cm*, %struct.cm** %Wcm138, align 8
  %cm_curY139 = getelementptr inbounds %struct.cm, %struct.cm* %175, i32 0, i32 0
  store i32 %173, i32* %cm_curY139, align 4
  %176 = load i32, i32* %col.addr, align 4
  %177 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm140 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %177, i32 0, i32 10
  %178 = load %struct.cm*, %struct.cm** %Wcm140, align 8
  %cm_curX141 = getelementptr inbounds %struct.cm, %struct.cm* %178, i32 0, i32 1
  store i32 %176, i32* %cm_curX141, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.98, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @calccost(%struct.tty_display_info* %tty, i32 %srcy, i32 %srcx, i32 %dsty, i32 %dstx, i32 %doit) #0 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_display_info*, align 8
  %srcy.addr = alloca i32, align 4
  %srcx.addr = alloca i32, align 4
  %dsty.addr = alloca i32, align 4
  %dstx.addr = alloca i32, align 4
  %doit.addr = alloca i32, align 4
  %deltay = alloca i32, align 4
  %deltax = alloca i32, align 4
  %c = alloca i32, align 4
  %totalcost = alloca i32, align 4
  %ntabs = alloca i32, align 4
  %n2tabs = alloca i32, align 4
  %tabx = alloca i32, align 4
  %tab2x = alloca i32, align 4
  %tabcost = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  store i32 %srcy, i32* %srcy.addr, align 4
  store i32 %srcx, i32* %srcx.addr, align 4
  store i32 %dsty, i32* %dsty.addr, align 4
  store i32 %dstx, i32* %dstx.addr, align 4
  store i32 %doit, i32* %doit.addr, align 4
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 10
  %1 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_curX = getelementptr inbounds %struct.cm, %struct.cm* %1, i32 0, i32 1
  %2 = load i32, i32* %cm_curX, align 4
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 10
  %4 = load %struct.cm*, %struct.cm** %Wcm1, align 8
  %cm_cols = getelementptr inbounds %struct.cm, %struct.cm* %4, i32 0, i32 18
  %5 = load i32, i32* %cm_cols, align 4
  %cmp = icmp eq i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  store i32 0, i32* %totalcost, align 4
  %6 = load i32, i32* %dsty.addr, align 4
  %7 = load i32, i32* %srcy.addr, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %deltay, align 4
  %cmp2 = icmp eq i32 %sub, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %x

if.end.4:                                         ; preds = %if.end
  %8 = load i32, i32* %deltay, align 4
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm7 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 10
  %10 = load %struct.cm*, %struct.cm** %Wcm7, align 8
  %cm_up = getelementptr inbounds %struct.cm, %struct.cm* %10, i32 0, i32 2
  %11 = load i8*, i8** %cm_up, align 8
  store i8* %11, i8** %p, align 8
  %12 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm8 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %12, i32 0, i32 10
  %13 = load %struct.cm*, %struct.cm** %Wcm8, align 8
  %cc_up = getelementptr inbounds %struct.cm, %struct.cm* %13, i32 0, i32 22
  %14 = load i32, i32* %cc_up, align 4
  store i32 %14, i32* %c, align 4
  %15 = load i32, i32* %deltay, align 4
  %sub9 = sub nsw i32 0, %15
  store i32 %sub9, i32* %deltay, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end.4
  %16 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm10 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %16, i32 0, i32 10
  %17 = load %struct.cm*, %struct.cm** %Wcm10, align 8
  %cm_down = getelementptr inbounds %struct.cm, %struct.cm* %17, i32 0, i32 3
  %18 = load i8*, i8** %cm_down, align 8
  store i8* %18, i8** %p, align 8
  %19 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm11 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %19, i32 0, i32 10
  %20 = load %struct.cm*, %struct.cm** %Wcm11, align 8
  %cc_down = getelementptr inbounds %struct.cm, %struct.cm* %20, i32 0, i32 23
  %21 = load i32, i32* %cc_down, align 4
  store i32 %21, i32* %c, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6
  %22 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %22, 9999
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %23 = load i32, i32* %doit.addr, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.14
  %24 = load i32, i32* %c, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %deltay, align 4
  %mul = mul nsw i32 %25, %26
  store i32 %mul, i32* %totalcost, align 4
  %27 = load i32, i32* %doit.addr, align 4
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.19
  %28 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %28, %struct.tty_display_info** @current_tty, align 8
  %29 = load i8*, i8** %p, align 8
  call void @tputs(i8* %29, i32 1, i32 (i32)* @cmputc)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %deltay, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %deltay, align 4
  %cmp20 = icmp sgt i32 %dec, 0
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %if.end.17
  br label %x

x:                                                ; preds = %if.end.21, %if.then.3
  %31 = load i32, i32* %dstx.addr, align 4
  %32 = load i32, i32* %srcx.addr, align 4
  %sub22 = sub nsw i32 %31, %32
  store i32 %sub22, i32* %deltax, align 4
  %cmp23 = icmp eq i32 %sub22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %x
  br label %done

if.end.25:                                        ; preds = %x
  %33 = load i32, i32* %deltax, align 4
  %cmp26 = icmp slt i32 %33, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.25
  %34 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm28 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %34, i32 0, i32 10
  %35 = load %struct.cm*, %struct.cm** %Wcm28, align 8
  %cm_left = getelementptr inbounds %struct.cm, %struct.cm* %35, i32 0, i32 4
  %36 = load i8*, i8** %cm_left, align 8
  store i8* %36, i8** %p, align 8
  %37 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm29 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %37, i32 0, i32 10
  %38 = load %struct.cm*, %struct.cm** %Wcm29, align 8
  %cc_left = getelementptr inbounds %struct.cm, %struct.cm* %38, i32 0, i32 24
  %39 = load i32, i32* %cc_left, align 4
  store i32 %39, i32* %c, align 4
  %40 = load i32, i32* %deltax, align 4
  %sub30 = sub nsw i32 0, %40
  store i32 %sub30, i32* %deltax, align 4
  br label %dodelta

if.end.31:                                        ; preds = %if.end.25
  %41 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm32 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %41, i32 0, i32 10
  %42 = load %struct.cm*, %struct.cm** %Wcm32, align 8
  %cc_tab = getelementptr inbounds %struct.cm, %struct.cm* %42, i32 0, i32 29
  %43 = load i32, i32* %cc_tab, align 4
  %cmp33 = icmp sge i32 %43, 9999
  br i1 %cmp33, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %44 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm34 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %44, i32 0, i32 10
  %45 = load %struct.cm*, %struct.cm** %Wcm34, align 8
  %cm_usetabs = getelementptr inbounds %struct.cm, %struct.cm* %45, i32 0, i32 21
  %bf.load = load i8, i8* %cm_usetabs, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.31
  br label %olddelta

if.end.36:                                        ; preds = %lor.lhs.false
  %46 = load i32, i32* %deltax, align 4
  %47 = load i32, i32* %srcx.addr, align 4
  %48 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm37 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %48, i32 0, i32 10
  %49 = load %struct.cm*, %struct.cm** %Wcm37, align 8
  %cm_tabwidth = getelementptr inbounds %struct.cm, %struct.cm* %49, i32 0, i32 20
  %50 = load i32, i32* %cm_tabwidth, align 4
  %rem = srem i32 %47, %50
  %add = add nsw i32 %46, %rem
  %51 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm38 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %51, i32 0, i32 10
  %52 = load %struct.cm*, %struct.cm** %Wcm38, align 8
  %cm_tabwidth39 = getelementptr inbounds %struct.cm, %struct.cm* %52, i32 0, i32 20
  %53 = load i32, i32* %cm_tabwidth39, align 4
  %div = sdiv i32 %add, %53
  store i32 %div, i32* %ntabs, align 4
  %54 = load i32, i32* %ntabs, align 4
  %add40 = add nsw i32 %54, 1
  store i32 %add40, i32* %n2tabs, align 4
  %55 = load i32, i32* %srcx.addr, align 4
  %56 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm41 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %56, i32 0, i32 10
  %57 = load %struct.cm*, %struct.cm** %Wcm41, align 8
  %cm_tabwidth42 = getelementptr inbounds %struct.cm, %struct.cm* %57, i32 0, i32 20
  %58 = load i32, i32* %cm_tabwidth42, align 4
  %div43 = sdiv i32 %55, %58
  %59 = load i32, i32* %ntabs, align 4
  %add44 = add nsw i32 %div43, %59
  %60 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm45 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %60, i32 0, i32 10
  %61 = load %struct.cm*, %struct.cm** %Wcm45, align 8
  %cm_tabwidth46 = getelementptr inbounds %struct.cm, %struct.cm* %61, i32 0, i32 20
  %62 = load i32, i32* %cm_tabwidth46, align 4
  %mul47 = mul nsw i32 %add44, %62
  store i32 %mul47, i32* %tabx, align 4
  %63 = load i32, i32* %tabx, align 4
  %64 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm48 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %64, i32 0, i32 10
  %65 = load %struct.cm*, %struct.cm** %Wcm48, align 8
  %cm_tabwidth49 = getelementptr inbounds %struct.cm, %struct.cm* %65, i32 0, i32 20
  %66 = load i32, i32* %cm_tabwidth49, align 4
  %add50 = add nsw i32 %63, %66
  store i32 %add50, i32* %tab2x, align 4
  %67 = load i32, i32* %tab2x, align 4
  %68 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm51 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %68, i32 0, i32 10
  %69 = load %struct.cm*, %struct.cm** %Wcm51, align 8
  %cm_cols52 = getelementptr inbounds %struct.cm, %struct.cm* %69, i32 0, i32 18
  %70 = load i32, i32* %cm_cols52, align 4
  %cmp53 = icmp sge i32 %67, %70
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.36
  store i32 0, i32* %n2tabs, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.36
  %71 = load i32, i32* %ntabs, align 4
  %tobool56 = icmp ne i32 %71, 0
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.55
  %72 = load i32, i32* %ntabs, align 4
  %73 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm57 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %73, i32 0, i32 10
  %74 = load %struct.cm*, %struct.cm** %Wcm57, align 8
  %cc_tab58 = getelementptr inbounds %struct.cm, %struct.cm* %74, i32 0, i32 29
  %75 = load i32, i32* %cc_tab58, align 4
  %mul59 = mul nsw i32 %72, %75
  %76 = load i32, i32* %dstx.addr, align 4
  %77 = load i32, i32* %tabx, align 4
  %sub60 = sub nsw i32 %76, %77
  %78 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm61 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %78, i32 0, i32 10
  %79 = load %struct.cm*, %struct.cm** %Wcm61, align 8
  %cc_right = getelementptr inbounds %struct.cm, %struct.cm* %79, i32 0, i32 25
  %80 = load i32, i32* %cc_right, align 4
  %mul62 = mul nsw i32 %sub60, %80
  %add63 = add nsw i32 %mul59, %mul62
  br label %cond.end

cond.false:                                       ; preds = %if.end.55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add63, %cond.true ], [ 9999, %cond.false ]
  store i32 %cond, i32* %tabcost, align 4
  %81 = load i32, i32* %n2tabs, align 4
  %tobool64 = icmp ne i32 %81, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.74

cond.true.65:                                     ; preds = %cond.end
  %82 = load i32, i32* %n2tabs, align 4
  %83 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm66 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %83, i32 0, i32 10
  %84 = load %struct.cm*, %struct.cm** %Wcm66, align 8
  %cc_tab67 = getelementptr inbounds %struct.cm, %struct.cm* %84, i32 0, i32 29
  %85 = load i32, i32* %cc_tab67, align 4
  %mul68 = mul nsw i32 %82, %85
  %86 = load i32, i32* %tab2x, align 4
  %87 = load i32, i32* %dstx.addr, align 4
  %sub69 = sub nsw i32 %86, %87
  %88 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm70 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %88, i32 0, i32 10
  %89 = load %struct.cm*, %struct.cm** %Wcm70, align 8
  %cc_left71 = getelementptr inbounds %struct.cm, %struct.cm* %89, i32 0, i32 24
  %90 = load i32, i32* %cc_left71, align 4
  %mul72 = mul nsw i32 %sub69, %90
  %add73 = add nsw i32 %mul68, %mul72
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.65
  %cond76 = phi i32 [ %add73, %cond.true.65 ], [ 9999, %cond.false.74 ]
  store i32 %cond76, i32* %c, align 4
  %91 = load i32, i32* %c, align 4
  %92 = load i32, i32* %tabcost, align 4
  %cmp77 = icmp slt i32 %91, %92
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.end.75
  %93 = load i32, i32* %n2tabs, align 4
  store i32 %93, i32* %ntabs, align 4
  %94 = load i32, i32* %c, align 4
  store i32 %94, i32* %tabcost, align 4
  %95 = load i32, i32* %tab2x, align 4
  store i32 %95, i32* %tabx, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %cond.end.75
  %96 = load i32, i32* %tabcost, align 4
  %cmp80 = icmp sge i32 %96, 9999
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  br label %newdelta

if.end.82:                                        ; preds = %if.end.79
  %97 = load i32, i32* %tabcost, align 4
  %98 = load i32, i32* %deltax, align 4
  %99 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm83 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %99, i32 0, i32 10
  %100 = load %struct.cm*, %struct.cm** %Wcm83, align 8
  %cc_right84 = getelementptr inbounds %struct.cm, %struct.cm* %100, i32 0, i32 25
  %101 = load i32, i32* %cc_right84, align 4
  %mul85 = mul nsw i32 %98, %101
  %cmp86 = icmp slt i32 %97, %mul85
  br i1 %cmp86, label %if.then.87, label %if.end.95

if.then.87:                                       ; preds = %if.end.82
  %102 = load i32, i32* %tabcost, align 4
  %103 = load i32, i32* %totalcost, align 4
  %add88 = add nsw i32 %103, %102
  store i32 %add88, i32* %totalcost, align 4
  %104 = load i32, i32* %doit.addr, align 4
  %tobool89 = icmp ne i32 %104, 0
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.then.87
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.90
  %105 = load i32, i32* %ntabs, align 4
  %dec91 = add nsw i32 %105, -1
  store i32 %dec91, i32* %ntabs, align 4
  %cmp92 = icmp sge i32 %dec91, 0
  br i1 %cmp92, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %106 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %106, %struct.tty_display_info** @current_tty, align 8
  %107 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm93 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %107, i32 0, i32 10
  %108 = load %struct.cm*, %struct.cm** %Wcm93, align 8
  %cm_tab = getelementptr inbounds %struct.cm, %struct.cm* %108, i32 0, i32 9
  %109 = load i8*, i8** %cm_tab, align 8
  call void @tputs(i8* %109, i32 1, i32 (i32)* @cmputc)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.94

if.end.94:                                        ; preds = %while.end, %if.then.87
  %110 = load i32, i32* %tabx, align 4
  store i32 %110, i32* %srcx.addr, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.82
  br label %newdelta

newdelta:                                         ; preds = %if.end.95, %if.then.81
  %111 = load i32, i32* %dstx.addr, align 4
  %112 = load i32, i32* %srcx.addr, align 4
  %sub96 = sub nsw i32 %111, %112
  store i32 %sub96, i32* %deltax, align 4
  %cmp97 = icmp eq i32 %sub96, 0
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %newdelta
  br label %done

if.end.99:                                        ; preds = %newdelta
  br label %olddelta

olddelta:                                         ; preds = %if.end.99, %if.then.35
  %113 = load i32, i32* %deltax, align 4
  %cmp100 = icmp sgt i32 %113, 0
  br i1 %cmp100, label %if.then.101, label %if.else.105

if.then.101:                                      ; preds = %olddelta
  %114 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm102 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %114, i32 0, i32 10
  %115 = load %struct.cm*, %struct.cm** %Wcm102, align 8
  %cm_right = getelementptr inbounds %struct.cm, %struct.cm* %115, i32 0, i32 5
  %116 = load i8*, i8** %cm_right, align 8
  store i8* %116, i8** %p, align 8
  %117 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm103 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %117, i32 0, i32 10
  %118 = load %struct.cm*, %struct.cm** %Wcm103, align 8
  %cc_right104 = getelementptr inbounds %struct.cm, %struct.cm* %118, i32 0, i32 25
  %119 = load i32, i32* %cc_right104, align 4
  store i32 %119, i32* %c, align 4
  br label %if.end.111

if.else.105:                                      ; preds = %olddelta
  %120 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm106 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %120, i32 0, i32 10
  %121 = load %struct.cm*, %struct.cm** %Wcm106, align 8
  %cm_left107 = getelementptr inbounds %struct.cm, %struct.cm* %121, i32 0, i32 4
  %122 = load i8*, i8** %cm_left107, align 8
  store i8* %122, i8** %p, align 8
  %123 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm108 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %123, i32 0, i32 10
  %124 = load %struct.cm*, %struct.cm** %Wcm108, align 8
  %cc_left109 = getelementptr inbounds %struct.cm, %struct.cm* %124, i32 0, i32 24
  %125 = load i32, i32* %cc_left109, align 4
  store i32 %125, i32* %c, align 4
  %126 = load i32, i32* %deltax, align 4
  %sub110 = sub nsw i32 0, %126
  store i32 %sub110, i32* %deltax, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.105, %if.then.101
  br label %dodelta

dodelta:                                          ; preds = %if.end.111, %if.then.27
  %127 = load i32, i32* %c, align 4
  %cmp112 = icmp eq i32 %127, 9999
  br i1 %cmp112, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %dodelta
  br label %fail

fail:                                             ; preds = %if.then.113, %if.then
  %128 = load i32, i32* %doit.addr, align 4
  %tobool114 = icmp ne i32 %128, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %fail
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %fail
  store i32 9999, i32* %retval
  br label %return

if.end.118:                                       ; preds = %dodelta
  %129 = load i32, i32* %c, align 4
  %130 = load i32, i32* %deltax, align 4
  %mul119 = mul nsw i32 %129, %130
  %131 = load i32, i32* %totalcost, align 4
  %add120 = add nsw i32 %131, %mul119
  store i32 %add120, i32* %totalcost, align 4
  %132 = load i32, i32* %doit.addr, align 4
  %tobool121 = icmp ne i32 %132, 0
  br i1 %tobool121, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.118
  br label %do.body.123

do.body.123:                                      ; preds = %do.cond.124, %if.then.122
  %133 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  store %struct.tty_display_info* %133, %struct.tty_display_info** @current_tty, align 8
  %134 = load i8*, i8** %p, align 8
  call void @tputs(i8* %134, i32 1, i32 (i32)* @cmputc)
  br label %do.cond.124

do.cond.124:                                      ; preds = %do.body.123
  %135 = load i32, i32* %deltax, align 4
  %dec125 = add nsw i32 %135, -1
  store i32 %dec125, i32* %deltax, align 4
  %cmp126 = icmp sgt i32 %dec125, 0
  br i1 %cmp126, label %do.body.123, label %do.end.127

do.end.127:                                       ; preds = %do.cond.124
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %if.end.118
  br label %done

done:                                             ; preds = %if.end.128, %if.then.98, %if.then.24
  %136 = load i32, i32* %totalcost, align 4
  store i32 %136, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.end.117, %if.end.16
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define void @Wcm_clear(%struct.tty_display_info* %tty) #0 {
entry:
  %tty.addr = alloca %struct.tty_display_info*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 10
  %1 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %2 = bitcast %struct.cm* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 200, i32 8, i1 false)
  store i8* null, i8** @UP, align 8
  store i8* null, i8** @BC, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @Wcm_init(%struct.tty_display_info* %tty) #0 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_display_info*, align 8
  store %struct.tty_display_info* %tty, %struct.tty_display_info** %tty.addr, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %0, i32 0, i32 10
  %1 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_abs = getelementptr inbounds %struct.cm, %struct.cm* %1, i32 0, i32 11
  %2 = load i8*, i8** %cm_abs, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm1 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 10
  %4 = load %struct.cm*, %struct.cm** %Wcm1, align 8
  %cm_up = getelementptr inbounds %struct.cm, %struct.cm* %4, i32 0, i32 2
  %5 = load i8*, i8** %cm_up, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm3 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %6, i32 0, i32 10
  %7 = load %struct.cm*, %struct.cm** %Wcm3, align 8
  %cm_left = getelementptr inbounds %struct.cm, %struct.cm* %7, i32 0, i32 4
  %8 = load i8*, i8** %cm_left, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm7 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 10
  %10 = load %struct.cm*, %struct.cm** %Wcm7, align 8
  %cm_abs8 = getelementptr inbounds %struct.cm, %struct.cm* %10, i32 0, i32 11
  %11 = load i8*, i8** %cm_abs8, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.6
  %12 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm10 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %12, i32 0, i32 10
  %13 = load %struct.cm*, %struct.cm** %Wcm10, align 8
  %cm_down = getelementptr inbounds %struct.cm, %struct.cm* %13, i32 0, i32 3
  %14 = load i8*, i8** %cm_down, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.15

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %15 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm13 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %15, i32 0, i32 10
  %16 = load %struct.cm*, %struct.cm** %Wcm13, align 8
  %cm_right = getelementptr inbounds %struct.cm, %struct.cm* %16, i32 0, i32 5
  %17 = load i8*, i8** %cm_right, align 8
  %tobool14 = icmp ne i8* %17, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false.12, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.12, %if.end.6
  %18 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm17 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %18, i32 0, i32 10
  %19 = load %struct.cm*, %struct.cm** %Wcm17, align 8
  %cm_rows = getelementptr inbounds %struct.cm, %struct.cm* %19, i32 0, i32 19
  %20 = load i32, i32* %cm_rows, align 4
  %cmp = icmp sle i32 %20, 0
  br i1 %cmp, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.16
  %21 = load %struct.tty_display_info*, %struct.tty_display_info** %tty.addr, align 8
  %Wcm19 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %21, i32 0, i32 10
  %22 = load %struct.cm*, %struct.cm** %Wcm19, align 8
  %cm_cols = getelementptr inbounds %struct.cm, %struct.cm* %22, i32 0, i32 18
  %23 = load i32, i32* %cm_cols, align 4
  %cmp20 = icmp sle i32 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.18, %if.end.16
  store i32 -2, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.15, %if.then.5, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
