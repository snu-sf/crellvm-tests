; ModuleID = './list_window.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.GenericList = type { i32 (%struct.ListData*)*, i32 (%struct.ListData*)*, i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, i8**, i32*)*, i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)* }
%struct.ListData = type { i8*, %struct.ListRow*, %struct.ListRow*, %struct.ListRow*, %struct.GenericList*, i8*, i8* }
%struct.ListRow = type { i8*, %struct.ListRow*, %struct.ListRow*, i32 }
%struct.gl_Window_Data = type { %struct.win*, i32, i32, i32, %struct.win* }

@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [43 x i8] c"Window size too small for window list page\00", align 1
@display = external global %struct.display*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"windowlist -b: display required\00", align 1
@gl_Window = internal global %struct.GenericList { i32 (%struct.ListData*)* @gl_Window_header, i32 (%struct.ListData*)* @gl_Window_footer, i32 (%struct.ListData*, %struct.ListRow*)* @gl_Window_row, i32 (%struct.ListData*, i8**, i32*)* @gl_Window_input, i32 (%struct.ListData*, %struct.ListRow*)* @gl_Window_freerow, i32 (%struct.ListData*)* @gl_Window_free, i32 (%struct.ListData*, %struct.ListRow*, i8*)* @gl_Window_match }, align 8
@ListID = internal global [7 x i8] c"window\00", align 1
@windows = external global %struct.win*, align 8
@ListLf = external global %struct.LayFuncs, align 8
@displays = external global %struct.display*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Group: \00", align 1
@mchar_blank = external global %struct.mchar, align 1
@wlisttit = external global i8*, align 8
@wliststr = external global i8*, align 8
@mchar_so = external global %struct.mchar, align 1
@renditions = external global [0 x i32], align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Really kill window %d (%s) [y/n]\00", align 1
@fore = external global %struct.win*, align 8
@noargs = external global [0 x i8*], align 8
@wtab = external global %struct.win**, align 8
@maxwin = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @display_windows(i32 %onblank, i32 %order, %struct.win* %group) #0 {
entry:
  %onblank.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %group.addr = alloca %struct.win*, align 8
  %p = alloca %struct.win*, align 8
  %ldata = alloca %struct.ListData*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  store i32 %onblank, i32* %onblank.addr, align 4
  store i32 %order, i32* %order.addr, align 4
  store %struct.win* %group, %struct.win** %group.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 2
  %3 = load i32, i32* %l_height, align 4
  %cmp1 = icmp slt i32 %3, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.win*, %struct.win** %group.addr, align 8
  %tobool = icmp ne %struct.win* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %onblank.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %onblank.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct.display*, %struct.display** @display, align 8
  %tobool6 = icmp ne %struct.display* %6, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %do.end
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 10
  %8 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %8, %struct.win** %p, align 8
  %9 = load %struct.win*, %struct.win** %p, align 8
  %tobool9 = icmp ne %struct.win* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  call void @SetForeWindow(%struct.win* null)
  %10 = load %struct.win*, %struct.win** %p, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 25
  %11 = load %struct.win*, %struct.win** %w_group, align 8
  %tobool11 = icmp ne %struct.win* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.then.10
  %12 = load %struct.win*, %struct.win** %p, align 8
  %w_group13 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 25
  %13 = load %struct.win*, %struct.win** %w_group13, align 8
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_fore14 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 10
  store %struct.win* %13, %struct.win** %d_fore14, align 8
  %15 = load %struct.win*, %struct.win** %p, align 8
  %w_group15 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 25
  %16 = load %struct.win*, %struct.win** %w_group15, align 8
  %17 = bitcast %struct.win* %16 to i8*
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 7
  store i8* %17, i8** %l_data, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.then.10
  call void @Activate(i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.8
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width18 = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 1
  %20 = load i32, i32* %l_width18, align 4
  %cmp19 = icmp slt i32 %20, 10
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.17
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height21 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 2
  %22 = load i32, i32* %l_height21, align 4
  %cmp22 = icmp slt i32 %22, 6
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.20, %if.end.17
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.20
  br label %if.end.26

if.else:                                          ; preds = %if.end.3
  %23 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 9
  %24 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data25 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 7
  %25 = load i8*, i8** %l_data25, align 8
  %26 = bitcast i8* %25 to %struct.win*
  store %struct.win* %26, %struct.win** %p, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.24
  %27 = load %struct.win*, %struct.win** %group.addr, align 8
  %tobool27 = icmp ne %struct.win* %27, null
  br i1 %tobool27, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.26
  %28 = load %struct.win*, %struct.win** %p, align 8
  %tobool28 = icmp ne %struct.win* %28, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_group30 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 25
  %30 = load %struct.win*, %struct.win** %w_group30, align 8
  store %struct.win* %30, %struct.win** %group.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true, %if.end.26
  %call = call %struct.ListData* @glist_display(%struct.GenericList* @gl_Window, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ListID, i32 0, i32 0))
  store %struct.ListData* %call, %struct.ListData** %ldata, align 8
  %31 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %tobool32 = icmp ne %struct.ListData* %31, null
  br i1 %tobool32, label %if.end.39, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %32 = load i32, i32* %onblank.addr, align 4
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.38

land.lhs.true.35:                                 ; preds = %if.then.33
  %33 = load %struct.win*, %struct.win** %p, align 8
  %tobool36 = icmp ne %struct.win* %33, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.35
  %34 = load %struct.win*, %struct.win** %p, align 8
  call void @SetForeWindow(%struct.win* %34)
  call void @Activate(i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.35, %if.then.33
  br label %return

if.end.39:                                        ; preds = %if.end.31
  %call40 = call noalias i8* @calloc(i64 1, i64 32) #4
  %35 = bitcast i8* %call40 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %35, %struct.gl_Window_Data** %wdata, align 8
  %36 = load %struct.win*, %struct.win** %group.addr, align 8
  %37 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group41 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %37, i32 0, i32 0
  store %struct.win* %36, %struct.win** %group41, align 8
  %38 = load i32, i32* %order.addr, align 4
  %and = and i32 %38, -3
  %39 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order42 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %39, i32 0, i32 1
  store i32 %and, i32* %order42, align 4
  %40 = load i32, i32* %order.addr, align 4
  %and43 = and i32 %40, 2
  %tobool44 = icmp ne i32 %and43, 0
  %lnot = xor i1 %tobool44, true
  %lnot45 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot45 to i32
  %41 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %41, i32 0, i32 3
  store i32 %lnot.ext, i32* %nested, align 4
  %42 = load i32, i32* %onblank.addr, align 4
  %43 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %onblank46 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %43, i32 0, i32 2
  store i32 %42, i32* %onblank46, align 4
  %44 = load %struct.win*, %struct.win** @windows, align 8
  %45 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %45, i32 0, i32 4
  store %struct.win* %44, %struct.win** %fore, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.39
  %46 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore47 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %46, i32 0, i32 4
  %47 = load %struct.win*, %struct.win** %fore47, align 8
  %tobool48 = icmp ne %struct.win* %47, null
  br i1 %tobool48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %48 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore49 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %48, i32 0, i32 4
  %49 = load %struct.win*, %struct.win** %fore49, align 8
  %w_group50 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 25
  %50 = load %struct.win*, %struct.win** %w_group50, align 8
  %51 = load %struct.win*, %struct.win** %group.addr, align 8
  %cmp51 = icmp ne %struct.win* %50, %51
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %52 = phi i1 [ false, %while.cond ], [ %cmp51, %land.rhs ]
  br i1 %52, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %53 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore52 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %53, i32 0, i32 4
  %54 = load %struct.win*, %struct.win** %fore52, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 0
  %55 = load %struct.win*, %struct.win** %w_next, align 8
  %56 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore53 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %56, i32 0, i32 4
  store %struct.win* %55, %struct.win** %fore53, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %57 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %58 = bitcast %struct.gl_Window_Data* %57 to i8*
  %59 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %59, i32 0, i32 6
  store i8* %58, i8** %data, align 8
  %60 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @gl_Window_rebuild(%struct.ListData* %60)
  br label %return

return:                                           ; preds = %while.end, %if.end.38, %if.then.23, %if.then.7, %if.then
  ret void
}

declare void @LMsg(i32, i8*, ...) #1

declare void @SetForeWindow(%struct.win*) #1

declare void @Activate(i32) #1

declare %struct.ListData* @glist_display(%struct.GenericList*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @gl_Window_rebuild(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %row = alloca %struct.ListRow*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %w = alloca %struct.win*, align 8
  %_ww = alloca %struct.win*, align 8
  %_ww11 = alloca %struct.win**, align 8
  %_witer = alloca %struct.win*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* null, %struct.ListRow** %row, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 6
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %2, %struct.gl_Window_Data** %wdata, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %3, i32 0, i32 1
  %4 = load i32, i32* %order, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %5, %struct.win** %_ww, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.win*, %struct.win** %_ww, align 8
  %tobool = icmp ne %struct.win* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.win*, %struct.win** %_ww, align 8
  store %struct.win* %7, %struct.win** %w, align 8
  %8 = load %struct.win*, %struct.win** %w, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 25
  %9 = load %struct.win*, %struct.win** %w_group, align 8
  %10 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %10, i32 0, i32 0
  %11 = load %struct.win*, %struct.win** %group, align 8
  %cmp1 = icmp ne %struct.win* %9, %11
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %13 = load %struct.win*, %struct.win** %w, align 8
  %14 = bitcast %struct.win* %13 to i8*
  %15 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call = call %struct.ListRow* @glist_add_row(%struct.ListData* %12, i8* %14, %struct.ListRow* %15)
  store %struct.ListRow* %call, %struct.ListRow** %row, align 8
  %16 = load %struct.win*, %struct.win** %w, align 8
  %17 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %17, i32 0, i32 4
  %18 = load %struct.win*, %struct.win** %fore, align 8
  %cmp3 = icmp eq %struct.win* %16, %18
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %19 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %20 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %20, i32 0, i32 2
  store %struct.ListRow* %19, %struct.ListRow** %selected, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %21 = load %struct.win*, %struct.win** %w, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 1
  %22 = load i32, i32* %w_type, align 4
  %cmp6 = icmp eq i32 %22, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.5
  %23 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %23, i32 0, i32 3
  %24 = load i32, i32* %nested, align 4
  %tobool7 = icmp ne i32 %24, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true
  %25 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %26 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call9 = call %struct.ListRow* @gl_Window_add_group(%struct.ListData* %25, %struct.ListRow* %26)
  store %struct.ListRow* %call9, %struct.ListRow** %row, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %if.end.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.10, %if.then.2
  %27 = load %struct.win*, %struct.win** %_ww, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 0
  %28 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %28, %struct.win** %_ww, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %29 = load %struct.win**, %struct.win*** @wtab, align 8
  store %struct.win** %29, %struct.win*** %_ww11, align 8
  %30 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %30, %struct.win** %_witer, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.43, %if.else
  %31 = load %struct.win*, %struct.win** %_witer, align 8
  %tobool13 = icmp ne %struct.win* %31, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.12
  %32 = load %struct.win**, %struct.win*** %_ww11, align 8
  %33 = load %struct.win**, %struct.win*** @wtab, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.win** %32 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.win** %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %34 = load i32, i32* @maxwin, align 4
  %conv = sext i32 %34 to i64
  %cmp14 = icmp slt i64 %sub.ptr.div, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.12
  %35 = phi i1 [ false, %for.cond.12 ], [ %cmp14, %land.rhs ]
  br i1 %35, label %for.body.16, label %for.end.44

for.body.16:                                      ; preds = %land.end
  %36 = load %struct.win**, %struct.win*** %_ww11, align 8
  %37 = load %struct.win*, %struct.win** %36, align 8
  store %struct.win* %37, %struct.win** %w, align 8
  %tobool17 = icmp ne %struct.win* %37, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.body.16
  br label %for.inc.43

if.end.19:                                        ; preds = %for.body.16
  %38 = load %struct.win*, %struct.win** %w, align 8
  %w_group20 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 25
  %39 = load %struct.win*, %struct.win** %w_group20, align 8
  %40 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group21 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %40, i32 0, i32 0
  %41 = load %struct.win*, %struct.win** %group21, align 8
  %cmp22 = icmp ne %struct.win* %39, %41
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  br label %for.inc.43

if.end.25:                                        ; preds = %if.end.19
  %42 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %43 = load %struct.win*, %struct.win** %w, align 8
  %44 = bitcast %struct.win* %43 to i8*
  %45 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call26 = call %struct.ListRow* @glist_add_row(%struct.ListData* %42, i8* %44, %struct.ListRow* %45)
  store %struct.ListRow* %call26, %struct.ListRow** %row, align 8
  %46 = load %struct.win*, %struct.win** %w, align 8
  %47 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore27 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %47, i32 0, i32 4
  %48 = load %struct.win*, %struct.win** %fore27, align 8
  %cmp28 = icmp eq %struct.win* %46, %48
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %49 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %50 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected31 = getelementptr inbounds %struct.ListData, %struct.ListData* %50, i32 0, i32 2
  store %struct.ListRow* %49, %struct.ListRow** %selected31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  %51 = load %struct.win*, %struct.win** %w, align 8
  %w_type33 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 1
  %52 = load i32, i32* %w_type33, align 4
  %cmp34 = icmp eq i32 %52, 3
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.41

land.lhs.true.36:                                 ; preds = %if.end.32
  %53 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested37 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %53, i32 0, i32 3
  %54 = load i32, i32* %nested37, align 4
  %tobool38 = icmp ne i32 %54, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true.36
  %55 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %56 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call40 = call %struct.ListRow* @gl_Window_add_group(%struct.ListData* %55, %struct.ListRow* %56)
  store %struct.ListRow* %call40, %struct.ListRow** %row, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.36, %if.end.32
  %57 = load %struct.win*, %struct.win** %_witer, align 8
  %w_next42 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 0
  %58 = load %struct.win*, %struct.win** %w_next42, align 8
  store %struct.win* %58, %struct.win** %_witer, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.41, %if.then.24, %if.then.18
  %59 = load %struct.win**, %struct.win*** %_ww11, align 8
  %incdec.ptr = getelementptr inbounds %struct.win*, %struct.win** %59, i32 1
  store %struct.win** %incdec.ptr, %struct.win*** %_ww11, align 8
  br label %for.cond.12

for.end.44:                                       ; preds = %land.end
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.44, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.45
  %60 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_display_all(%struct.ListData* %60)
  ret void
}

; Function Attrs: nounwind uwtable
define void @WListUpdatecv(%struct.canvas* %cv, %struct.win* %p) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %p.addr = alloca %struct.win*, align 8
  %ldata = alloca %struct.ListData*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %l = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 9
  %1 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 6
  %2 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp = icmp ne %struct.LayFuncs* %2, @ListLf
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer1 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 9
  %4 = load %struct.layer*, %struct.layer** %c_layer1, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 7
  %5 = load i8*, i8** %l_data, align 8
  %6 = bitcast i8* %5 to %struct.ListData*
  store %struct.ListData* %6, %struct.ListData** %ldata, align 8
  %7 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %name = getelementptr inbounds %struct.ListData, %struct.ListData* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %8, getelementptr inbounds ([7 x i8], [7 x i8]* @ListID, i32 0, i32 0)
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %9, i32 0, i32 6
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %11, %struct.gl_Window_Data** %wdata, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %12, %struct.display** %olddisplay, align 8
  %13 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %13, %struct.layer** %oldflayer, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer5 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 9
  %15 = load %struct.layer*, %struct.layer** %c_layer5, align 8
  store %struct.layer* %15, %struct.layer** %l, align 8
  %16 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %16, i32 0, i32 0
  %17 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %17, %struct.canvas** %cvlist, align 8
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 10
  %19 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %19, %struct.canvas** %cvlnext, align 8
  %20 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %20, %struct.layer** @flayer, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %22 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %22, i32 0, i32 0
  store %struct.canvas* %21, %struct.canvas** %l_cvlist6, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_lnext7 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext7, align 8
  %24 = load %struct.win*, %struct.win** %p.addr, align 8
  %25 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @WListUpdate(%struct.win* %24, %struct.ListData* %25)
  %26 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %26, %struct.layer** @flayer, align 8
  %27 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %28 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist8 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 0
  store %struct.canvas* %27, %struct.canvas** %l_cvlist8, align 8
  %29 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %30 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_lnext9 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 10
  store %struct.canvas* %29, %struct.canvas** %c_lnext9, align 8
  %31 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %31, %struct.display** @display, align 8
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WListUpdate(%struct.win* %p, %struct.ListData* %ldata) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %ldata.addr = alloca %struct.ListData*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %row = alloca %struct.ListRow*, align 8
  %rbefore = alloca %struct.ListRow*, align 8
  %before = alloca %struct.win*, align 8
  %d = alloca i32, align 4
  %sel = alloca i32, align 4
  %w = alloca %struct.win**, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 6
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %2, %struct.gl_Window_Data** %wdata, align 8
  store i32 0, i32* %d, align 4
  store i32 0, i32* %sel, align 4
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool = icmp ne %struct.win* %3, null
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %4, i32 0, i32 2
  %5 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %tobool1 = icmp ne %struct.ListRow* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected3 = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 2
  %7 = load %struct.ListRow*, %struct.ListRow** %selected3, align 8
  %data4 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %7, i32 0, i32 0
  %8 = load i8*, i8** %data4, align 8
  %9 = bitcast i8* %8 to %struct.win*
  %10 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %10, i32 0, i32 4
  store %struct.win* %9, %struct.win** %fore, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %11)
  %12 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Window_rebuild(%struct.ListData* %12)
  br label %return

if.end.5:                                         ; preds = %entry
  store i32 1, i32* %d, align 4
  %13 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %13, i32 0, i32 1
  %14 = load i32, i32* %order, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %15 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order6 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %15, i32 0, i32 1
  %16 = load i32, i32* %order6, align 4
  %cmp7 = icmp eq i32 %16, 1
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 25
  %18 = load %struct.win*, %struct.win** %w_group, align 8
  %19 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %19, i32 0, i32 0
  %20 = load %struct.win*, %struct.win** %group, align 8
  %cmp9 = icmp ne %struct.win* %18, %20
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.then.8
  %21 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %21, i32 0, i32 3
  %22 = load i32, i32* %nested, align 4
  %tobool11 = icmp ne i32 %22, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  store i32 0, i32* %d, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.10
  %23 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group13 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %23, i32 0, i32 0
  %24 = load %struct.win*, %struct.win** %group13, align 8
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %call = call i32 @window_ancestor(%struct.win* %24, %struct.win* %25)
  store i32 %call, i32* %d, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %lor.lhs.false
  %26 = load i32, i32* %d, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %27 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %call19 = call i32 @gl_Window_remove(%struct.ListData* %27, %struct.win* %28)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %29 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_display_all(%struct.ListData* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  br label %return

if.end.23:                                        ; preds = %if.end.16
  store %struct.win* null, %struct.win** %before, align 8
  %30 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order24 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %30, i32 0, i32 1
  %31 = load i32, i32* %order24, align 4
  %cmp25 = icmp eq i32 %31, 1
  br i1 %cmp25, label %if.then.26, label %if.else.35

if.then.26:                                       ; preds = %if.end.23
  %32 = load %struct.win*, %struct.win** @windows, align 8
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp27 = icmp ne %struct.win* %32, %33
  br i1 %cmp27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.then.26
  %34 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %34, %struct.win** %before, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %35 = load %struct.win*, %struct.win** %before, align 8
  %tobool29 = icmp ne %struct.win* %35, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct.win*, %struct.win** %before, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 0
  %37 = load %struct.win*, %struct.win** %w_next, align 8
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp30 = icmp eq %struct.win* %37, %38
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  br label %for.end

if.end.32:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %39 = load %struct.win*, %struct.win** %before, align 8
  %w_next33 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 0
  %40 = load %struct.win*, %struct.win** %w_next33, align 8
  store %struct.win* %40, %struct.win** %before, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.31, %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.then.26
  br label %if.end.56

if.else.35:                                       ; preds = %if.end.23
  %41 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order36 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %41, i32 0, i32 1
  %42 = load i32, i32* %order36, align 4
  %cmp37 = icmp eq i32 %42, 0
  br i1 %cmp37, label %if.then.38, label %if.end.55

if.then.38:                                       ; preds = %if.else.35
  %43 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 9
  %44 = load i32, i32* %w_number, align 4
  %cmp39 = icmp ne i32 %44, 0
  br i1 %cmp39, label %if.then.40, label %if.end.54

if.then.40:                                       ; preds = %if.then.38
  %45 = load %struct.win**, %struct.win*** @wtab, align 8
  %46 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_number41 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 9
  %47 = load i32, i32* %w_number41, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds %struct.win*, %struct.win** %45, i64 %idx.ext
  %add.ptr42 = getelementptr inbounds %struct.win*, %struct.win** %add.ptr, i64 -1
  store %struct.win** %add.ptr42, %struct.win*** %w, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.52, %if.then.40
  %48 = load %struct.win**, %struct.win*** %w, align 8
  %49 = load %struct.win**, %struct.win*** @wtab, align 8
  %cmp44 = icmp uge %struct.win** %48, %49
  br i1 %cmp44, label %for.body.45, label %for.end.53

for.body.45:                                      ; preds = %for.cond.43
  %50 = load %struct.win**, %struct.win*** %w, align 8
  %51 = load %struct.win*, %struct.win** %50, align 8
  %tobool46 = icmp ne %struct.win* %51, null
  br i1 %tobool46, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.body.45
  %52 = load %struct.win**, %struct.win*** %w, align 8
  %53 = load %struct.win*, %struct.win** %52, align 8
  %w_group47 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 25
  %54 = load %struct.win*, %struct.win** %w_group47, align 8
  %55 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group48 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %55, i32 0, i32 0
  %56 = load %struct.win*, %struct.win** %group48, align 8
  %cmp49 = icmp eq %struct.win* %54, %56
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  %57 = load %struct.win**, %struct.win*** %w, align 8
  %58 = load %struct.win*, %struct.win** %57, align 8
  store %struct.win* %58, %struct.win** %before, align 8
  br label %for.end.53

if.end.51:                                        ; preds = %land.lhs.true, %for.body.45
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %59 = load %struct.win**, %struct.win*** %w, align 8
  %incdec.ptr = getelementptr inbounds %struct.win*, %struct.win** %59, i32 -1
  store %struct.win** %incdec.ptr, %struct.win*** %w, align 8
  br label %for.cond.43

for.end.53:                                       ; preds = %if.then.50, %for.cond.43
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %if.then.38
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.else.35
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.34
  %60 = load %struct.win*, %struct.win** %before, align 8
  %tobool57 = icmp ne %struct.win* %60, null
  br i1 %tobool57, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.end.56
  %61 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %62 = load %struct.win*, %struct.win** %before, align 8
  %call59 = call %struct.ListRow* @gl_Window_findrow(%struct.ListData* %61, %struct.win* %62)
  store %struct.ListRow* %call59, %struct.ListRow** %rbefore, align 8
  br label %if.end.71

if.else.60:                                       ; preds = %if.end.56
  %63 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested61 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %63, i32 0, i32 3
  %64 = load i32, i32* %nested61, align 4
  %tobool62 = icmp ne i32 %64, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.69

land.lhs.true.63:                                 ; preds = %if.else.60
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_group64 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 25
  %66 = load %struct.win*, %struct.win** %w_group64, align 8
  %tobool65 = icmp ne %struct.win* %66, null
  br i1 %tobool65, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %land.lhs.true.63
  %67 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %68 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_group67 = getelementptr inbounds %struct.win, %struct.win* %68, i32 0, i32 25
  %69 = load %struct.win*, %struct.win** %w_group67, align 8
  %call68 = call %struct.ListRow* @gl_Window_findrow(%struct.ListData* %67, %struct.win* %69)
  store %struct.ListRow* %call68, %struct.ListRow** %rbefore, align 8
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true.63, %if.else.60
  store %struct.ListRow* null, %struct.ListRow** %rbefore, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.58
  %70 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %71 = load %struct.win*, %struct.win** %p.addr, align 8
  %call72 = call %struct.ListRow* @gl_Window_findrow(%struct.ListData* %70, %struct.win* %71)
  store %struct.ListRow* %call72, %struct.ListRow** %row, align 8
  %72 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool73 = icmp ne %struct.ListRow* %72, null
  br i1 %tobool73, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %if.end.71
  %73 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %73, i32 0, i32 2
  %74 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  %75 = load %struct.ListRow*, %struct.ListRow** %rbefore, align 8
  %cmp75 = icmp ne %struct.ListRow* %74, %75
  br i1 %cmp75, label %if.then.76, label %if.else.81

if.then.76:                                       ; preds = %if.then.74
  %76 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected77 = getelementptr inbounds %struct.ListData, %struct.ListData* %76, i32 0, i32 2
  %77 = load %struct.ListRow*, %struct.ListRow** %selected77, align 8
  %data78 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %77, i32 0, i32 0
  %78 = load i8*, i8** %data78, align 8
  %79 = load %struct.win*, %struct.win** %p.addr, align 8
  %80 = bitcast %struct.win* %79 to i8*
  %cmp79 = icmp eq i8* %78, %80
  %conv = zext i1 %cmp79 to i32
  store i32 %conv, i32* %sel, align 4
  %81 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %82 = load %struct.win*, %struct.win** %p.addr, align 8
  %call80 = call i32 @gl_Window_remove(%struct.ListData* %81, %struct.win* %82)
  br label %if.end.82

if.else.81:                                       ; preds = %if.then.74
  store %struct.win* null, %struct.win** %p.addr, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.71
  %83 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool84 = icmp ne %struct.win* %83, null
  br i1 %tobool84, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %if.end.83
  %84 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %85 = load %struct.win*, %struct.win** %p.addr, align 8
  %86 = bitcast %struct.win* %85 to i8*
  %87 = load %struct.ListRow*, %struct.ListRow** %rbefore, align 8
  %call86 = call %struct.ListRow* @glist_add_row(%struct.ListData* %84, i8* %86, %struct.ListRow* %87)
  store %struct.ListRow* %call86, %struct.ListRow** %row, align 8
  %88 = load i32, i32* %sel, align 4
  %tobool87 = icmp ne i32 %88, 0
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.then.85
  %89 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %90 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected89 = getelementptr inbounds %struct.ListData, %struct.ListData* %90, i32 0, i32 2
  store %struct.ListRow* %89, %struct.ListRow** %selected89, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.then.85
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.83
  %91 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_display_all(%struct.ListData* %91)
  br label %return

return:                                           ; preds = %if.end.91, %if.end.22, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @WListLinkChanged() #0 {
entry:
  %olddisplay = alloca %struct.display*, align 8
  %cv = alloca %struct.canvas*, align 8
  %ldata = alloca %struct.ListData*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %olddisplay13 = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %l = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  %1 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %1, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 3
  %4 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %5, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 9
  %7 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %tobool4 = icmp ne %struct.layer* %7, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.3
  %8 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer5 = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 9
  %9 = load %struct.layer*, %struct.layer** %c_layer5, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 6
  %10 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp = icmp ne %struct.LayFuncs* %10, @ListLf
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.3
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer6 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 9
  %12 = load %struct.layer*, %struct.layer** %c_layer6, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 7
  %13 = load i8*, i8** %l_data, align 8
  %14 = bitcast i8* %13 to %struct.ListData*
  store %struct.ListData* %14, %struct.ListData** %ldata, align 8
  %15 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %name = getelementptr inbounds %struct.ListData, %struct.ListData* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %cmp7 = icmp ne i8* %16, getelementptr inbounds ([7 x i8], [7 x i8]* @ListID, i32 0, i32 0)
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %for.inc

if.end.9:                                         ; preds = %if.end
  %17 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %17, i32 0, i32 6
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %19, %struct.gl_Window_Data** %wdata, align 8
  %20 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %20, i32 0, i32 1
  %21 = load i32, i32* %order, align 4
  %and = and i32 %21, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  br label %for.inc

if.end.12:                                        ; preds = %if.end.9
  %22 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %22, %struct.display** %olddisplay13, align 8
  %23 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %23, %struct.layer** %oldflayer, align 8
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer14 = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 9
  %25 = load %struct.layer*, %struct.layer** %c_layer14, align 8
  store %struct.layer* %25, %struct.layer** %l, align 8
  %26 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  %27 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %27, %struct.canvas** %cvlist, align 8
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 10
  %29 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %29, %struct.canvas** %cvlnext, align 8
  %30 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %30, %struct.layer** @flayer, align 8
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %32 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist15 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 0
  store %struct.canvas* %31, %struct.canvas** %l_cvlist15, align 8
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext16 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext16, align 8
  %34 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @WListUpdate(%struct.win* null, %struct.ListData* %34)
  %35 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %35, %struct.layer** @flayer, align 8
  %36 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %37 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist17 = getelementptr inbounds %struct.layer, %struct.layer* %37, i32 0, i32 0
  store %struct.canvas* %36, %struct.canvas** %l_cvlist17, align 8
  %38 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %39 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext18 = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 10
  store %struct.canvas* %38, %struct.canvas** %c_lnext18, align 8
  %40 = load %struct.display*, %struct.display** %olddisplay13, align 8
  store %struct.display* %40, %struct.display** @display, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then
  %41 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 0
  %42 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %42, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 0
  %44 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %44, %struct.display** @display, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %45 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %45, %struct.display** @display, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_header(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %str = alloca i8*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %g = alloca i32, align 4
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 6
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %2, %struct.gl_Window_Data** %wdata, align 8
  %3 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %3, i32 0, i32 0
  %4 = load %struct.win*, %struct.win** %group, align 8
  %cmp = icmp ne %struct.win* %4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %g, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LPutWinMsg(%struct.layer* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 7, %struct.mchar* @mchar_blank, i32 0, i32 0)
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %7 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group1 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %7, i32 0, i32 0
  %8 = load %struct.win*, %struct.win** %group1, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 21
  %9 = load i8*, i8** %w_title, align 8
  %10 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group2 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %10, i32 0, i32 0
  %11 = load %struct.win*, %struct.win** %group2, align 8
  %w_title3 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 21
  %12 = load i8*, i8** %w_title3, align 8
  %call = call i64 @strlen(i8* %12) #6
  %conv4 = trunc i64 %call to i32
  call void @LPutWinMsg(%struct.layer* %6, i8* %9, i32 %conv4, %struct.mchar* @mchar_blank, i32 7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.display* null, %struct.display** @display, align 8
  %13 = load i8*, i8** @wlisttit, align 8
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 1
  %15 = load i32, i32* %l_width, align 4
  %call5 = call i8* @MakeWinMsgEv(i8* %13, %struct.win* null, i32 37, i32 %15, %struct.event* null, i32 0)
  store i8* %call5, i8** %str, align 8
  %16 = load %struct.layer*, %struct.layer** @flayer, align 8
  %17 = load i8*, i8** %str, align 8
  %18 = load i8*, i8** %str, align 8
  %call6 = call i64 @strlen(i8* %18) #6
  %conv7 = trunc i64 %call6 to i32
  %19 = load i32, i32* %g, align 4
  call void @LPutWinMsg(%struct.layer* %16, i8* %17, i32 %conv7, %struct.mchar* @mchar_blank, i32 0, i32 %19)
  %20 = load i32, i32* %g, align 4
  %add = add nsw i32 2, %20
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_footer(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_row(%struct.ListData* %ldata, %struct.ListRow* %lrow) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %lrow.addr = alloca %struct.ListRow*, align 8
  %str = alloca i8*, align 8
  %w = alloca %struct.win*, align 8
  %g = alloca %struct.win*, align 8
  %xoff = alloca i32, align 4
  %mchar = alloca %struct.mchar*, align 8
  %mchar_rend = alloca %struct.mchar, align 1
  %wdata = alloca %struct.gl_Window_Data*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %lrow, %struct.ListRow** %lrow.addr, align 8
  %0 = bitcast %struct.mchar* %mchar_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), i64 6, i32 1, i1 false)
  %1 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %1, i32 0, i32 6
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %3, %struct.gl_Window_Data** %wdata, align 8
  %4 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %data1 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  %6 = bitcast i8* %5 to %struct.win*
  store %struct.win* %6, %struct.win** %w, align 8
  store i32 0, i32* %xoff, align 4
  %7 = load %struct.win*, %struct.win** %w, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 25
  %8 = load %struct.win*, %struct.win** %w_group, align 8
  store %struct.win* %8, %struct.win** %g, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.win*, %struct.win** %g, align 8
  %10 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %10, i32 0, i32 0
  %11 = load %struct.win*, %struct.win** %group, align 8
  %cmp = icmp ne %struct.win* %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %xoff, align 4
  %add = add nsw i32 %12, 2
  store i32 %add, i32* %xoff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.win*, %struct.win** %g, align 8
  %w_group2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 25
  %14 = load %struct.win*, %struct.win** %w_group2, align 8
  store %struct.win* %14, %struct.win** %g, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 9
  %16 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %16, i32 0, i32 7
  %17 = load i8*, i8** %l_data, align 8
  %18 = bitcast i8* %17 to %struct.win*
  %tobool = icmp ne %struct.win* %18, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end.7

cond.false:                                       ; preds = %for.end
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 0
  %20 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool3 = icmp ne %struct.canvas* %20, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 0
  %22 = load %struct.canvas*, %struct.canvas** %l_cvlist5, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 1
  %23 = load %struct.display*, %struct.display** %c_display, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi %struct.display* [ %23, %cond.true.4 ], [ null, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi %struct.display* [ null, %cond.true ], [ %cond, %cond.end ]
  store %struct.display* %cond8, %struct.display** @display, align 8
  %24 = load i8*, i8** @wliststr, align 8
  %25 = load %struct.win*, %struct.win** %w, align 8
  %26 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 1
  %27 = load i32, i32* %l_width, align 4
  %28 = load i32, i32* %xoff, align 4
  %sub = sub nsw i32 %27, %28
  %call = call i8* @MakeWinMsgEv(i8* %24, %struct.win* %25, i32 37, i32 %sub, %struct.event* null, i32 0)
  store i8* %call, i8** %str, align 8
  %29 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %29, i32 0, i32 2
  %30 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %31 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %cmp9 = icmp eq %struct.ListRow* %30, %31
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.7
  store %struct.mchar* @mchar_so, %struct.mchar** %mchar, align 8
  br label %if.end.31

if.else:                                          ; preds = %cond.end.7
  %32 = load %struct.win*, %struct.win** %w, align 8
  %w_monitor = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 70
  %33 = load i32, i32* %w_monitor, align 4
  %cmp10 = icmp eq i32 %33, 3
  br i1 %cmp10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %34 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 1), align 4
  %cmp11 = icmp ne i32 %34, -1
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store %struct.mchar* %mchar_rend, %struct.mchar** %mchar, align 8
  %35 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 1), align 4
  %36 = load %struct.mchar*, %struct.mchar** %mchar, align 8
  call void @ApplyAttrColor(i32 %35, %struct.mchar* %36)
  br label %if.end.30

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %37 = load %struct.win*, %struct.win** %w, align 8
  %w_bell = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 66
  %38 = load i32, i32* %w_bell, align 4
  %cmp14 = icmp eq i32 %38, 2
  br i1 %cmp14, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.13
  %39 = load %struct.win*, %struct.win** %w, align 8
  %w_bell15 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 66
  %40 = load i32, i32* %w_bell15, align 4
  %cmp16 = icmp eq i32 %40, 1
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.20

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %if.else.13
  %41 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 0), align 4
  %cmp18 = icmp ne i32 %41, -1
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.17
  store %struct.mchar* %mchar_rend, %struct.mchar** %mchar, align 8
  %42 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 0), align 4
  %43 = load %struct.mchar*, %struct.mchar** %mchar, align 8
  call void @ApplyAttrColor(i32 %42, %struct.mchar* %43)
  br label %if.end.29

if.else.20:                                       ; preds = %land.lhs.true.17, %lor.lhs.false
  %44 = load %struct.win*, %struct.win** %w, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 72
  %45 = load i32, i32* %w_silence, align 4
  %cmp21 = icmp eq i32 %45, 2
  br i1 %cmp21, label %land.lhs.true.25, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.else.20
  %46 = load %struct.win*, %struct.win** %w, align 8
  %w_silence23 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 72
  %47 = load i32, i32* %w_silence23, align 4
  %cmp24 = icmp eq i32 %47, 3
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.28

land.lhs.true.25:                                 ; preds = %lor.lhs.false.22, %if.else.20
  %48 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 2), align 4
  %cmp26 = icmp ne i32 %48, -1
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.25
  store %struct.mchar* %mchar_rend, %struct.mchar** %mchar, align 8
  %49 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @renditions, i32 0, i64 2), align 4
  %50 = load %struct.mchar*, %struct.mchar** %mchar, align 8
  call void @ApplyAttrColor(i32 %49, %struct.mchar* %50)
  br label %if.end

if.else.28:                                       ; preds = %land.lhs.true.25, %lor.lhs.false.22
  store %struct.mchar* @mchar_blank, %struct.mchar** %mchar, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.12
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %51 = load %struct.layer*, %struct.layer** @flayer, align 8
  %52 = load i8*, i8** %str, align 8
  %53 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width32 = getelementptr inbounds %struct.layer, %struct.layer* %53, i32 0, i32 1
  %54 = load i32, i32* %l_width32, align 4
  %55 = load %struct.mchar*, %struct.mchar** %mchar, align 8
  %56 = load i32, i32* %xoff, align 4
  %57 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %y = getelementptr inbounds %struct.ListRow, %struct.ListRow* %57, i32 0, i32 3
  %58 = load i32, i32* %y, align 4
  call void @LPutWinMsg(%struct.layer* %51, i8* %52, i32 %54, %struct.mchar* %55, i32 %56, i32 %58)
  %59 = load i32, i32* %xoff, align 4
  %tobool33 = icmp ne i32 %59, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %60 = load %struct.layer*, %struct.layer** @flayer, align 8
  %61 = load i32, i32* %xoff, align 4
  %62 = load %struct.mchar*, %struct.mchar** %mchar, align 8
  %63 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %y35 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %63, i32 0, i32 3
  %64 = load i32, i32* %y35, align 4
  call void @LPutWinMsg(%struct.layer* %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 %61, %struct.mchar* %62, i32 0, i32 %64)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_input(%struct.ListData* %ldata, i8** %inp, i32* %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ldata.addr = alloca %struct.ListData*, align 8
  %inp.addr = alloca i8**, align 8
  %len.addr = alloca i32*, align 8
  %win = alloca %struct.win*, align 8
  %ch = alloca i8, align 1
  %cd = alloca %struct.display*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %order37 = alloca i32, align 4
  %g = alloca %struct.win*, align 8
  %order60 = alloca i32, align 4
  %pw = alloca %struct.win*, align 8
  %nw = alloca %struct.win*, align 8
  %str = alloca [768 x i8], align 16
  %fnumber = alloca i32, align 4
  %row = alloca %struct.ListRow*, align 8
  %w = alloca %struct.win*, align 8
  %old = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store i8** %inp, i8*** %inp.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %cd, align 8
  %1 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %1, i32 0, i32 6
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %3, %struct.gl_Window_Data** %wdata, align 8
  %4 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %4, i32 0, i32 2
  %5 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %tobool = icmp ne %struct.ListRow* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8**, i8*** %inp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %ch, align 1
  %9 = load i8**, i8*** %inp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %9, align 8
  %11 = load i32*, i32** %len.addr, align 8
  %12 = load i32, i32* %11, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %11, align 4
  %13 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected1 = getelementptr inbounds %struct.ListData, %struct.ListData* %13, i32 0, i32 2
  %14 = load %struct.ListRow*, %struct.ListRow** %selected1, align 8
  %data2 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %14, i32 0, i32 0
  %15 = load i8*, i8** %data2, align 8
  %16 = bitcast i8* %15 to %struct.win*
  store %struct.win* %16, %struct.win** %win, align 8
  %17 = load i8, i8* %ch, align 1
  %conv = zext i8 %17 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 109, label %sw.bb.26
    i32 103, label %sw.bb.30
    i32 97, label %sw.bb.33
    i32 8, label %sw.bb.49
    i32 127, label %sw.bb.49
    i32 44, label %sw.bb.67
    i32 46, label %sw.bb.88
    i32 75, label %sw.bb.110
    i32 27, label %sw.bb.114
    i32 7, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %18 = load %struct.win*, %struct.win** %win, align 8
  %tobool3 = icmp ne %struct.win* %18, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end.5:                                         ; preds = %sw.bb
  %19 = load %struct.display*, %struct.display** @display, align 8
  %tobool6 = icmp ne %struct.display* %19, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.5
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 1
  %21 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %22 = load %struct.win*, %struct.win** %win, align 8
  %call = call i32 @AclCheckPermWin(%struct.acluser* %21, i32 2, %struct.win* %22)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end.5
  %23 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %23, i32 0, i32 0
  %24 = load %struct.win*, %struct.win** %group, align 8
  %tobool10 = icmp ne %struct.win* %24, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %if.end.9
  %25 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %onblank = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %25, i32 0, i32 2
  %26 = load i32, i32* %onblank, align 4
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.else, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 9
  %28 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 7
  %29 = load i8*, i8** %l_data, align 8
  %30 = bitcast i8* %29 to %struct.win*
  %tobool14 = icmp ne %struct.win* %30, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %31 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom16 = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 9
  %32 = load %struct.layer*, %struct.layer** %l_bottom16, align 8
  %l_data17 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 7
  %33 = load i8*, i8** %l_data17, align 8
  %34 = bitcast i8* %33 to %struct.win*
  %w_type = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 1
  %35 = load i32, i32* %w_type, align 4
  %cmp = icmp eq i32 %35, 3
  br i1 %cmp, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.15
  %36 = load %struct.win*, %struct.win** %win, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 9
  %37 = load i32, i32* %w_number, align 4
  call void @SwitchWindow(i32 %37)
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %if.end.9
  call void @glist_abort()
  %38 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %38, %struct.display** @display, align 8
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 10
  %40 = load %struct.win*, %struct.win** %d_fore, align 8
  %41 = load %struct.win*, %struct.win** %win, align 8
  %cmp20 = icmp ne %struct.win* %40, %41
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %42 = load %struct.win*, %struct.win** %win, align 8
  %w_number23 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 9
  %43 = load i32, i32* %w_number23, align 4
  call void @SwitchWindow(i32 %43)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.19
  %44 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %44, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end
  %45 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %45, i32 0, i32 1
  %46 = load i32, i32* %order, align 4
  %cmp27 = icmp eq i32 %46, 1
  %cond = select i1 %cmp27, i32 0, i32 1
  %47 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order29 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %47, i32 0, i32 1
  store i32 %cond, i32* %order29, align 4
  %48 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %48)
  %49 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Window_rebuild(%struct.ListData* %49)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %50 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %50, i32 0, i32 3
  %51 = load i32, i32* %nested, align 4
  %tobool31 = icmp ne i32 %51, 0
  %lnot = xor i1 %tobool31, true
  %lnot.ext = zext i1 %lnot to i32
  %52 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested32 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %52, i32 0, i32 3
  store i32 %lnot.ext, i32* %nested32, align 4
  %53 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %53)
  %54 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Window_rebuild(%struct.ListData* %54)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %55 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group34 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %55, i32 0, i32 0
  %56 = load %struct.win*, %struct.win** %group34, align 8
  %tobool35 = icmp ne %struct.win* %56, null
  br i1 %tobool35, label %if.then.36, label %if.else.42

if.then.36:                                       ; preds = %sw.bb.33
  %57 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order38 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %57, i32 0, i32 1
  %58 = load i32, i32* %order38, align 4
  %59 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested39 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %59, i32 0, i32 3
  %60 = load i32, i32* %nested39, align 4
  %tobool40 = icmp ne i32 %60, 0
  %cond41 = select i1 %tobool40, i32 2, i32 0
  %or = or i32 %58, %cond41
  store i32 %or, i32* %order37, align 4
  call void @glist_abort()
  %61 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %61, %struct.display** @display, align 8
  %62 = load i32, i32* %order37, align 4
  call void @display_windows(i32 1, i32 %62, %struct.win* null)
  %63 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %63, align 4
  br label %if.end.48

if.else.42:                                       ; preds = %sw.bb.33
  %64 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested43 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %64, i32 0, i32 3
  %65 = load i32, i32* %nested43, align 4
  %tobool44 = icmp ne i32 %65, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.else.42
  %66 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested46 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %66, i32 0, i32 3
  store i32 1, i32* %nested46, align 4
  %67 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %67)
  %68 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Window_rebuild(%struct.ListData* %68)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end, %if.end
  %69 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group50 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %69, i32 0, i32 0
  %70 = load %struct.win*, %struct.win** %group50, align 8
  %tobool51 = icmp ne %struct.win* %70, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %sw.bb.49
  br label %sw.epilog

if.end.53:                                        ; preds = %sw.bb.49
  %71 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group54 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %71, i32 0, i32 0
  %72 = load %struct.win*, %struct.win** %group54, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 25
  %73 = load %struct.win*, %struct.win** %w_group, align 8
  %tobool55 = icmp ne %struct.win* %73, null
  br i1 %tobool55, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %if.end.53
  %74 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group57 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %74, i32 0, i32 0
  %75 = load %struct.win*, %struct.win** %group57, align 8
  %w_group58 = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 25
  %76 = load %struct.win*, %struct.win** %w_group58, align 8
  store %struct.win* %76, %struct.win** %g, align 8
  call void @glist_abort()
  %77 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %77, %struct.display** @display, align 8
  %78 = load %struct.win*, %struct.win** %g, align 8
  call void @SetForeWindow(%struct.win* %78)
  %79 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %79, align 4
  br label %if.end.66

if.else.59:                                       ; preds = %if.end.53
  %80 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order61 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %80, i32 0, i32 1
  %81 = load i32, i32* %order61, align 4
  %82 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %nested62 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %82, i32 0, i32 3
  %83 = load i32, i32* %nested62, align 4
  %tobool63 = icmp ne i32 %83, 0
  %cond64 = select i1 %tobool63, i32 2, i32 0
  %or65 = or i32 %81, %cond64
  store i32 %or65, i32* %order60, align 4
  call void @glist_abort()
  %84 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %84, %struct.display** @display, align 8
  %85 = load i32, i32* %order60, align 4
  call void @display_windows(i32 1, i32 %85, %struct.win* null)
  %86 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %86, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.59, %if.then.56
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end
  %87 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order68 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %87, i32 0, i32 1
  %88 = load i32, i32* %order68, align 4
  %cmp69 = icmp eq i32 %88, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.87

land.lhs.true.71:                                 ; preds = %sw.bb.67
  %89 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected72 = getelementptr inbounds %struct.ListData, %struct.ListData* %89, i32 0, i32 2
  %90 = load %struct.ListRow*, %struct.ListRow** %selected72, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %90, i32 0, i32 2
  %91 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  %tobool73 = icmp ne %struct.ListRow* %91, null
  br i1 %tobool73, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %land.lhs.true.71
  %92 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected75 = getelementptr inbounds %struct.ListData, %struct.ListData* %92, i32 0, i32 2
  %93 = load %struct.ListRow*, %struct.ListRow** %selected75, align 8
  %prev76 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %93, i32 0, i32 2
  %94 = load %struct.ListRow*, %struct.ListRow** %prev76, align 8
  %data77 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %94, i32 0, i32 0
  %95 = load i8*, i8** %data77, align 8
  %96 = bitcast i8* %95 to %struct.win*
  store %struct.win* %96, %struct.win** %pw, align 8
  %97 = load %struct.win*, %struct.win** %win, align 8
  %w_group78 = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 25
  %98 = load %struct.win*, %struct.win** %w_group78, align 8
  %99 = load %struct.win*, %struct.win** %pw, align 8
  %w_group79 = getelementptr inbounds %struct.win, %struct.win* %99, i32 0, i32 25
  %100 = load %struct.win*, %struct.win** %w_group79, align 8
  %cmp80 = icmp ne %struct.win* %98, %100
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.74
  br label %sw.epilog

if.end.83:                                        ; preds = %if.then.74
  %101 = load %struct.win*, %struct.win** %win, align 8
  %102 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %102, i32 0, i32 4
  store %struct.win* %101, %struct.win** %fore, align 8
  %103 = load %struct.win*, %struct.win** %win, align 8
  %w_number84 = getelementptr inbounds %struct.win, %struct.win* %103, i32 0, i32 9
  %104 = load i32, i32* %w_number84, align 4
  %105 = load %struct.win*, %struct.win** %pw, align 8
  %w_number85 = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 9
  %106 = load i32, i32* %w_number85, align 4
  %call86 = call i32 @WindowChangeNumber(i32 %104, i32 %106)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.83, %land.lhs.true.71, %sw.bb.67
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end
  %107 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order89 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %107, i32 0, i32 1
  %108 = load i32, i32* %order89, align 4
  %cmp90 = icmp eq i32 %108, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.109

land.lhs.true.92:                                 ; preds = %sw.bb.88
  %109 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected93 = getelementptr inbounds %struct.ListData, %struct.ListData* %109, i32 0, i32 2
  %110 = load %struct.ListRow*, %struct.ListRow** %selected93, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %110, i32 0, i32 1
  %111 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  %tobool94 = icmp ne %struct.ListRow* %111, null
  br i1 %tobool94, label %if.then.95, label %if.end.109

if.then.95:                                       ; preds = %land.lhs.true.92
  %112 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected96 = getelementptr inbounds %struct.ListData, %struct.ListData* %112, i32 0, i32 2
  %113 = load %struct.ListRow*, %struct.ListRow** %selected96, align 8
  %next97 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %113, i32 0, i32 1
  %114 = load %struct.ListRow*, %struct.ListRow** %next97, align 8
  %data98 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %114, i32 0, i32 0
  %115 = load i8*, i8** %data98, align 8
  %116 = bitcast i8* %115 to %struct.win*
  store %struct.win* %116, %struct.win** %nw, align 8
  %117 = load %struct.win*, %struct.win** %win, align 8
  %w_group99 = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 25
  %118 = load %struct.win*, %struct.win** %w_group99, align 8
  %119 = load %struct.win*, %struct.win** %nw, align 8
  %w_group100 = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 25
  %120 = load %struct.win*, %struct.win** %w_group100, align 8
  %cmp101 = icmp ne %struct.win* %118, %120
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.95
  br label %sw.epilog

if.end.104:                                       ; preds = %if.then.95
  %121 = load %struct.win*, %struct.win** %win, align 8
  %122 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore105 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %122, i32 0, i32 4
  store %struct.win* %121, %struct.win** %fore105, align 8
  %123 = load %struct.win*, %struct.win** %win, align 8
  %w_number106 = getelementptr inbounds %struct.win, %struct.win* %123, i32 0, i32 9
  %124 = load i32, i32* %w_number106, align 4
  %125 = load %struct.win*, %struct.win** %nw, align 8
  %w_number107 = getelementptr inbounds %struct.win, %struct.win* %125, i32 0, i32 9
  %126 = load i32, i32* %w_number107, align 4
  %call108 = call i32 @WindowChangeNumber(i32 %124, i32 %126)
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.104, %land.lhs.true.92, %sw.bb.88
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %str, i32 0, i32 0
  %127 = load %struct.win*, %struct.win** %win, align 8
  %w_number111 = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 9
  %128 = load i32, i32* %w_number111, align 4
  %129 = load %struct.win*, %struct.win** %win, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %129, i32 0, i32 21
  %130 = load i8*, i8** %w_title, align 8
  %call112 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 767, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %128, i8* %130) #4
  %arraydecay113 = getelementptr inbounds [768 x i8], [768 x i8]* %str, i32 0, i32 0
  %131 = load %struct.win*, %struct.win** %win, align 8
  %132 = bitcast %struct.win* %131 to i8*
  call void @Input(i8* %arraydecay113, i32 1, i32 2, void (i8*, i32, i8*)* @window_kill_confirm, i8* %132, i32 0)
  br label %sw.epilog

sw.bb.114:                                        ; preds = %if.end, %if.end
  %133 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %group115 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %133, i32 0, i32 0
  %134 = load %struct.win*, %struct.win** %group115, align 8
  %tobool116 = icmp ne %struct.win* %134, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.then.130

land.lhs.true.117:                                ; preds = %sw.bb.114
  %135 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %onblank118 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %135, i32 0, i32 2
  %136 = load i32, i32* %onblank118, align 4
  %tobool119 = icmp ne i32 %136, 0
  br i1 %tobool119, label %if.then.130, label %land.lhs.true.120

land.lhs.true.120:                                ; preds = %land.lhs.true.117
  %137 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom121 = getelementptr inbounds %struct.layer, %struct.layer* %137, i32 0, i32 9
  %138 = load %struct.layer*, %struct.layer** %l_bottom121, align 8
  %l_data122 = getelementptr inbounds %struct.layer, %struct.layer* %138, i32 0, i32 7
  %139 = load i8*, i8** %l_data122, align 8
  %140 = bitcast i8* %139 to %struct.win*
  %tobool123 = icmp ne %struct.win* %140, null
  br i1 %tobool123, label %land.lhs.true.124, label %if.then.130

land.lhs.true.124:                                ; preds = %land.lhs.true.120
  %141 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom125 = getelementptr inbounds %struct.layer, %struct.layer* %141, i32 0, i32 9
  %142 = load %struct.layer*, %struct.layer** %l_bottom125, align 8
  %l_data126 = getelementptr inbounds %struct.layer, %struct.layer* %142, i32 0, i32 7
  %143 = load i8*, i8** %l_data126, align 8
  %144 = bitcast i8* %143 to %struct.win*
  %w_type127 = getelementptr inbounds %struct.win, %struct.win* %144, i32 0, i32 1
  %145 = load i32, i32* %w_type127, align 4
  %cmp128 = icmp eq i32 %145, 3
  br i1 %cmp128, label %if.end.140, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.124, %land.lhs.true.120, %land.lhs.true.117, %sw.bb.114
  %146 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %onblank131 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %146, i32 0, i32 2
  %147 = load i32, i32* %onblank131, align 4
  %tobool132 = icmp ne i32 %147, 0
  br i1 %tobool132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.130
  %148 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore133 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %148, i32 0, i32 4
  %149 = load %struct.win*, %struct.win** %fore133, align 8
  %w_number134 = getelementptr inbounds %struct.win, %struct.win* %149, i32 0, i32 9
  %150 = load i32, i32* %w_number134, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.130
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond135 = phi i32 [ %150, %cond.true ], [ -1, %cond.false ]
  store i32 %cond135, i32* %fnumber, align 4
  call void @glist_abort()
  %151 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %151, %struct.display** @display, align 8
  %152 = load i32, i32* %fnumber, align 4
  %cmp136 = icmp sge i32 %152, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %cond.end
  %153 = load i32, i32* %fnumber, align 4
  call void @SwitchWindow(i32 %153)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %cond.end
  %154 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %154, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %land.lhs.true.124
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %155 = load i8, i8* %ch, align 1
  %conv141 = zext i8 %155 to i32
  %cmp142 = icmp sge i32 %conv141, 48
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.178

land.lhs.true.144:                                ; preds = %sw.default
  %156 = load i8, i8* %ch, align 1
  %conv145 = zext i8 %156 to i32
  %cmp146 = icmp sle i32 %conv145, 57
  br i1 %cmp146, label %if.then.148, label %if.end.178

if.then.148:                                      ; preds = %land.lhs.true.144
  %157 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %157, i32 0, i32 1
  %158 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  store %struct.ListRow* %158, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.148
  %159 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool149 = icmp ne %struct.ListRow* %159, null
  br i1 %tobool149, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %160 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %data150 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %160, i32 0, i32 0
  %161 = load i8*, i8** %data150, align 8
  %162 = bitcast i8* %161 to %struct.win*
  store %struct.win* %162, %struct.win** %w, align 8
  %163 = load %struct.win*, %struct.win** %w, align 8
  %w_number151 = getelementptr inbounds %struct.win, %struct.win* %163, i32 0, i32 9
  %164 = load i32, i32* %w_number151, align 4
  %165 = load i8, i8* %ch, align 1
  %conv152 = zext i8 %165 to i32
  %sub = sub nsw i32 %conv152, 48
  %cmp153 = icmp eq i32 %164, %sub
  br i1 %cmp153, label %if.then.155, label %if.end.176

if.then.155:                                      ; preds = %for.body
  %166 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected156 = getelementptr inbounds %struct.ListData, %struct.ListData* %166, i32 0, i32 2
  %167 = load %struct.ListRow*, %struct.ListRow** %selected156, align 8
  store %struct.ListRow* %167, %struct.ListRow** %old, align 8
  %168 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %169 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %cmp157 = icmp eq %struct.ListRow* %168, %169
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.then.155
  br label %for.end

if.end.160:                                       ; preds = %if.then.155
  %170 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %171 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected161 = getelementptr inbounds %struct.ListData, %struct.ListData* %171, i32 0, i32 2
  store %struct.ListRow* %170, %struct.ListRow** %selected161, align 8
  %172 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected162 = getelementptr inbounds %struct.ListData, %struct.ListData* %172, i32 0, i32 2
  %173 = load %struct.ListRow*, %struct.ListRow** %selected162, align 8
  %y = getelementptr inbounds %struct.ListRow, %struct.ListRow* %173, i32 0, i32 3
  %174 = load i32, i32* %y, align 4
  %cmp163 = icmp eq i32 %174, -1
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %if.end.160
  %175 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %176 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %176, i32 0, i32 3
  store %struct.ListRow* %175, %struct.ListRow** %top, align 8
  %177 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_display_all(%struct.ListData* %177)
  br label %if.end.175

if.else.166:                                      ; preds = %if.end.160
  %178 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %178, i32 0, i32 4
  %179 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_printrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %179, i32 0, i32 2
  %180 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow, align 8
  %181 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %182 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %call167 = call i32 %180(%struct.ListData* %181, %struct.ListRow* %182)
  %183 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn168 = getelementptr inbounds %struct.ListData, %struct.ListData* %183, i32 0, i32 4
  %184 = load %struct.GenericList*, %struct.GenericList** %list_fn168, align 8
  %gl_printrow169 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %184, i32 0, i32 2
  %185 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow169, align 8
  %186 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %187 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected170 = getelementptr inbounds %struct.ListData, %struct.ListData* %187, i32 0, i32 2
  %188 = load %struct.ListRow*, %struct.ListRow** %selected170, align 8
  %call171 = call i32 %185(%struct.ListData* %186, %struct.ListRow* %188)
  %189 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected172 = getelementptr inbounds %struct.ListData, %struct.ListData* %189, i32 0, i32 2
  %190 = load %struct.ListRow*, %struct.ListRow** %selected172, align 8
  %y173 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %190, i32 0, i32 3
  %191 = load i32, i32* %y173, align 4
  %192 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %192, i32 0, i32 4
  store i32 %191, i32* %l_y, align 4
  %193 = load %struct.layer*, %struct.layer** @flayer, align 8
  %194 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %194, i32 0, i32 3
  %195 = load i32, i32* %l_x, align 4
  %196 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y174 = getelementptr inbounds %struct.layer, %struct.layer* %196, i32 0, i32 4
  %197 = load i32, i32* %l_y174, align 4
  call void @LGotoPos(%struct.layer* %193, i32 %195, i32 %197)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.166, %if.then.165
  br label %for.end

if.end.176:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.176
  %198 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next177 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %198, i32 0, i32 1
  %199 = load %struct.ListRow*, %struct.ListRow** %next177, align 8
  store %struct.ListRow* %199, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.175, %if.then.159, %for.cond
  br label %sw.epilog

if.end.178:                                       ; preds = %land.lhs.true.144, %sw.default
  %200 = load i8**, i8*** %inp.addr, align 8
  %201 = load i8*, i8** %200, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %201, i32 -1
  store i8* %incdec.ptr179, i8** %200, align 8
  %202 = load i32*, i32** %len.addr, align 8
  %203 = load i32, i32* %202, align 4
  %inc = add nsw i32 %203, 1
  store i32 %inc, i32* %202, align 4
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end, %if.end.140, %sw.bb.110, %if.end.109, %if.then.103, %if.end.87, %if.then.82, %if.end.66, %if.then.52, %if.end.48, %sw.bb.30, %sw.bb.26, %if.end.25, %if.then.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.178, %if.then.8, %if.then
  %204 = load i32, i32* %retval
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_freerow(%struct.ListData* %ldata, %struct.ListRow* %row) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %row.addr = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %row, %struct.ListRow** %row.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_free(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 6
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #7
  unreachable

if.else:                                          ; preds = %entry
  %2 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data1 = getelementptr inbounds %struct.ListData, %struct.ListData* %2, i32 0, i32 6
  %3 = load i8*, i8** %data1, align 8
  call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.else
  %4 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data2 = getelementptr inbounds %struct.ListData, %struct.ListData* %4, i32 0, i32 6
  store i8* null, i8** %data2, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_match(%struct.ListData* %ldata, %struct.ListRow* %row, i8* %needle) #0 {
entry:
  %retval = alloca i32, align 4
  %ldata.addr = alloca %struct.ListData*, align 8
  %row.addr = alloca %struct.ListRow*, align 8
  %needle.addr = alloca i8*, align 8
  %w = alloca %struct.win*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %row, %struct.ListRow** %row.addr, align 8
  store i8* %needle, i8** %needle.addr, align 8
  %0 = load %struct.ListRow*, %struct.ListRow** %row.addr, align 8
  %data = getelementptr inbounds %struct.ListRow, %struct.ListRow* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** %w, align 8
  %3 = load %struct.win*, %struct.win** %w, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 21
  %4 = load i8*, i8** %w_title, align 8
  %5 = load i8*, i8** %needle.addr, align 8
  %call = call i8* @InStr(i8* %4, i8* %5)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare void @LPutWinMsg(%struct.layer*, i8*, i32, %struct.mchar*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @MakeWinMsgEv(i8*, %struct.win*, i32, i32, %struct.event*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @ApplyAttrColor(i32, %struct.mchar*) #1

declare i32 @AclCheckPermWin(%struct.acluser*, i32, %struct.win*) #1

declare void @SwitchWindow(i32) #1

declare void @glist_abort() #1

declare void @glist_remove_rows(%struct.ListData*) #1

declare i32 @WindowChangeNumber(i32, i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @Input(i8*, i32, i32, void (i8*, i32, i8*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @window_kill_confirm(i8* %buf, i32 %len, i8* %data) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %w = alloca %struct.win*, align 8
  %act = alloca %struct.action, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %0, %struct.win** %w, align 8
  %1 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 121
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 89
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %buf.addr, align 8
  store i8 0, i8* %6, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.win*, %struct.win** %w, align 8
  %tobool5 = icmp ne %struct.win* %7, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.win*, %struct.win** %w, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %10 = bitcast i8* %9 to %struct.win*
  %cmp6 = icmp eq %struct.win* %8, %10
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %11 = load %struct.win*, %struct.win** %w, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 0
  %12 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %12, %struct.win** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %13 = load %struct.win*, %struct.win** %w, align 8
  %tobool10 = icmp ne %struct.win* %13, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.end
  br label %return

if.end.12:                                        ; preds = %for.end
  %14 = load %struct.win*, %struct.win** %w, align 8
  store %struct.win* %14, %struct.win** @fore, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %act, i32 0, i32 0
  store i32 94, i32* %nr, align 4
  %args = getelementptr inbounds %struct.action, %struct.action* %act, i32 0, i32 1
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @noargs, i32 0, i32 0), i8*** %args, align 8
  %argl = getelementptr inbounds %struct.action, %struct.action* %act, i32 0, i32 2
  store i32* null, i32** %argl, align 8
  %quiet = getelementptr inbounds %struct.action, %struct.action* %act, i32 0, i32 3
  store i32 0, i32* %quiet, align 4
  call void @DoAction(%struct.action* %act, i32 -1)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  ret void
}

declare void @glist_display_all(%struct.ListData*) #1

declare void @LGotoPos(%struct.layer*, i32, i32) #1

declare void @DoAction(%struct.action*, i32) #1

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @InStr(i8*, i8*) #1

declare %struct.ListRow* @glist_add_row(%struct.ListData*, i8*, %struct.ListRow*) #1

; Function Attrs: nounwind uwtable
define internal %struct.ListRow* @gl_Window_add_group(%struct.ListData* %ldata, %struct.ListRow* %row) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %row.addr = alloca %struct.ListRow*, align 8
  %wdata = alloca %struct.gl_Window_Data*, align 8
  %group = alloca %struct.win*, align 8
  %w = alloca %struct.win*, align 8
  %cur = alloca %struct.ListRow*, align 8
  %_ww = alloca %struct.win*, align 8
  %_ww12 = alloca %struct.win**, align 8
  %_witer = alloca %struct.win*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %row, %struct.ListRow** %row.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %data = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 6
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.gl_Window_Data*
  store %struct.gl_Window_Data* %2, %struct.gl_Window_Data** %wdata, align 8
  %3 = load %struct.ListRow*, %struct.ListRow** %row.addr, align 8
  %data1 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %3, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8
  %5 = bitcast i8* %4 to %struct.win*
  store %struct.win* %5, %struct.win** %group, align 8
  %6 = load %struct.ListRow*, %struct.ListRow** %row.addr, align 8
  store %struct.ListRow* %6, %struct.ListRow** %cur, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %7 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %order = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %7, i32 0, i32 1
  %8 = load i32, i32* %order, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.2
  %9 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %9, %struct.win** %_ww, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load %struct.win*, %struct.win** %_ww, align 8
  %tobool = icmp ne %struct.win* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.win*, %struct.win** %_ww, align 8
  store %struct.win* %11, %struct.win** %w, align 8
  %12 = load %struct.win*, %struct.win** %w, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 25
  %13 = load %struct.win*, %struct.win** %w_group, align 8
  %14 = load %struct.win*, %struct.win** %group, align 8
  %cmp3 = icmp ne %struct.win* %13, %14
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %15 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %16 = load %struct.win*, %struct.win** %w, align 8
  %17 = bitcast %struct.win* %16 to i8*
  %18 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %call = call %struct.ListRow* @glist_add_row(%struct.ListData* %15, i8* %17, %struct.ListRow* %18)
  store %struct.ListRow* %call, %struct.ListRow** %cur, align 8
  %19 = load %struct.win*, %struct.win** %w, align 8
  %20 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %20, i32 0, i32 4
  %21 = load %struct.win*, %struct.win** %fore, align 8
  %cmp5 = icmp eq %struct.win* %19, %21
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %22 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %23 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %23, i32 0, i32 2
  store %struct.ListRow* %22, %struct.ListRow** %selected, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %24 = load %struct.win*, %struct.win** %w, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 1
  %25 = load i32, i32* %w_type, align 4
  %cmp8 = icmp eq i32 %25, 3
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %26 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %27 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %call10 = call %struct.ListRow* @gl_Window_add_group(%struct.ListData* %26, %struct.ListRow* %27)
  store %struct.ListRow* %call10, %struct.ListRow** %cur, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then.4
  %28 = load %struct.win*, %struct.win** %_ww, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 0
  %29 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %29, %struct.win** %_ww, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.else:                                          ; preds = %do.body.2
  %30 = load %struct.win**, %struct.win*** @wtab, align 8
  store %struct.win** %30, %struct.win*** %_ww12, align 8
  %31 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %31, %struct.win** %_witer, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.40, %if.else
  %32 = load %struct.win*, %struct.win** %_witer, align 8
  %tobool14 = icmp ne %struct.win* %32, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.13
  %33 = load %struct.win**, %struct.win*** %_ww12, align 8
  %34 = load %struct.win**, %struct.win*** @wtab, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.win** %33 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.win** %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %35 = load i32, i32* @maxwin, align 4
  %conv = sext i32 %35 to i64
  %cmp15 = icmp slt i64 %sub.ptr.div, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.13
  %36 = phi i1 [ false, %for.cond.13 ], [ %cmp15, %land.rhs ]
  br i1 %36, label %for.body.17, label %for.end.41

for.body.17:                                      ; preds = %land.end
  %37 = load %struct.win**, %struct.win*** %_ww12, align 8
  %38 = load %struct.win*, %struct.win** %37, align 8
  store %struct.win* %38, %struct.win** %w, align 8
  %tobool18 = icmp ne %struct.win* %38, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.body.17
  br label %for.inc.40

if.end.20:                                        ; preds = %for.body.17
  %39 = load %struct.win*, %struct.win** %w, align 8
  %w_group21 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 25
  %40 = load %struct.win*, %struct.win** %w_group21, align 8
  %41 = load %struct.win*, %struct.win** %group, align 8
  %cmp22 = icmp ne %struct.win* %40, %41
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %for.inc.40

if.end.25:                                        ; preds = %if.end.20
  %42 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %43 = load %struct.win*, %struct.win** %w, align 8
  %44 = bitcast %struct.win* %43 to i8*
  %45 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %call26 = call %struct.ListRow* @glist_add_row(%struct.ListData* %42, i8* %44, %struct.ListRow* %45)
  store %struct.ListRow* %call26, %struct.ListRow** %cur, align 8
  %46 = load %struct.win*, %struct.win** %w, align 8
  %47 = load %struct.gl_Window_Data*, %struct.gl_Window_Data** %wdata, align 8
  %fore27 = getelementptr inbounds %struct.gl_Window_Data, %struct.gl_Window_Data* %47, i32 0, i32 4
  %48 = load %struct.win*, %struct.win** %fore27, align 8
  %cmp28 = icmp eq %struct.win* %46, %48
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %49 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %50 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected31 = getelementptr inbounds %struct.ListData, %struct.ListData* %50, i32 0, i32 2
  store %struct.ListRow* %49, %struct.ListRow** %selected31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  %51 = load %struct.win*, %struct.win** %w, align 8
  %w_type33 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 1
  %52 = load i32, i32* %w_type33, align 4
  %cmp34 = icmp eq i32 %52, 3
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.32
  %53 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %54 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  %call37 = call %struct.ListRow* @gl_Window_add_group(%struct.ListData* %53, %struct.ListRow* %54)
  store %struct.ListRow* %call37, %struct.ListRow** %cur, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.32
  %55 = load %struct.win*, %struct.win** %_witer, align 8
  %w_next39 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 0
  %56 = load %struct.win*, %struct.win** %w_next39, align 8
  store %struct.win* %56, %struct.win** %_witer, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.38, %if.then.24, %if.then.19
  %57 = load %struct.win**, %struct.win*** %_ww12, align 8
  %incdec.ptr = getelementptr inbounds %struct.win*, %struct.win** %57, i32 1
  store %struct.win** %incdec.ptr, %struct.win*** %_ww12, align 8
  br label %for.cond.13

for.end.41:                                       ; preds = %land.end
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %for.end
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %58 = load %struct.ListRow*, %struct.ListRow** %cur, align 8
  ret %struct.ListRow* %58
}

; Function Attrs: nounwind uwtable
define internal i32 @window_ancestor(%struct.win* %a, %struct.win* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.win*, align 8
  %d.addr = alloca %struct.win*, align 8
  store %struct.win* %a, %struct.win** %a.addr, align 8
  store %struct.win* %d, %struct.win** %d.addr, align 8
  %0 = load %struct.win*, %struct.win** %a.addr, align 8
  %tobool = icmp ne %struct.win* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.win*, %struct.win** %d.addr, align 8
  %tobool1 = icmp ne %struct.win* %1, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.win*, %struct.win** %d.addr, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 25
  %3 = load %struct.win*, %struct.win** %w_group, align 8
  %4 = load %struct.win*, %struct.win** %a.addr, align 8
  %cmp = icmp eq %struct.win* %3, %4
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %5 = load %struct.win*, %struct.win** %d.addr, align 8
  %w_group4 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 25
  %6 = load %struct.win*, %struct.win** %w_group4, align 8
  store %struct.win* %6, %struct.win** %d.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Window_remove(%struct.ListData* %ldata, %struct.win* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %ldata.addr = alloca %struct.ListData*, align 8
  %p.addr = alloca %struct.win*, align 8
  %row = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %call = call %struct.ListRow* @gl_Window_findrow(%struct.ListData* %0, %struct.win* %1)
  store %struct.ListRow* %call, %struct.ListRow** %row, align 8
  %2 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool = icmp ne %struct.ListRow* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %3, i32 0, i32 1
  %4 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  %tobool1 = icmp ne %struct.ListRow* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %5, i32 0, i32 2
  %6 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  %7 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next3 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %7, i32 0, i32 1
  %8 = load %struct.ListRow*, %struct.ListRow** %next3, align 8
  %prev4 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %8, i32 0, i32 2
  store %struct.ListRow* %6, %struct.ListRow** %prev4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev6 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %9, i32 0, i32 2
  %10 = load %struct.ListRow*, %struct.ListRow** %prev6, align 8
  %tobool7 = icmp ne %struct.ListRow* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next9 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %11, i32 0, i32 1
  %12 = load %struct.ListRow*, %struct.ListRow** %next9, align 8
  %13 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev10 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %13, i32 0, i32 2
  %14 = load %struct.ListRow*, %struct.ListRow** %prev10, align 8
  %next11 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %14, i32 0, i32 1
  store %struct.ListRow* %12, %struct.ListRow** %next11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.5
  %15 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %15, i32 0, i32 2
  %16 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %17 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %cmp = icmp eq %struct.ListRow* %16, %17
  br i1 %cmp, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.12
  %18 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev14 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %18, i32 0, i32 2
  %19 = load %struct.ListRow*, %struct.ListRow** %prev14, align 8
  %tobool15 = icmp ne %struct.ListRow* %19, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %20 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev16 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %20, i32 0, i32 2
  %21 = load %struct.ListRow*, %struct.ListRow** %prev16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %22 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next17 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %22, i32 0, i32 1
  %23 = load %struct.ListRow*, %struct.ListRow** %next17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ListRow* [ %21, %cond.true ], [ %23, %cond.false ]
  %24 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected18 = getelementptr inbounds %struct.ListData, %struct.ListData* %24, i32 0, i32 2
  store %struct.ListRow* %cond, %struct.ListRow** %selected18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.end.12
  %25 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %25, i32 0, i32 3
  %26 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %27 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %cmp20 = icmp eq %struct.ListRow* %26, %27
  br i1 %cmp20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.end.19
  %28 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev22 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %28, i32 0, i32 2
  %29 = load %struct.ListRow*, %struct.ListRow** %prev22, align 8
  %tobool23 = icmp ne %struct.ListRow* %29, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %if.then.21
  %30 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev25 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %30, i32 0, i32 2
  %31 = load %struct.ListRow*, %struct.ListRow** %prev25, align 8
  br label %cond.end.28

cond.false.26:                                    ; preds = %if.then.21
  %32 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next27 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %32, i32 0, i32 1
  %33 = load %struct.ListRow*, %struct.ListRow** %next27, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi %struct.ListRow* [ %31, %cond.true.24 ], [ %33, %cond.false.26 ]
  %34 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %top30 = getelementptr inbounds %struct.ListData, %struct.ListData* %34, i32 0, i32 3
  store %struct.ListRow* %cond29, %struct.ListRow** %top30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end.28, %if.end.19
  %35 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %35, i32 0, i32 1
  %36 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  %37 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %cmp32 = icmp eq %struct.ListRow* %36, %37
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  %38 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next34 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %38, i32 0, i32 1
  %39 = load %struct.ListRow*, %struct.ListRow** %next34, align 8
  %40 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root35 = getelementptr inbounds %struct.ListData, %struct.ListData* %40, i32 0, i32 1
  store %struct.ListRow* %39, %struct.ListRow** %root35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  %41 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %41, i32 0, i32 4
  %42 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_freerow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %42, i32 0, i32 4
  %43 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_freerow, align 8
  %44 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %45 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call37 = call i32 %43(%struct.ListData* %44, %struct.ListRow* %45)
  %46 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %47 = bitcast %struct.ListRow* %46 to i8*
  call void @free(i8* %47) #4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal %struct.ListRow* @gl_Window_findrow(%struct.ListData* %ldata, %struct.win* %p) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %p.addr = alloca %struct.win*, align 8
  %row = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 1
  %1 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  store %struct.ListRow* %1, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool = icmp ne %struct.ListRow* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %data = getelementptr inbounds %struct.ListRow, %struct.ListRow* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %6 = bitcast %struct.win* %5 to i8*
  %cmp = icmp eq i8* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %7, i32 0, i32 1
  %8 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  store %struct.ListRow* %8, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  ret %struct.ListRow* %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
