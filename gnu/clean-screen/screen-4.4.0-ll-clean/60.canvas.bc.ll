; ModuleID = './canvas.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
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
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }

@display = external global %struct.display*, align 8
@flayer = external global %struct.layer*, align 8
@fore = external global %struct.win*, align 8
@windows = external global %struct.win*, align 8
@captionalways = external global i32, align 4
@focusminwidth = external global i32, align 4
@focusminheight = external global i32, align 4
@BlankLf = external global %struct.LayFuncs, align 8

; Function Attrs: nounwind uwtable
define void @FreeCanvas(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %nvp = alloca %struct.viewport*, align 8
  %cvp = alloca %struct.canvas**, align 8
  %p = alloca %struct.win*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 3
  %1 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %tobool = icmp ne %struct.canvas* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 2
  %3 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %4 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev1 = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 3
  %5 = load %struct.canvas*, %struct.canvas** %c_slprev1, align 8
  %c_slnext2 = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 2
  store %struct.canvas* %3, %struct.canvas** %c_slnext2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext3 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 2
  %7 = load %struct.canvas*, %struct.canvas** %c_slnext3, align 8
  %tobool4 = icmp ne %struct.canvas* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev6 = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 3
  %9 = load %struct.canvas*, %struct.canvas** %c_slprev6, align 8
  %10 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext7 = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 2
  %11 = load %struct.canvas*, %struct.canvas** %c_slnext7, align 8
  %c_slprev8 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 3
  store %struct.canvas* %9, %struct.canvas** %c_slprev8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 5
  %13 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %tobool10 = icmp ne %struct.canvas* %13, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.9
  %14 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback11 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 5
  %15 = load %struct.canvas*, %struct.canvas** %c_slback11, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 4
  %16 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %17 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp = icmp eq %struct.canvas* %16, %17
  br i1 %cmp, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %land.lhs.true
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 2
  %19 = load %struct.canvas*, %struct.canvas** %c_slnext13, align 8
  %tobool14 = icmp ne %struct.canvas* %19, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %20 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext15 = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 2
  %21 = load %struct.canvas*, %struct.canvas** %c_slnext15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %22 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev16 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 3
  %23 = load %struct.canvas*, %struct.canvas** %c_slprev16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.canvas* [ %21, %cond.true ], [ %23, %cond.false ]
  %24 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback17 = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 5
  %25 = load %struct.canvas*, %struct.canvas** %c_slback17, align 8
  %c_slperp18 = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 4
  store %struct.canvas* %cond, %struct.canvas** %c_slperp18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %land.lhs.true, %if.end.9
  %26 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp20 = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 4
  %27 = load %struct.canvas*, %struct.canvas** %c_slperp20, align 8
  %tobool21 = icmp ne %struct.canvas* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.22
  %28 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp23 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 4
  %29 = load %struct.canvas*, %struct.canvas** %c_slperp23, align 8
  %tobool24 = icmp ne %struct.canvas* %29, null
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp25 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 4
  %31 = load %struct.canvas*, %struct.canvas** %c_slperp25, align 8
  call void @FreeCanvas(%struct.canvas* %31)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %32, i32 0, i32 11
  call void @LayerCleanupMemory(%struct.layer* %c_blank)
  %33 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %34 = bitcast %struct.canvas* %33 to i8*
  call void @free(i8* %34) #3
  br label %return

if.end.26:                                        ; preds = %if.end.19
  %35 = load %struct.display*, %struct.display** @display, align 8
  %tobool27 = icmp ne %struct.display* %35, null
  br i1 %tobool27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %if.end.26
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 4
  %37 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %38 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp29 = icmp eq %struct.canvas* %37, %38
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.28
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv31 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 4
  store %struct.canvas* null, %struct.canvas** %d_forecv31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.28
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 3
  store %struct.canvas** %d_cvlist, %struct.canvas*** %cvp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %41 = load %struct.canvas**, %struct.canvas*** %cvp, align 8
  %42 = load %struct.canvas*, %struct.canvas** %41, align 8
  %tobool33 = icmp ne %struct.canvas* %42, null
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.canvas**, %struct.canvas*** %cvp, align 8
  %44 = load %struct.canvas*, %struct.canvas** %43, align 8
  %45 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp34 = icmp eq %struct.canvas* %44, %45
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  %46 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 0
  %47 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  %48 = load %struct.canvas**, %struct.canvas*** %cvp, align 8
  store %struct.canvas* %47, %struct.canvas** %48, align 8
  br label %for.end

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %49 = load %struct.canvas**, %struct.canvas*** %cvp, align 8
  %50 = load %struct.canvas*, %struct.canvas** %49, align 8
  %c_next37 = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 0
  store %struct.canvas** %c_next37, %struct.canvas*** %cvp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.end.26
  %51 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 9
  %52 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %tobool39 = icmp ne %struct.layer* %52, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.end.38
  %53 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer41 = getelementptr inbounds %struct.canvas, %struct.canvas* %53, i32 0, i32 9
  %54 = load %struct.layer*, %struct.layer** %c_layer41, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %54, i32 0, i32 9
  %55 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %55, i32 0, i32 7
  %56 = load i8*, i8** %l_data, align 8
  %57 = bitcast i8* %56 to %struct.win*
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.end.38
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct.win* [ %57, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct.win* %cond44, %struct.win** %p, align 8
  %58 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @SetCanvasWindow(%struct.canvas* %58, %struct.win* null)
  %59 = load %struct.win*, %struct.win** %p, align 8
  %tobool45 = icmp ne %struct.win* %59, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.43
  %60 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %60, i32 117)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %cond.end.43
  %61 = load %struct.layer*, %struct.layer** @flayer, align 8
  %62 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer48 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 9
  %63 = load %struct.layer*, %struct.layer** %c_layer48, align 8
  %cmp49 = icmp eq %struct.layer* %61, %63
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct.layer* null, %struct.layer** @flayer, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  %64 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %64, i32 0, i32 8
  %65 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %65, %struct.viewport** %vp, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.56, %if.end.51
  %66 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool53 = icmp ne %struct.viewport* %66, null
  br i1 %tobool53, label %for.body.54, label %for.end.57

for.body.54:                                      ; preds = %for.cond.52
  %67 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_canvas = getelementptr inbounds %struct.viewport, %struct.viewport* %67, i32 0, i32 1
  store %struct.canvas* null, %struct.canvas** %v_canvas, align 8
  %68 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %68, i32 0, i32 0
  %69 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %69, %struct.viewport** %nvp, align 8
  %70 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next55 = getelementptr inbounds %struct.viewport, %struct.viewport* %70, i32 0, i32 0
  store %struct.viewport* null, %struct.viewport** %v_next55, align 8
  %71 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %72 = bitcast %struct.viewport* %71 to i8*
  call void @free(i8* %72) #3
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.54
  %73 = load %struct.viewport*, %struct.viewport** %nvp, align 8
  store %struct.viewport* %73, %struct.viewport** %vp, align 8
  br label %for.cond.52

for.end.57:                                       ; preds = %for.cond.52
  %74 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %74, i32 0, i32 18
  call void @evdeq(%struct.event* %c_captev)
  %75 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank58 = getelementptr inbounds %struct.canvas, %struct.canvas* %75, i32 0, i32 11
  call void @LayerCleanupMemory(%struct.layer* %c_blank58)
  %76 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %77 = bitcast %struct.canvas* %76 to i8*
  call void @free(i8* %77) #3
  br label %return

return:                                           ; preds = %for.end.57, %while.end
  ret void
}

declare void @LayerCleanupMemory(%struct.layer*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @SetCanvasWindow(%struct.canvas* %cv, %struct.win* %wi) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %wi.addr = alloca %struct.win*, align 8
  %p = alloca %struct.win*, align 8
  %pp = alloca %struct.win**, align 8
  %l = alloca %struct.layer*, align 8
  %cvp = alloca %struct.canvas*, align 8
  %cvpp = alloca %struct.canvas**, align 8
  %d = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  store %struct.win* null, %struct.win** %p, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 9
  %1 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %1, %struct.layer** %l, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 1
  %3 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %3, %struct.display** @display, align 8
  %4 = load %struct.layer*, %struct.layer** %l, align 8
  %tobool = icmp ne %struct.layer* %4, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %5 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  store %struct.canvas** %l_cvlist, %struct.canvas*** %cvpp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.canvas**, %struct.canvas*** %cvpp, align 8
  %7 = load %struct.canvas*, %struct.canvas** %6, align 8
  store %struct.canvas* %7, %struct.canvas** %cvp, align 8
  %tobool1 = icmp ne %struct.canvas* %7, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %9 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp = icmp eq %struct.canvas* %8, %9
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 10
  store %struct.canvas** %c_lnext, %struct.canvas*** %cvpp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_lnext3 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 10
  %12 = load %struct.canvas*, %struct.canvas** %c_lnext3, align 8
  %13 = load %struct.canvas**, %struct.canvas*** %cvpp, align 8
  store %struct.canvas* %12, %struct.canvas** %13, align 8
  %14 = load %struct.layer*, %struct.layer** %l, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 9
  %15 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 7
  %16 = load i8*, i8** %l_data, align 8
  %17 = bitcast i8* %16 to %struct.win*
  store %struct.win* %17, %struct.win** %p, align 8
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer4 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 9
  %19 = load %struct.layer*, %struct.layer** %c_layer4, align 8
  store %struct.layer* %19, %struct.layer** %l, align 8
  %20 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer5 = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 9
  store %struct.layer* null, %struct.layer** %c_layer5, align 8
  %21 = load %struct.win*, %struct.win** %p, align 8
  %tobool6 = icmp ne %struct.win* %21, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %do.end
  %22 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 4
  %24 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp7 = icmp eq %struct.canvas* %22, %24
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %land.lhs.true
  %25 = load %struct.display*, %struct.display** @display, align 8
  %26 = load %struct.win*, %struct.win** %p, align 8
  %call = call i32 @ReleaseAutoWritelock(%struct.display* %25, %struct.win* %26)
  %27 = load %struct.win*, %struct.win** %p, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 72
  %28 = load i32, i32* %w_silence, align 4
  %tobool9 = icmp ne i32 %28, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 12
  %30 = load %struct.win*, %struct.win** %p, align 8
  %w_silencewait = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 71
  %31 = load i32, i32* %w_silencewait, align 4
  %mul = mul nsw i32 %31, 1000
  call void @SetTimeout(%struct.event* %w_silenceev, i32 %mul)
  %32 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev11 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 12
  call void @evenq(%struct.event* %w_silenceev11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  %33 = load %struct.win*, %struct.win** @fore, align 8
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_other = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 11
  store %struct.win* %33, %struct.win** %d_other, align 8
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 10
  store %struct.win* null, %struct.win** %d_fore, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %do.end
  %36 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist14 = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 0
  %37 = load %struct.canvas*, %struct.canvas** %l_cvlist14, align 8
  %cmp15 = icmp eq %struct.canvas* %37, null
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end.13
  %38 = load %struct.win*, %struct.win** %p, align 8
  %cmp17 = icmp eq %struct.win* %38, null
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %39 = load %struct.layer*, %struct.layer** %l, align 8
  %40 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 4
  %41 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %cmp18 = icmp ne %struct.layer* %39, %41
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %land.lhs.true.16
  %42 = load %struct.layer*, %struct.layer** %l, align 8
  call void @KillLayerChain(%struct.layer* %42)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false, %if.end.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %43 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool22 = icmp ne %struct.win* %43, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else

land.lhs.true.23:                                 ; preds = %if.end.21
  %44 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 1
  %45 = load i32, i32* %w_type, align 4
  %cmp24 = icmp ne i32 %45, 3
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.23
  %46 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 3
  store %struct.layer* %w_layer, %struct.layer** %l, align 8
  %47 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savelayer26 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 4
  %48 = load %struct.layer*, %struct.layer** %w_savelayer26, align 8
  %tobool27 = icmp ne %struct.layer* %48, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.36

land.lhs.true.28:                                 ; preds = %if.then.25
  %49 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 5
  %50 = load i32, i32* %w_blocked, align 4
  %tobool29 = icmp ne i32 %50, 0
  br i1 %tobool29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true.28
  %51 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savelayer31 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 4
  %52 = load %struct.layer*, %struct.layer** %w_savelayer31, align 8
  %l_cvlist32 = getelementptr inbounds %struct.layer, %struct.layer* %52, i32 0, i32 0
  %53 = load %struct.canvas*, %struct.canvas** %l_cvlist32, align 8
  %cmp33 = icmp eq %struct.canvas* %53, null
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false.30, %land.lhs.true.28
  %54 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_savelayer35 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 4
  %55 = load %struct.layer*, %struct.layer** %w_savelayer35, align 8
  store %struct.layer* %55, %struct.layer** %l, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %lor.lhs.false.30, %if.then.25
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true.23, %if.end.21
  %56 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 11
  store %struct.layer* %c_blank, %struct.layer** %l, align 8
  %57 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool37 = icmp ne %struct.win* %57, null
  br i1 %tobool37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.else
  %58 = load %struct.win*, %struct.win** %wi.addr, align 8
  %59 = bitcast %struct.win* %58 to i8*
  %60 = load %struct.layer*, %struct.layer** %l, align 8
  %l_data39 = getelementptr inbounds %struct.layer, %struct.layer* %60, i32 0, i32 7
  store i8* %59, i8** %l_data39, align 8
  br label %if.end.42

if.else.40:                                       ; preds = %if.else
  %61 = load %struct.layer*, %struct.layer** %l, align 8
  %l_data41 = getelementptr inbounds %struct.layer, %struct.layer* %61, i32 0, i32 7
  store i8* null, i8** %l_data41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.36
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.44
  %62 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist46 = getelementptr inbounds %struct.layer, %struct.layer* %62, i32 0, i32 0
  %63 = load %struct.canvas*, %struct.canvas** %l_cvlist46, align 8
  %64 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_lnext47 = getelementptr inbounds %struct.canvas, %struct.canvas* %64, i32 0, i32 10
  store %struct.canvas* %63, %struct.canvas** %c_lnext47, align 8
  %65 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %66 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist48 = getelementptr inbounds %struct.layer, %struct.layer* %66, i32 0, i32 0
  store %struct.canvas* %65, %struct.canvas** %l_cvlist48, align 8
  %67 = load %struct.layer*, %struct.layer** %l, align 8
  %68 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer49 = getelementptr inbounds %struct.canvas, %struct.canvas* %68, i32 0, i32 9
  store %struct.layer* %67, %struct.layer** %c_layer49, align 8
  %69 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %69, i32 0, i32 14
  %70 = load i32, i32* %c_xs, align 4
  %71 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %71, i32 0, i32 12
  store i32 %70, i32* %c_xoff, align 4
  %72 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %72, i32 0, i32 16
  %73 = load i32, i32* %c_ys, align 4
  %74 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %74, i32 0, i32 13
  store i32 %73, i32* %c_yoff, align 4
  %75 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %75)
  %76 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp50 = icmp eq %struct.layer* %76, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.end.45
  %77 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %77, %struct.layer** @flayer, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %do.end.45
  %78 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool53 = icmp ne %struct.win* %78, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %if.end.52
  %79 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_type55 = getelementptr inbounds %struct.win, %struct.win* %79, i32 0, i32 1
  %80 = load i32, i32* %w_type55, align 4
  %cmp56 = icmp eq i32 %80, 3
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54
  %81 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %81, %struct.display** %d, align 8
  %82 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %82, %struct.layer** %oldflayer, align 8
  %83 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %83, %struct.layer** @flayer, align 8
  %84 = load %struct.win*, %struct.win** %wi.addr, align 8
  call void @display_windows(i32 0, i32 0, %struct.win* %84)
  %85 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %85, %struct.layer** @flayer, align 8
  %86 = load %struct.display*, %struct.display** %d, align 8
  store %struct.display* %86, %struct.display** @display, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.54, %if.end.52
  %87 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool59 = icmp ne %struct.win* %87, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.65

land.lhs.true.60:                                 ; preds = %if.end.58
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_other61 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 11
  %89 = load %struct.win*, %struct.win** %d_other61, align 8
  %90 = load %struct.win*, %struct.win** %wi.addr, align 8
  %cmp62 = icmp eq %struct.win* %89, %90
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.60
  %91 = load %struct.win*, %struct.win** %wi.addr, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %91, i32 0, i32 0
  %92 = load %struct.win*, %struct.win** %w_next, align 8
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_other64 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 11
  store %struct.win* %92, %struct.win** %d_other64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %land.lhs.true.60, %if.end.58
  %94 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv66 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 4
  %96 = load %struct.canvas*, %struct.canvas** %d_forecv66, align 8
  %cmp67 = icmp eq %struct.canvas* %94, %96
  br i1 %cmp67, label %if.then.68, label %if.end.91

if.then.68:                                       ; preds = %if.end.65
  %97 = load %struct.win*, %struct.win** %wi.addr, align 8
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_fore69 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 10
  store %struct.win* %97, %struct.win** %d_fore69, align 8
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_fore70 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 10
  %100 = load %struct.win*, %struct.win** %d_fore70, align 8
  store %struct.win* %100, %struct.win** @fore, align 8
  %101 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool71 = icmp ne %struct.win* %101, null
  br i1 %tobool71, label %if.then.72, label %if.end.90

if.then.72:                                       ; preds = %if.then.68
  %102 = load %struct.display*, %struct.display** @display, align 8
  %103 = load %struct.win*, %struct.win** %wi.addr, align 8
  %call73 = call i32 @ObtainAutoWritelock(%struct.display* %102, %struct.win* %103)
  %104 = load %struct.win*, %struct.win** @windows, align 8
  %105 = load %struct.win*, %struct.win** %wi.addr, align 8
  %cmp74 = icmp ne %struct.win* %104, %105
  br i1 %cmp74, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %if.then.72
  store %struct.win** @windows, %struct.win*** %pp, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.82, %if.then.75
  %106 = load %struct.win**, %struct.win*** %pp, align 8
  %107 = load %struct.win*, %struct.win** %106, align 8
  store %struct.win* %107, %struct.win** %p, align 8
  %tobool77 = icmp ne %struct.win* %107, null
  br i1 %tobool77, label %for.body.78, label %for.end.84

for.body.78:                                      ; preds = %for.cond.76
  %108 = load %struct.win*, %struct.win** %p, align 8
  %109 = load %struct.win*, %struct.win** %wi.addr, align 8
  %cmp79 = icmp eq %struct.win* %108, %109
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.78
  br label %for.end.84

if.end.81:                                        ; preds = %for.body.78
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %110 = load %struct.win*, %struct.win** %p, align 8
  %w_next83 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 0
  store %struct.win** %w_next83, %struct.win*** %pp, align 8
  br label %for.cond.76

for.end.84:                                       ; preds = %if.then.80, %for.cond.76
  br label %do.body.85

do.body.85:                                       ; preds = %for.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.85
  %111 = load %struct.win*, %struct.win** %p, align 8
  %w_next87 = getelementptr inbounds %struct.win, %struct.win* %111, i32 0, i32 0
  %112 = load %struct.win*, %struct.win** %w_next87, align 8
  %113 = load %struct.win**, %struct.win*** %pp, align 8
  store %struct.win* %112, %struct.win** %113, align 8
  %114 = load %struct.win*, %struct.win** @windows, align 8
  %115 = load %struct.win*, %struct.win** %p, align 8
  %w_next88 = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 0
  store %struct.win* %114, %struct.win** %w_next88, align 8
  %116 = load %struct.win*, %struct.win** %p, align 8
  store %struct.win* %116, %struct.win** @windows, align 8
  call void @WListLinkChanged()
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.86, %if.then.72
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.68
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.65
  ret void
}

declare void @WindowChanged(%struct.win*, i32) #1

declare void @evdeq(%struct.event*) #1

; Function Attrs: nounwind uwtable
define i32 @CountCanvas(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %num = alloca i32, align 4
  %cvp = alloca %struct.canvas*, align 8
  %nump = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store i32 0, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 4
  %2 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %nump, align 4
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp2 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %c_slperp2, align 8
  store %struct.canvas* %4, %struct.canvas** %cvp, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %5 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %tobool4 = icmp ne %struct.canvas* %5, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %6 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slperp6 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 4
  %7 = load %struct.canvas*, %struct.canvas** %c_slperp6, align 8
  %tobool7 = icmp ne %struct.canvas* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.body.5
  %8 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slperp9 = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %c_slperp9, align 8
  %call = call i32 @CountCanvas(%struct.canvas* %9)
  store i32 %call, i32* %n, align 4
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* %nump, align 4
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  %12 = load i32, i32* %n, align 4
  store i32 %12, i32* %nump, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %13 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 2
  %14 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cvp, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %15 = load i32, i32* %nump, align 4
  %16 = load i32, i32* %num, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %num, align 4
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %num, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %for.end
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext14 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 2
  %19 = load %struct.canvas*, %struct.canvas** %c_slnext14, align 8
  store %struct.canvas* %19, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %20 = load i32, i32* %num, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @CountCanvasPerp(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %cvp = alloca %struct.canvas*, align 8
  %num = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store i32 1, i32* %num, align 4
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  store %struct.canvas* %1, %struct.canvas** %cvp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slperp1 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %c_slperp1, align 8
  %tobool2 = icmp ne %struct.canvas* %4, null
  br i1 %tobool2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %5 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slperp3 = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 4
  %6 = load %struct.canvas*, %struct.canvas** %c_slperp3, align 8
  %call = call i32 @CountCanvas(%struct.canvas* %6)
  store i32 %call, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %8 = load i32, i32* %num, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %n, align 4
  store i32 %9, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %10 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 2
  %11 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %11, %struct.canvas** %cvp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %num, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.canvas* @FindCanvas(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct.canvas*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %mcv = alloca %struct.canvas*, align 8
  %m = alloca i32, align 4
  %mm = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.canvas* null, %struct.canvas** %mcv, align 8
  store i32 0, i32* %mm, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 3
  %1 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x.addr, align 4
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 14
  %5 = load i32, i32* %c_xs, align 4
  %cmp = icmp sge i32 %3, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %x.addr, align 4
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 15
  %8 = load i32, i32* %c_xe, align 4
  %cmp1 = icmp sle i32 %6, %8
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 16
  %11 = load i32, i32* %c_ys, align 4
  %cmp3 = icmp sge i32 %9, %11
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 17
  %14 = load i32, i32* %c_ye, align 4
  %add = add nsw i32 %14, 1
  %cmp5 = icmp sle i32 %12, %add
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  store %struct.canvas* %15, %struct.canvas** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %for.body
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 4
  %18 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp6 = icmp eq %struct.canvas* %16, %18
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %for.inc

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %m, align 4
  %19 = load i32, i32* %x.addr, align 4
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv9 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 4
  %21 = load %struct.canvas*, %struct.canvas** %d_forecv9, align 8
  %c_xs10 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 14
  %22 = load i32, i32* %c_xs10, align 4
  %cmp11 = icmp sge i32 %19, %22
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.54

land.lhs.true.12:                                 ; preds = %if.end.8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv13 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 4
  %25 = load %struct.canvas*, %struct.canvas** %d_forecv13, align 8
  %c_xe14 = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 15
  %26 = load i32, i32* %c_xe14, align 4
  %cmp15 = icmp sle i32 %23, %26
  br i1 %cmp15, label %if.then.16, label %if.end.54

if.then.16:                                       ; preds = %land.lhs.true.12
  %27 = load i32, i32* %x.addr, align 4
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs17 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 14
  %29 = load i32, i32* %c_xs17, align 4
  %cmp18 = icmp slt i32 %27, %29
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %30 = load i32, i32* %x.addr, align 4
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe19 = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 15
  %32 = load i32, i32* %c_xe19, align 4
  %cmp20 = icmp sgt i32 %30, %32
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.16
  br label %for.inc

if.end.22:                                        ; preds = %lor.lhs.false
  %33 = load i32, i32* %y.addr, align 4
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv23 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 4
  %35 = load %struct.canvas*, %struct.canvas** %d_forecv23, align 8
  %c_ys24 = getelementptr inbounds %struct.canvas, %struct.canvas* %35, i32 0, i32 16
  %36 = load i32, i32* %c_ys24, align 4
  %cmp25 = icmp slt i32 %33, %36
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.30

land.lhs.true.26:                                 ; preds = %if.end.22
  %37 = load i32, i32* %y.addr, align 4
  %38 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys27 = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 16
  %39 = load i32, i32* %c_ys27, align 4
  %cmp28 = icmp slt i32 %37, %39
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.26
  br label %for.inc

if.end.30:                                        ; preds = %land.lhs.true.26, %if.end.22
  %40 = load i32, i32* %y.addr, align 4
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv31 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 4
  %42 = load %struct.canvas*, %struct.canvas** %d_forecv31, align 8
  %c_ye32 = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 17
  %43 = load i32, i32* %c_ye32, align 4
  %add33 = add nsw i32 %43, 1
  %cmp34 = icmp sgt i32 %40, %add33
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %if.end.30
  %44 = load i32, i32* %y.addr, align 4
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye36 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 17
  %46 = load i32, i32* %c_ye36, align 4
  %add37 = add nsw i32 %46, 1
  %cmp38 = icmp sgt i32 %44, %add37
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.35
  br label %for.inc

if.end.40:                                        ; preds = %land.lhs.true.35, %if.end.30
  %47 = load i32, i32* %y.addr, align 4
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys41 = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 16
  %49 = load i32, i32* %c_ys41, align 4
  %cmp42 = icmp slt i32 %47, %49
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %50 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys44 = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 16
  %51 = load i32, i32* %c_ys44, align 4
  %52 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %51, %52
  store i32 %sub, i32* %m, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %53 = load i32, i32* %y.addr, align 4
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye46 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 17
  %55 = load i32, i32* %c_ye46, align 4
  %add47 = add nsw i32 %55, 1
  %cmp48 = icmp sgt i32 %53, %add47
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.45
  %56 = load i32, i32* %y.addr, align 4
  %57 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye50 = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 17
  %58 = load i32, i32* %c_ye50, align 4
  %add51 = add nsw i32 %58, 1
  %sub52 = sub nsw i32 %56, %add51
  store i32 %sub52, i32* %m, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.12, %if.end.8
  %59 = load i32, i32* %y.addr, align 4
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv55 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 4
  %61 = load %struct.canvas*, %struct.canvas** %d_forecv55, align 8
  %c_ys56 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 16
  %62 = load i32, i32* %c_ys56, align 4
  %cmp57 = icmp sge i32 %59, %62
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.100

land.lhs.true.58:                                 ; preds = %if.end.54
  %63 = load i32, i32* %y.addr, align 4
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv59 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 4
  %65 = load %struct.canvas*, %struct.canvas** %d_forecv59, align 8
  %c_ye60 = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 17
  %66 = load i32, i32* %c_ye60, align 4
  %add61 = add nsw i32 %66, 1
  %cmp62 = icmp sle i32 %63, %add61
  br i1 %cmp62, label %if.then.63, label %if.end.100

if.then.63:                                       ; preds = %land.lhs.true.58
  %67 = load i32, i32* %y.addr, align 4
  %68 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys64 = getelementptr inbounds %struct.canvas, %struct.canvas* %68, i32 0, i32 16
  %69 = load i32, i32* %c_ys64, align 4
  %cmp65 = icmp slt i32 %67, %69
  br i1 %cmp65, label %if.then.70, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.then.63
  %70 = load i32, i32* %y.addr, align 4
  %71 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye67 = getelementptr inbounds %struct.canvas, %struct.canvas* %71, i32 0, i32 17
  %72 = load i32, i32* %c_ye67, align 4
  %add68 = add nsw i32 %72, 1
  %cmp69 = icmp sgt i32 %70, %add68
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false.66, %if.then.63
  br label %for.inc

if.end.71:                                        ; preds = %lor.lhs.false.66
  %73 = load i32, i32* %x.addr, align 4
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv72 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 4
  %75 = load %struct.canvas*, %struct.canvas** %d_forecv72, align 8
  %c_xs73 = getelementptr inbounds %struct.canvas, %struct.canvas* %75, i32 0, i32 14
  %76 = load i32, i32* %c_xs73, align 4
  %cmp74 = icmp slt i32 %73, %76
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %if.end.71
  %77 = load i32, i32* %x.addr, align 4
  %78 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs76 = getelementptr inbounds %struct.canvas, %struct.canvas* %78, i32 0, i32 14
  %79 = load i32, i32* %c_xs76, align 4
  %cmp77 = icmp slt i32 %77, %79
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.75
  br label %for.inc

if.end.79:                                        ; preds = %land.lhs.true.75, %if.end.71
  %80 = load i32, i32* %x.addr, align 4
  %81 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv80 = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 4
  %82 = load %struct.canvas*, %struct.canvas** %d_forecv80, align 8
  %c_xe81 = getelementptr inbounds %struct.canvas, %struct.canvas* %82, i32 0, i32 15
  %83 = load i32, i32* %c_xe81, align 4
  %cmp82 = icmp sgt i32 %80, %83
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.87

land.lhs.true.83:                                 ; preds = %if.end.79
  %84 = load i32, i32* %x.addr, align 4
  %85 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe84 = getelementptr inbounds %struct.canvas, %struct.canvas* %85, i32 0, i32 15
  %86 = load i32, i32* %c_xe84, align 4
  %cmp85 = icmp sgt i32 %84, %86
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %land.lhs.true.83
  br label %for.inc

if.end.87:                                        ; preds = %land.lhs.true.83, %if.end.79
  %87 = load i32, i32* %x.addr, align 4
  %88 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs88 = getelementptr inbounds %struct.canvas, %struct.canvas* %88, i32 0, i32 14
  %89 = load i32, i32* %c_xs88, align 4
  %cmp89 = icmp slt i32 %87, %89
  br i1 %cmp89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.end.87
  %90 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs91 = getelementptr inbounds %struct.canvas, %struct.canvas* %90, i32 0, i32 14
  %91 = load i32, i32* %c_xs91, align 4
  %92 = load i32, i32* %x.addr, align 4
  %sub92 = sub nsw i32 %91, %92
  store i32 %sub92, i32* %m, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.end.87
  %93 = load i32, i32* %x.addr, align 4
  %94 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe94 = getelementptr inbounds %struct.canvas, %struct.canvas* %94, i32 0, i32 15
  %95 = load i32, i32* %c_xe94, align 4
  %cmp95 = icmp sgt i32 %93, %95
  br i1 %cmp95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.end.93
  %96 = load i32, i32* %x.addr, align 4
  %97 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe97 = getelementptr inbounds %struct.canvas, %struct.canvas* %97, i32 0, i32 15
  %98 = load i32, i32* %c_xe97, align 4
  %sub98 = sub nsw i32 %96, %98
  store i32 %sub98, i32* %m, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.end.93
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.58, %if.end.54
  %99 = load i32, i32* %m, align 4
  %tobool101 = icmp ne i32 %99, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.107

land.lhs.true.102:                                ; preds = %if.end.100
  %100 = load i32, i32* %mm, align 4
  %tobool103 = icmp ne i32 %100, 0
  br i1 %tobool103, label %lor.lhs.false.104, label %if.then.106

lor.lhs.false.104:                                ; preds = %land.lhs.true.102
  %101 = load i32, i32* %m, align 4
  %102 = load i32, i32* %mm, align 4
  %cmp105 = icmp slt i32 %101, %102
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.104, %land.lhs.true.102
  %103 = load %struct.canvas*, %struct.canvas** %cv, align 8
  store %struct.canvas* %103, %struct.canvas** %mcv, align 8
  %104 = load i32, i32* %m, align 4
  store i32 %104, i32* %mm, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %lor.lhs.false.104, %if.end.100
  br label %for.inc

for.inc:                                          ; preds = %if.end.107, %if.then.86, %if.then.78, %if.then.70, %if.then.39, %if.then.29, %if.then.21, %if.then.7
  %105 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %105, i32 0, i32 0
  %106 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %106, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load %struct.canvas*, %struct.canvas** %mcv, align 8
  %tobool108 = icmp ne %struct.canvas* %107, null
  br i1 %tobool108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %108 = load %struct.canvas*, %struct.canvas** %mcv, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv109 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 4
  %110 = load %struct.canvas*, %struct.canvas** %d_forecv109, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.canvas* [ %108, %cond.true ], [ %110, %cond.false ]
  store %struct.canvas* %cond, %struct.canvas** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %111 = load %struct.canvas*, %struct.canvas** %retval
  ret %struct.canvas* %111
}

declare i32 @ReleaseAutoWritelock(%struct.display*, %struct.win*) #1

declare void @SetTimeout(%struct.event*, i32) #1

declare void @evenq(%struct.event*) #1

declare void @KillLayerChain(%struct.layer*) #1

declare void @RethinkViewportOffsets(%struct.canvas*) #1

declare void @display_windows(i32, i32, %struct.win*) #1

declare i32 @ObtainAutoWritelock(%struct.display*, %struct.win*) #1

declare void @WListLinkChanged() #1

; Function Attrs: nounwind uwtable
define i32 @MakeDefaultCanvas() #0 {
entry:
  %retval = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call noalias i8* @calloc(i64 1, i64 312) #3
  %0 = bitcast i8* %call to %struct.canvas*
  store %struct.canvas* %0, %struct.canvas** %cv, align 8
  %cmp = icmp eq %struct.canvas* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 14
  store i32 0, i32* %c_xs, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 16
  %3 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %3, 1
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 15
  store i32 %sub, i32* %c_xe, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 36
  %6 = load i32, i32* %d_has_hstatus, align 4
  %cmp1 = icmp eq i32 %6, 4
  %conv = zext i1 %cmp1 to i32
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 16
  store i32 %conv, i32* %c_ys, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 17
  %9 = load i32, i32* %d_height, align 4
  %sub2 = sub nsw i32 %9, 1
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus3 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 36
  %11 = load i32, i32* %d_has_hstatus3, align 4
  %cmp4 = icmp eq i32 %11, 1
  %conv5 = zext i1 %cmp4 to i32
  %sub6 = sub nsw i32 %sub2, %conv5
  %12 = load i32, i32* @captionalways, align 4
  %sub7 = sub nsw i32 %sub6, %12
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 17
  store i32 %sub7, i32* %c_ye, align 4
  br label %do.body.8

do.body.8:                                        ; preds = %if.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 12
  store i32 0, i32* %c_xoff, align 4
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 13
  store i32 0, i32* %c_yoff, align 4
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %c_next, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %18 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 1
  store %struct.display* %17, %struct.display** %c_display, align 8
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 8
  store %struct.viewport* null, %struct.viewport** %c_vplist, align 8
  %20 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 2
  store %struct.canvas* null, %struct.canvas** %c_slnext, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 3
  store %struct.canvas* null, %struct.canvas** %c_slprev, align 8
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 4
  store %struct.canvas* null, %struct.canvas** %c_slperp, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 7
  store i32 1, i32* %c_slweight, align 4
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 2
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 5
  store %struct.canvas* %d_canvas, %struct.canvas** %c_slback, align 8
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas10 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 2
  %c_slperp11 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas10, i32 0, i32 4
  store %struct.canvas* %26, %struct.canvas** %c_slperp11, align 8
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs12 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 14
  %29 = load i32, i32* %c_xs12, align 4
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas13 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 2
  %c_xs14 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas13, i32 0, i32 14
  store i32 %29, i32* %c_xs14, align 4
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe15 = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 15
  %32 = load i32, i32* %c_xe15, align 4
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas16 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 2
  %c_xe17 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas16, i32 0, i32 15
  store i32 %32, i32* %c_xe17, align 4
  %34 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys18 = getelementptr inbounds %struct.canvas, %struct.canvas* %34, i32 0, i32 16
  %35 = load i32, i32* %c_ys18, align 4
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas19 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 2
  %c_ys20 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas19, i32 0, i32 16
  store i32 %35, i32* %c_ys20, align 4
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye21 = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 17
  %38 = load i32, i32* %c_ye21, align 4
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas22 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 2
  %c_ye23 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas22, i32 0, i32 17
  store i32 %38, i32* %c_ye23, align 4
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 6
  store i32 0, i32* %c_slorient, align 4
  %41 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 18
  %type = getelementptr inbounds %struct.event, %struct.event* %c_captev, i32 0, i32 4
  store i32 0, i32* %type, align 4
  %42 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %43 = bitcast %struct.canvas* %42 to i8*
  %44 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev24 = getelementptr inbounds %struct.canvas, %struct.canvas* %44, i32 0, i32 18
  %data = getelementptr inbounds %struct.event, %struct.event* %c_captev24, i32 0, i32 2
  store i8* %43, i8** %data, align 8
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev25 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 18
  %handler = getelementptr inbounds %struct.event, %struct.event* %c_captev25, i32 0, i32 1
  store void (%struct.event*, i8*)* @cv_winid_fn, void (%struct.event*, i8*)** %handler, align 8
  %46 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @CanvasInitBlank(%struct.canvas* %46)
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext, align 8
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 3
  store %struct.canvas* %48, %struct.canvas** %d_cvlist, align 8
  %call26 = call i32 @RethinkDisplayViewports()
  %50 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 4
  store %struct.canvas* %50, %struct.canvas** %d_forecv, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.9, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @cv_winid_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.canvas*
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 1
  %3 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %3, %struct.display** @display, align 8
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 43
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @SetTimeout(%struct.event* %6, i32 1)
  %7 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evenq(%struct.event* %7)
  br label %if.end.9

if.end:                                           ; preds = %entry
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 22
  %9 = load i32, i32* %d_x, align 4
  store i32 %9, i32* %ox, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 23
  %11 = load i32, i32* %d_y, align 4
  store i32 %11, i32* %oy, align 4
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 17
  %13 = load i32, i32* %c_ye, align 4
  %add = add nsw i32 %13, 1
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 17
  %15 = load i32, i32* %d_height, align 4
  %cmp1 = icmp slt i32 %add, %15
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye3 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 17
  %17 = load i32, i32* %c_ye3, align 4
  %add4 = add nsw i32 %17, 1
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 16
  %19 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %19, 1
  call void @RefreshLine(i32 %add4, i32 0, i32 %sub, i32 0)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %20 = load i32, i32* %ox, align 4
  %cmp6 = icmp ne i32 %20, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.5
  %21 = load i32, i32* %oy, align 4
  %cmp7 = icmp ne i32 %21, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %22 = load i32, i32* %ox, align 4
  %23 = load i32, i32* %oy, align 4
  call void @GotoPos(i32 %22, i32 %23)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.8, %land.lhs.true, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CanvasInitBlank(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 11
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %c_blank, i32 0, i32 0
  store %struct.canvas* %0, %struct.canvas** %l_cvlist, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 15
  %3 = load i32, i32* %c_xe, align 4
  %4 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 14
  %5 = load i32, i32* %c_xs, align 4
  %sub = sub nsw i32 %3, %5
  %add = add nsw i32 %sub, 1
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank1 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 11
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %c_blank1, i32 0, i32 1
  store i32 %add, i32* %l_width, align 4
  %7 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 17
  %8 = load i32, i32* %c_ye, align 4
  %9 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 16
  %10 = load i32, i32* %c_ys, align 4
  %sub2 = sub nsw i32 %8, %10
  %add3 = add nsw i32 %sub2, 1
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank4 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 11
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %c_blank4, i32 0, i32 2
  store i32 %add3, i32* %l_height, align 4
  %12 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank5 = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 11
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %c_blank5, i32 0, i32 4
  store i32 0, i32* %l_y, align 4
  %13 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank6 = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 11
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %c_blank6, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %14 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank7 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 11
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %c_blank7, i32 0, i32 6
  store %struct.LayFuncs* @BlankLf, %struct.LayFuncs** %l_layfn, align 8
  %15 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank8 = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 11
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %c_blank8, i32 0, i32 7
  store i8* null, i8** %l_data, align 8
  %16 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank9 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 11
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %c_blank9, i32 0, i32 8
  store %struct.layer* null, %struct.layer** %l_next, align 8
  %17 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank10 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 11
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank11 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 11
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %c_blank11, i32 0, i32 9
  store %struct.layer* %c_blank10, %struct.layer** %l_bottom, align 8
  %19 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank12 = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 11
  %l_blocking = getelementptr inbounds %struct.layer, %struct.layer* %c_blank12, i32 0, i32 10
  store i32 0, i32* %l_blocking, align 4
  %20 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank13 = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 11
  %21 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 9
  store %struct.layer* %c_blank13, %struct.layer** %c_layer, align 8
  ret void
}

declare i32 @RethinkDisplayViewports() #1

; Function Attrs: nounwind uwtable
define void @RecreateCanvasChain() #0 {
entry:
  %cvp = alloca %struct.canvas**, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 2
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 3
  %call = call %struct.canvas** @CreateCanvasChainRec(%struct.canvas* %1, %struct.canvas** %d_cvlist)
  store %struct.canvas** %call, %struct.canvas*** %cvp, align 8
  %3 = load %struct.canvas**, %struct.canvas*** %cvp, align 8
  store %struct.canvas* null, %struct.canvas** %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.canvas** @CreateCanvasChainRec(%struct.canvas* %cv, %struct.canvas** %cvp) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %cvp.addr = alloca %struct.canvas**, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store %struct.canvas** %cvp, %struct.canvas*** %cvp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 4
  %2 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp2 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %c_slperp2, align 8
  %5 = load %struct.canvas**, %struct.canvas*** %cvp.addr, align 8
  %call = call %struct.canvas** @CreateCanvasChainRec(%struct.canvas* %4, %struct.canvas** %5)
  store %struct.canvas** %call, %struct.canvas*** %cvp.addr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %7 = load %struct.canvas**, %struct.canvas*** %cvp.addr, align 8
  store %struct.canvas* %6, %struct.canvas** %7, align 8
  %8 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 0
  store %struct.canvas** %c_next, %struct.canvas*** %cvp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 2
  %10 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %10, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.canvas**, %struct.canvas*** %cvp.addr, align 8
  ret %struct.canvas** %11
}

; Function Attrs: nounwind uwtable
define void @EqualizeCanvas(%struct.canvas* %cv, i32 %gflag) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %gflag.addr = alloca i32, align 4
  %cv2 = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store i32 %gflag, i32* %gflag.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 4
  %2 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %gflag.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %call = call i32 @CountCanvasPerp(%struct.canvas* %4)
  %5 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 7
  store i32 %call, i32* %c_slweight, align 4
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp3 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 4
  %7 = load %struct.canvas*, %struct.canvas** %c_slperp3, align 8
  store %struct.canvas* %7, %struct.canvas** %cv2, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %8 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %tobool5 = icmp ne %struct.canvas* %8, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slperp7 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 4
  %10 = load %struct.canvas*, %struct.canvas** %c_slperp7, align 8
  %tobool8 = icmp ne %struct.canvas* %10, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body.6
  %11 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slperp10 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 4
  %12 = load %struct.canvas*, %struct.canvas** %c_slperp10, align 8
  %13 = load i32, i32* %gflag.addr, align 4
  call void @EqualizeCanvas(%struct.canvas* %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 2
  %15 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %15, %struct.canvas** %cv2, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %for.body
  %16 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight11 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 7
  store i32 1, i32* %c_slweight11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %for.end
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %17 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext14 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 2
  %18 = load %struct.canvas*, %struct.canvas** %c_slnext14, align 8
  store %struct.canvas* %18, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResizeCanvas(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %cv2 = alloca %struct.canvas*, align 8
  %cvn = alloca %struct.canvas*, align 8
  %fcv = alloca %struct.canvas*, align 8
  %nh = alloca i32, align 4
  %i = alloca i32, align 4
  %maxi = alloca i32, align 4
  %hh = alloca i32, align 4
  %m = alloca i32, align 4
  %w = alloca i32, align 4
  %wsum = alloca i32, align 4
  %need = alloca i32, align 4
  %got = alloca i32, align 4
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %focusmin = alloca i32, align 4
  %hx = alloca i32, align 4
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  store i32 0, i32* %focusmin, align 4
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 14
  %1 = load i32, i32* %c_xs, align 4
  store i32 %1, i32* %xs, align 4
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 16
  %3 = load i32, i32* %c_ys, align 4
  store i32 %3, i32* %ys, align 4
  %4 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 15
  %5 = load i32, i32* %c_xe, align 4
  store i32 %5, i32* %xe, align 4
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 17
  %7 = load i32, i32* %c_ye, align 4
  store i32 %7, i32* %ye, align 4
  %8 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  store %struct.canvas* %9, %struct.canvas** %cv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %10 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp = icmp eq %struct.canvas* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.2
  br label %for.end.313

if.end:                                           ; preds = %do.end.2
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 6
  %12 = load i32, i32* %c_slorient, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.20

if.then.4:                                        ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %13 = load i32, i32* %xs, align 4
  %14 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs7 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 14
  store i32 %13, i32* %c_xs7, align 4
  %15 = load i32, i32* %xe, align 4
  %16 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe8 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 15
  store i32 %15, i32* %c_xe8, align 4
  %17 = load i32, i32* %ys, align 4
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys9 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 16
  store i32 %17, i32* %c_ys9, align 4
  %19 = load i32, i32* %ye, align 4
  %20 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye10 = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 17
  store i32 %19, i32* %c_ye10, align 4
  %21 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs11 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 14
  %22 = load i32, i32* %c_xs11, align 4
  %23 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 12
  store i32 %22, i32* %c_xoff, align 4
  %24 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys12 = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 16
  %25 = load i32, i32* %c_ys12, align 4
  %26 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 13
  store i32 %25, i32* %c_yoff, align 4
  %27 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe13 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 15
  %28 = load i32, i32* %c_xe13, align 4
  %29 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs14 = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 14
  %30 = load i32, i32* %c_xs14, align 4
  %sub = sub nsw i32 %28, %30
  %add = add nsw i32 %sub, 1
  %31 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 11
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %c_blank, i32 0, i32 1
  store i32 %add, i32* %l_width, align 4
  %32 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye15 = getelementptr inbounds %struct.canvas, %struct.canvas* %32, i32 0, i32 17
  %33 = load i32, i32* %c_ye15, align 4
  %34 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys16 = getelementptr inbounds %struct.canvas, %struct.canvas* %34, i32 0, i32 16
  %35 = load i32, i32* %c_ys16, align 4
  %sub17 = sub nsw i32 %33, %35
  %add18 = add nsw i32 %sub17, 1
  %36 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank19 = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 11
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %c_blank19, i32 0, i32 2
  store i32 %add18, i32* %l_height, align 4
  br label %for.end.313

if.end.20:                                        ; preds = %if.end
  store %struct.canvas* null, %struct.canvas** %fcv, align 8
  %37 = load i32, i32* @focusminwidth, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %38 = load i32, i32* @focusminheight, align 4
  %tobool21 = icmp ne i32 %38, 0
  br i1 %tobool21, label %if.then.22, label %if.end.52

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.20
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 4
  %40 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %40, %struct.canvas** %cv2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %do.end.24
  %41 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 5
  %42 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %tobool25 = icmp ne %struct.canvas* %42, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slback26 = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 5
  %44 = load %struct.canvas*, %struct.canvas** %c_slback26, align 8
  %45 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback27 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 5
  %46 = load %struct.canvas*, %struct.canvas** %c_slback27, align 8
  %cmp28 = icmp eq %struct.canvas* %44, %46
  br i1 %cmp28, label %if.then.29, label %if.end.50

if.then.29:                                       ; preds = %while.body
  %47 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  store %struct.canvas* %47, %struct.canvas** %fcv, align 8
  %48 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient30 = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 6
  %49 = load i32, i32* %c_slorient30, align 4
  %cmp31 = icmp eq i32 %49, 1
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %50 = load i32, i32* @focusminheight, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %51 = load i32, i32* @focusminwidth, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %50, %cond.true ], [ %51, %cond.false ]
  store i32 %cond, i32* %focusmin, align 4
  %52 = load i32, i32* %focusmin, align 4
  %cmp32 = icmp sgt i32 %52, 0
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %cond.end
  %53 = load i32, i32* %focusmin, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %focusmin, align 4
  br label %if.end.47

if.else:                                          ; preds = %cond.end
  %54 = load i32, i32* %focusmin, align 4
  %cmp34 = icmp slt i32 %54, 0
  br i1 %cmp34, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %if.else
  %55 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient36 = getelementptr inbounds %struct.canvas, %struct.canvas* %55, i32 0, i32 6
  %56 = load i32, i32* %c_slorient36, align 4
  %cmp37 = icmp eq i32 %56, 1
  br i1 %cmp37, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %if.then.35
  %57 = load i32, i32* %ye, align 4
  %58 = load i32, i32* %ys, align 4
  %sub39 = sub nsw i32 %57, %58
  %add40 = add nsw i32 %sub39, 2
  br label %cond.end.44

cond.false.41:                                    ; preds = %if.then.35
  %59 = load i32, i32* %xe, align 4
  %60 = load i32, i32* %xs, align 4
  %sub42 = sub nsw i32 %59, %60
  %add43 = add nsw i32 %sub42, 2
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.38
  %cond45 = phi i32 [ %add40, %cond.true.38 ], [ %add43, %cond.false.41 ]
  store i32 %cond45, i32* %focusmin, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.44, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.33
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.body.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %while.body
  %61 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slback51 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 5
  %62 = load %struct.canvas*, %struct.canvas** %c_slback51, align 8
  store %struct.canvas* %62, %struct.canvas** %cv2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.52

if.end.52:                                        ; preds = %while.end, %lor.lhs.false
  %63 = load i32, i32* %focusmin, align 4
  %tobool53 = icmp ne i32 %63, 0
  br i1 %tobool53, label %if.then.54, label %if.end.74

if.then.54:                                       ; preds = %if.end.52
  %64 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %call = call i32 @CountCanvas(%struct.canvas* %64)
  %mul = mul nsw i32 %call, 2
  store i32 %mul, i32* %m, align 4
  %65 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient55 = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 6
  %66 = load i32, i32* %c_slorient55, align 4
  %cmp56 = icmp eq i32 %66, 1
  br i1 %cmp56, label %cond.true.57, label %cond.false.60

cond.true.57:                                     ; preds = %if.then.54
  %67 = load i32, i32* %ye, align 4
  %68 = load i32, i32* %ys, align 4
  %sub58 = sub nsw i32 %67, %68
  %add59 = add nsw i32 %sub58, 2
  br label %cond.end.63

cond.false.60:                                    ; preds = %if.then.54
  %69 = load i32, i32* %xe, align 4
  %70 = load i32, i32* %xs, align 4
  %sub61 = sub nsw i32 %69, %70
  %add62 = add nsw i32 %sub61, 2
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.57
  %cond64 = phi i32 [ %add59, %cond.true.57 ], [ %add62, %cond.false.60 ]
  store i32 %cond64, i32* %nh, align 4
  %71 = load i32, i32* %m, align 4
  %72 = load i32, i32* %nh, align 4
  %sub65 = sub nsw i32 %72, %71
  store i32 %sub65, i32* %nh, align 4
  %73 = load i32, i32* %nh, align 4
  %cmp66 = icmp slt i32 %73, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %cond.end.63
  store i32 0, i32* %nh, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %cond.end.63
  %74 = load i32, i32* %focusmin, align 4
  %75 = load i32, i32* %nh, align 4
  %cmp69 = icmp sgt i32 %74, %75
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %76 = load i32, i32* %nh, align 4
  store i32 %76, i32* %focusmin, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.body.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %if.end.52
  %77 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  store %struct.canvas* %77, %struct.canvas** %cv2, align 8
  store i32 0, i32* %wsum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.74
  %78 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %tobool75 = icmp ne %struct.canvas* %78, null
  br i1 %tobool75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.76

do.body.76:                                       ; preds = %for.body
  br label %do.end.77

do.end.77:                                        ; preds = %do.body.76
  %79 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 7
  %80 = load i32, i32* %c_slweight, align 4
  %81 = load i32, i32* %wsum, align 4
  %add78 = add nsw i32 %81, %80
  store i32 %add78, i32* %wsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end.77
  %82 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %82, i32 0, i32 2
  %83 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %83, %struct.canvas** %cv2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.79

do.body.79:                                       ; preds = %for.end
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  %84 = load i32, i32* %wsum, align 4
  %cmp81 = icmp eq i32 %84, 0
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end.80
  store i32 1, i32* %wsum, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %do.end.80
  %85 = load i32, i32* %wsum, align 4
  store i32 %85, i32* %w, align 4
  %86 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient84 = getelementptr inbounds %struct.canvas, %struct.canvas* %86, i32 0, i32 6
  %87 = load i32, i32* %c_slorient84, align 4
  %cmp85 = icmp eq i32 %87, 1
  br i1 %cmp85, label %cond.true.86, label %cond.false.89

cond.true.86:                                     ; preds = %if.end.83
  %88 = load i32, i32* %ye, align 4
  %89 = load i32, i32* %ys, align 4
  %sub87 = sub nsw i32 %88, %89
  %add88 = add nsw i32 %sub87, 2
  br label %cond.end.92

cond.false.89:                                    ; preds = %if.end.83
  %90 = load i32, i32* %xe, align 4
  %91 = load i32, i32* %xs, align 4
  %sub90 = sub nsw i32 %90, %91
  %add91 = add nsw i32 %sub90, 2
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.86
  %cond93 = phi i32 [ %add88, %cond.true.86 ], [ %add91, %cond.false.89 ]
  store i32 %cond93, i32* %nh, align 4
  %92 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  store %struct.canvas* %92, %struct.canvas** %cv2, align 8
  store i32 0, i32* %got, align 4
  store i32 0, i32* %need, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.134, %cond.end.92
  %93 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %tobool95 = icmp ne %struct.canvas* %93, null
  br i1 %tobool95, label %for.body.96, label %for.end.136

for.body.96:                                      ; preds = %for.cond.94
  %94 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slperp97 = getelementptr inbounds %struct.canvas, %struct.canvas* %94, i32 0, i32 4
  %95 = load %struct.canvas*, %struct.canvas** %c_slperp97, align 8
  %tobool98 = icmp ne %struct.canvas* %95, null
  br i1 %tobool98, label %cond.true.99, label %cond.false.103

cond.true.99:                                     ; preds = %for.body.96
  %96 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %call100 = call i32 @CountCanvasPerp(%struct.canvas* %96)
  %mul101 = mul nsw i32 %call100, 2
  %sub102 = sub nsw i32 %mul101, 1
  br label %cond.end.104

cond.false.103:                                   ; preds = %for.body.96
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.99
  %cond105 = phi i32 [ %sub102, %cond.true.99 ], [ 1, %cond.false.103 ]
  store i32 %cond105, i32* %m, align 4
  %97 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %98 = load %struct.canvas*, %struct.canvas** %fcv, align 8
  %cmp106 = icmp eq %struct.canvas* %97, %98
  br i1 %cmp106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %cond.end.104
  %99 = load i32, i32* %focusmin, align 4
  %100 = load i32, i32* %m, align 4
  %add108 = add nsw i32 %100, %99
  store i32 %add108, i32* %m, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %cond.end.104
  %101 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slweight110 = getelementptr inbounds %struct.canvas, %struct.canvas* %101, i32 0, i32 7
  %102 = load i32, i32* %c_slweight110, align 4
  %tobool111 = icmp ne i32 %102, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.115

cond.true.112:                                    ; preds = %if.end.109
  %103 = load i32, i32* %nh, align 4
  %104 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slweight113 = getelementptr inbounds %struct.canvas, %struct.canvas* %104, i32 0, i32 7
  %105 = load i32, i32* %c_slweight113, align 4
  %mul114 = mul nsw i32 %103, %105
  %106 = load i32, i32* %w, align 4
  %div = sdiv i32 %mul114, %106
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.end.109
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.112
  %cond117 = phi i32 [ %div, %cond.true.112 ], [ 0, %cond.false.115 ]
  store i32 %cond117, i32* %hh, align 4
  %107 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slweight118 = getelementptr inbounds %struct.canvas, %struct.canvas* %107, i32 0, i32 7
  %108 = load i32, i32* %c_slweight118, align 4
  %109 = load i32, i32* %w, align 4
  %sub119 = sub nsw i32 %109, %108
  store i32 %sub119, i32* %w, align 4
  %110 = load i32, i32* %hh, align 4
  %111 = load i32, i32* %nh, align 4
  %sub120 = sub nsw i32 %111, %110
  store i32 %sub120, i32* %nh, align 4
  br label %do.body.121

do.body.121:                                      ; preds = %cond.end.116
  br label %do.end.122

do.end.122:                                       ; preds = %do.body.121
  %112 = load i32, i32* %hh, align 4
  %113 = load i32, i32* %m, align 4
  %add123 = add nsw i32 %113, 1
  %cmp124 = icmp sle i32 %112, %add123
  br i1 %cmp124, label %if.then.125, label %if.else.129

if.then.125:                                      ; preds = %do.end.122
  %114 = load i32, i32* %m, align 4
  %add126 = add nsw i32 %114, 1
  %115 = load i32, i32* %hh, align 4
  %sub127 = sub nsw i32 %add126, %115
  %116 = load i32, i32* %need, align 4
  %add128 = add nsw i32 %116, %sub127
  store i32 %add128, i32* %need, align 4
  br label %if.end.133

if.else.129:                                      ; preds = %do.end.122
  %117 = load i32, i32* %hh, align 4
  %118 = load i32, i32* %m, align 4
  %sub130 = sub nsw i32 %117, %118
  %sub131 = sub nsw i32 %sub130, 1
  %119 = load i32, i32* %got, align 4
  %add132 = add nsw i32 %119, %sub131
  store i32 %add132, i32* %got, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.129, %if.then.125
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %120 = load %struct.canvas*, %struct.canvas** %cv2, align 8
  %c_slnext135 = getelementptr inbounds %struct.canvas, %struct.canvas* %120, i32 0, i32 2
  %121 = load %struct.canvas*, %struct.canvas** %c_slnext135, align 8
  store %struct.canvas* %121, %struct.canvas** %cv2, align 8
  br label %for.cond.94

for.end.136:                                      ; preds = %for.cond.94
  br label %do.body.137

do.body.137:                                      ; preds = %for.end.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.137
  %122 = load i32, i32* %need, align 4
  %123 = load i32, i32* %got, align 4
  %cmp139 = icmp sgt i32 %122, %123
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %do.end.138
  %124 = load i32, i32* %got, align 4
  store i32 %124, i32* %need, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %do.end.138
  %125 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient142 = getelementptr inbounds %struct.canvas, %struct.canvas* %125, i32 0, i32 6
  %126 = load i32, i32* %c_slorient142, align 4
  %cmp143 = icmp eq i32 %126, 1
  br i1 %cmp143, label %cond.true.144, label %cond.false.147

cond.true.144:                                    ; preds = %if.end.141
  %127 = load i32, i32* %ye, align 4
  %128 = load i32, i32* %ys, align 4
  %sub145 = sub nsw i32 %127, %128
  %add146 = add nsw i32 %sub145, 2
  br label %cond.end.150

cond.false.147:                                   ; preds = %if.end.141
  %129 = load i32, i32* %xe, align 4
  %130 = load i32, i32* %xs, align 4
  %sub148 = sub nsw i32 %129, %130
  %add149 = add nsw i32 %sub148, 2
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.147, %cond.true.144
  %cond151 = phi i32 [ %add146, %cond.true.144 ], [ %add149, %cond.false.147 ]
  store i32 %cond151, i32* %nh, align 4
  %131 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient152 = getelementptr inbounds %struct.canvas, %struct.canvas* %131, i32 0, i32 6
  %132 = load i32, i32* %c_slorient152, align 4
  %cmp153 = icmp eq i32 %132, 1
  br i1 %cmp153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.end.150
  %133 = load i32, i32* %ys, align 4
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.end.150
  %134 = load i32, i32* %xs, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ %133, %cond.true.154 ], [ %134, %cond.false.155 ]
  store i32 %cond157, i32* %i, align 4
  %135 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient158 = getelementptr inbounds %struct.canvas, %struct.canvas* %135, i32 0, i32 6
  %136 = load i32, i32* %c_slorient158, align 4
  %cmp159 = icmp eq i32 %136, 1
  br i1 %cmp159, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %cond.end.156
  %137 = load i32, i32* %ye, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %cond.end.156
  %138 = load i32, i32* %xe, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.160
  %cond163 = phi i32 [ %137, %cond.true.160 ], [ %138, %cond.false.161 ]
  store i32 %cond163, i32* %maxi, align 4
  %139 = load i32, i32* %wsum, align 4
  store i32 %139, i32* %w, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.312, %cond.end.162
  %140 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool165 = icmp ne %struct.canvas* %140, null
  br i1 %tobool165, label %for.body.166, label %for.end.313

for.body.166:                                     ; preds = %for.cond.164
  %141 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext167 = getelementptr inbounds %struct.canvas, %struct.canvas* %141, i32 0, i32 2
  %142 = load %struct.canvas*, %struct.canvas** %c_slnext167, align 8
  store %struct.canvas* %142, %struct.canvas** %cvn, align 8
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %maxi, align 4
  %cmp168 = icmp sgt i32 %143, %144
  br i1 %cmp168, label %if.then.169, label %if.end.194

if.then.169:                                      ; preds = %for.body.166
  %145 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %145, i32 0, i32 3
  %146 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %tobool170 = icmp ne %struct.canvas* %146, null
  br i1 %tobool170, label %land.lhs.true, label %if.end.193

land.lhs.true:                                    ; preds = %if.then.169
  %147 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback171 = getelementptr inbounds %struct.canvas, %struct.canvas* %147, i32 0, i32 5
  %148 = load %struct.canvas*, %struct.canvas** %c_slback171, align 8
  %c_slback172 = getelementptr inbounds %struct.canvas, %struct.canvas* %148, i32 0, i32 5
  %149 = load %struct.canvas*, %struct.canvas** %c_slback172, align 8
  %tobool173 = icmp ne %struct.canvas* %149, null
  br i1 %tobool173, label %if.end.193, label %land.lhs.true.174

land.lhs.true.174:                                ; preds = %land.lhs.true
  %150 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev175 = getelementptr inbounds %struct.canvas, %struct.canvas* %150, i32 0, i32 3
  %151 = load %struct.canvas*, %struct.canvas** %c_slprev175, align 8
  %c_slperp176 = getelementptr inbounds %struct.canvas, %struct.canvas* %151, i32 0, i32 4
  %152 = load %struct.canvas*, %struct.canvas** %c_slperp176, align 8
  %tobool177 = icmp ne %struct.canvas* %152, null
  br i1 %tobool177, label %if.end.193, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %land.lhs.true.174
  %153 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev179 = getelementptr inbounds %struct.canvas, %struct.canvas* %153, i32 0, i32 3
  %154 = load %struct.canvas*, %struct.canvas** %c_slprev179, align 8
  %c_slprev180 = getelementptr inbounds %struct.canvas, %struct.canvas* %154, i32 0, i32 3
  %155 = load %struct.canvas*, %struct.canvas** %c_slprev180, align 8
  %tobool181 = icmp ne %struct.canvas* %155, null
  br i1 %tobool181, label %if.end.193, label %if.then.182

if.then.182:                                      ; preds = %land.lhs.true.178
  %156 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev183 = getelementptr inbounds %struct.canvas, %struct.canvas* %156, i32 0, i32 3
  %157 = load %struct.canvas*, %struct.canvas** %c_slprev183, align 8
  %c_slorient184 = getelementptr inbounds %struct.canvas, %struct.canvas* %157, i32 0, i32 6
  store i32 0, i32* %c_slorient184, align 4
  %158 = load i32, i32* @captionalways, align 4
  %tobool185 = icmp ne i32 %158, 0
  br i1 %tobool185, label %if.end.192, label %if.then.186

if.then.186:                                      ; preds = %if.then.182
  %159 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback187 = getelementptr inbounds %struct.canvas, %struct.canvas* %159, i32 0, i32 5
  %160 = load %struct.canvas*, %struct.canvas** %c_slback187, align 8
  %c_ye188 = getelementptr inbounds %struct.canvas, %struct.canvas* %160, i32 0, i32 17
  %161 = load i32, i32* %c_ye188, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %c_ye188, align 4
  %162 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev189 = getelementptr inbounds %struct.canvas, %struct.canvas* %162, i32 0, i32 3
  %163 = load %struct.canvas*, %struct.canvas** %c_slprev189, align 8
  %c_ye190 = getelementptr inbounds %struct.canvas, %struct.canvas* %163, i32 0, i32 17
  %164 = load i32, i32* %c_ye190, align 4
  %inc191 = add nsw i32 %164, 1
  store i32 %inc191, i32* %c_ye190, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.186, %if.then.182
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %land.lhs.true.178, %land.lhs.true.174, %land.lhs.true, %if.then.169
  %165 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @SetCanvasWindow(%struct.canvas* %165, %struct.win* null)
  %166 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @FreeCanvas(%struct.canvas* %166)
  br label %for.inc.312

if.end.194:                                       ; preds = %for.body.166
  %167 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp195 = getelementptr inbounds %struct.canvas, %struct.canvas* %167, i32 0, i32 4
  %168 = load %struct.canvas*, %struct.canvas** %c_slperp195, align 8
  %tobool196 = icmp ne %struct.canvas* %168, null
  br i1 %tobool196, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %if.end.194
  %169 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %call198 = call i32 @CountCanvasPerp(%struct.canvas* %169)
  %mul199 = mul nsw i32 %call198, 2
  %sub200 = sub nsw i32 %mul199, 1
  br label %cond.end.202

cond.false.201:                                   ; preds = %if.end.194
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.197
  %cond203 = phi i32 [ %sub200, %cond.true.197 ], [ 1, %cond.false.201 ]
  store i32 %cond203, i32* %m, align 4
  %170 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %171 = load %struct.canvas*, %struct.canvas** %fcv, align 8
  %cmp204 = icmp eq %struct.canvas* %170, %171
  br i1 %cmp204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %cond.end.202
  %172 = load i32, i32* %focusmin, align 4
  %173 = load i32, i32* %m, align 4
  %add206 = add nsw i32 %173, %172
  store i32 %add206, i32* %m, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %cond.end.202
  %174 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight208 = getelementptr inbounds %struct.canvas, %struct.canvas* %174, i32 0, i32 7
  %175 = load i32, i32* %c_slweight208, align 4
  %tobool209 = icmp ne i32 %175, 0
  br i1 %tobool209, label %cond.true.210, label %cond.false.214

cond.true.210:                                    ; preds = %if.end.207
  %176 = load i32, i32* %nh, align 4
  %177 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight211 = getelementptr inbounds %struct.canvas, %struct.canvas* %177, i32 0, i32 7
  %178 = load i32, i32* %c_slweight211, align 4
  %mul212 = mul nsw i32 %176, %178
  %179 = load i32, i32* %w, align 4
  %div213 = sdiv i32 %mul212, %179
  br label %cond.end.215

cond.false.214:                                   ; preds = %if.end.207
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.214, %cond.true.210
  %cond216 = phi i32 [ %div213, %cond.true.210 ], [ 0, %cond.false.214 ]
  store i32 %cond216, i32* %hh, align 4
  %180 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight217 = getelementptr inbounds %struct.canvas, %struct.canvas* %180, i32 0, i32 7
  %181 = load i32, i32* %c_slweight217, align 4
  %182 = load i32, i32* %w, align 4
  %sub218 = sub nsw i32 %182, %181
  store i32 %sub218, i32* %w, align 4
  %183 = load i32, i32* %hh, align 4
  %184 = load i32, i32* %nh, align 4
  %sub219 = sub nsw i32 %184, %183
  store i32 %sub219, i32* %nh, align 4
  br label %do.body.220

do.body.220:                                      ; preds = %cond.end.215
  br label %do.end.221

do.end.221:                                       ; preds = %do.body.220
  %185 = load i32, i32* %hh, align 4
  %186 = load i32, i32* %m, align 4
  %add222 = add nsw i32 %186, 1
  %cmp223 = icmp sle i32 %185, %add222
  br i1 %cmp223, label %if.then.224, label %if.else.228

if.then.224:                                      ; preds = %do.end.221
  %187 = load i32, i32* %m, align 4
  %add225 = add nsw i32 %187, 1
  store i32 %add225, i32* %hh, align 4
  br label %do.body.226

do.body.226:                                      ; preds = %if.then.224
  br label %do.end.227

do.end.227:                                       ; preds = %do.body.226
  br label %if.end.242

if.else.228:                                      ; preds = %do.end.221
  %188 = load i32, i32* %need, align 4
  %189 = load i32, i32* %hh, align 4
  %190 = load i32, i32* %m, align 4
  %sub229 = sub nsw i32 %189, %190
  %sub230 = sub nsw i32 %sub229, 1
  %mul231 = mul nsw i32 %188, %sub230
  %191 = load i32, i32* %got, align 4
  %div232 = sdiv i32 %mul231, %191
  store i32 %div232, i32* %hx, align 4
  br label %do.body.233

do.body.233:                                      ; preds = %if.else.228
  br label %do.end.234

do.end.234:                                       ; preds = %do.body.233
  %192 = load i32, i32* %hh, align 4
  %193 = load i32, i32* %m, align 4
  %sub235 = sub nsw i32 %192, %193
  %sub236 = sub nsw i32 %sub235, 1
  %194 = load i32, i32* %got, align 4
  %sub237 = sub nsw i32 %194, %sub236
  store i32 %sub237, i32* %got, align 4
  %195 = load i32, i32* %hx, align 4
  %196 = load i32, i32* %hh, align 4
  %sub238 = sub nsw i32 %196, %195
  store i32 %sub238, i32* %hh, align 4
  %197 = load i32, i32* %hx, align 4
  %198 = load i32, i32* %need, align 4
  %sub239 = sub nsw i32 %198, %197
  store i32 %sub239, i32* %need, align 4
  br label %do.body.240

do.body.240:                                      ; preds = %do.end.234
  br label %do.end.241

do.end.241:                                       ; preds = %do.body.240
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %do.end.227
  br label %do.body.243

do.body.243:                                      ; preds = %if.end.242
  br label %do.end.244

do.end.244:                                       ; preds = %do.body.243
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %hh, align 4
  %add245 = add nsw i32 %199, %200
  %201 = load i32, i32* %maxi, align 4
  %add246 = add nsw i32 %201, 2
  %cmp247 = icmp sgt i32 %add245, %add246
  br i1 %cmp247, label %if.then.248, label %if.end.253

if.then.248:                                      ; preds = %do.end.244
  %202 = load i32, i32* %maxi, align 4
  %add249 = add nsw i32 %202, 2
  %203 = load i32, i32* %i, align 4
  %sub250 = sub nsw i32 %add249, %203
  store i32 %sub250, i32* %hh, align 4
  br label %do.body.251

do.body.251:                                      ; preds = %if.then.248
  br label %do.end.252

do.end.252:                                       ; preds = %do.body.251
  br label %if.end.253

if.end.253:                                       ; preds = %do.end.252, %do.end.244
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %hh, align 4
  %add254 = add nsw i32 %204, %205
  %206 = load i32, i32* %maxi, align 4
  %add255 = add nsw i32 %206, 1
  %cmp256 = icmp eq i32 %add254, %add255
  br i1 %cmp256, label %if.then.257, label %if.end.261

if.then.257:                                      ; preds = %if.end.253
  %207 = load i32, i32* %hh, align 4
  %inc258 = add nsw i32 %207, 1
  store i32 %inc258, i32* %hh, align 4
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.257
  br label %do.end.260

do.end.260:                                       ; preds = %do.body.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %if.end.253
  %208 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient262 = getelementptr inbounds %struct.canvas, %struct.canvas* %208, i32 0, i32 6
  %209 = load i32, i32* %c_slorient262, align 4
  %cmp263 = icmp eq i32 %209, 1
  br i1 %cmp263, label %if.then.264, label %if.else.273

if.then.264:                                      ; preds = %if.end.261
  %210 = load i32, i32* %xs, align 4
  %211 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs265 = getelementptr inbounds %struct.canvas, %struct.canvas* %211, i32 0, i32 14
  store i32 %210, i32* %c_xs265, align 4
  %212 = load i32, i32* %xe, align 4
  %213 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe266 = getelementptr inbounds %struct.canvas, %struct.canvas* %213, i32 0, i32 15
  store i32 %212, i32* %c_xe266, align 4
  %214 = load i32, i32* %i, align 4
  %215 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys267 = getelementptr inbounds %struct.canvas, %struct.canvas* %215, i32 0, i32 16
  store i32 %214, i32* %c_ys267, align 4
  %216 = load i32, i32* %i, align 4
  %217 = load i32, i32* %hh, align 4
  %add268 = add nsw i32 %216, %217
  %sub269 = sub nsw i32 %add268, 2
  %218 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye270 = getelementptr inbounds %struct.canvas, %struct.canvas* %218, i32 0, i32 17
  store i32 %sub269, i32* %c_ye270, align 4
  %219 = load i32, i32* %xs, align 4
  %220 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff271 = getelementptr inbounds %struct.canvas, %struct.canvas* %220, i32 0, i32 12
  store i32 %219, i32* %c_xoff271, align 4
  %221 = load i32, i32* %i, align 4
  %222 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff272 = getelementptr inbounds %struct.canvas, %struct.canvas* %222, i32 0, i32 13
  store i32 %221, i32* %c_yoff272, align 4
  br label %if.end.282

if.else.273:                                      ; preds = %if.end.261
  %223 = load i32, i32* %i, align 4
  %224 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs274 = getelementptr inbounds %struct.canvas, %struct.canvas* %224, i32 0, i32 14
  store i32 %223, i32* %c_xs274, align 4
  %225 = load i32, i32* %i, align 4
  %226 = load i32, i32* %hh, align 4
  %add275 = add nsw i32 %225, %226
  %sub276 = sub nsw i32 %add275, 2
  %227 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe277 = getelementptr inbounds %struct.canvas, %struct.canvas* %227, i32 0, i32 15
  store i32 %sub276, i32* %c_xe277, align 4
  %228 = load i32, i32* %ys, align 4
  %229 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys278 = getelementptr inbounds %struct.canvas, %struct.canvas* %229, i32 0, i32 16
  store i32 %228, i32* %c_ys278, align 4
  %230 = load i32, i32* %ye, align 4
  %231 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye279 = getelementptr inbounds %struct.canvas, %struct.canvas* %231, i32 0, i32 17
  store i32 %230, i32* %c_ye279, align 4
  %232 = load i32, i32* %i, align 4
  %233 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff280 = getelementptr inbounds %struct.canvas, %struct.canvas* %233, i32 0, i32 12
  store i32 %232, i32* %c_xoff280, align 4
  %234 = load i32, i32* %ys, align 4
  %235 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff281 = getelementptr inbounds %struct.canvas, %struct.canvas* %235, i32 0, i32 13
  store i32 %234, i32* %c_yoff281, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.273, %if.then.264
  %236 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs283 = getelementptr inbounds %struct.canvas, %struct.canvas* %236, i32 0, i32 14
  %237 = load i32, i32* %c_xs283, align 4
  %238 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff284 = getelementptr inbounds %struct.canvas, %struct.canvas* %238, i32 0, i32 12
  store i32 %237, i32* %c_xoff284, align 4
  %239 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys285 = getelementptr inbounds %struct.canvas, %struct.canvas* %239, i32 0, i32 16
  %240 = load i32, i32* %c_ys285, align 4
  %241 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff286 = getelementptr inbounds %struct.canvas, %struct.canvas* %241, i32 0, i32 13
  store i32 %240, i32* %c_yoff286, align 4
  %242 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe287 = getelementptr inbounds %struct.canvas, %struct.canvas* %242, i32 0, i32 15
  %243 = load i32, i32* %c_xe287, align 4
  %244 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs288 = getelementptr inbounds %struct.canvas, %struct.canvas* %244, i32 0, i32 14
  %245 = load i32, i32* %c_xs288, align 4
  %sub289 = sub nsw i32 %243, %245
  %add290 = add nsw i32 %sub289, 1
  %246 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank291 = getelementptr inbounds %struct.canvas, %struct.canvas* %246, i32 0, i32 11
  %l_width292 = getelementptr inbounds %struct.layer, %struct.layer* %c_blank291, i32 0, i32 1
  store i32 %add290, i32* %l_width292, align 4
  %247 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye293 = getelementptr inbounds %struct.canvas, %struct.canvas* %247, i32 0, i32 17
  %248 = load i32, i32* %c_ye293, align 4
  %249 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys294 = getelementptr inbounds %struct.canvas, %struct.canvas* %249, i32 0, i32 16
  %250 = load i32, i32* %c_ys294, align 4
  %sub295 = sub nsw i32 %248, %250
  %add296 = add nsw i32 %sub295, 1
  %251 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_blank297 = getelementptr inbounds %struct.canvas, %struct.canvas* %251, i32 0, i32 11
  %l_height298 = getelementptr inbounds %struct.layer, %struct.layer* %c_blank297, i32 0, i32 2
  store i32 %add296, i32* %l_height298, align 4
  %252 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp299 = getelementptr inbounds %struct.canvas, %struct.canvas* %252, i32 0, i32 4
  %253 = load %struct.canvas*, %struct.canvas** %c_slperp299, align 8
  %tobool300 = icmp ne %struct.canvas* %253, null
  br i1 %tobool300, label %if.then.301, label %if.end.310

if.then.301:                                      ; preds = %if.end.282
  %254 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @ResizeCanvas(%struct.canvas* %254)
  %255 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp302 = getelementptr inbounds %struct.canvas, %struct.canvas* %255, i32 0, i32 4
  %256 = load %struct.canvas*, %struct.canvas** %c_slperp302, align 8
  %c_slnext303 = getelementptr inbounds %struct.canvas, %struct.canvas* %256, i32 0, i32 2
  %257 = load %struct.canvas*, %struct.canvas** %c_slnext303, align 8
  %tobool304 = icmp ne %struct.canvas* %257, null
  br i1 %tobool304, label %if.end.309, label %if.then.305

if.then.305:                                      ; preds = %if.then.301
  br label %do.body.306

do.body.306:                                      ; preds = %if.then.305
  br label %do.end.307

do.end.307:                                       ; preds = %do.body.306
  %258 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp308 = getelementptr inbounds %struct.canvas, %struct.canvas* %258, i32 0, i32 4
  %259 = load %struct.canvas*, %struct.canvas** %c_slperp308, align 8
  call void @FreePerp(%struct.canvas* %259)
  %260 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  call void @FreePerp(%struct.canvas* %260)
  br label %if.end.309

if.end.309:                                       ; preds = %do.end.307, %if.then.301
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.end.282
  %261 = load i32, i32* %hh, align 4
  %262 = load i32, i32* %i, align 4
  %add311 = add nsw i32 %262, %261
  store i32 %add311, i32* %i, align 4
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.310, %if.end.193
  %263 = load %struct.canvas*, %struct.canvas** %cvn, align 8
  store %struct.canvas* %263, %struct.canvas** %cv.addr, align 8
  br label %for.cond.164

for.end.313:                                      ; preds = %if.then, %do.end.6, %for.cond.164
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FreePerp(%struct.canvas* %pcv) #0 {
entry:
  %pcv.addr = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  store %struct.canvas* %pcv, %struct.canvas** %pcv.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool = icmp ne %struct.canvas* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slperp1 = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 4
  %3 = load %struct.canvas*, %struct.canvas** %c_slperp1, align 8
  store %struct.canvas* %3, %struct.canvas** %cv, align 8
  %4 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 3
  %5 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev2 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 3
  store %struct.canvas* %5, %struct.canvas** %c_slprev2, align 8
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev3 = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 3
  %8 = load %struct.canvas*, %struct.canvas** %c_slprev3, align 8
  %tobool4 = icmp ne %struct.canvas* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev6 = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 3
  %11 = load %struct.canvas*, %struct.canvas** %c_slprev6, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 2
  store %struct.canvas* %9, %struct.canvas** %c_slnext, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 5
  %13 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback8 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 5
  store %struct.canvas* %13, %struct.canvas** %c_slback8, align 8
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback9 = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 5
  %16 = load %struct.canvas*, %struct.canvas** %c_slback9, align 8
  %tobool10 = icmp ne %struct.canvas* %16, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.7
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback11 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 5
  %18 = load %struct.canvas*, %struct.canvas** %c_slback11, align 8
  %c_slperp12 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 4
  %19 = load %struct.canvas*, %struct.canvas** %c_slperp12, align 8
  %20 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %cmp = icmp eq %struct.canvas* %19, %20
  br i1 %cmp, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback14 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 5
  %23 = load %struct.canvas*, %struct.canvas** %c_slback14, align 8
  %c_slperp15 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 4
  store %struct.canvas* %21, %struct.canvas** %c_slperp15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true, %if.end.7
  %24 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 6
  %25 = load i32, i32* %c_slorient, align 4
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient17 = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 6
  store i32 %25, i32* %c_slorient17, align 4
  %27 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 7
  %28 = load i32, i32* %c_slweight, align 4
  %29 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slweight18 = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 7
  store i32 %28, i32* %c_slweight18, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %30 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext19 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 2
  %31 = load %struct.canvas*, %struct.canvas** %c_slnext19, align 8
  %tobool20 = icmp ne %struct.canvas* %31, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext21 = getelementptr inbounds %struct.canvas, %struct.canvas* %32, i32 0, i32 2
  %33 = load %struct.canvas*, %struct.canvas** %c_slnext21, align 8
  store %struct.canvas* %33, %struct.canvas** %cv, align 8
  %34 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slorient22 = getelementptr inbounds %struct.canvas, %struct.canvas* %34, i32 0, i32 6
  %35 = load i32, i32* %c_slorient22, align 4
  %36 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient23 = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 6
  store i32 %35, i32* %c_slorient23, align 4
  %37 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slback24 = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 5
  %38 = load %struct.canvas*, %struct.canvas** %c_slback24, align 8
  %39 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback25 = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 5
  store %struct.canvas* %38, %struct.canvas** %c_slback25, align 8
  %40 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slweight26 = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 7
  %41 = load i32, i32* %c_slweight26, align 4
  %42 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slweight27 = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 7
  store i32 %41, i32* %c_slweight27, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_slnext28 = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 2
  %44 = load %struct.canvas*, %struct.canvas** %c_slnext28, align 8
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext29 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 2
  store %struct.canvas* %44, %struct.canvas** %c_slnext29, align 8
  %46 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext30 = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 2
  %47 = load %struct.canvas*, %struct.canvas** %c_slnext30, align 8
  %tobool31 = icmp ne %struct.canvas* %47, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %while.end
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %49 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext33 = getelementptr inbounds %struct.canvas, %struct.canvas* %49, i32 0, i32 2
  %50 = load %struct.canvas*, %struct.canvas** %c_slnext33, align 8
  %c_slprev34 = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 3
  store %struct.canvas* %48, %struct.canvas** %c_slprev34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %while.end
  %51 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 11
  call void @LayerCleanupMemory(%struct.layer* %c_blank)
  %52 = load %struct.canvas*, %struct.canvas** %pcv.addr, align 8
  %53 = bitcast %struct.canvas* %52 to i8*
  call void @free(i8* %53) #3
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @AddCanvas(i32 %orient) #0 {
entry:
  %retval = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %xs = alloca i32, align 4
  %xe = alloca i32, align 4
  %ys = alloca i32, align 4
  %ye = alloca i32, align 4
  %h = alloca i32, align 4
  %num = alloca i32, align 4
  store i32 %orient, i32* %orient.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 6
  %3 = load i32, i32* %c_slorient, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient1 = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 6
  %5 = load i32, i32* %c_slorient1, align 4
  %6 = load i32, i32* %orient.addr, align 4
  %cmp2 = icmp ne i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %call = call %struct.canvas* @AddPerp(%struct.canvas* %7)
  %tobool = icmp ne %struct.canvas* %call, null
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %do.end
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv5 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv5, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 5
  %11 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 14
  %12 = load i32, i32* %c_xs, align 4
  store i32 %12, i32* %xs, align 4
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback6 = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 5
  %14 = load %struct.canvas*, %struct.canvas** %c_slback6, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 15
  %15 = load i32, i32* %c_xe, align 4
  store i32 %15, i32* %xe, align 4
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback7 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 5
  %17 = load %struct.canvas*, %struct.canvas** %c_slback7, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 16
  %18 = load i32, i32* %c_ys, align 4
  store i32 %18, i32* %ys, align 4
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback8 = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 5
  %20 = load %struct.canvas*, %struct.canvas** %c_slback8, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 17
  %21 = load i32, i32* %c_ye, align 4
  store i32 %21, i32* %ye, align 4
  %22 = load i32, i32* @captionalways, align 4
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %if.end.15, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %if.end.4
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 2
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %25 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %cmp11 = icmp eq %struct.canvas* %23, %25
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 2
  %27 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool13 = icmp ne %struct.canvas* %27, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  %28 = load i32, i32* %ye, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %ye, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %land.lhs.true.10, %if.end.4
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %29 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback20 = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 5
  %30 = load %struct.canvas*, %struct.canvas** %c_slback20, align 8
  %c_slperp21 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 4
  %31 = load %struct.canvas*, %struct.canvas** %c_slperp21, align 8
  %call22 = call i32 @CountCanvas(%struct.canvas* %31)
  %add = add nsw i32 %call22, 1
  store i32 %add, i32* %num, align 4
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.19
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  %32 = load i32, i32* %orient.addr, align 4
  %cmp25 = icmp eq i32 %32, 1
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.end.24
  %33 = load i32, i32* %ye, align 4
  %34 = load i32, i32* %ys, align 4
  %sub = sub nsw i32 %33, %34
  %add27 = add nsw i32 %sub, 1
  store i32 %add27, i32* %h, align 4
  br label %if.end.30

if.else:                                          ; preds = %do.end.24
  %35 = load i32, i32* %xe, align 4
  %36 = load i32, i32* %xs, align 4
  %sub28 = sub nsw i32 %35, %36
  %add29 = add nsw i32 %sub28, 1
  store i32 %add29, i32* %h, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.26
  %37 = load i32, i32* %num, align 4
  %mul = mul nsw i32 2, %37
  %sub31 = sub nsw i32 %mul, 1
  %38 = load i32, i32* %h, align 4
  %sub32 = sub nsw i32 %38, %sub31
  store i32 %sub32, i32* %h, align 4
  %39 = load i32, i32* %h, align 4
  %cmp33 = icmp slt i32 %39, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.30
  %call36 = call noalias i8* @calloc(i64 1, i64 312) #3
  %40 = bitcast i8* %call36 to %struct.canvas*
  store %struct.canvas* %40, %struct.canvas** %cv, align 8
  %cmp37 = icmp eq %struct.canvas* %40, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %41 = load i32, i32* %ye, align 4
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv40 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 4
  %43 = load %struct.canvas*, %struct.canvas** %d_forecv40, align 8
  %c_slback41 = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 5
  %44 = load %struct.canvas*, %struct.canvas** %c_slback41, align 8
  %c_ye42 = getelementptr inbounds %struct.canvas, %struct.canvas* %44, i32 0, i32 17
  store i32 %41, i32* %c_ye42, align 4
  %45 = load i32, i32* %orient.addr, align 4
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv43 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 4
  %47 = load %struct.canvas*, %struct.canvas** %d_forecv43, align 8
  %c_slorient44 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 6
  store i32 %45, i32* %c_slorient44, align 4
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv45 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 4
  %49 = load %struct.canvas*, %struct.canvas** %d_forecv45, align 8
  %c_slnext46 = getelementptr inbounds %struct.canvas, %struct.canvas* %49, i32 0, i32 2
  %50 = load %struct.canvas*, %struct.canvas** %c_slnext46, align 8
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext47 = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 2
  store %struct.canvas* %50, %struct.canvas** %c_slnext47, align 8
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv48 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 4
  %53 = load %struct.canvas*, %struct.canvas** %d_forecv48, align 8
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 3
  store %struct.canvas* %53, %struct.canvas** %c_slprev, align 8
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv49 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 4
  %57 = load %struct.canvas*, %struct.canvas** %d_forecv49, align 8
  %c_slnext50 = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 2
  store %struct.canvas* %55, %struct.canvas** %c_slnext50, align 8
  %58 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext51 = getelementptr inbounds %struct.canvas, %struct.canvas* %58, i32 0, i32 2
  %59 = load %struct.canvas*, %struct.canvas** %c_slnext51, align 8
  %tobool52 = icmp ne %struct.canvas* %59, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.39
  %60 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %61 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext54 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 2
  %62 = load %struct.canvas*, %struct.canvas** %c_slnext54, align 8
  %c_slprev55 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 3
  store %struct.canvas* %60, %struct.canvas** %c_slprev55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.39
  %63 = load i32, i32* %orient.addr, align 4
  %64 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient57 = getelementptr inbounds %struct.canvas, %struct.canvas* %64, i32 0, i32 6
  store i32 %63, i32* %c_slorient57, align 4
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv58 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 4
  %66 = load %struct.canvas*, %struct.canvas** %d_forecv58, align 8
  %c_slback59 = getelementptr inbounds %struct.canvas, %struct.canvas* %66, i32 0, i32 5
  %67 = load %struct.canvas*, %struct.canvas** %c_slback59, align 8
  %68 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback60 = getelementptr inbounds %struct.canvas, %struct.canvas* %68, i32 0, i32 5
  store %struct.canvas* %67, %struct.canvas** %c_slback60, align 8
  %69 = load i32, i32* %xs, align 4
  %70 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs61 = getelementptr inbounds %struct.canvas, %struct.canvas* %70, i32 0, i32 14
  store i32 %69, i32* %c_xs61, align 4
  %71 = load i32, i32* %xe, align 4
  %72 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe62 = getelementptr inbounds %struct.canvas, %struct.canvas* %72, i32 0, i32 15
  store i32 %71, i32* %c_xe62, align 4
  %73 = load i32, i32* %ys, align 4
  %74 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys63 = getelementptr inbounds %struct.canvas, %struct.canvas* %74, i32 0, i32 16
  store i32 %73, i32* %c_ys63, align 4
  %75 = load i32, i32* %ye, align 4
  %76 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye64 = getelementptr inbounds %struct.canvas, %struct.canvas* %76, i32 0, i32 17
  store i32 %75, i32* %c_ye64, align 4
  %77 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %77, i32 0, i32 12
  store i32 0, i32* %c_xoff, align 4
  %78 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %78, i32 0, i32 13
  store i32 0, i32* %c_yoff, align 4
  %79 = load %struct.display*, %struct.display** @display, align 8
  %80 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %80, i32 0, i32 1
  store %struct.display* %79, %struct.display** %c_display, align 8
  %81 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %81, i32 0, i32 8
  store %struct.viewport* null, %struct.viewport** %c_vplist, align 8
  %82 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %82, i32 0, i32 18
  %type = getelementptr inbounds %struct.event, %struct.event* %c_captev, i32 0, i32 4
  store i32 0, i32* %type, align 4
  %83 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %84 = bitcast %struct.canvas* %83 to i8*
  %85 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev65 = getelementptr inbounds %struct.canvas, %struct.canvas* %85, i32 0, i32 18
  %data = getelementptr inbounds %struct.event, %struct.event* %c_captev65, i32 0, i32 2
  store i8* %84, i8** %data, align 8
  %86 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev66 = getelementptr inbounds %struct.canvas, %struct.canvas* %86, i32 0, i32 18
  %handler = getelementptr inbounds %struct.event, %struct.event* %c_captev66, i32 0, i32 1
  store void (%struct.event*, i8*)* @cv_winid_fn, void (%struct.event*, i8*)** %handler, align 8
  %87 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @CanvasInitBlank(%struct.canvas* %87)
  %88 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %88, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext, align 8
  %89 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %89, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %c_next, align 8
  %90 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback67 = getelementptr inbounds %struct.canvas, %struct.canvas* %90, i32 0, i32 5
  %91 = load %struct.canvas*, %struct.canvas** %c_slback67, align 8
  store %struct.canvas* %91, %struct.canvas** %cv, align 8
  %92 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp68 = getelementptr inbounds %struct.canvas, %struct.canvas* %92, i32 0, i32 4
  %93 = load %struct.canvas*, %struct.canvas** %c_slperp68, align 8
  call void @EqualizeCanvas(%struct.canvas* %93, i32 0)
  %94 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @ResizeCanvas(%struct.canvas* %94)
  call void @RecreateCanvasChain()
  %call69 = call i32 @RethinkDisplayViewports()
  call void @ResizeLayersToCanvases()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.38, %if.then.34, %if.then.3
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal %struct.canvas* @AddPerp(%struct.canvas* %cv) #0 {
entry:
  %retval = alloca %struct.canvas*, align 8
  %cv.addr = alloca %struct.canvas*, align 8
  %pcv = alloca %struct.canvas*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call noalias i8* @calloc(i64 1, i64 312) #3
  %0 = bitcast i8* %call to %struct.canvas*
  store %struct.canvas* %0, %struct.canvas** %pcv, align 8
  %cmp = icmp eq %struct.canvas* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store %struct.canvas* null, %struct.canvas** %retval
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %c_next, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 1
  %3 = load %struct.display*, %struct.display** %c_display, align 8
  %4 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_display1 = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 1
  store %struct.display* %3, %struct.display** %c_display1, align 8
  %5 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 2
  %6 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %7 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slnext2 = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 2
  store %struct.canvas* %6, %struct.canvas** %c_slnext2, align 8
  %8 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 3
  %9 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %10 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slprev3 = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 3
  store %struct.canvas* %9, %struct.canvas** %c_slprev3, align 8
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %12 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 4
  store %struct.canvas* %11, %struct.canvas** %c_slperp, align 8
  %13 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 5
  %14 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %15 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slback4 = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 5
  store %struct.canvas* %14, %struct.canvas** %c_slback4, align 8
  %16 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback5 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 5
  %17 = load %struct.canvas*, %struct.canvas** %c_slback5, align 8
  %tobool = icmp ne %struct.canvas* %17, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback6 = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 5
  %19 = load %struct.canvas*, %struct.canvas** %c_slback6, align 8
  %c_slperp7 = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 4
  %20 = load %struct.canvas*, %struct.canvas** %c_slperp7, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %cmp8 = icmp eq %struct.canvas* %20, %21
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true
  %22 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback10 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 5
  %24 = load %struct.canvas*, %struct.canvas** %c_slback10, align 8
  %c_slperp11 = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 4
  store %struct.canvas* %22, %struct.canvas** %c_slperp11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %25 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 6
  %26 = load i32, i32* %c_slorient, align 4
  %27 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slorient13 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 6
  store i32 %26, i32* %c_slorient13, align 4
  %28 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 12
  store i32 0, i32* %c_xoff, align 4
  %29 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 13
  store i32 0, i32* %c_yoff, align 4
  %30 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 14
  %31 = load i32, i32* %c_xs, align 4
  %32 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_xs14 = getelementptr inbounds %struct.canvas, %struct.canvas* %32, i32 0, i32 14
  store i32 %31, i32* %c_xs14, align 4
  %33 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 15
  %34 = load i32, i32* %c_xe, align 4
  %35 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_xe15 = getelementptr inbounds %struct.canvas, %struct.canvas* %35, i32 0, i32 15
  store i32 %34, i32* %c_xe15, align 4
  %36 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 16
  %37 = load i32, i32* %c_ys, align 4
  %38 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_ys16 = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 16
  store i32 %37, i32* %c_ys16, align 4
  %39 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 17
  %40 = load i32, i32* %c_ye, align 4
  %41 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_ye17 = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 17
  store i32 %40, i32* %c_ye17, align 4
  %42 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slnext18 = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 2
  %43 = load %struct.canvas*, %struct.canvas** %c_slnext18, align 8
  %tobool19 = icmp ne %struct.canvas* %43, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.12
  %44 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %45 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slnext21 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 2
  %46 = load %struct.canvas*, %struct.canvas** %c_slnext21, align 8
  %c_slprev22 = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 3
  store %struct.canvas* %44, %struct.canvas** %c_slprev22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.12
  %47 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slprev24 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 3
  %48 = load %struct.canvas*, %struct.canvas** %c_slprev24, align 8
  %tobool25 = icmp ne %struct.canvas* %48, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %49 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %50 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slprev27 = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 3
  %51 = load %struct.canvas*, %struct.canvas** %c_slprev27, align 8
  %c_slnext28 = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 2
  store %struct.canvas* %49, %struct.canvas** %c_slnext28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.23
  %52 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %52, i32 0, i32 7
  %53 = load i32, i32* %c_slweight, align 4
  %54 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %c_slweight30 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 7
  store i32 %53, i32* %c_slweight30, align 4
  %55 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  call void @CanvasInitBlank(%struct.canvas* %55)
  %56 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slweight31 = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 7
  store i32 1, i32* %c_slweight31, align 4
  %57 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext32 = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 2
  store %struct.canvas* null, %struct.canvas** %c_slnext32, align 8
  %58 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slprev33 = getelementptr inbounds %struct.canvas, %struct.canvas* %58, i32 0, i32 3
  store %struct.canvas* null, %struct.canvas** %c_slprev33, align 8
  %59 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp34 = getelementptr inbounds %struct.canvas, %struct.canvas* %59, i32 0, i32 4
  store %struct.canvas* null, %struct.canvas** %c_slperp34, align 8
  %60 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  %61 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slback35 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 5
  store %struct.canvas* %60, %struct.canvas** %c_slback35, align 8
  %62 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slorient36 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 6
  store i32 0, i32* %c_slorient36, align 4
  %63 = load %struct.canvas*, %struct.canvas** %pcv, align 8
  store %struct.canvas* %63, %struct.canvas** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then
  %64 = load %struct.canvas*, %struct.canvas** %retval
  ret %struct.canvas* %64
}

declare void @ResizeLayersToCanvases() #1

; Function Attrs: nounwind uwtable
define void @RemCanvas() #0 {
entry:
  %ye = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 5
  %3 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 17
  %4 = load i32, i32* %c_ye, align 4
  store i32 %4, i32* %ye, align 4
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 6
  %6 = load i32, i32* %c_slorient, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 3
  %8 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %tobool = icmp ne %struct.canvas* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev1 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 3
  %10 = load %struct.canvas*, %struct.canvas** %c_slprev1, align 8
  store %struct.canvas* %10, %struct.canvas** %cv, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 2
  %12 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool2 = icmp ne %struct.canvas* %12, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %while.end
  br label %return

if.end.4:                                         ; preds = %while.end
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext5 = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 2
  %14 = load %struct.canvas*, %struct.canvas** %c_slnext5, align 8
  %c_slnext6 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 2
  %15 = load %struct.canvas*, %struct.canvas** %c_slnext6, align 8
  %tobool7 = icmp ne %struct.canvas* %15, null
  br i1 %tobool7, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.4
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback8 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 5
  %17 = load %struct.canvas*, %struct.canvas** %c_slback8, align 8
  %c_slback9 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 5
  %18 = load %struct.canvas*, %struct.canvas** %c_slback9, align 8
  %tobool10 = icmp ne %struct.canvas* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %land.lhs.true
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv12 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 4
  %20 = load %struct.canvas*, %struct.canvas** %d_forecv12, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev15 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 3
  %22 = load %struct.canvas*, %struct.canvas** %c_slprev15, align 8
  %tobool16 = icmp ne %struct.canvas* %22, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.14
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev17 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 3
  %24 = load %struct.canvas*, %struct.canvas** %c_slprev17, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.14
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext18 = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 2
  %26 = load %struct.canvas*, %struct.canvas** %c_slnext18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.canvas* [ %24, %cond.true ], [ %26, %cond.false ]
  call void @FreePerp(%struct.canvas* %cond)
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback19 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 5
  %28 = load %struct.canvas*, %struct.canvas** %c_slback19, align 8
  call void @FreePerp(%struct.canvas* %28)
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %land.lhs.true, %if.end.4
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv21 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 4
  %30 = load %struct.canvas*, %struct.canvas** %d_forecv21, align 8
  store %struct.canvas* %30, %struct.canvas** %cv, align 8
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev22 = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 3
  %32 = load %struct.canvas*, %struct.canvas** %c_slprev22, align 8
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv23 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 4
  store %struct.canvas* %32, %struct.canvas** %d_forecv23, align 8
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv24 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 4
  %35 = load %struct.canvas*, %struct.canvas** %d_forecv24, align 8
  %tobool25 = icmp ne %struct.canvas* %35, null
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %if.end.20
  %36 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext27 = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 2
  %37 = load %struct.canvas*, %struct.canvas** %c_slnext27, align 8
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv28 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 4
  store %struct.canvas* %37, %struct.canvas** %d_forecv28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.20
  %39 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @FreeCanvas(%struct.canvas* %39)
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv30 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 4
  %41 = load %struct.canvas*, %struct.canvas** %d_forecv30, align 8
  store %struct.canvas* %41, %struct.canvas** %cv, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.34, %if.end.29
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv32 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 4
  %43 = load %struct.canvas*, %struct.canvas** %d_forecv32, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 4
  %44 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool33 = icmp ne %struct.canvas* %44, null
  br i1 %tobool33, label %while.body.34, label %while.end.38

while.body.34:                                    ; preds = %while.cond.31
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv35 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 4
  %46 = load %struct.canvas*, %struct.canvas** %d_forecv35, align 8
  %c_slperp36 = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 4
  %47 = load %struct.canvas*, %struct.canvas** %c_slperp36, align 8
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv37 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 4
  store %struct.canvas* %47, %struct.canvas** %d_forecv37, align 8
  br label %while.cond.31

while.end.38:                                     ; preds = %while.cond.31
  %49 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext39 = getelementptr inbounds %struct.canvas, %struct.canvas* %49, i32 0, i32 2
  %50 = load %struct.canvas*, %struct.canvas** %c_slnext39, align 8
  %tobool40 = icmp ne %struct.canvas* %50, null
  br i1 %tobool40, label %if.end.58, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %while.end.38
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev42 = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 3
  %52 = load %struct.canvas*, %struct.canvas** %c_slprev42, align 8
  %tobool43 = icmp ne %struct.canvas* %52, null
  br i1 %tobool43, label %if.end.58, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %53 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback45 = getelementptr inbounds %struct.canvas, %struct.canvas* %53, i32 0, i32 5
  %54 = load %struct.canvas*, %struct.canvas** %c_slback45, align 8
  %c_slback46 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 5
  %55 = load %struct.canvas*, %struct.canvas** %c_slback46, align 8
  %tobool47 = icmp ne %struct.canvas* %55, null
  br i1 %tobool47, label %if.end.58, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.44
  %56 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp49 = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 4
  %57 = load %struct.canvas*, %struct.canvas** %c_slperp49, align 8
  %tobool50 = icmp ne %struct.canvas* %57, null
  br i1 %tobool50, label %if.end.58, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.48
  %58 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient52 = getelementptr inbounds %struct.canvas, %struct.canvas* %58, i32 0, i32 6
  store i32 0, i32* %c_slorient52, align 4
  %59 = load i32, i32* @captionalways, align 4
  %tobool53 = icmp ne i32 %59, 0
  br i1 %tobool53, label %if.end.57, label %if.then.54

if.then.54:                                       ; preds = %if.then.51
  %60 = load i32, i32* %ye, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %ye, align 4
  %61 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback55 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 5
  %62 = load %struct.canvas*, %struct.canvas** %c_slback55, align 8
  %c_ye56 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 17
  store i32 %inc, i32* %c_ye56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.48, %land.lhs.true.44, %land.lhs.true.41, %while.end.38
  %63 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback59 = getelementptr inbounds %struct.canvas, %struct.canvas* %63, i32 0, i32 5
  %64 = load %struct.canvas*, %struct.canvas** %c_slback59, align 8
  store %struct.canvas* %64, %struct.canvas** %cv, align 8
  %65 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp60 = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 4
  %66 = load %struct.canvas*, %struct.canvas** %c_slperp60, align 8
  call void @EqualizeCanvas(%struct.canvas* %66, i32 0)
  %67 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @ResizeCanvas(%struct.canvas* %67)
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv61 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 4
  %69 = load %struct.canvas*, %struct.canvas** %d_forecv61, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %69, i32 0, i32 9
  %70 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %70, i32 0, i32 9
  %71 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %71, i32 0, i32 7
  %72 = load i8*, i8** %l_data, align 8
  %73 = bitcast i8* %72 to %struct.win*
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 10
  store %struct.win* %73, %struct.win** %d_fore, align 8
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv62 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 4
  %76 = load %struct.canvas*, %struct.canvas** %d_forecv62, align 8
  %c_layer63 = getelementptr inbounds %struct.canvas, %struct.canvas* %76, i32 0, i32 9
  %77 = load %struct.layer*, %struct.layer** %c_layer63, align 8
  store %struct.layer* %77, %struct.layer** @flayer, align 8
  call void @RecreateCanvasChain()
  %call = call i32 @RethinkDisplayViewports()
  call void @ResizeLayersToCanvases()
  br label %return

return:                                           ; preds = %if.end.58, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @OneCanvas() #0 {
entry:
  %cv = alloca %struct.canvas*, align 8
  %ocv = alloca %struct.canvas*, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 4
  %1 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  store %struct.canvas* null, %struct.canvas** %ocv, align 8
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 3
  %3 = load %struct.canvas*, %struct.canvas** %c_slprev, align 8
  %tobool = icmp ne %struct.canvas* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev1 = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 3
  %5 = load %struct.canvas*, %struct.canvas** %c_slprev1, align 8
  store %struct.canvas* %5, %struct.canvas** %ocv, align 8
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 2
  %7 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %8 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev2 = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 3
  %9 = load %struct.canvas*, %struct.canvas** %c_slprev2, align 8
  %c_slnext3 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 2
  store %struct.canvas* %7, %struct.canvas** %c_slnext3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext4 = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 2
  %11 = load %struct.canvas*, %struct.canvas** %c_slnext4, align 8
  %tobool5 = icmp ne %struct.canvas* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext7 = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 2
  %13 = load %struct.canvas*, %struct.canvas** %c_slnext7, align 8
  store %struct.canvas* %13, %struct.canvas** %ocv, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev8 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 3
  %15 = load %struct.canvas*, %struct.canvas** %c_slprev8, align 8
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext9 = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 2
  %17 = load %struct.canvas*, %struct.canvas** %c_slnext9, align 8
  %c_slprev10 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 3
  store %struct.canvas* %15, %struct.canvas** %c_slprev10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  %18 = load %struct.canvas*, %struct.canvas** %ocv, align 8
  %tobool12 = icmp ne %struct.canvas* %18, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 5
  %20 = load %struct.canvas*, %struct.canvas** %c_slback, align 8
  %tobool15 = icmp ne %struct.canvas* %20, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.14
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback16 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 5
  %22 = load %struct.canvas*, %struct.canvas** %c_slback16, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 4
  %23 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp = icmp eq %struct.canvas* %23, %24
  br i1 %cmp, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %land.lhs.true
  %25 = load %struct.canvas*, %struct.canvas** %ocv, align 8
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback18 = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 5
  %27 = load %struct.canvas*, %struct.canvas** %c_slback18, align 8
  %c_slperp19 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 4
  store %struct.canvas* %25, %struct.canvas** %c_slperp19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.14
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 6
  store i32 0, i32* %c_slorient, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 2
  %c_slperp21 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %30 = load %struct.canvas*, %struct.canvas** %c_slperp21, align 8
  %tobool22 = icmp ne %struct.canvas* %30, null
  br i1 %tobool22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas23 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 2
  %c_slperp24 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas23, i32 0, i32 4
  %32 = load %struct.canvas*, %struct.canvas** %c_slperp24, align 8
  call void @FreeCanvas(%struct.canvas* %32)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv25 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 4
  %34 = load %struct.canvas*, %struct.canvas** %d_forecv25, align 8
  store %struct.canvas* %34, %struct.canvas** %cv, align 8
  %35 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas26 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 2
  %c_slperp27 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas26, i32 0, i32 4
  store %struct.canvas* %35, %struct.canvas** %c_slperp27, align 8
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas28 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 2
  %38 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slback29 = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 5
  store %struct.canvas* %d_canvas28, %struct.canvas** %c_slback29, align 8
  %39 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slnext30 = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 2
  store %struct.canvas* null, %struct.canvas** %c_slnext30, align 8
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slprev31 = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 3
  store %struct.canvas* null, %struct.canvas** %c_slprev31, align 8
  br label %do.body

do.body:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %41 = load i32, i32* @captionalways, align 4
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %do.end
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas34 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 2
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas34, i32 0, i32 17
  %43 = load i32, i32* %c_ye, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %c_ye, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %do.end
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas36 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 2
  call void @ResizeCanvas(%struct.canvas* %d_canvas36)
  call void @RecreateCanvasChain()
  %call = call i32 @RethinkDisplayViewports()
  call void @ResizeLayersToCanvases()
  br label %return

return:                                           ; preds = %if.end.35, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @DupLayoutCv(%struct.canvas* %cvf, %struct.canvas* %cvt, i32 %save) #0 {
entry:
  %cvf.addr = alloca %struct.canvas*, align 8
  %cvt.addr = alloca %struct.canvas*, align 8
  %save.addr = alloca i32, align 4
  %p = alloca %struct.win*, align 8
  store %struct.canvas* %cvf, %struct.canvas** %cvf.addr, align 8
  store %struct.canvas* %cvt, %struct.canvas** %cvt.addr, align 8
  store i32 %save, i32* %save.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.44, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 6
  %2 = load i32, i32* %c_slorient, align 4
  %3 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slorient1 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 6
  store i32 %2, i32* %c_slorient1, align 4
  %4 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slweight = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 7
  %5 = load i32, i32* %c_slweight, align 4
  %6 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slweight2 = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 7
  store i32 %5, i32* %c_slweight2, align 4
  %7 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp eq %struct.canvas* %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv3 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 4
  store %struct.canvas* %10, %struct.canvas** %d_forecv3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i32, i32* %save.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.display*, %struct.display** @display, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 1
  store %struct.display* %13, %struct.display** %c_display, align 8
  %15 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 4
  %16 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool6 = icmp ne %struct.canvas* %16, null
  br i1 %tobool6, label %if.end.13, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %17 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 18
  %type = getelementptr inbounds %struct.event, %struct.event* %c_captev, i32 0, i32 4
  store i32 0, i32* %type, align 4
  %18 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %19 = bitcast %struct.canvas* %18 to i8*
  %20 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_captev8 = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 18
  %data = getelementptr inbounds %struct.event, %struct.event* %c_captev8, i32 0, i32 2
  store i8* %19, i8** %data, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_captev9 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 18
  %handler = getelementptr inbounds %struct.event, %struct.event* %c_captev9, i32 0, i32 1
  store void (%struct.event*, i8*)* @cv_winid_fn, void (%struct.event*, i8*)** %handler, align 8
  %22 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 11
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %c_blank, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %l_cvlist, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_blank10 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 11
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %c_blank10, i32 0, i32 6
  store %struct.LayFuncs* @BlankLf, %struct.LayFuncs** %l_layfn, align 8
  %24 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_blank11 = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 11
  %25 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_blank12 = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 11
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %c_blank12, i32 0, i32 9
  store %struct.layer* %c_blank11, %struct.layer** %l_bottom, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.then.5
  %26 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 9
  %27 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %28 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_layer14 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 9
  store %struct.layer* %27, %struct.layer** %c_layer14, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %29 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_layer15 = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 9
  %30 = load %struct.layer*, %struct.layer** %c_layer15, align 8
  %tobool16 = icmp ne %struct.layer* %30, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %31 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_layer17 = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 9
  %32 = load %struct.layer*, %struct.layer** %c_layer17, align 8
  %l_bottom18 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 9
  %33 = load %struct.layer*, %struct.layer** %l_bottom18, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 7
  %34 = load i8*, i8** %l_data, align 8
  %35 = bitcast i8* %34 to %struct.win*
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.win* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct.win* %cond, %struct.win** %p, align 8
  %36 = load %struct.win*, %struct.win** %p, align 8
  %tobool19 = icmp ne %struct.win* %36, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end
  %37 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 3
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi %struct.layer* [ %w_layer, %cond.true.20 ], [ null, %cond.false.21 ]
  %38 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_layer24 = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 9
  store %struct.layer* %cond23, %struct.layer** %c_layer24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.22, %if.end.13
  %39 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slperp26 = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 4
  %40 = load %struct.canvas*, %struct.canvas** %c_slperp26, align 8
  %tobool27 = icmp ne %struct.canvas* %40, null
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.end.25
  %call = call noalias i8* @calloc(i64 1, i64 312) #3
  %41 = bitcast i8* %call to %struct.canvas*
  %42 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slperp29 = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 4
  store %struct.canvas* %41, %struct.canvas** %c_slperp29, align 8
  %43 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %44 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slperp30 = getelementptr inbounds %struct.canvas, %struct.canvas* %44, i32 0, i32 4
  %45 = load %struct.canvas*, %struct.canvas** %c_slperp30, align 8
  %c_slback = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 5
  store %struct.canvas* %43, %struct.canvas** %c_slback, align 8
  %46 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slperp31 = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 4
  %47 = load %struct.canvas*, %struct.canvas** %c_slperp31, align 8
  call void @CanvasInitBlank(%struct.canvas* %47)
  %48 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slperp32 = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 4
  %49 = load %struct.canvas*, %struct.canvas** %c_slperp32, align 8
  %50 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slperp33 = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 4
  %51 = load %struct.canvas*, %struct.canvas** %c_slperp33, align 8
  %52 = load i32, i32* %save.addr, align 4
  call void @DupLayoutCv(%struct.canvas* %49, %struct.canvas* %51, i32 %52)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %if.end.25
  %53 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %53, i32 0, i32 2
  %54 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool35 = icmp ne %struct.canvas* %54, null
  br i1 %tobool35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.34
  %call37 = call noalias i8* @calloc(i64 1, i64 312) #3
  %55 = bitcast i8* %call37 to %struct.canvas*
  %56 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slnext38 = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 2
  store %struct.canvas* %55, %struct.canvas** %c_slnext38, align 8
  %57 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %58 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slnext39 = getelementptr inbounds %struct.canvas, %struct.canvas* %58, i32 0, i32 2
  %59 = load %struct.canvas*, %struct.canvas** %c_slnext39, align 8
  %c_slprev = getelementptr inbounds %struct.canvas, %struct.canvas* %59, i32 0, i32 3
  store %struct.canvas* %57, %struct.canvas** %c_slprev, align 8
  %60 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slback40 = getelementptr inbounds %struct.canvas, %struct.canvas* %60, i32 0, i32 5
  %61 = load %struct.canvas*, %struct.canvas** %c_slback40, align 8
  %62 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slnext41 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 2
  %63 = load %struct.canvas*, %struct.canvas** %c_slnext41, align 8
  %c_slback42 = getelementptr inbounds %struct.canvas, %struct.canvas* %63, i32 0, i32 5
  store %struct.canvas* %61, %struct.canvas** %c_slback42, align 8
  %64 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slnext43 = getelementptr inbounds %struct.canvas, %struct.canvas* %64, i32 0, i32 2
  %65 = load %struct.canvas*, %struct.canvas** %c_slnext43, align 8
  call void @CanvasInitBlank(%struct.canvas* %65)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.36, %if.end.34
  %66 = load %struct.canvas*, %struct.canvas** %cvf.addr, align 8
  %c_slnext45 = getelementptr inbounds %struct.canvas, %struct.canvas* %66, i32 0, i32 2
  %67 = load %struct.canvas*, %struct.canvas** %c_slnext45, align 8
  store %struct.canvas* %67, %struct.canvas** %cvf.addr, align 8
  %68 = load %struct.canvas*, %struct.canvas** %cvt.addr, align 8
  %c_slnext46 = getelementptr inbounds %struct.canvas, %struct.canvas* %68, i32 0, i32 2
  %69 = load %struct.canvas*, %struct.canvas** %c_slnext46, align 8
  store %struct.canvas* %69, %struct.canvas** %cvt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PutWindowCv(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %p = alloca %struct.win*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %tobool = icmp ne %struct.canvas* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %1, i32 0, i32 4
  %2 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool1 = icmp ne %struct.canvas* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slperp2 = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %c_slperp2, align 8
  call void @PutWindowCv(%struct.canvas* %4)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 9
  %6 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %tobool3 = icmp ne %struct.layer* %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer4 = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 9
  %8 = load %struct.layer*, %struct.layer** %c_layer4, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 7
  %9 = load i8*, i8** %l_data, align 8
  %10 = bitcast i8* %9 to %struct.win*
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.win* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct.win* %cond, %struct.win** %p, align 8
  %11 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_layer5 = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 9
  store %struct.layer* null, %struct.layer** %c_layer5, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %13 = load %struct.win*, %struct.win** %p, align 8
  call void @SetCanvasWindow(%struct.canvas* %12, %struct.win* %13)
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then
  %14 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 2
  %15 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  store %struct.canvas* %15, %struct.canvas** %cv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @RefreshLine(i32, i32, i32, i32) #1

declare void @GotoPos(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
