; ModuleID = './layout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
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
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@layout_last_marker = common global %struct.layout zeroinitializer, align 8
@layout_attach = global %struct.layout* @layout_last_marker, align 8
@laytab = common global [10 x %struct.layout*] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"No more layouts\0A\00", align 1
@layouts = common global %struct.layout* null, align 8
@display = external global %struct.display*, align 8
@captionalways = external global i32, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No layouts defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@layout_last = common global %struct.layout* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"split%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" -v\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"focus\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @FreeLayoutCv(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %cnext = alloca %struct.canvas*, align 8
  %c = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  store %struct.canvas* %0, %struct.canvas** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 4
  %3 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp2 = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 4
  %5 = load %struct.canvas*, %struct.canvas** %c_slperp2, align 8
  call void @FreeLayoutCv(%struct.canvas* %5)
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp3 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 4
  %7 = load %struct.canvas*, %struct.canvas** %c_slperp3, align 8
  %8 = bitcast %struct.canvas* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp4 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 4
  store %struct.canvas* null, %struct.canvas** %c_slperp4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 2
  %11 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %11, %struct.canvas** %cnext, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext5 = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 2
  store %struct.canvas* null, %struct.canvas** %c_slnext5, align 8
  %13 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %14 = load %struct.canvas*, %struct.canvas** %c, align 8
  %cmp = icmp ne %struct.canvas* %13, %14
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %15 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %16 = bitcast %struct.canvas* %15 to i8*
  call void @free(i8* %16) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %17 = load %struct.canvas*, %struct.canvas** %cnext, align 8
  store %struct.canvas* %17, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.layout* @CreateLayout(i8* %title, i32 %startat) #0 {
entry:
  %retval = alloca %struct.layout*, align 8
  %title.addr = alloca i8*, align 8
  %startat.addr = alloca i32, align 4
  %lay = alloca %struct.layout*, align 8
  %pl = alloca %struct.layout**, align 8
  %i = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store i32 %startat, i32* %startat.addr, align 4
  %0 = load i32, i32* %startat.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %startat.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %startat.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %startat.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.9, %if.end
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom
  %4 = load %struct.layout*, %struct.layout** %arrayidx, align 8
  %tobool = icmp ne %struct.layout* %4, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %for.cond
  br label %for.end

if.end.3:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %cmp4 = icmp eq i32 %inc, 10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %i, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %startat.addr, align 4
  %cmp7 = icmp eq i32 %6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store %struct.layout* null, %struct.layout** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  br label %for.cond

for.end:                                          ; preds = %if.then.2
  %call = call noalias i8* @calloc(i64 1, i64 360) #4
  %8 = bitcast i8* %call to %struct.layout*
  store %struct.layout* %8, %struct.layout** %lay, align 8
  %9 = load i8*, i8** %title.addr, align 8
  %call10 = call i8* @SaveStr(i8* %9)
  %10 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %10, i32 0, i32 1
  store i8* %call10, i8** %lay_title, align 8
  %11 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_autosave = getelementptr inbounds %struct.layout, %struct.layout* %11, i32 0, i32 6
  store i32 1, i32* %lay_autosave, align 4
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_number = getelementptr inbounds %struct.layout, %struct.layout* %13, i32 0, i32 2
  store i32 %12, i32* %lay_number, align 4
  %14 = load %struct.layout*, %struct.layout** %lay, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom11
  store %struct.layout* %14, %struct.layout** %arrayidx12, align 8
  %16 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_next = getelementptr inbounds %struct.layout, %struct.layout* %16, i32 0, i32 0
  store %struct.layout* null, %struct.layout** %lay_next, align 8
  store %struct.layout** @layouts, %struct.layout*** %pl, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %17 = load %struct.layout**, %struct.layout*** %pl, align 8
  %18 = load %struct.layout*, %struct.layout** %17, align 8
  %tobool13 = icmp ne %struct.layout* %18, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.layout**, %struct.layout*** %pl, align 8
  %20 = load %struct.layout*, %struct.layout** %19, align 8
  %lay_next14 = getelementptr inbounds %struct.layout, %struct.layout* %20, i32 0, i32 0
  store %struct.layout** %lay_next14, %struct.layout*** %pl, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct.layout*, %struct.layout** %lay, align 8
  %22 = load %struct.layout**, %struct.layout*** %pl, align 8
  store %struct.layout* %21, %struct.layout** %22, align 8
  %23 = load %struct.layout*, %struct.layout** %lay, align 8
  store %struct.layout* %23, %struct.layout** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8
  %24 = load %struct.layout*, %struct.layout** %retval
  ret %struct.layout* %24
}

declare void @Msg(i32, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i8* @SaveStr(i8*) #2

; Function Attrs: nounwind uwtable
define void @SaveLayout(i8* %name, %struct.canvas* %cv) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %cv.addr = alloca %struct.canvas*, align 8
  %lay = alloca %struct.layout*, align 8
  %fcv = alloca %struct.canvas*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.layout*, %struct.layout** @layouts, align 8
  store %struct.layout* %0, %struct.layout** %lay, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool = icmp ne %struct.layout* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %2, i32 0, i32 1
  %3 = load i8*, i8** %lay_title, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #5
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_next = getelementptr inbounds %struct.layout, %struct.layout* %5, i32 0, i32 0
  %6 = load %struct.layout*, %struct.layout** %lay_next, align 8
  store %struct.layout* %6, %struct.layout** %lay, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool2 = icmp ne %struct.layout* %7, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  %8 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_canvas = getelementptr inbounds %struct.layout, %struct.layout* %8, i32 0, i32 3
  call void @FreeLayoutCv(%struct.canvas* %lay_canvas)
  br label %if.end.5

if.else:                                          ; preds = %for.end
  %9 = load i8*, i8** %name.addr, align 8
  %call4 = call %struct.layout* @CreateLayout(i8* %9, i32 0)
  store %struct.layout* %call4, %struct.layout** %lay, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  %10 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool6 = icmp ne %struct.layout* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 4
  %12 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %12, %struct.canvas** %fcv, align 8
  %13 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %14 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_canvas9 = getelementptr inbounds %struct.layout, %struct.layout* %14, i32 0, i32 3
  call void @DupLayoutCv(%struct.canvas* %13, %struct.canvas* %lay_canvas9, i32 1)
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv10 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 4
  %16 = load %struct.canvas*, %struct.canvas** %d_forecv10, align 8
  %17 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_forecv = getelementptr inbounds %struct.layout, %struct.layout* %17, i32 0, i32 4
  store %struct.canvas* %16, %struct.canvas** %lay_forecv, align 8
  %18 = load %struct.canvas*, %struct.canvas** %fcv, align 8
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv11 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 4
  store %struct.canvas* %18, %struct.canvas** %d_forecv11, align 8
  %20 = load %struct.layout*, %struct.layout** %lay, align 8
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 5
  store %struct.layout* %20, %struct.layout** %d_layout, align 8
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @DupLayoutCv(%struct.canvas*, %struct.canvas*, i32) #2

; Function Attrs: nounwind uwtable
define void @AutosaveLayout(%struct.layout* %lay) #0 {
entry:
  %lay.addr = alloca %struct.layout*, align 8
  %fcv = alloca %struct.canvas*, align 8
  store %struct.layout* %lay, %struct.layout** %lay.addr, align 8
  %0 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %tobool = icmp ne %struct.layout* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_autosave = getelementptr inbounds %struct.layout, %struct.layout* %1, i32 0, i32 6
  %2 = load i32, i32* %lay_autosave, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_canvas = getelementptr inbounds %struct.layout, %struct.layout* %3, i32 0, i32 3
  call void @FreeLayoutCv(%struct.canvas* %lay_canvas)
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 4
  %5 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %5, %struct.canvas** %fcv, align 8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 2
  %7 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_canvas2 = getelementptr inbounds %struct.layout, %struct.layout* %7, i32 0, i32 3
  call void @DupLayoutCv(%struct.canvas* %d_canvas, %struct.canvas* %lay_canvas2, i32 1)
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv3 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv3, align 8
  %10 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_forecv = getelementptr inbounds %struct.layout, %struct.layout* %10, i32 0, i32 4
  store %struct.canvas* %9, %struct.canvas** %lay_forecv, align 8
  %11 = load %struct.canvas*, %struct.canvas** %fcv, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv4 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 4
  store %struct.canvas* %11, %struct.canvas** %d_forecv4, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.layout* @FindLayout(i8* %name) #0 {
entry:
  %retval = alloca %struct.layout*, align 8
  %name.addr = alloca i8*, align 8
  %lay = alloca %struct.layout*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %6, 10
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv5, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8*, i8** %name.addr, align 8
  %cmp6 = icmp ne i8* %12, %13
  br i1 %cmp6, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %14, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %15, 10
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom
  %17 = load %struct.layout*, %struct.layout** %arrayidx, align 8
  store %struct.layout* %17, %struct.layout** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %land.lhs.true.8, %land.lhs.true, %for.end
  %18 = load %struct.layout*, %struct.layout** @layouts, align 8
  store %struct.layout* %18, %struct.layout** %lay, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.end
  %19 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool15 = icmp ne %struct.layout* %19, null
  br i1 %tobool15, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.14
  %20 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %20, i32 0, i32 1
  %21 = load i8*, i8** %lay_title, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %21, i8* %22) #5
  %tobool17 = icmp ne i32 %call, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.body.16
  br label %for.end.21

if.end.19:                                        ; preds = %for.body.16
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %23 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_next = getelementptr inbounds %struct.layout, %struct.layout* %23, i32 0, i32 0
  %24 = load %struct.layout*, %struct.layout** %lay_next, align 8
  store %struct.layout* %24, %struct.layout** %lay, align 8
  br label %for.cond.14

for.end.21:                                       ; preds = %if.then.18, %for.cond.14
  %25 = load %struct.layout*, %struct.layout** %lay, align 8
  store %struct.layout* %25, %struct.layout** %retval
  br label %return

return:                                           ; preds = %for.end.21, %if.then
  %26 = load %struct.layout*, %struct.layout** %retval
  ret %struct.layout* %26
}

; Function Attrs: nounwind uwtable
define void @LoadLayout(%struct.layout* %lay, %struct.canvas* %cv) #0 {
entry:
  %lay.addr = alloca %struct.layout*, align 8
  %cv.addr = alloca %struct.canvas*, align 8
  store %struct.layout* %lay, %struct.layout** %lay.addr, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 5
  %1 = load %struct.layout*, %struct.layout** %d_layout, align 8
  call void @AutosaveLayout(%struct.layout* %1)
  %2 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %tobool = icmp ne %struct.layout* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 2
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas2 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 2
  %c_slperp3 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas2, i32 0, i32 4
  %6 = load %struct.canvas*, %struct.canvas** %c_slperp3, align 8
  call void @FreeCanvas(%struct.canvas* %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @MakeDefaultCanvas()
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 4
  %8 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  call void @SetCanvasWindow(%struct.canvas* %8, %struct.win* null)
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_layout4 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 5
  store %struct.layout* null, %struct.layout** %d_layout4, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.9, %if.end
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas6 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 2
  %c_slperp7 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas6, i32 0, i32 4
  %11 = load %struct.canvas*, %struct.canvas** %c_slperp7, align 8
  %tobool8 = icmp ne %struct.canvas* %11, null
  br i1 %tobool8, label %while.body.9, label %while.end.12

while.body.9:                                     ; preds = %while.cond.5
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas10 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 2
  %c_slperp11 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas10, i32 0, i32 4
  %13 = load %struct.canvas*, %struct.canvas** %c_slperp11, align 8
  call void @FreeCanvas(%struct.canvas* %13)
  br label %while.cond.5

while.end.12:                                     ; preds = %while.cond.5
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 3
  store %struct.canvas* null, %struct.canvas** %d_cvlist, align 8
  %15 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_forecv = getelementptr inbounds %struct.layout, %struct.layout* %15, i32 0, i32 4
  %16 = load %struct.canvas*, %struct.canvas** %lay_forecv, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv13 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 4
  store %struct.canvas* %16, %struct.canvas** %d_forecv13, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv14 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 4
  %19 = load %struct.canvas*, %struct.canvas** %d_forecv14, align 8
  %tobool15 = icmp ne %struct.canvas* %19, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %while.end.12
  %call17 = call i32 @MakeDefaultCanvas()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %while.end.12
  %20 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_canvas = getelementptr inbounds %struct.layout, %struct.layout* %20, i32 0, i32 3
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas19 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 2
  call void @DupLayoutCv(%struct.canvas* %lay_canvas, %struct.canvas* %d_canvas19, i32 0)
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 36
  %23 = load i32, i32* %d_has_hstatus, align 4
  %cmp = icmp eq i32 %23, 4
  %conv = zext i1 %cmp to i32
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas20 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 2
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas20, i32 0, i32 16
  store i32 %conv, i32* %c_ys, align 4
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 17
  %26 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %26, 1
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas21 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 2
  %c_slperp22 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas21, i32 0, i32 4
  %28 = load %struct.canvas*, %struct.canvas** %c_slperp22, align 8
  %tobool23 = icmp ne %struct.canvas* %28, null
  br i1 %tobool23, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.end.18
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas24 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 2
  %c_slperp25 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas24, i32 0, i32 4
  %30 = load %struct.canvas*, %struct.canvas** %c_slperp25, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 2
  %31 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool26 = icmp ne %struct.canvas* %31, null
  br i1 %tobool26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.end.18
  %32 = load i32, i32* @captionalways, align 4
  %tobool27 = icmp ne i32 %32, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %33 = phi i1 [ true, %land.lhs.true ], [ %tobool27, %lor.rhs ]
  %lor.ext = zext i1 %33 to i32
  %sub28 = sub nsw i32 %sub, %lor.ext
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus29 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 36
  %35 = load i32, i32* %d_has_hstatus29, align 4
  %cmp30 = icmp eq i32 %35, 1
  %conv31 = zext i1 %cmp30 to i32
  %sub32 = sub nsw i32 %sub28, %conv31
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas33 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 2
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas33, i32 0, i32 17
  store i32 %sub32, i32* %c_ye, align 4
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas34 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 2
  call void @ResizeCanvas(%struct.canvas* %d_canvas34)
  call void @RecreateCanvasChain()
  %call35 = call i32 @RethinkDisplayViewports()
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas36 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 2
  call void @PutWindowCv(%struct.canvas* %d_canvas36)
  call void @ResizeLayersToCanvases()
  %39 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_layout37 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 5
  store %struct.layout* %39, %struct.layout** %d_layout37, align 8
  br label %return

return:                                           ; preds = %lor.end, %while.end
  ret void
}

declare void @FreeCanvas(%struct.canvas*) #2

declare i32 @MakeDefaultCanvas() #2

declare void @SetCanvasWindow(%struct.canvas*, %struct.win*) #2

declare void @ResizeCanvas(%struct.canvas*) #2

declare void @RecreateCanvasChain() #2

declare i32 @RethinkDisplayViewports() #2

declare void @PutWindowCv(%struct.canvas*) #2

declare void @ResizeLayersToCanvases() #2

; Function Attrs: nounwind uwtable
define void @NewLayout(i8* %title, i32 %startat) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %startat.addr = alloca i32, align 4
  %lay = alloca %struct.layout*, align 8
  %fcv = alloca %struct.canvas*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %startat, i32* %startat.addr, align 4
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load i32, i32* %startat.addr, align 4
  %call = call %struct.layout* @CreateLayout(i8* %0, i32 %1)
  store %struct.layout* %call, %struct.layout** %lay, align 8
  %2 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool = icmp ne %struct.layout* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool1 = icmp ne %struct.display* %3, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 2
  call void @LoadLayout(%struct.layout* null, %struct.canvas* %d_canvas)
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 4
  %6 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %6, %struct.canvas** %fcv, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas3 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 2
  %8 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_canvas = getelementptr inbounds %struct.layout, %struct.layout* %8, i32 0, i32 3
  call void @DupLayoutCv(%struct.canvas* %d_canvas3, %struct.canvas* %lay_canvas, i32 1)
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv4 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 4
  %10 = load %struct.canvas*, %struct.canvas** %d_forecv4, align 8
  %11 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_forecv = getelementptr inbounds %struct.layout, %struct.layout* %11, i32 0, i32 4
  store %struct.canvas* %10, %struct.canvas** %lay_forecv, align 8
  %12 = load %struct.canvas*, %struct.canvas** %fcv, align 8
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv5 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 4
  store %struct.canvas* %12, %struct.canvas** %d_forecv5, align 8
  %14 = load %struct.layout*, %struct.layout** %lay, align 8
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 5
  store %struct.layout* %14, %struct.layout** %d_layout, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %16 = load %struct.layout*, %struct.layout** %lay, align 8
  store %struct.layout* %16, %struct.layout** @layout_attach, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2
  %17 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_autosave = getelementptr inbounds %struct.layout, %struct.layout* %17, i32 0, i32 6
  store i32 1, i32* %lay_autosave, align 4
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ShowLayouts(i32 %where) #0 {
entry:
  %where.addr = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  store i32 %where, i32* %where.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.layout*, %struct.layout** @layouts, align 8
  %tobool1 = icmp ne %struct.layout* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %where.addr, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.3
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 5
  %4 = load %struct.layout*, %struct.layout** %d_layout, align 8
  %tobool4 = icmp ne %struct.layout* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_layout6 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 5
  %6 = load %struct.layout*, %struct.layout** %d_layout6, align 8
  %lay_number = getelementptr inbounds %struct.layout, %struct.layout* %6, i32 0, i32 2
  %7 = load i32, i32* %lay_number, align 4
  store i32 %7, i32* %where.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %land.lhs.true, %if.end.3
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %where.addr, align 4
  %call = call i8* @AddLayoutsInfo(i8* %arraydecay, i32 1024, i32 %8)
  store i8* %call, i8** %ss, align 8
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #5
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 %call10
  store i8* %add.ptr, i8** %s, align 8
  %9 = load i8*, i8** %ss, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 16
  %11 = load i32, i32* %d_width, align 4
  %div = sdiv i32 %11, 2
  %conv = sext i32 %div to i64
  %cmp12 = icmp sgt i64 %sub.ptr.sub, %conv
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.7
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_width15 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 16
  %13 = load i32, i32* %d_width15, align 4
  %div16 = sdiv i32 %13, 2
  %14 = load i8*, i8** %ss, align 8
  %idx.ext = sext i32 %div16 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr17 = getelementptr inbounds i8, i8* %14, i64 %idx.neg
  store i8* %add.ptr17, i8** %ss, align 8
  %15 = load i8*, i8** %s, align 8
  %16 = load i8*, i8** %ss, align 8
  %sub.ptr.lhs.cast18 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %16 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_width21 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 16
  %18 = load i32, i32* %d_width21, align 4
  %conv22 = sext i32 %18 to i64
  %cmp23 = icmp slt i64 %sub.ptr.sub20, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %if.then.14
  %19 = load i8*, i8** %s, align 8
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_width26 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 16
  %21 = load i32, i32* %d_width26, align 4
  %idx.ext27 = sext i32 %21 to i64
  %idx.neg28 = sub i64 0, %idx.ext27
  %add.ptr29 = getelementptr inbounds i8, i8* %19, i64 %idx.neg28
  store i8* %add.ptr29, i8** %ss, align 8
  %22 = load i8*, i8** %ss, align 8
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %cmp31 = icmp ult i8* %22, %arraydecay30
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.25
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay34, i8** %ss, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  br label %if.end.38

if.else:                                          ; preds = %if.end.7
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay37, i8** %ss, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.36
  %23 = load i8*, i8** %ss, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %23)
  br label %return

return:                                           ; preds = %if.end.38, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @AddLayoutsInfo(i8* %buf, i32 %len, i32 %where) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %t = alloca i8*, align 8
  %p = alloca %struct.layout*, align 8
  %pp = alloca %struct.layout**, align 8
  %l = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %where, i32* %where.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %ss, align 8
  store i8* %0, i8** %s, align 8
  store %struct.layout** getelementptr inbounds ([10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i32 0), %struct.layout*** %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.layout**, %struct.layout*** %pp, align 8
  %cmp = icmp ult %struct.layout** %1, getelementptr inbounds (%struct.layout*, %struct.layout** getelementptr inbounds ([10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i32 0), i64 10)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.layout**, %struct.layout*** %pp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.layout** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([10 x %struct.layout*]* @laytab to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %3 = load i32, i32* %where.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp1 = icmp eq i64 %sub.ptr.div, %conv
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %ss, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp eq i8* %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %s, align 8
  store i8* %6, i8** %ss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %7 = load %struct.layout**, %struct.layout*** %pp, align 8
  %8 = load %struct.layout*, %struct.layout** %7, align 8
  store %struct.layout* %8, %struct.layout** %p, align 8
  %cmp5 = icmp eq %struct.layout* %8, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %for.inc

if.end.8:                                         ; preds = %if.end
  %9 = load %struct.layout*, %struct.layout** %p, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %9, i32 0, i32 1
  %10 = load i8*, i8** %lay_title, align 8
  store i8* %10, i8** %t, align 8
  %11 = load i8*, i8** %t, align 8
  %call = call i64 @strlen(i8* %11) #5
  %conv9 = trunc i64 %call to i32
  store i32 %conv9, i32* %l, align 4
  %12 = load i32, i32* %l, align 4
  %cmp10 = icmp sgt i32 %12, 20
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 20, i32* %l, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %13 = load i8*, i8** %s, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast
  %15 = load i32, i32* %l, align 4
  %conv16 = sext i32 %15 to i64
  %add = add nsw i64 %sub.ptr.sub15, %conv16
  %16 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %16, 24
  %conv17 = sext i32 %sub to i64
  %cmp18 = icmp sgt i64 %add, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.13
  br label %for.end

if.end.21:                                        ; preds = %if.end.13
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %buf.addr, align 8
  %cmp22 = icmp ugt i8* %17, %18
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 32, i8* %19, align 1
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr25, i8** %s, align 8
  store i8 32, i8* %20, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %21 = load i8*, i8** %s, align 8
  %22 = load %struct.layout*, %struct.layout** %p, align 8
  %lay_number = getelementptr inbounds %struct.layout, %struct.layout* %22, i32 0, i32 2
  %23 = load i32, i32* %lay_number, align 4
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %23) #4
  %24 = load %struct.layout*, %struct.layout** %p, align 8
  %lay_number28 = getelementptr inbounds %struct.layout, %struct.layout* %24, i32 0, i32 2
  %25 = load i32, i32* %lay_number28, align 4
  %26 = load i32, i32* %where.addr, align 4
  %cmp29 = icmp eq i32 %25, %26
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  %27 = load i8*, i8** %s, align 8
  store i8* %27, i8** %ss, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.26
  %28 = load i8*, i8** %s, align 8
  %call33 = call i64 @strlen(i8* %28) #5
  %29 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %call33
  store i8* %add.ptr, i8** %s, align 8
  %30 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %30, null
  br i1 %tobool, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %if.end.32
  %31 = load %struct.layout*, %struct.layout** %p, align 8
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 5
  %33 = load %struct.layout*, %struct.layout** %d_layout, align 8
  %cmp35 = icmp eq %struct.layout* %31, %33
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true.34
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr38, i8** %s, align 8
  store i8 42, i8* %34, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %land.lhs.true.34, %if.end.32
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr40, i8** %s, align 8
  store i8 32, i8* %35, align 1
  %36 = load i8*, i8** %s, align 8
  %37 = load i8*, i8** %t, align 8
  %38 = load i32, i32* %l, align 4
  %conv41 = sext i32 %38 to i64
  %call42 = call i8* @strncpy(i8* %36, i8* %37, i64 %conv41) #4
  %39 = load i32, i32* %l, align 4
  %40 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr43, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.39, %if.then.7
  %41 = load %struct.layout**, %struct.layout*** %pp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.layout*, %struct.layout** %41, i32 1
  store %struct.layout** %incdec.ptr44, %struct.layout*** %pp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  %42 = load i8*, i8** %s, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %ss, align 8
  ret i8* %43
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @RemoveLayout(%struct.layout* %lay) #0 {
entry:
  %lay.addr = alloca %struct.layout*, align 8
  %layp = alloca %struct.layout**, align 8
  store %struct.layout* %lay, %struct.layout** %lay.addr, align 8
  store %struct.layout** @layouts, %struct.layout*** %layp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.layout**, %struct.layout*** %layp, align 8
  %1 = load %struct.layout*, %struct.layout** %0, align 8
  %tobool = icmp ne %struct.layout* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.layout**, %struct.layout*** %layp, align 8
  %3 = load %struct.layout*, %struct.layout** %2, align 8
  %4 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %cmp = icmp eq %struct.layout* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_next = getelementptr inbounds %struct.layout, %struct.layout* %5, i32 0, i32 0
  %6 = load %struct.layout*, %struct.layout** %lay_next, align 8
  %7 = load %struct.layout**, %struct.layout*** %layp, align 8
  store %struct.layout* %6, %struct.layout** %7, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.layout**, %struct.layout*** %layp, align 8
  %9 = load %struct.layout*, %struct.layout** %8, align 8
  %lay_next1 = getelementptr inbounds %struct.layout, %struct.layout* %9, i32 0, i32 0
  store %struct.layout** %lay_next1, %struct.layout*** %layp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_number = getelementptr inbounds %struct.layout, %struct.layout* %10, i32 0, i32 2
  %11 = load i32, i32* %lay_number, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom
  store %struct.layout* null, %struct.layout** %arrayidx, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %tobool2 = icmp ne %struct.display* %12, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.end
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 5
  %14 = load %struct.layout*, %struct.layout** %d_layout, align 8
  %15 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %cmp3 = icmp eq %struct.layout* %14, %15
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_layout5 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 5
  store %struct.layout* null, %struct.layout** %d_layout5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %for.end
  %17 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_canvas = getelementptr inbounds %struct.layout, %struct.layout* %17, i32 0, i32 3
  call void @FreeLayoutCv(%struct.canvas* %lay_canvas)
  %18 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %18, i32 0, i32 1
  %19 = load i8*, i8** %lay_title, align 8
  %tobool7 = icmp ne i8* %19, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %20 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %lay_title9 = getelementptr inbounds %struct.layout, %struct.layout* %20, i32 0, i32 1
  %21 = load i8*, i8** %lay_title9, align 8
  call void @free(i8* %21) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %22 = load %struct.layout*, %struct.layout** %lay.addr, align 8
  %23 = bitcast %struct.layout* %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct.layout*, %struct.layout** @layouts, align 8
  %tobool11 = icmp ne %struct.layout* %24, null
  br i1 %tobool11, label %if.then.12, label %if.end.28

if.then.12:                                       ; preds = %if.end.10
  %25 = load %struct.display*, %struct.display** @display, align 8
  %tobool13 = icmp ne %struct.display* %25, null
  br i1 %tobool13, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %if.then.12
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_layout15 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 5
  %27 = load %struct.layout*, %struct.layout** %d_layout15, align 8
  %tobool16 = icmp ne %struct.layout* %27, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_layout17 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 5
  %29 = load %struct.layout*, %struct.layout** %d_layout17, align 8
  br label %cond.end.21

cond.false:                                       ; preds = %land.lhs.true.14, %if.then.12
  %30 = load %struct.layout**, %struct.layout*** %layp, align 8
  %31 = load %struct.layout*, %struct.layout** %30, align 8
  %tobool18 = icmp ne %struct.layout* %31, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  %32 = load %struct.layout**, %struct.layout*** %layp, align 8
  %33 = load %struct.layout*, %struct.layout** %32, align 8
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %34 = load %struct.layout*, %struct.layout** @layouts, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi %struct.layout* [ %33, %cond.true.19 ], [ %34, %cond.false.20 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true
  %cond22 = phi %struct.layout* [ %29, %cond.true ], [ %cond, %cond.end ]
  %35 = load %struct.display*, %struct.display** @display, align 8
  %tobool23 = icmp ne %struct.display* %35, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.21
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 2
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end.21
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi %struct.canvas* [ %d_canvas, %cond.true.24 ], [ null, %cond.false.25 ]
  call void @LoadLayout(%struct.layout* %cond22, %struct.canvas* %cond27)
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %if.end.10
  call void @Activate(i32 0)
  ret void
}

declare void @Activate(i32) #2

; Function Attrs: nounwind uwtable
define void @UpdateLayoutCanvas(%struct.canvas* %cv, %struct.win* %wi) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %wi.addr = alloca %struct.win*, align 8
  %l = alloca %struct.layer*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 9
  %2 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %tobool1 = icmp ne %struct.layer* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %for.body
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer2 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 9
  %4 = load %struct.layer*, %struct.layer** %c_layer2, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 9
  %5 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 7
  %6 = load i8*, i8** %l_data, align 8
  %7 = bitcast i8* %6 to %struct.win*
  %8 = load %struct.win*, %struct.win** %wi.addr, align 8
  %cmp = icmp eq %struct.win* %7, %8
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer3 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 9
  %10 = load %struct.layer*, %struct.layer** %c_layer3, align 8
  store %struct.layer* %10, %struct.layer** %l, align 8
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer4 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 9
  store %struct.layer* null, %struct.layer** %c_layer4, align 8
  %12 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 0
  %13 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %cmp5 = icmp eq %struct.canvas* %13, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %14 = load %struct.win*, %struct.win** %wi.addr, align 8
  %cmp7 = icmp eq %struct.win* %14, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6
  %15 = load %struct.layer*, %struct.layer** %l, align 8
  %16 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 4
  %17 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %cmp8 = icmp ne %struct.layer* %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true.6
  %18 = load %struct.layer*, %struct.layer** %l, align 8
  call void @KillLayerChain(%struct.layer* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %lor.lhs.false, %if.then
  %19 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 11
  store %struct.layer* %c_blank, %struct.layer** %l, align 8
  %20 = load %struct.layer*, %struct.layer** %l, align 8
  %l_data10 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 7
  store i8* null, i8** %l_data10, align 8
  %21 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist11 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 0
  %22 = load %struct.canvas*, %struct.canvas** %l_cvlist11, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp12 = icmp ne %struct.canvas* %22, %23
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %24 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist14 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 0
  %25 = load %struct.canvas*, %struct.canvas** %l_cvlist14, align 8
  %26 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 10
  store %struct.canvas* %25, %struct.canvas** %c_lnext, align 8
  %27 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %28 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist15 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 0
  store %struct.canvas* %27, %struct.canvas** %l_cvlist15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %29 = load %struct.layer*, %struct.layer** %l, align 8
  %30 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer17 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 9
  store %struct.layer* %29, %struct.layer** %c_layer17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %land.lhs.true, %for.body
  %31 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 4
  %32 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool19 = icmp ne %struct.canvas* %32, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %33 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp21 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 4
  %34 = load %struct.canvas*, %struct.canvas** %c_slperp21, align 8
  %35 = load %struct.win*, %struct.win** %wi.addr, align 8
  call void @UpdateLayoutCanvas(%struct.canvas* %34, %struct.win* %35)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %36 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 2
  %37 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %37, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @KillLayerChain(%struct.layer*) #2

; Function Attrs: nounwind uwtable
define i32 @LayoutDumpCanvas(%struct.canvas* %cv, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cv.addr = alloca %struct.canvas*, align 8
  %filename.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @secfopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @dump_canvas(%struct.canvas* %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %4)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._IO_FILE* @secfopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dump_canvas(%struct.canvas* %cv, %struct._IO_FILE* %file) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  store %struct.canvas* %1, %struct.canvas** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %c, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %c, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 2
  %4 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool1 = icmp ne %struct.canvas* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %struct.canvas*, %struct.canvas** %c, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 6
  %8 = load i32, i32* %c_slorient, align 4
  %cmp = icmp eq i32 %8, 2
  %cond = select i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.canvas*, %struct.canvas** %c, align 8
  %c_slnext2 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 2
  %10 = load %struct.canvas*, %struct.canvas** %c_slnext2, align 8
  store %struct.canvas* %10, %struct.canvas** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp3 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 4
  %12 = load %struct.canvas*, %struct.canvas** %c_slperp3, align 8
  store %struct.canvas* %12, %struct.canvas** %c, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %13 = load %struct.canvas*, %struct.canvas** %c, align 8
  %tobool5 = icmp ne %struct.canvas* %13, null
  br i1 %tobool5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %14 = load %struct.canvas*, %struct.canvas** %c, align 8
  %c_slperp7 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 4
  %15 = load %struct.canvas*, %struct.canvas** %c_slperp7, align 8
  %tobool8 = icmp ne %struct.canvas* %15, null
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %16 = load %struct.canvas*, %struct.canvas** %c, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_canvas(%struct.canvas* %16, %struct._IO_FILE* %17)
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %19 = load %struct.canvas*, %struct.canvas** %c, align 8
  %c_slnext11 = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 2
  %20 = load %struct.canvas*, %struct.canvas** %c_slnext11, align 8
  store %struct.canvas* %20, %struct.canvas** %c, align 8
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @RenameLayout(%struct.layout* %layout, i8* %name) #0 {
entry:
  %layout.addr = alloca %struct.layout*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.layout* %layout, %struct.layout** %layout.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.layout*, %struct.layout** %layout.addr, align 8
  %lay_title = getelementptr inbounds %struct.layout, %struct.layout* %0, i32 0, i32 1
  %1 = load i8*, i8** %lay_title, align 8
  call void @free(i8* %1) #4
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @SaveStr(i8* %2)
  %3 = load %struct.layout*, %struct.layout** %layout.addr, align 8
  %lay_title1 = getelementptr inbounds %struct.layout, %struct.layout* %3, i32 0, i32 1
  store i8* %call, i8** %lay_title1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @RenumberLayout(%struct.layout* %layout, i32 %number) #0 {
entry:
  %retval = alloca i32, align 4
  %layout.addr = alloca %struct.layout*, align 8
  %number.addr = alloca i32, align 4
  %old = alloca i32, align 4
  %lay = alloca %struct.layout*, align 8
  store %struct.layout* %layout, %struct.layout** %layout.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct.layout*, %struct.layout** %layout.addr, align 8
  %lay_number = getelementptr inbounds %struct.layout, %struct.layout* %0, i32 0, i32 2
  %1 = load i32, i32* %lay_number, align 4
  store i32 %1, i32* %old, align 4
  %2 = load i32, i32* %number.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %number.addr, align 4
  %cmp1 = icmp sge i32 %3, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %number.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom
  %5 = load %struct.layout*, %struct.layout** %arrayidx, align 8
  store %struct.layout* %5, %struct.layout** %lay, align 8
  %6 = load %struct.layout*, %struct.layout** %layout.addr, align 8
  %7 = load i32, i32* %number.addr, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom2
  store %struct.layout* %6, %struct.layout** %arrayidx3, align 8
  %8 = load i32, i32* %number.addr, align 4
  %9 = load %struct.layout*, %struct.layout** %layout.addr, align 8
  %lay_number4 = getelementptr inbounds %struct.layout, %struct.layout* %9, i32 0, i32 2
  store i32 %8, i32* %lay_number4, align 4
  %10 = load %struct.layout*, %struct.layout** %lay, align 8
  %11 = load i32, i32* %old, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.layout*], [10 x %struct.layout*]* @laytab, i32 0, i64 %idxprom5
  store %struct.layout* %10, %struct.layout** %arrayidx6, align 8
  %12 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool = icmp ne %struct.layout* %12, null
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %old, align 4
  %14 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_number8 = getelementptr inbounds %struct.layout, %struct.layout* %14, i32 0, i32 2
  store i32 %13, i32* %lay_number8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
