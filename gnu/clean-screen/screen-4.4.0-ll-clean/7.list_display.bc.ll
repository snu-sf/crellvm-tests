; ModuleID = './list_display.bc'
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

@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [40 x i8] c"Window size too small for displays page\00", align 1
@gl_Display = internal global %struct.GenericList { i32 (%struct.ListData*)* @gl_Display_header, i32 (%struct.ListData*)* @gl_Display_footer, i32 (%struct.ListData*, %struct.ListRow*)* @gl_Display_row, i32 (%struct.ListData*, i8**, i32*)* @gl_Display_input, i32 (%struct.ListData*, %struct.ListRow*)* @gl_Display_freerow, i32 (%struct.ListData*)* @gl_Display_free, i32 (%struct.ListData*, %struct.ListRow*, i8*)* null }, align 8
@ListID = internal global [8 x i8] c"display\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"term-type   size         user interface           window       Perms\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"---------- ------- ---------- ----------------- ----------     -----\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"[Press Space to refresh; Return to end.]\00", align 1
@gl_Display_row.blockstates = internal global [5 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"Z<\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Z>\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"BL\00", align 1
@mchar_blank = external global %struct.mchar, align 1
@.str.9 = private unnamed_addr constant [36 x i8] c" %-10.10s%4dx%-4d%10.10s@%-16.16s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%3d(%.10s)%*s%c%c%c%c\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mchar_so = external global %struct.mchar, align 1
@display = external global %struct.display*, align 8
@displays = external global %struct.display*, align 8

; Function Attrs: nounwind uwtable
define void @display_displays() #0 {
entry:
  %ldata = alloca %struct.ListData*, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 2
  %3 = load i32, i32* %l_height, align 4
  %cmp1 = icmp slt i32 %3, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call %struct.ListData* @glist_display(%struct.GenericList* @gl_Display, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ListID, i32 0, i32 0))
  store %struct.ListData* %call, %struct.ListData** %ldata, align 8
  %4 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %tobool = icmp ne %struct.ListData* %4, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @gl_Display_rebuild(%struct.ListData* %5)
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

declare void @LMsg(i32, i8*, ...) #1

declare %struct.ListData* @glist_display(%struct.GenericList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gl_Display_rebuild(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %d = alloca %struct.display*, align 8
  %row = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* null, %struct.ListRow** %row, align 8
  %0 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %0, %struct.display** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.display*, %struct.display** %d, align 8
  %tobool = icmp ne %struct.display* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %3 = load %struct.display*, %struct.display** %d, align 8
  %4 = bitcast %struct.display* %3 to i8*
  %5 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call = call %struct.ListRow* @glist_add_row(%struct.ListData* %2, i8* %4, %struct.ListRow* %5)
  store %struct.ListRow* %call, %struct.ListRow** %row, align 8
  %6 = load %struct.display*, %struct.display** %d, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %9 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %9, i32 0, i32 2
  store %struct.ListRow* %8, %struct.ListRow** %selected, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 0
  %11 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %11, %struct.display** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_display_all(%struct.ListData* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_header(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  call void @leftline(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.mchar* null)
  call void @leftline(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.mchar* null)
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_footer(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 2
  %1 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %1, 1
  call void @centerline(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %sub)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_row(%struct.ListData* %ldata, %struct.ListRow* %lrow) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %lrow.addr = alloca %struct.ListRow*, align 8
  %d = alloca %struct.display*, align 8
  %tbuf = alloca [80 x i8], align 16
  %w = alloca %struct.win*, align 8
  %m_current = alloca %struct.mchar, align 1
  %l = alloca i32, align 4
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %lrow, %struct.ListRow** %lrow.addr, align 8
  %0 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %data = getelementptr inbounds %struct.ListRow, %struct.ListRow* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.display*
  store %struct.display* %2, %struct.display** %d, align 8
  %3 = load %struct.display*, %struct.display** %d, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 10
  %4 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %4, %struct.win** %w, align 8
  %5 = bitcast %struct.mchar* %m_current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), i64 6, i32 1, i1 false)
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %m_current, i32 0, i32 1
  store i8 4, i8* %attr, align 1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %tbuf, i32 0, i32 0
  %6 = load %struct.display*, %struct.display** %d, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 13
  %arraydecay1 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  %7 = load %struct.display*, %struct.display** %d, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 16
  %8 = load i32, i32* %d_width, align 4
  %9 = load %struct.display*, %struct.display** %d, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 17
  %10 = load i32, i32* %d_height, align 4
  %11 = load %struct.display*, %struct.display** %d, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 1
  %12 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %12, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  %13 = load %struct.display*, %struct.display** %d, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 58
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %14 = load %struct.display*, %struct.display** %d, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 102
  %15 = load i32, i32* %d_blocked, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.display*, %struct.display** %d, align 8
  %d_nonblock = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 12
  %17 = load i32, i32* %d_nonblock, align 4
  %cmp = icmp sge i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %18 = load %struct.display*, %struct.display** %d, align 8
  %d_blocked4 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 102
  %19 = load i32, i32* %d_blocked4, align 4
  %cmp5 = icmp sle i32 %19, 4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %20 = load %struct.display*, %struct.display** %d, align 8
  %d_blocked6 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 102
  %21 = load i32, i32* %d_blocked6, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @gl_Display_row.blockstates, i32 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %cond.false ]
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay1, i32 %8, i32 %10, i8* %arraydecay2, i8* %arraydecay3, i8* %cond) #2
  %23 = load %struct.win*, %struct.win** %w, align 8
  %tobool7 = icmp ne %struct.win* %23, null
  br i1 %tobool7, label %if.then, label %if.end.53

if.then:                                          ; preds = %cond.end
  %24 = load %struct.win*, %struct.win** %w, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 21
  %25 = load i8*, i8** %w_title, align 8
  %call8 = call i64 @strlen(i8* %25) #5
  %sub = sub i64 10, %call8
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %l, align 4
  %26 = load i32, i32* %l, align 4
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  store i32 0, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %arraydecay12 = getelementptr inbounds [80 x i8], [80 x i8]* %tbuf, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [80 x i8], [80 x i8]* %tbuf, i32 0, i32 0
  %call14 = call i64 @strlen(i8* %arraydecay13) #5
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 %call14
  %27 = load %struct.win*, %struct.win** %w, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 9
  %28 = load i32, i32* %w_number, align 4
  %29 = load %struct.win*, %struct.win** %w, align 8
  %w_title15 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 21
  %30 = load i8*, i8** %w_title15, align 8
  %31 = load i32, i32* %l, align 4
  %32 = load %struct.display*, %struct.display** %d, align 8
  %d_user16 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 1
  %33 = load %struct.acluser*, %struct.acluser** %d_user16, align 8
  %34 = load %struct.win*, %struct.win** %w, align 8
  %call17 = call i32 @AclCheckPermWin(%struct.acluser* %33, i32 2, %struct.win* %34)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.end
  br label %cond.end.27

cond.false.20:                                    ; preds = %if.end
  %35 = load %struct.win*, %struct.win** %w, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 29
  %36 = load i32, i32* %w_wlock, align 4
  %cmp21 = icmp eq i32 %36, 0
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.20
  %37 = load %struct.display*, %struct.display** %d, align 8
  %d_user23 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 1
  %38 = load %struct.acluser*, %struct.acluser** %d_user23, align 8
  %39 = load %struct.win*, %struct.win** %w, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 30
  %40 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %cmp24 = icmp eq %struct.acluser* %38, %40
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.20
  %41 = phi i1 [ true, %cond.false.20 ], [ %cmp24, %lor.rhs ]
  %cond26 = select i1 %41, i32 114, i32 82
  br label %cond.end.27

cond.end.27:                                      ; preds = %lor.end, %cond.true.19
  %cond28 = phi i32 [ 45, %cond.true.19 ], [ %cond26, %lor.end ]
  %42 = load %struct.display*, %struct.display** %d, align 8
  %d_user29 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 1
  %43 = load %struct.acluser*, %struct.acluser** %d_user29, align 8
  %44 = load %struct.win*, %struct.win** %w, align 8
  %call30 = call i32 @AclCheckPermWin(%struct.acluser* %43, i32 2, %struct.win* %44)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.27
  br label %cond.end.46

cond.false.33:                                    ; preds = %cond.end.27
  %45 = load %struct.win*, %struct.win** %w, align 8
  %w_wlock34 = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 29
  %46 = load i32, i32* %w_wlock34, align 4
  %cmp35 = icmp eq i32 %46, 0
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false.33
  br label %cond.end.44

cond.false.38:                                    ; preds = %cond.false.33
  %47 = load %struct.display*, %struct.display** %d, align 8
  %d_user39 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 1
  %48 = load %struct.acluser*, %struct.acluser** %d_user39, align 8
  %49 = load %struct.win*, %struct.win** %w, align 8
  %w_wlockuser40 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 30
  %50 = load %struct.acluser*, %struct.acluser** %w_wlockuser40, align 8
  %cmp41 = icmp eq %struct.acluser* %48, %50
  %cond43 = select i1 %cmp41, i32 87, i32 118
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.38, %cond.true.37
  %cond45 = phi i32 [ 119, %cond.true.37 ], [ %cond43, %cond.false.38 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.32
  %cond47 = phi i32 [ 45, %cond.true.32 ], [ %cond45, %cond.end.44 ]
  %51 = load %struct.display*, %struct.display** %d, align 8
  %d_user48 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 1
  %52 = load %struct.acluser*, %struct.acluser** %d_user48, align 8
  %53 = load %struct.win*, %struct.win** %w, align 8
  %call49 = call i32 @AclCheckPermWin(%struct.acluser* %52, i32 2, %struct.win* %53)
  %tobool50 = icmp ne i32 %call49, 0
  %cond51 = select i1 %tobool50, i32 45, i32 120
  %call52 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %28, i8* %30, i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i32 32, i32 %cond28, i32 %cond47, i32 %cond51) #2
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end.46, %cond.end
  %arraydecay54 = getelementptr inbounds [80 x i8], [80 x i8]* %tbuf, i32 0, i32 0
  %54 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %y = getelementptr inbounds %struct.ListRow, %struct.ListRow* %54, i32 0, i32 3
  %55 = load i32, i32* %y, align 4
  %56 = load %struct.ListRow*, %struct.ListRow** %lrow.addr, align 8
  %57 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %57, i32 0, i32 2
  %58 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %cmp55 = icmp eq %struct.ListRow* %56, %58
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %if.end.53
  br label %cond.end.65

cond.false.58:                                    ; preds = %if.end.53
  %59 = load %struct.display*, %struct.display** %d, align 8
  %60 = load %struct.display*, %struct.display** @display, align 8
  %cmp59 = icmp eq %struct.display* %59, %60
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.58
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.false.58
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi %struct.mchar* [ %m_current, %cond.true.61 ], [ null, %cond.false.62 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.57
  %cond66 = phi %struct.mchar* [ @mchar_so, %cond.true.57 ], [ %cond64, %cond.end.63 ]
  call void @leftline(i8* %arraydecay54, i32 %55, %struct.mchar* %cond66)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_input(%struct.ListData* %ldata, i8** %inp, i32* %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ldata.addr = alloca %struct.ListData*, align 8
  %inp.addr = alloca i8**, align 8
  %len.addr = alloca i32*, align 8
  %cd = alloca %struct.display*, align 8
  %ch = alloca i8, align 1
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store i8** %inp, i8*** %inp.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %cd, align 8
  %1 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %1, i32 0, i32 2
  %2 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %tobool = icmp ne %struct.ListRow* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %inp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %ch, align 1
  %6 = load i8**, i8*** %inp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8
  %8 = load i32*, i32** %len.addr, align 8
  %9 = load i32, i32* %8, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %8, align 4
  %10 = load i8, i8* %ch, align 1
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 13, label %sw.bb.1
    i32 10, label %sw.bb.1
    i32 100, label %sw.bb.2
    i32 68, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %11)
  %12 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Display_rebuild(%struct.ListData* %12)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end, %if.end
  call void @glist_abort()
  %13 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %13, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end
  %14 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected3 = getelementptr inbounds %struct.ListData, %struct.ListData* %14, i32 0, i32 2
  %15 = load %struct.ListRow*, %struct.ListRow** %selected3, align 8
  %data = getelementptr inbounds %struct.ListRow, %struct.ListRow* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct.display*
  store %struct.display* %17, %struct.display** @display, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %19 = load %struct.display*, %struct.display** %cd, align 8
  %cmp = icmp eq %struct.display* %18, %19
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb.2
  br label %sw.epilog

if.end.6:                                         ; preds = %sw.bb.2
  %20 = load i8, i8* %ch, align 1
  %conv7 = zext i8 %20 to i32
  %cmp8 = icmp eq i32 %conv7, 68
  %cond = select i1 %cmp8, i32 4, i32 2
  call void @Detach(i32 %cond)
  %21 = load %struct.display*, %struct.display** %cd, align 8
  store %struct.display* %21, %struct.display** @display, align 8
  %22 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @glist_remove_rows(%struct.ListData* %22)
  %23 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  call void @gl_Display_rebuild(%struct.ListData* %23)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %24 = load i8**, i8*** %inp.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr10, i8** %24, align 8
  %26 = load i32*, i32** %len.addr, align 8
  %27 = load i32, i32* %26, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %26, align 4
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.then.5, %sw.bb.1, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_freerow(%struct.ListData* %ldata, %struct.ListRow* %row) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %row.addr = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %row, %struct.ListRow** %row.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gl_Display_free(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  ret i32 0
}

declare void @leftline(i8*, i32, %struct.mchar*) #1

declare void @centerline(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @AclCheckPermWin(%struct.acluser*, i32, %struct.win*) #1

declare void @glist_remove_rows(%struct.ListData*) #1

declare void @glist_abort() #1

declare void @Detach(i32) #1

declare %struct.ListRow* @glist_add_row(%struct.ListData*, i8*, %struct.ListRow*) #1

declare void @glist_display_all(%struct.ListData*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
