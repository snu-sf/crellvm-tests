; ModuleID = './MultiSource.Benchmarks.Prolangs-C/181.TimberWolfMC.move.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT = type { i32, [100 x [3 x [3 x i32]]], [3 x [3 x i32]], [3 x [3 x i32]] }

@mt = internal global %struct.MT* null, align 8

; Function Attrs: nounwind uwtable
define void @point(i32* %x, i32* %y) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct.MT*, %struct.MT** @mt, align 8
  %cmp = icmp eq %struct.MT* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %x.addr, align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %xx, align 4
  %3 = load i32*, i32** %y.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %yy, align 4
  %5 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTPoint(%struct.MT* %5, i32* %xx, i32* %yy)
  %6 = load i32, i32* %xx, align 4
  %7 = load i32*, i32** %x.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %yy, align 4
  %9 = load i32*, i32** %y.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @MTPoint(%struct.MT*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @rect(i32* %l, i32* %b, i32* %r, i32* %t) #0 {
entry:
  %l.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %r.addr = alloca i32*, align 8
  %t.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %l, i32** %l.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %r, i32** %r.addr, align 8
  store i32* %t, i32** %t.addr, align 8
  %0 = load i32*, i32** %l.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @point(i32* %0, i32* %1)
  %2 = load i32*, i32** %r.addr, align 8
  %3 = load i32*, i32** %t.addr, align 8
  call void @point(i32* %2, i32* %3)
  %4 = load i32*, i32** %l.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %r.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %l.addr, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %temp, align 4
  %10 = load i32*, i32** %r.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %l.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %temp, align 4
  %14 = load i32*, i32** %r.addr, align 8
  store i32 %13, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32*, i32** %b.addr, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %t.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp1 = icmp sgt i32 %16, %18
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %19 = load i32*, i32** %b.addr, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %temp, align 4
  %21 = load i32*, i32** %t.addr, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %b.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %temp, align 4
  %25 = load i32*, i32** %t.addr, align 8
  store i32 %24, i32* %25, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @move(i32 %moveType) #0 {
entry:
  %moveType.addr = alloca i32, align 4
  store i32 %moveType, i32* %moveType.addr, align 4
  %0 = load %struct.MT*, %struct.MT** @mt, align 8
  %cmp = icmp eq %struct.MT* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.MT* (...) @MTBegin()
  store %struct.MT* %call, %struct.MT** @mt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTIdentity(%struct.MT* %1)
  %2 = load i32, i32* %moveType.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %3 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTMY(%struct.MT* %3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %4 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTMX(%struct.MT* %4)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %5 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTRotate(%struct.MT* %5, i32 -1, i32 0)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %6 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTMX(%struct.MT* %6)
  %7 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTRotate(%struct.MT* %7, i32 0, i32 1)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %8 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTMX(%struct.MT* %8)
  %9 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTRotate(%struct.MT* %9, i32 0, i32 -1)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %10 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTRotate(%struct.MT* %10, i32 0, i32 1)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %11 = load %struct.MT*, %struct.MT** @mt, align 8
  call void @MTRotate(%struct.MT* %11, i32 0, i32 -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.1, %sw.bb.2, %sw.bb.3, %sw.bb.4, %sw.bb.5, %sw.bb.6, %sw.bb.7, %if.end
  ret void
}

declare %struct.MT* @MTBegin(...) #1

declare void @MTIdentity(%struct.MT*) #1

declare void @MTMY(%struct.MT*) #1

declare void @MTMX(%struct.MT*) #1

declare void @MTRotate(%struct.MT*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
