; ModuleID = './list_generic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
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
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.ListData = type { i8*, %struct.ListRow*, %struct.ListRow*, %struct.ListRow*, %struct.GenericList*, i8*, i8* }
%struct.ListRow = type { i8*, %struct.ListRow*, %struct.ListRow*, i32 }
%struct.GenericList = type { i32 (%struct.ListData*)*, i32 (%struct.ListData*)*, i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, i8**, i32*)*, i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)* }

@ListLf = global %struct.LayFuncs { void (i8**, i32*)* @ListProcess, void ()* @ListAbort, void (i32, i32, i32, i32)* @ListRedisplayLine, void (i32, i32, i32, i32)* @ListClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @ListRewrite, i32 (i32, i32)* @ListResize, void ()* @ListRestore, void (i8*)* @ListFree }, align 8
@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [9 x i8] c"Search: \00", align 1

; Function Attrs: nounwind uwtable
define internal void @ListProcess(i8** %ppbuf, i32* %plen) #0 {
entry:
  %ppbuf.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %ldata = alloca %struct.ListData*, align 8
  %count = alloca i32, align 4
  %old = alloca %struct.ListRow*, align 8
  %ch = alloca i8, align 1
  %r = alloca i32, align 4
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %n = alloca i32, align 4
  %button = alloca i32, align 4
  %y144 = alloca i32, align 4
  %r149 = alloca %struct.ListRow*, align 8
  store i8** %ppbuf, i8*** %ppbuf.addr, align 8
  store i32* %plen, i32** %plen.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.ListData*
  store %struct.ListData* %2, %struct.ListData** %ldata, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.203, %if.then.186, %if.else.15, %if.then.12, %if.then, %entry
  %3 = load i32*, i32** %plen.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end.204

while.body:                                       ; preds = %while.cond
  %5 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 12
  %start = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent, i32 0, i32 2
  %6 = load i32, i32* %start, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %7, i32 0, i32 4
  %8 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_pinput = getelementptr inbounds %struct.GenericList, %struct.GenericList* %8, i32 0, i32 3
  %9 = load i32 (%struct.ListData*, i8**, i32*)*, i32 (%struct.ListData*, i8**, i32*)** %gl_pinput, align 8
  %tobool1 = icmp ne i32 (%struct.ListData*, i8**, i32*)* %9, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %10 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn3 = getelementptr inbounds %struct.ListData, %struct.ListData* %10, i32 0, i32 4
  %11 = load %struct.GenericList*, %struct.GenericList** %list_fn3, align 8
  %gl_pinput4 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %11, i32 0, i32 3
  %12 = load i32 (%struct.ListData*, i8**, i32*)*, i32 (%struct.ListData*, i8**, i32*)** %gl_pinput4, align 8
  %13 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %14 = load i8**, i8*** %ppbuf.addr, align 8
  %15 = load i32*, i32** %plen.addr, align 8
  %call = call i32 %12(%struct.ListData* %13, i8** %14, i32* %15)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %while.body
  %16 = load i8**, i8*** %ppbuf.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %ch, align 1
  %19 = load i8**, i8*** %ppbuf.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %19, align 8
  %21 = load i32*, i32** %plen.addr, align 8
  %22 = load i32, i32* %21, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %21, align 4
  %23 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent6 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 12
  %start7 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent6, i32 0, i32 2
  %24 = load i32, i32* %start7, align 4
  %tobool8 = icmp ne i32 %24, 0
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %26 = load i8, i8* %ch, align 1
  %call10 = call i32 @LayProcessMouse(%struct.layer* %25, i8 zeroext %26)
  store i32 %call10, i32* %r, align 4
  %27 = load i32, i32* %r, align 4
  %cmp11 = icmp eq i32 %27, -1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %28, i32 0)
  br label %while.cond

if.else:                                          ; preds = %if.then.9
  %29 = load i32, i32* %r, align 4
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i8 -110, i8* %ch, align 1
  br label %if.end.16

if.else.15:                                       ; preds = %if.else
  br label %while.cond

if.end.16:                                        ; preds = %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %30 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %30, i32 0, i32 2
  %31 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %tobool19 = icmp ne %struct.ListRow* %31, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %32 = load i32*, i32** %plen.addr, align 8
  store i32 0, i32* %32, align 4
  br label %while.end.204

if.end.21:                                        ; preds = %if.end.18
  %33 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected22 = getelementptr inbounds %struct.ListData, %struct.ListData* %33, i32 0, i32 2
  %34 = load %struct.ListRow*, %struct.ListRow** %selected22, align 8
  store %struct.ListRow* %34, %struct.ListRow** %old, align 8
  br label %processchar

processchar:                                      ; preds = %if.then.179, %if.end.21
  %35 = load i8, i8* %ch, align 1
  %conv = zext i8 %35 to i32
  switch i32 %conv, label %sw.epilog [
    i32 32, label %sw.bb
    i32 13, label %sw.bb.23
    i32 10, label %sw.bb.23
    i32 144, label %sw.bb.24
    i32 16, label %sw.bb.24
    i32 107, label %sw.bb.24
    i32 142, label %sw.bb.31
    i32 14, label %sw.bb.31
    i32 106, label %sw.bb.31
    i32 27, label %sw.bb.38
    i32 7, label %sw.bb.38
    i32 129, label %sw.bb.39
    i32 1, label %sw.bb.39
    i32 133, label %sw.bb.41
    i32 5, label %sw.bb.41
    i32 4, label %sw.bb.55
    i32 6, label %sw.bb.55
    i32 21, label %sw.bb.67
    i32 2, label %sw.bb.67
    i32 47, label %sw.bb.88
    i32 110, label %sw.bb.102
    i32 78, label %sw.bb.114
    i32 146, label %sw.bb.126
  ]

sw.bb:                                            ; preds = %processchar
  br label %sw.epilog

sw.bb.23:                                         ; preds = %processchar, %processchar
  br label %sw.epilog

sw.bb.24:                                         ; preds = %processchar, %processchar, %processchar
  %36 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected25 = getelementptr inbounds %struct.ListData, %struct.ListData* %36, i32 0, i32 2
  %37 = load %struct.ListRow*, %struct.ListRow** %selected25, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %37, i32 0, i32 2
  %38 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  %tobool26 = icmp ne %struct.ListRow* %38, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.24
  br label %sw.epilog

if.end.28:                                        ; preds = %sw.bb.24
  %39 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %prev29 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %39, i32 0, i32 2
  %40 = load %struct.ListRow*, %struct.ListRow** %prev29, align 8
  %41 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected30 = getelementptr inbounds %struct.ListData, %struct.ListData* %41, i32 0, i32 2
  store %struct.ListRow* %40, %struct.ListRow** %selected30, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %processchar, %processchar, %processchar
  %42 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected32 = getelementptr inbounds %struct.ListData, %struct.ListData* %42, i32 0, i32 2
  %43 = load %struct.ListRow*, %struct.ListRow** %selected32, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %43, i32 0, i32 1
  %44 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  %tobool33 = icmp ne %struct.ListRow* %44, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %sw.bb.31
  br label %sw.epilog

if.end.35:                                        ; preds = %sw.bb.31
  %45 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %next36 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %45, i32 0, i32 1
  %46 = load %struct.ListRow*, %struct.ListRow** %next36, align 8
  %47 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected37 = getelementptr inbounds %struct.ListData, %struct.ListData* %47, i32 0, i32 2
  store %struct.ListRow* %46, %struct.ListRow** %selected37, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %processchar, %processchar
  call void @ListAbort()
  %48 = load i32*, i32** %plen.addr, align 8
  store i32 0, i32* %48, align 4
  br label %while.end.204

sw.bb.39:                                         ; preds = %processchar, %processchar
  %49 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %49, i32 0, i32 1
  %50 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  %51 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected40 = getelementptr inbounds %struct.ListData, %struct.ListData* %51, i32 0, i32 2
  store %struct.ListRow* %50, %struct.ListRow** %selected40, align 8
  br label %sw.epilog

sw.bb.41:                                         ; preds = %processchar, %processchar
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.46, %sw.bb.41
  %52 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected43 = getelementptr inbounds %struct.ListData, %struct.ListData* %52, i32 0, i32 2
  %53 = load %struct.ListRow*, %struct.ListRow** %selected43, align 8
  %next44 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %53, i32 0, i32 1
  %54 = load %struct.ListRow*, %struct.ListRow** %next44, align 8
  %tobool45 = icmp ne %struct.ListRow* %54, null
  br i1 %tobool45, label %while.body.46, label %while.end

while.body.46:                                    ; preds = %while.cond.42
  %55 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected47 = getelementptr inbounds %struct.ListData, %struct.ListData* %55, i32 0, i32 2
  %56 = load %struct.ListRow*, %struct.ListRow** %selected47, align 8
  %next48 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %56, i32 0, i32 1
  %57 = load %struct.ListRow*, %struct.ListRow** %next48, align 8
  %58 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected49 = getelementptr inbounds %struct.ListData, %struct.ListData* %58, i32 0, i32 2
  store %struct.ListRow* %57, %struct.ListRow** %selected49, align 8
  br label %while.cond.42

while.end:                                        ; preds = %while.cond.42
  %59 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected50 = getelementptr inbounds %struct.ListData, %struct.ListData* %59, i32 0, i32 2
  %60 = load %struct.ListRow*, %struct.ListRow** %selected50, align 8
  %y = getelementptr inbounds %struct.ListRow, %struct.ListRow* %60, i32 0, i32 3
  %61 = load i32, i32* %y, align 4
  %cmp51 = icmp ne i32 %61, -1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %while.end
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %while.end
  br label %sw.epilog

sw.bb.55:                                         ; preds = %processchar, %processchar
  %62 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %62, i32 0, i32 2
  %63 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %63, 4
  %64 = load i8, i8* %ch, align 1
  %conv56 = zext i8 %64 to i32
  %cmp57 = icmp eq i32 %conv56, 4
  %conv58 = zext i1 %cmp57 to i32
  %shr = ashr i32 %sub, %conv58
  store i32 %shr, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.55
  %65 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected59 = getelementptr inbounds %struct.ListData, %struct.ListData* %65, i32 0, i32 2
  %66 = load %struct.ListRow*, %struct.ListRow** %selected59, align 8
  %next60 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %66, i32 0, i32 1
  %67 = load %struct.ListRow*, %struct.ListRow** %next60, align 8
  %tobool61 = icmp ne %struct.ListRow* %67, null
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %68 = load i32, i32* %count, align 4
  %dec62 = add nsw i32 %68, -1
  store i32 %dec62, i32* %count, align 4
  %tobool63 = icmp ne i32 %dec62, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %69 = phi i1 [ false, %for.cond ], [ %tobool63, %land.rhs ]
  br i1 %69, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected64 = getelementptr inbounds %struct.ListData, %struct.ListData* %70, i32 0, i32 2
  %71 = load %struct.ListRow*, %struct.ListRow** %selected64, align 8
  %next65 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %71, i32 0, i32 1
  %72 = load %struct.ListRow*, %struct.ListRow** %next65, align 8
  %73 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected66 = getelementptr inbounds %struct.ListData, %struct.ListData* %73, i32 0, i32 2
  store %struct.ListRow* %72, %struct.ListRow** %selected66, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %sw.epilog

sw.bb.67:                                         ; preds = %processchar, %processchar
  %74 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height68 = getelementptr inbounds %struct.layer, %struct.layer* %74, i32 0, i32 2
  %75 = load i32, i32* %l_height68, align 4
  %sub69 = sub nsw i32 %75, 4
  %76 = load i8, i8* %ch, align 1
  %conv70 = zext i8 %76 to i32
  %cmp71 = icmp eq i32 %conv70, 21
  %conv72 = zext i1 %cmp71 to i32
  %shr73 = ashr i32 %sub69, %conv72
  store i32 %shr73, i32* %count, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.83, %sw.bb.67
  %77 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected75 = getelementptr inbounds %struct.ListData, %struct.ListData* %77, i32 0, i32 2
  %78 = load %struct.ListRow*, %struct.ListRow** %selected75, align 8
  %prev76 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %78, i32 0, i32 2
  %79 = load %struct.ListRow*, %struct.ListRow** %prev76, align 8
  %tobool77 = icmp ne %struct.ListRow* %79, null
  br i1 %tobool77, label %land.rhs.78, label %land.end.81

land.rhs.78:                                      ; preds = %for.cond.74
  %80 = load i32, i32* %count, align 4
  %dec79 = add nsw i32 %80, -1
  store i32 %dec79, i32* %count, align 4
  %tobool80 = icmp ne i32 %dec79, 0
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.78, %for.cond.74
  %81 = phi i1 [ false, %for.cond.74 ], [ %tobool80, %land.rhs.78 ]
  br i1 %81, label %for.body.82, label %for.end.87

for.body.82:                                      ; preds = %land.end.81
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.82
  %82 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected84 = getelementptr inbounds %struct.ListData, %struct.ListData* %82, i32 0, i32 2
  %83 = load %struct.ListRow*, %struct.ListRow** %selected84, align 8
  %prev85 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %83, i32 0, i32 2
  %84 = load %struct.ListRow*, %struct.ListRow** %prev85, align 8
  %85 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected86 = getelementptr inbounds %struct.ListData, %struct.ListData* %85, i32 0, i32 2
  store %struct.ListRow* %84, %struct.ListRow** %selected86, align 8
  br label %for.cond.74

for.end.87:                                       ; preds = %land.end.81
  br label %sw.epilog

sw.bb.88:                                         ; preds = %processchar
  %86 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn89 = getelementptr inbounds %struct.ListData, %struct.ListData* %86, i32 0, i32 4
  %87 = load %struct.GenericList*, %struct.GenericList** %list_fn89, align 8
  %gl_matchrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %87, i32 0, i32 6
  %88 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow, align 8
  %tobool90 = icmp ne i32 (%struct.ListData*, %struct.ListRow*, i8*)* %88, null
  br i1 %tobool90, label %if.then.91, label %if.end.101

if.then.91:                                       ; preds = %sw.bb.88
  %89 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %90 = bitcast %struct.ListData* %89 to i8*
  call void @Input(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 80, i32 0, void (i8*, i32, i8*)* @glist_search, i8* %90, i32 0)
  %91 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search = getelementptr inbounds %struct.ListData, %struct.ListData* %91, i32 0, i32 5
  %92 = load i8*, i8** %search, align 8
  store i8* %92, i8** %s, align 8
  %tobool92 = icmp ne i8* %92, null
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %if.then.91
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.97, %if.then.93
  %93 = load i8*, i8** %s, align 8
  %94 = load i8, i8* %93, align 1
  %tobool95 = icmp ne i8 %94, 0
  br i1 %tobool95, label %for.body.96, label %for.end.99

for.body.96:                                      ; preds = %for.cond.94
  %95 = load i8*, i8** %s, align 8
  store i8* %95, i8** %ss, align 8
  store i32 1, i32* %n, align 4
  %96 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %96, i32 0, i32 6
  %97 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayProcess = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %97, i32 0, i32 0
  %98 = load void (i8**, i32*)*, void (i8**, i32*)** %lf_LayProcess, align 8
  call void %98(i8** %ss, i32* %n)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.96
  %99 = load i8*, i8** %s, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr98, i8** %s, align 8
  br label %for.cond.94

for.end.99:                                       ; preds = %for.cond.94
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %if.then.91
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %sw.bb.88
  br label %sw.epilog

sw.bb.102:                                        ; preds = %processchar
  %100 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn103 = getelementptr inbounds %struct.ListData, %struct.ListData* %100, i32 0, i32 4
  %101 = load %struct.GenericList*, %struct.GenericList** %list_fn103, align 8
  %gl_matchrow104 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %101, i32 0, i32 6
  %102 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow104, align 8
  %tobool105 = icmp ne i32 (%struct.ListData*, %struct.ListRow*, i8*)* %102, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.113

land.lhs.true.106:                                ; preds = %sw.bb.102
  %103 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search107 = getelementptr inbounds %struct.ListData, %struct.ListData* %103, i32 0, i32 5
  %104 = load i8*, i8** %search107, align 8
  %tobool108 = icmp ne i8* %104, null
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %land.lhs.true.106
  %105 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %106 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected110 = getelementptr inbounds %struct.ListData, %struct.ListData* %106, i32 0, i32 2
  %107 = load %struct.ListRow*, %struct.ListRow** %selected110, align 8
  %call111 = call %struct.ListRow* @glist_search_dir(%struct.ListData* %105, %struct.ListRow* %107, i32 1)
  %108 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected112 = getelementptr inbounds %struct.ListData, %struct.ListData* %108, i32 0, i32 2
  store %struct.ListRow* %call111, %struct.ListRow** %selected112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %land.lhs.true.106, %sw.bb.102
  br label %sw.epilog

sw.bb.114:                                        ; preds = %processchar
  %109 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn115 = getelementptr inbounds %struct.ListData, %struct.ListData* %109, i32 0, i32 4
  %110 = load %struct.GenericList*, %struct.GenericList** %list_fn115, align 8
  %gl_matchrow116 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %110, i32 0, i32 6
  %111 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow116, align 8
  %tobool117 = icmp ne i32 (%struct.ListData*, %struct.ListRow*, i8*)* %111, null
  br i1 %tobool117, label %land.lhs.true.118, label %if.end.125

land.lhs.true.118:                                ; preds = %sw.bb.114
  %112 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search119 = getelementptr inbounds %struct.ListData, %struct.ListData* %112, i32 0, i32 5
  %113 = load i8*, i8** %search119, align 8
  %tobool120 = icmp ne i8* %113, null
  br i1 %tobool120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %land.lhs.true.118
  %114 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %115 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected122 = getelementptr inbounds %struct.ListData, %struct.ListData* %115, i32 0, i32 2
  %116 = load %struct.ListRow*, %struct.ListRow** %selected122, align 8
  %call123 = call %struct.ListRow* @glist_search_dir(%struct.ListData* %114, %struct.ListRow* %116, i32 -1)
  %117 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected124 = getelementptr inbounds %struct.ListData, %struct.ListData* %117, i32 0, i32 2
  store %struct.ListRow* %call123, %struct.ListRow** %selected124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %land.lhs.true.118, %sw.bb.114
  br label %sw.epilog

sw.bb.126:                                        ; preds = %processchar
  %118 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent127 = getelementptr inbounds %struct.layer, %struct.layer* %118, i32 0, i32 12
  %start128 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent127, i32 0, i32 2
  %119 = load i32, i32* %start128, align 4
  %tobool129 = icmp ne i32 %119, 0
  br i1 %tobool129, label %if.then.130, label %if.else.181

if.then.130:                                      ; preds = %sw.bb.126
  %120 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent131 = getelementptr inbounds %struct.layer, %struct.layer* %120, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent131, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 0
  %121 = load i8, i8* %arrayidx, align 1
  %conv132 = zext i8 %121 to i32
  store i32 %conv132, i32* %button, align 4
  %122 = load i32, i32* %button, align 4
  %cmp133 = icmp eq i32 %122, 97
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.then.130
  store i8 106, i8* %ch, align 1
  br label %if.end.177

if.else.136:                                      ; preds = %if.then.130
  %123 = load i32, i32* %button, align 4
  %cmp137 = icmp eq i32 %123, 96
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.else.136
  store i8 107, i8* %ch, align 1
  br label %if.end.176

if.else.140:                                      ; preds = %if.else.136
  %124 = load i32, i32* %button, align 4
  %cmp141 = icmp eq i32 %124, 32
  br i1 %cmp141, label %if.then.143, label %if.else.174

if.then.143:                                      ; preds = %if.else.140
  %125 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent145 = getelementptr inbounds %struct.layer, %struct.layer* %125, i32 0, i32 12
  %buffer146 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer146, i32 0, i64 2
  %126 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %126 to i32
  store i32 %conv148, i32* %y144, align 4
  %127 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %127, i32 0, i32 3
  %128 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  store %struct.ListRow* %128, %struct.ListRow** %r149, align 8
  %129 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %top150 = getelementptr inbounds %struct.ListData, %struct.ListData* %129, i32 0, i32 3
  %130 = load %struct.ListRow*, %struct.ListRow** %top150, align 8
  store %struct.ListRow* %130, %struct.ListRow** %r149, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.163, %if.then.143
  %131 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %tobool152 = icmp ne %struct.ListRow* %131, null
  br i1 %tobool152, label %land.lhs.true.153, label %land.end.161

land.lhs.true.153:                                ; preds = %for.cond.151
  %132 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %y154 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %132, i32 0, i32 3
  %133 = load i32, i32* %y154, align 4
  %cmp155 = icmp ne i32 %133, -1
  br i1 %cmp155, label %land.rhs.157, label %land.end.161

land.rhs.157:                                     ; preds = %land.lhs.true.153
  %134 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %y158 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %134, i32 0, i32 3
  %135 = load i32, i32* %y158, align 4
  %136 = load i32, i32* %y144, align 4
  %cmp159 = icmp ne i32 %135, %136
  br label %land.end.161

land.end.161:                                     ; preds = %land.rhs.157, %land.lhs.true.153, %for.cond.151
  %137 = phi i1 [ false, %land.lhs.true.153 ], [ false, %for.cond.151 ], [ %cmp159, %land.rhs.157 ]
  br i1 %137, label %for.body.162, label %for.end.165

for.body.162:                                     ; preds = %land.end.161
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.162
  %138 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %next164 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %138, i32 0, i32 1
  %139 = load %struct.ListRow*, %struct.ListRow** %next164, align 8
  store %struct.ListRow* %139, %struct.ListRow** %r149, align 8
  br label %for.cond.151

for.end.165:                                      ; preds = %land.end.161
  %140 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %tobool166 = icmp ne %struct.ListRow* %140, null
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.173

land.lhs.true.167:                                ; preds = %for.end.165
  %141 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %y168 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %141, i32 0, i32 3
  %142 = load i32, i32* %y168, align 4
  %143 = load i32, i32* %y144, align 4
  %cmp169 = icmp eq i32 %142, %143
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %land.lhs.true.167
  %144 = load %struct.ListRow*, %struct.ListRow** %r149, align 8
  %145 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected172 = getelementptr inbounds %struct.ListData, %struct.ListData* %145, i32 0, i32 2
  store %struct.ListRow* %144, %struct.ListRow** %selected172, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %land.lhs.true.167, %for.end.165
  store i8 0, i8* %ch, align 1
  br label %if.end.175

if.else.174:                                      ; preds = %if.else.140
  store i8 0, i8* %ch, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.174, %if.end.173
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.139
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.135
  %146 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %146, i32 0)
  %147 = load i8, i8* %ch, align 1
  %tobool178 = icmp ne i8 %147, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.177
  br label %processchar

if.end.180:                                       ; preds = %if.end.177
  br label %if.end.182

if.else.181:                                      ; preds = %sw.bb.126
  %148 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %148, i32 1)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181, %if.end.180
  br label %sw.epilog

sw.epilog:                                        ; preds = %processchar, %if.end.182, %if.end.125, %if.end.113, %if.end.101, %for.end.87, %for.end, %if.end.54, %sw.bb.39, %if.end.35, %if.then.34, %if.end.28, %if.then.27, %sw.bb.23, %sw.bb
  %149 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %150 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected183 = getelementptr inbounds %struct.ListData, %struct.ListData* %150, i32 0, i32 2
  %151 = load %struct.ListRow*, %struct.ListRow** %selected183, align 8
  %cmp184 = icmp eq %struct.ListRow* %149, %151
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %sw.epilog
  br label %while.cond

if.end.187:                                       ; preds = %sw.epilog
  %152 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected188 = getelementptr inbounds %struct.ListData, %struct.ListData* %152, i32 0, i32 2
  %153 = load %struct.ListRow*, %struct.ListRow** %selected188, align 8
  %y189 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %153, i32 0, i32 3
  %154 = load i32, i32* %y189, align 4
  %cmp190 = icmp eq i32 %154, -1
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %if.end.187
  %155 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_decide_top(%struct.ListData* %155)
  %156 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_display_all(%struct.ListData* %156)
  br label %if.end.203

if.else.193:                                      ; preds = %if.end.187
  %157 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn194 = getelementptr inbounds %struct.ListData, %struct.ListData* %157, i32 0, i32 4
  %158 = load %struct.GenericList*, %struct.GenericList** %list_fn194, align 8
  %gl_printrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %158, i32 0, i32 2
  %159 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow, align 8
  %160 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %161 = load %struct.ListRow*, %struct.ListRow** %old, align 8
  %call195 = call i32 %159(%struct.ListData* %160, %struct.ListRow* %161)
  %162 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn196 = getelementptr inbounds %struct.ListData, %struct.ListData* %162, i32 0, i32 4
  %163 = load %struct.GenericList*, %struct.GenericList** %list_fn196, align 8
  %gl_printrow197 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %163, i32 0, i32 2
  %164 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow197, align 8
  %165 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %166 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected198 = getelementptr inbounds %struct.ListData, %struct.ListData* %166, i32 0, i32 2
  %167 = load %struct.ListRow*, %struct.ListRow** %selected198, align 8
  %call199 = call i32 %164(%struct.ListData* %165, %struct.ListRow* %167)
  %168 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected200 = getelementptr inbounds %struct.ListData, %struct.ListData* %168, i32 0, i32 2
  %169 = load %struct.ListRow*, %struct.ListRow** %selected200, align 8
  %y201 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %169, i32 0, i32 3
  %170 = load i32, i32* %y201, align 4
  %171 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %171, i32 0, i32 4
  store i32 %170, i32* %l_y, align 4
  %172 = load %struct.layer*, %struct.layer** @flayer, align 8
  %173 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %173, i32 0, i32 3
  %174 = load i32, i32* %l_x, align 4
  %175 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y202 = getelementptr inbounds %struct.layer, %struct.layer* %175, i32 0, i32 4
  %176 = load i32, i32* %l_y202, align 4
  call void @LGotoPos(%struct.layer* %172, i32 %174, i32 %176)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.193, %if.then.192
  br label %while.cond

while.end.204:                                    ; preds = %sw.bb.38, %if.then.20, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ListAbort() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %2, %struct.layer** @flayer, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %5 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  %6 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  store %struct.canvas* %6, %struct.canvas** %l_cvlist5, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  store %struct.layer* %11, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %15, i32 0)
  %16 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %16, %struct.layer** @flayer, align 8
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.12, %for.end
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %19, null
  br i1 %tobool9, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer11 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 9
  store %struct.layer* %20, %struct.layer** %c_layer11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.10
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 10
  %23 = load %struct.canvas*, %struct.canvas** %c_lnext13, align 8
  store %struct.canvas* %23, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.14:                                       ; preds = %for.cond.8
  %24 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next15 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 8
  %26 = load %struct.layer*, %struct.layer** %l_next15, align 8
  %l_cvlist16 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  store %struct.canvas* %24, %struct.canvas** %l_cvlist16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %for.end.14
  call void @ExitOverlayPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ListRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %ldata = alloca %struct.ListData*, align 8
  %row = alloca %struct.ListRow*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.ListData*
  store %struct.ListData* %2, %struct.ListData** %ldata, align 8
  %3 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_display_all(%struct.ListData* %4)
  br label %if.end.24

if.end:                                           ; preds = %do.end
  %5 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %7 = load i32, i32* %xs.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %xe.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  call void @LClearArea(%struct.layer* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %11 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %11, i32 0, i32 3
  %12 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %tobool3 = icmp ne %struct.ListRow* %12, null
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.2
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %top4 = getelementptr inbounds %struct.ListData, %struct.ListData* %14, i32 0, i32 3
  %15 = load %struct.ListRow*, %struct.ListRow** %top4, align 8
  %y5 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %15, i32 0, i32 3
  %16 = load i32, i32* %y5, align 4
  %cmp6 = icmp slt i32 %13, %16
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %17, i32 0, i32 4
  %18 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_printheader = getelementptr inbounds %struct.GenericList, %struct.GenericList* %18, i32 0, i32 0
  %19 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_printheader, align 8
  %20 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %call = call i32 %19(%struct.ListData* %20)
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %if.end.2
  %21 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %21, 1
  %22 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %22, i32 0, i32 2
  %23 = load i32, i32* %l_height, align 4
  %cmp8 = icmp eq i32 %add, %23
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %24 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn10 = getelementptr inbounds %struct.ListData, %struct.ListData* %24, i32 0, i32 4
  %25 = load %struct.GenericList*, %struct.GenericList** %list_fn10, align 8
  %gl_printfooter = getelementptr inbounds %struct.GenericList, %struct.GenericList* %25, i32 0, i32 1
  %26 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_printfooter, align 8
  %27 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %call11 = call i32 %26(%struct.ListData* %27)
  br label %if.end.23

if.else.12:                                       ; preds = %if.else
  %28 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %top13 = getelementptr inbounds %struct.ListData, %struct.ListData* %28, i32 0, i32 3
  %29 = load %struct.ListRow*, %struct.ListRow** %top13, align 8
  store %struct.ListRow* %29, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.12
  %30 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool14 = icmp ne %struct.ListRow* %30, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y15 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %31, i32 0, i32 3
  %32 = load i32, i32* %y15, align 4
  %cmp16 = icmp ne i32 %32, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp16, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %34 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y17 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %34, i32 0, i32 3
  %35 = load i32, i32* %y17, align 4
  %36 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp eq i32 %35, %36
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %for.body
  %37 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn20 = getelementptr inbounds %struct.ListData, %struct.ListData* %37, i32 0, i32 4
  %38 = load %struct.GenericList*, %struct.GenericList** %list_fn20, align 8
  %gl_printrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %38, i32 0, i32 2
  %39 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow, align 8
  %40 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %41 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call21 = call i32 %39(%struct.ListData* %40, %struct.ListRow* %41)
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %42 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %42, i32 0, i32 1
  %43 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  store %struct.ListRow* %43, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %land.end
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %if.then.9
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.end.23, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ListClearLine(i32 %y, i32 %xs, i32 %xe, i32 %bce) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %xs.addr, align 4
  %2 = load i32, i32* %xe.addr, align 4
  %3 = load i32, i32* %bce.addr, align 4
  call void @DefClearLine(i32 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ListRewrite(i32 %y, i32 %xs, i32 %xe, %struct.mchar* %rend, i32 %doit) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %rend.addr = alloca %struct.mchar*, align 8
  %doit.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store %struct.mchar* %rend, %struct.mchar** %rend.addr, align 8
  store i32 %doit, i32* %doit.addr, align 4
  ret i32 1000
}

; Function Attrs: nounwind uwtable
define internal i32 @ListResize(i32 %wi, i32 %he) #0 {
entry:
  %retval = alloca i32, align 4
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  %0 = load i32, i32* %wi.addr, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %he.addr, align 4
  %cmp1 = icmp slt i32 %1, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %wi.addr, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 1
  store i32 %2, i32* %l_width, align 4
  %4 = load i32, i32* %he.addr, align 4
  %5 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 2
  store i32 %4, i32* %l_height, align 4
  %6 = load i32, i32* %he.addr, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 4
  store i32 %sub, i32* %l_y, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @ListRestore() #0 {
entry:
  call void @DefRestore()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ListFree(i8* %d) #0 {
entry:
  %d.addr = alloca i8*, align 8
  %ldata = alloca %struct.ListData*, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = bitcast i8* %0 to %struct.ListData*
  store %struct.ListData* %1, %struct.ListData** %ldata, align 8
  %2 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_remove_rows(%struct.ListData* %2)
  %3 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %3, i32 0, i32 4
  %4 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_free = getelementptr inbounds %struct.GenericList, %struct.GenericList* %4, i32 0, i32 5
  %5 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_free, align 8
  %tobool = icmp ne i32 (%struct.ListData*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn1 = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 4
  %7 = load %struct.GenericList*, %struct.GenericList** %list_fn1, align 8
  %gl_free2 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %7, i32 0, i32 5
  %8 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_free2, align 8
  %9 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %call = call i32 %8(%struct.ListData* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search = getelementptr inbounds %struct.ListData, %struct.ListData* %10, i32 0, i32 5
  %11 = load i8*, i8** %search, align 8
  %tobool3 = icmp ne i8* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search5 = getelementptr inbounds %struct.ListData, %struct.ListData* %12, i32 0, i32 5
  %13 = load i8*, i8** %search5, align 8
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  call void @abort() #4
  unreachable

if.else:                                          ; preds = %if.then.4
  %14 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search7 = getelementptr inbounds %struct.ListData, %struct.ListData* %14, i32 0, i32 5
  %15 = load i8*, i8** %search7, align 8
  call void @free(i8* %15) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  %16 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search9 = getelementptr inbounds %struct.ListData, %struct.ListData* %16, i32 0, i32 5
  store i8* null, i8** %search9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.ListData* @glist_display(%struct.GenericList* %list, i8* %name) #0 {
entry:
  %retval = alloca %struct.ListData*, align 8
  %list.addr = alloca %struct.GenericList*, align 8
  %name.addr = alloca i8*, align 8
  %ldata = alloca %struct.ListData*, align 8
  store %struct.GenericList* %list, %struct.GenericList** %list.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i32 @InitOverlayPage(i32 56, %struct.LayFuncs* @ListLf, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ListData* null, %struct.ListData** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.ListData*
  store %struct.ListData* %2, %struct.ListData** %ldata, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %name1 = getelementptr inbounds %struct.ListData, %struct.ListData* %4, i32 0, i32 0
  store i8* %3, i8** %name1, align 8
  %5 = load %struct.GenericList*, %struct.GenericList** %list.addr, align 8
  %6 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 4
  store %struct.GenericList* %5, %struct.GenericList** %list_fn, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mode = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 11
  store i32 1, i32* %l_mode, align 4
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 2
  %10 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 4
  store i32 %sub, i32* %l_y, align 4
  %12 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  store %struct.ListData* %12, %struct.ListData** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct.ListData*, %struct.ListData** %retval
  ret %struct.ListData* %13
}

declare i32 @InitOverlayPage(i32, %struct.LayFuncs*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.ListRow* @glist_add_row(%struct.ListData* %ldata, i8* %data, %struct.ListRow* %after) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %data.addr = alloca i8*, align 8
  %after.addr = alloca %struct.ListRow*, align 8
  %r = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct.ListRow* %after, %struct.ListRow** %after.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %0 = bitcast i8* %call to %struct.ListRow*
  store %struct.ListRow* %0, %struct.ListRow** %r, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %data1 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %2, i32 0, i32 0
  store i8* %1, i8** %data1, align 8
  %3 = load %struct.ListRow*, %struct.ListRow** %after.addr, align 8
  %tobool = icmp ne %struct.ListRow* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ListRow*, %struct.ListRow** %after.addr, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %4, i32 0, i32 1
  %5 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  %6 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %next2 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %6, i32 0, i32 1
  store %struct.ListRow* %5, %struct.ListRow** %next2, align 8
  %7 = load %struct.ListRow*, %struct.ListRow** %after.addr, align 8
  %8 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %8, i32 0, i32 2
  store %struct.ListRow* %7, %struct.ListRow** %prev, align 8
  %9 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %10 = load %struct.ListRow*, %struct.ListRow** %after.addr, align 8
  %next3 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %10, i32 0, i32 1
  store %struct.ListRow* %9, %struct.ListRow** %next3, align 8
  %11 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %next4 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %11, i32 0, i32 1
  %12 = load %struct.ListRow*, %struct.ListRow** %next4, align 8
  %tobool5 = icmp ne %struct.ListRow* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %14 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %next7 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %14, i32 0, i32 1
  %15 = load %struct.ListRow*, %struct.ListRow** %next7, align 8
  %prev8 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %15, i32 0, i32 2
  store %struct.ListRow* %13, %struct.ListRow** %prev8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  %16 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %16, i32 0, i32 1
  %17 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  %18 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %next9 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %18, i32 0, i32 1
  store %struct.ListRow* %17, %struct.ListRow** %next9, align 8
  %19 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root10 = getelementptr inbounds %struct.ListData, %struct.ListData* %19, i32 0, i32 1
  %20 = load %struct.ListRow*, %struct.ListRow** %root10, align 8
  %tobool11 = icmp ne %struct.ListRow* %20, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.else
  %21 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %22 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root13 = getelementptr inbounds %struct.ListData, %struct.ListData* %22, i32 0, i32 1
  %23 = load %struct.ListRow*, %struct.ListRow** %root13, align 8
  %prev14 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %23, i32 0, i32 2
  store %struct.ListRow* %21, %struct.ListRow** %prev14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.else
  %24 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %25 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root16 = getelementptr inbounds %struct.ListData, %struct.ListData* %25, i32 0, i32 1
  store %struct.ListRow* %24, %struct.ListRow** %root16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %26 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  ret %struct.ListRow* %26
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @glist_remove_rows(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %row = alloca %struct.ListRow*, align 8
  %r = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %0, i32 0, i32 1
  %1 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  store %struct.ListRow* %1, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool = icmp ne %struct.ListRow* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  store %struct.ListRow* %3, %struct.ListRow** %r, align 8
  %4 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %4, i32 0, i32 1
  %5 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  store %struct.ListRow* %5, %struct.ListRow** %row, align 8
  %6 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 4
  %7 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_freerow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %7, i32 0, i32 4
  %8 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_freerow, align 8
  %9 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %10 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %call = call i32 %8(%struct.ListData* %9, %struct.ListRow* %10)
  %11 = load %struct.ListRow*, %struct.ListRow** %r, align 8
  %12 = bitcast %struct.ListRow* %11 to i8*
  call void @free(i8* %12) #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %13, i32 0, i32 3
  store %struct.ListRow* null, %struct.ListRow** %top, align 8
  %14 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %14, i32 0, i32 2
  store %struct.ListRow* null, %struct.ListRow** %selected, align 8
  %15 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root1 = getelementptr inbounds %struct.ListData, %struct.ListData* %15, i32 0, i32 1
  store %struct.ListRow* null, %struct.ListRow** %root1, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @glist_display_all(%struct.ListData* %list) #0 {
entry:
  %list.addr = alloca %struct.ListData*, align 8
  %y = alloca i32, align 4
  %row = alloca %struct.ListRow*, align 8
  store %struct.ListData* %list, %struct.ListData** %list.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LClearAll(%struct.layer* %0, i32 0)
  %1 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %1, i32 0, i32 4
  %2 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_printheader = getelementptr inbounds %struct.GenericList, %struct.GenericList* %2, i32 0, i32 0
  %3 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_printheader, align 8
  %4 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %call = call i32 %3(%struct.ListData* %4)
  store i32 %call, i32* %y, align 4
  %5 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %top = getelementptr inbounds %struct.ListData, %struct.ListData* %5, i32 0, i32 3
  %6 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %tobool = icmp ne %struct.ListRow* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %7, i32 0, i32 1
  %8 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  %9 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %top1 = getelementptr inbounds %struct.ListData, %struct.ListData* %9, i32 0, i32 3
  store %struct.ListRow* %8, %struct.ListRow** %top1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %10, i32 0, i32 2
  %11 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  %tobool2 = icmp ne %struct.ListRow* %11, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %root4 = getelementptr inbounds %struct.ListData, %struct.ListData* %12, i32 0, i32 1
  %13 = load %struct.ListRow*, %struct.ListRow** %root4, align 8
  %14 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %selected5 = getelementptr inbounds %struct.ListData, %struct.ListData* %14, i32 0, i32 2
  store %struct.ListRow* %13, %struct.ListRow** %selected5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %15 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %root7 = getelementptr inbounds %struct.ListData, %struct.ListData* %15, i32 0, i32 1
  %16 = load %struct.ListRow*, %struct.ListRow** %root7, align 8
  store %struct.ListRow* %16, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %17 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %18 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %top8 = getelementptr inbounds %struct.ListData, %struct.ListData* %18, i32 0, i32 3
  %19 = load %struct.ListRow*, %struct.ListRow** %top8, align 8
  %cmp = icmp ne %struct.ListRow* %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y9 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %20, i32 0, i32 3
  store i32 -1, i32* %y9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %21, i32 0, i32 1
  %22 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  store %struct.ListRow* %22, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %top10 = getelementptr inbounds %struct.ListData, %struct.ListData* %23, i32 0, i32 3
  %24 = load %struct.ListRow*, %struct.ListRow** %top10, align 8
  store %struct.ListRow* %24, %struct.ListRow** %row, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.24, %for.end
  %25 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool12 = icmp ne %struct.ListRow* %25, null
  br i1 %tobool12, label %for.body.13, label %for.end.26

for.body.13:                                      ; preds = %for.cond.11
  %26 = load i32, i32* %y, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %y, align 4
  %27 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y14 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %27, i32 0, i32 3
  store i32 %26, i32* %y14, align 4
  %28 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %list_fn15 = getelementptr inbounds %struct.ListData, %struct.ListData* %28, i32 0, i32 4
  %29 = load %struct.GenericList*, %struct.GenericList** %list_fn15, align 8
  %gl_printrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %29, i32 0, i32 2
  %30 = load i32 (%struct.ListData*, %struct.ListRow*)*, i32 (%struct.ListData*, %struct.ListRow*)** %gl_printrow, align 8
  %31 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %32 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %call16 = call i32 %30(%struct.ListData* %31, %struct.ListRow* %32)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %for.body.13
  %33 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y19 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %33, i32 0, i32 3
  store i32 -1, i32* %y19, align 4
  %34 = load i32, i32* %y, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %y, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.body.13
  %35 = load i32, i32* %y, align 4
  %add = add nsw i32 %35, 1
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 2
  %37 = load i32, i32* %l_height, align 4
  %cmp21 = icmp eq i32 %add, %37
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %for.end.26

if.end.23:                                        ; preds = %if.end.20
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %38 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next25 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %38, i32 0, i32 1
  %39 = load %struct.ListRow*, %struct.ListRow** %next25, align 8
  store %struct.ListRow* %39, %struct.ListRow** %row, align 8
  br label %for.cond.11

for.end.26:                                       ; preds = %if.then.22, %for.cond.11
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.31, %for.end.26
  %40 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool28 = icmp ne %struct.ListRow* %40, null
  br i1 %tobool28, label %for.body.29, label %for.end.33

for.body.29:                                      ; preds = %for.cond.27
  %41 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %y30 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %41, i32 0, i32 3
  store i32 -1, i32* %y30, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.29
  %42 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next32 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %42, i32 0, i32 1
  %43 = load %struct.ListRow*, %struct.ListRow** %next32, align 8
  store %struct.ListRow* %43, %struct.ListRow** %row, align 8
  br label %for.cond.27

for.end.33:                                       ; preds = %for.cond.27
  %44 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %list_fn34 = getelementptr inbounds %struct.ListData, %struct.ListData* %44, i32 0, i32 4
  %45 = load %struct.GenericList*, %struct.GenericList** %list_fn34, align 8
  %gl_printfooter = getelementptr inbounds %struct.GenericList, %struct.GenericList* %45, i32 0, i32 1
  %46 = load i32 (%struct.ListData*)*, i32 (%struct.ListData*)** %gl_printfooter, align 8
  %47 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %call35 = call i32 %46(%struct.ListData* %47)
  %48 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %selected36 = getelementptr inbounds %struct.ListData, %struct.ListData* %48, i32 0, i32 2
  %49 = load %struct.ListRow*, %struct.ListRow** %selected36, align 8
  %tobool37 = icmp ne %struct.ListRow* %49, null
  br i1 %tobool37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end.33
  %50 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %selected38 = getelementptr inbounds %struct.ListData, %struct.ListData* %50, i32 0, i32 2
  %51 = load %struct.ListRow*, %struct.ListRow** %selected38, align 8
  %y39 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %51, i32 0, i32 3
  %52 = load i32, i32* %y39, align 4
  %cmp40 = icmp ne i32 %52, -1
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %land.lhs.true
  %53 = load %struct.ListData*, %struct.ListData** %list.addr, align 8
  %selected42 = getelementptr inbounds %struct.ListData, %struct.ListData* %53, i32 0, i32 2
  %54 = load %struct.ListRow*, %struct.ListRow** %selected42, align 8
  %y43 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %54, i32 0, i32 3
  %55 = load i32, i32* %y43, align 4
  %56 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %56, i32 0, i32 4
  store i32 %55, i32* %l_y, align 4
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %for.end.33
  %57 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height44 = getelementptr inbounds %struct.layer, %struct.layer* %57, i32 0, i32 2
  %58 = load i32, i32* %l_height44, align 4
  %sub = sub nsw i32 %58, 1
  %59 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y45 = getelementptr inbounds %struct.layer, %struct.layer* %59, i32 0, i32 4
  store i32 %sub, i32* %l_y45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.41
  %60 = load %struct.layer*, %struct.layer** @flayer, align 8
  %61 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %61, i32 0, i32 3
  %62 = load i32, i32* %l_x, align 4
  %63 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y47 = getelementptr inbounds %struct.layer, %struct.layer* %63, i32 0, i32 4
  %64 = load i32, i32* %l_y47, align 4
  call void @LGotoPos(%struct.layer* %60, i32 %62, i32 %64)
  ret void
}

declare void @LClearAll(%struct.layer*, i32) #1

declare void @LGotoPos(%struct.layer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @glist_abort() #0 {
entry:
  call void @ListAbort()
  ret void
}

declare i32 @LayProcessMouse(%struct.layer*, i8 zeroext) #1

declare void @LayProcessMouseSwitch(%struct.layer*, i32) #1

declare void @Input(i8*, i32, i32, void (i8*, i32, i8*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @glist_search(i8* %buf, i32 %len, i8* %data) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %ldata = alloca %struct.ListData*, align 8
  %row = alloca %struct.ListRow*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ListData*
  store %struct.ListData* %1, %struct.ListData** %ldata, align 8
  %2 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search = getelementptr inbounds %struct.ListData, %struct.ListData* %2, i32 0, i32 5
  %3 = load i8*, i8** %search, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search1 = getelementptr inbounds %struct.ListData, %struct.ListData* %4, i32 0, i32 5
  %5 = load i8*, i8** %search1, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @abort() #4
  unreachable

if.else:                                          ; preds = %if.then
  %6 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search3 = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 5
  %7 = load i8*, i8** %search3, align 8
  call void @free(i8* %7) #5
  br label %if.end

if.end:                                           ; preds = %if.else
  %8 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search4 = getelementptr inbounds %struct.ListData, %struct.ListData* %8, i32 0, i32 5
  store i8* null, i8** %search4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %len.addr, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @SaveStr(i8* %10)
  %11 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search8 = getelementptr inbounds %struct.ListData, %struct.ListData* %11, i32 0, i32 5
  store i8* %call, i8** %search8, align 8
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.5
  br label %return

if.end.10:                                        ; preds = %if.then.7
  %12 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %12, i32 0, i32 2
  %13 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  store %struct.ListRow* %13, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %14 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool11 = icmp ne %struct.ListRow* %14, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %15, i32 0, i32 4
  %16 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_matchrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %16, i32 0, i32 6
  %17 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow, align 8
  %18 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %19 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %20 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search12 = getelementptr inbounds %struct.ListData, %struct.ListData* %20, i32 0, i32 5
  %21 = load i8*, i8** %search12, align 8
  %call13 = call i32 %17(%struct.ListData* %18, %struct.ListRow* %19, i8* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %22 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %22, i32 0, i32 1
  %23 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  store %struct.ListRow* %23, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %24 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool17 = icmp ne %struct.ListRow* %24, null
  br i1 %tobool17, label %if.end.33, label %if.then.18

if.then.18:                                       ; preds = %for.end
  %25 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %25, i32 0, i32 1
  %26 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  store %struct.ListRow* %26, %struct.ListRow** %row, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %if.then.18
  %27 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %28 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected20 = getelementptr inbounds %struct.ListData, %struct.ListData* %28, i32 0, i32 2
  %29 = load %struct.ListRow*, %struct.ListRow** %selected20, align 8
  %cmp21 = icmp ne %struct.ListRow* %27, %29
  br i1 %cmp21, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.19
  %30 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %list_fn23 = getelementptr inbounds %struct.ListData, %struct.ListData* %30, i32 0, i32 4
  %31 = load %struct.GenericList*, %struct.GenericList** %list_fn23, align 8
  %gl_matchrow24 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %31, i32 0, i32 6
  %32 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow24, align 8
  %33 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %34 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %35 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %search25 = getelementptr inbounds %struct.ListData, %struct.ListData* %35, i32 0, i32 5
  %36 = load i8*, i8** %search25, align 8
  %call26 = call i32 %32(%struct.ListData* %33, %struct.ListRow* %34, i8* %36)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.22
  br label %for.end.32

if.end.29:                                        ; preds = %for.body.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %37 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next31 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %37, i32 0, i32 1
  %38 = load %struct.ListRow*, %struct.ListRow** %next31, align 8
  store %struct.ListRow* %38, %struct.ListRow** %row, align 8
  br label %for.cond.19

for.end.32:                                       ; preds = %if.then.28, %for.cond.19
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %for.end
  %39 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %40 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected34 = getelementptr inbounds %struct.ListData, %struct.ListData* %40, i32 0, i32 2
  %41 = load %struct.ListRow*, %struct.ListRow** %selected34, align 8
  %cmp35 = icmp eq %struct.ListRow* %39, %41
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  br label %return

if.end.37:                                        ; preds = %if.end.33
  %42 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %43 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected38 = getelementptr inbounds %struct.ListData, %struct.ListData* %43, i32 0, i32 2
  store %struct.ListRow* %42, %struct.ListRow** %selected38, align 8
  %44 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  %selected39 = getelementptr inbounds %struct.ListData, %struct.ListData* %44, i32 0, i32 2
  %45 = load %struct.ListRow*, %struct.ListRow** %selected39, align 8
  %y = getelementptr inbounds %struct.ListRow, %struct.ListRow* %45, i32 0, i32 3
  %46 = load i32, i32* %y, align 4
  %cmp40 = icmp eq i32 %46, -1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  %47 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_decide_top(%struct.ListData* %47)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.37
  %48 = load %struct.ListData*, %struct.ListData** %ldata, align 8
  call void @glist_display_all(%struct.ListData* %48)
  br label %return

return:                                           ; preds = %if.end.42, %if.then.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ListRow* @glist_search_dir(%struct.ListData* %ldata, %struct.ListRow* %start, i32 %dir) #0 {
entry:
  %retval = alloca %struct.ListRow*, align 8
  %ldata.addr = alloca %struct.ListData*, align 8
  %start.addr = alloca %struct.ListRow*, align 8
  %dir.addr = alloca i32, align 4
  %row = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  store %struct.ListRow* %start, %struct.ListRow** %start.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  %next = getelementptr inbounds %struct.ListRow, %struct.ListRow* %1, i32 0, i32 1
  %2 = load %struct.ListRow*, %struct.ListRow** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %3, i32 0, i32 2
  %4 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ListRow* [ %2, %cond.true ], [ %4, %cond.false ]
  store %struct.ListRow* %cond, %struct.ListRow** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.7, %cond.end
  %5 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %tobool = icmp ne %struct.ListRow* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 4
  %7 = load %struct.GenericList*, %struct.GenericList** %list_fn, align 8
  %gl_matchrow = getelementptr inbounds %struct.GenericList, %struct.GenericList* %7, i32 0, i32 6
  %8 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow, align 8
  %9 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %10 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %11 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %search = getelementptr inbounds %struct.ListData, %struct.ListData* %11, i32 0, i32 5
  %12 = load i8*, i8** %search, align 8
  %call = call i32 %8(%struct.ListData* %9, %struct.ListRow* %10, i8* %12)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  store %struct.ListRow* %13, %struct.ListRow** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %dir.addr, align 4
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %for.inc
  %15 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next4 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %15, i32 0, i32 1
  %16 = load %struct.ListRow*, %struct.ListRow** %next4, align 8
  br label %cond.end.7

cond.false.5:                                     ; preds = %for.inc
  %17 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev6 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %17, i32 0, i32 2
  %18 = load %struct.ListRow*, %struct.ListRow** %prev6, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.3
  %cond8 = phi %struct.ListRow* [ %16, %cond.true.3 ], [ %18, %cond.false.5 ]
  store %struct.ListRow* %cond8, %struct.ListRow** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %dir.addr, align 4
  %cmp9 = icmp eq i32 %19, 1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.end
  %20 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %20, i32 0, i32 1
  %21 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  store %struct.ListRow* %21, %struct.ListRow** %row, align 8
  br label %if.end.24

if.else:                                          ; preds = %for.end
  %22 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  %next11 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %22, i32 0, i32 1
  %23 = load %struct.ListRow*, %struct.ListRow** %next11, align 8
  %tobool12 = icmp ne %struct.ListRow* %23, null
  br i1 %tobool12, label %if.else.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  %24 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  store %struct.ListRow* %24, %struct.ListRow** %row, align 8
  br label %if.end.23

if.else.14:                                       ; preds = %if.else
  %25 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  %next15 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %25, i32 0, i32 1
  %26 = load %struct.ListRow*, %struct.ListRow** %next15, align 8
  store %struct.ListRow* %26, %struct.ListRow** %row, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.20, %if.else.14
  %27 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next17 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %27, i32 0, i32 1
  %28 = load %struct.ListRow*, %struct.ListRow** %next17, align 8
  %tobool18 = icmp ne %struct.ListRow* %28, null
  br i1 %tobool18, label %for.body.19, label %for.end.22

for.body.19:                                      ; preds = %for.cond.16
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.19
  %29 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next21 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %29, i32 0, i32 1
  %30 = load %struct.ListRow*, %struct.ListRow** %next21, align 8
  store %struct.ListRow* %30, %struct.ListRow** %row, align 8
  br label %for.cond.16

for.end.22:                                       ; preds = %for.cond.16
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %if.then.13
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.10
  br label %for.cond.25

for.cond.25:                                      ; preds = %cond.end.41, %if.end.24
  %31 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %32 = load %struct.ListRow*, %struct.ListRow** %start.addr, align 8
  %cmp26 = icmp ne %struct.ListRow* %31, %32
  br i1 %cmp26, label %for.body.27, label %for.end.43

for.body.27:                                      ; preds = %for.cond.25
  %33 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %list_fn28 = getelementptr inbounds %struct.ListData, %struct.ListData* %33, i32 0, i32 4
  %34 = load %struct.GenericList*, %struct.GenericList** %list_fn28, align 8
  %gl_matchrow29 = getelementptr inbounds %struct.GenericList, %struct.GenericList* %34, i32 0, i32 6
  %35 = load i32 (%struct.ListData*, %struct.ListRow*, i8*)*, i32 (%struct.ListData*, %struct.ListRow*, i8*)** %gl_matchrow29, align 8
  %36 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %37 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %38 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %search30 = getelementptr inbounds %struct.ListData, %struct.ListData* %38, i32 0, i32 5
  %39 = load i8*, i8** %search30, align 8
  %call31 = call i32 %35(%struct.ListData* %36, %struct.ListRow* %37, i8* %39)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.27
  br label %for.end.43

if.end.34:                                        ; preds = %for.body.27
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %40 = load i32, i32* %dir.addr, align 4
  %cmp36 = icmp eq i32 %40, 1
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %for.inc.35
  %41 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %next38 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %41, i32 0, i32 1
  %42 = load %struct.ListRow*, %struct.ListRow** %next38, align 8
  br label %cond.end.41

cond.false.39:                                    ; preds = %for.inc.35
  %43 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  %prev40 = getelementptr inbounds %struct.ListRow, %struct.ListRow* %43, i32 0, i32 2
  %44 = load %struct.ListRow*, %struct.ListRow** %prev40, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi %struct.ListRow* [ %42, %cond.true.37 ], [ %44, %cond.false.39 ]
  store %struct.ListRow* %cond42, %struct.ListRow** %row, align 8
  br label %for.cond.25

for.end.43:                                       ; preds = %if.then.33, %for.cond.25
  %45 = load %struct.ListRow*, %struct.ListRow** %row, align 8
  store %struct.ListRow* %45, %struct.ListRow** %retval
  br label %return

return:                                           ; preds = %for.end.43, %if.then
  %46 = load %struct.ListRow*, %struct.ListRow** %retval
  ret %struct.ListRow* %46
}

; Function Attrs: nounwind uwtable
define internal void @glist_decide_top(%struct.ListData* %ldata) #0 {
entry:
  %ldata.addr = alloca %struct.ListData*, align 8
  %count = alloca i32, align 4
  %top = alloca %struct.ListRow*, align 8
  store %struct.ListData* %ldata, %struct.ListData** %ldata.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 2
  %1 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %1, 5
  store i32 %sub, i32* %count, align 4
  %2 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %selected = getelementptr inbounds %struct.ListData, %struct.ListData* %2, i32 0, i32 2
  %3 = load %struct.ListRow*, %struct.ListRow** %selected, align 8
  store %struct.ListRow* %3, %struct.ListRow** %top, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %6 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %root = getelementptr inbounds %struct.ListData, %struct.ListData* %6, i32 0, i32 1
  %7 = load %struct.ListRow*, %struct.ListRow** %root, align 8
  %cmp = icmp ne %struct.ListRow* %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %prev = getelementptr inbounds %struct.ListRow, %struct.ListRow* %9, i32 0, i32 2
  %10 = load %struct.ListRow*, %struct.ListRow** %prev, align 8
  store %struct.ListRow* %10, %struct.ListRow** %top, align 8
  %11 = load i32, i32* %count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load %struct.ListRow*, %struct.ListRow** %top, align 8
  %13 = load %struct.ListData*, %struct.ListData** %ldata.addr, align 8
  %top1 = getelementptr inbounds %struct.ListData, %struct.ListData* %13, i32 0, i32 3
  store %struct.ListRow* %12, %struct.ListRow** %top1, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i8* @SaveStr(i8*) #1

declare void @LRefreshAll(%struct.layer*, i32) #1

declare void @ExitOverlayPage() #1

declare void @LClearArea(%struct.layer*, i32, i32, i32, i32, i32, i32) #1

declare void @DefClearLine(i32, i32, i32, i32) #1

declare void @DefRestore() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
