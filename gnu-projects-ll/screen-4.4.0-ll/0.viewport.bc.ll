; ModuleID = './viewport.bc'
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

; Function Attrs: nounwind uwtable
define i32 @RethinkDisplayViewports() #0 {
entry:
  %retval = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %vpn = alloca %struct.viewport*, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 3
  %1 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 8
  %4 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %4, %struct.viewport** %vp, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool2 = icmp ne %struct.viewport* %5, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_canvas = getelementptr inbounds %struct.viewport, %struct.viewport* %6, i32 0, i32 1
  store %struct.canvas* null, %struct.canvas** %v_canvas, align 8
  %7 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %7, i32 0, i32 0
  %8 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %8, %struct.viewport** %vpn, align 8
  %9 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %10 = bitcast %struct.viewport* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 40, i32 1, i1 false)
  %11 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %12 = bitcast %struct.viewport* %11 to i8*
  call void @free(i8* %12) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load %struct.viewport*, %struct.viewport** %vpn, align 8
  store %struct.viewport* %13, %struct.viewport** %vp, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist4 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 8
  store %struct.viewport* null, %struct.viewport** %c_vplist4, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 0
  %16 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %16, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmin = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 8
  store i32 -1, i32* %d_vpxmin, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmax = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 9
  store i32 -1, i32* %d_vpxmax, align 4
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist7 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 3
  %20 = load %struct.canvas*, %struct.canvas** %d_cvlist7, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.34, %for.end.6
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %21, null
  br i1 %tobool9, label %for.body.10, label %for.end.36

for.body.10:                                      ; preds = %for.cond.8
  %call = call noalias i8* @malloc(i64 40) #1
  %22 = bitcast i8* %call to %struct.viewport*
  store %struct.viewport* %22, %struct.viewport** %vp, align 8
  %cmp = icmp eq %struct.viewport* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.10
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %24 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_canvas11 = getelementptr inbounds %struct.viewport, %struct.viewport* %24, i32 0, i32 1
  store %struct.canvas* %23, %struct.canvas** %v_canvas11, align 8
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 14
  %26 = load i32, i32* %c_xs, align 4
  %27 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %27, i32 0, i32 4
  store i32 %26, i32* %v_xs, align 4
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 16
  %29 = load i32, i32* %c_ys, align 4
  %30 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %30, i32 0, i32 6
  store i32 %29, i32* %v_ys, align 4
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 15
  %32 = load i32, i32* %c_xe, align 4
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %33, i32 0, i32 5
  store i32 %32, i32* %v_xe, align 4
  %34 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %34, i32 0, i32 17
  %35 = load i32, i32* %c_ye, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 7
  store i32 %35, i32* %v_ye, align 4
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 12
  %38 = load i32, i32* %c_xoff, align 4
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 2
  store i32 %38, i32* %v_xoff, align 4
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 13
  %41 = load i32, i32* %c_yoff, align 4
  %42 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %42, i32 0, i32 3
  store i32 %41, i32* %v_yoff, align 4
  %43 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist12 = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 8
  %44 = load %struct.viewport*, %struct.viewport** %c_vplist12, align 8
  %45 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next13 = getelementptr inbounds %struct.viewport, %struct.viewport* %45, i32 0, i32 0
  store %struct.viewport* %44, %struct.viewport** %v_next13, align 8
  %46 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist14 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 8
  store %struct.viewport* %46, %struct.viewport** %c_vplist14, align 8
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs15 = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 14
  %49 = load i32, i32* %c_xs15, align 4
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmin16 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 8
  %51 = load i32, i32* %d_vpxmin16, align 4
  %cmp17 = icmp slt i32 %49, %51
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmin18 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 8
  %53 = load i32, i32* %d_vpxmin18, align 4
  %cmp19 = icmp eq i32 %53, -1
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %lor.lhs.false, %if.end
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs21 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 14
  %55 = load i32, i32* %c_xs21, align 4
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmin22 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 8
  store i32 %55, i32* %d_vpxmin22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %lor.lhs.false
  %57 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe24 = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 15
  %58 = load i32, i32* %c_xe24, align 4
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmax25 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 9
  %60 = load i32, i32* %d_vpxmax25, align 4
  %cmp26 = icmp sgt i32 %58, %60
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmax28 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 9
  %62 = load i32, i32* %d_vpxmax28, align 4
  %cmp29 = icmp eq i32 %62, -1
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.23
  %63 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe31 = getelementptr inbounds %struct.canvas, %struct.canvas* %63, i32 0, i32 15
  %64 = load i32, i32* %c_xe31, align 4
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmax32 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 9
  store i32 %64, i32* %d_vpxmax32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %lor.lhs.false.27
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %66 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next35 = getelementptr inbounds %struct.canvas, %struct.canvas* %66, i32 0, i32 0
  %67 = load %struct.canvas*, %struct.canvas** %c_next35, align 8
  store %struct.canvas* %67, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.36:                                       ; preds = %for.cond.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.36, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @RethinkViewportOffsets(%struct.canvas* %cv) #0 {
entry:
  %cv.addr = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  store %struct.canvas* %cv, %struct.canvas** %cv.addr, align 8
  %0 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %0, i32 0, i32 8
  %1 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %1, %struct.viewport** %vp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool = icmp ne %struct.viewport* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 12
  %4 = load i32, i32* %c_xoff, align 4
  %5 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %5, i32 0, i32 2
  store i32 %4, i32* %v_xoff, align 4
  %6 = load %struct.canvas*, %struct.canvas** %cv.addr, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 13
  %7 = load i32, i32* %c_yoff, align 4
  %8 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %8, i32 0, i32 3
  store i32 %7, i32* %v_yoff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %9, i32 0, i32 0
  %10 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %10, %struct.viewport** %vp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
