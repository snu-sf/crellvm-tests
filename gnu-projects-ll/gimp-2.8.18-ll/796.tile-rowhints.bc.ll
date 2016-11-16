; ModuleID = './app/base/tile-rowhints.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct._TileManager = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tile-rowhints.c\00", align 1
@__func__.tile_update_rowhints = private unnamed_addr constant [21 x i8] c"tile_update_rowhints\00", align 1

; Function Attrs: nounwind uwtable
define void @tile_allocate_rowhints(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 8
  %1 = load i8*, i8** %rowhint, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_slice_alloc0(i64 64)
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint1 = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 8
  store i8* %call, i8** %rowhint1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define zeroext i8 @tile_get_rowhint(%struct._Tile* %tile, i32 %yoff) #0 {
entry:
  %retval = alloca i8, align 1
  %tile.addr = alloca %struct._Tile*, align 8
  %yoff.addr = alloca i32, align 4
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %yoff, i32* %yoff.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 8
  %1 = load i8*, i8** %rowhint, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %yoff.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint1 = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 8
  %4 = load i8*, i8** %rowhint1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define void @tile_set_rowhint(%struct._Tile* %tile, i32 %yoff, i8 zeroext %rowhint) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %yoff.addr = alloca i32, align 4
  %rowhint.addr = alloca i8, align 1
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %yoff, i32* %yoff.addr, align 4
  store i8 %rowhint, i8* %rowhint.addr, align 1
  %0 = load i8, i8* %rowhint.addr, align 1
  %1 = load i32, i32* %yoff.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint1 = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 8
  %3 = load i8*, i8** %rowhint1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_update_rowhints(%struct._Tile* %tile, i32 %start, i32 %rows) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %start.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %ewidth = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %hint = alloca i8, align 1
  %alpha = alloca i8, align 1
  %hint53 = alloca i8, align 1
  %alpha59 = alloca i8, align 1
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_allocate_rowhints(%struct._Tile* %0)
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_bpp(%struct._Tile* %1)
  store i32 %call, i32* %bpp, align 4
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i32 @tile_ewidth(%struct._Tile* %2)
  store i32 %call1, i32* %ewidth, align 4
  %3 = load i32, i32* %bpp, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
    i32 2, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load i32, i32* %start.addr, align 4
  store i32 %4, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %add = add nsw i32 %6, %7
  %cmp = icmp slt i32 %5, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %9 = load i32, i32* %y, align 4
  call void @tile_set_rowhint(%struct._Tile* %8, i32 %9, i8 zeroext 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %y, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %12 = load i32, i32* %start.addr, align 4
  %call3 = call i8* @tile_data_pointer(%struct._Tile* %11, i32 0, i32 %12)
  store i8* %call3, i8** %ptr, align 8
  %13 = load i32, i32* %start.addr, align 4
  store i32 %13, i32* %y, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.43, %sw.bb.2
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %start.addr, align 4
  %16 = load i32, i32* %rows.addr, align 4
  %add5 = add nsw i32 %15, %16
  %cmp6 = icmp slt i32 %14, %add5
  br i1 %cmp6, label %for.body.7, label %for.end.45

for.body.7:                                       ; preds = %for.cond.4
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %18 = load i32, i32* %y, align 4
  %call8 = call zeroext i8 @tile_get_rowhint(%struct._Tile* %17, i32 %18)
  store i8 %call8, i8* %hint, align 1
  %19 = load i8, i8* %hint, align 1
  %conv = zext i8 %19 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then, label %if.end.41

if.then:                                          ; preds = %for.body.7
  %20 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8, i8* %arrayidx, align 1
  store i8 %21, i8* %alpha, align 1
  %22 = load i8, i8* %alpha, align 1
  %conv11 = zext i8 %22 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load i8, i8* %alpha, align 1
  %conv14 = zext i8 %23 to i32
  %cmp15 = icmp eq i32 %conv14, 255
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.then
  %24 = load i32, i32* %ewidth, align 4
  %cmp18 = icmp sgt i32 %24, 1
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %if.then.17
  store i32 1, i32* %x, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.32, %if.then.20
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %ewidth, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body.24, label %for.end.34

for.body.24:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %27, 4
  %add25 = add nsw i32 %mul, 3
  %idxprom = sext i32 %add25 to i64
  %28 = load i8*, i8** %ptr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %29 to i32
  %30 = load i8, i8* %alpha, align 1
  %conv28 = zext i8 %30 to i32
  %cmp29 = icmp ne i32 %conv27, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body.24
  %31 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %32 = load i32, i32* %y, align 4
  call void @tile_set_rowhint(%struct._Tile* %31, i32 %32, i8 zeroext 3)
  br label %next_row4

if.end:                                           ; preds = %for.body.24
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %33 = load i32, i32* %x, align 4
  %inc33 = add nsw i32 %33, 1
  store i32 %inc33, i32* %x, align 4
  br label %for.cond.21

for.end.34:                                       ; preds = %for.cond.21
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %if.then.17
  %34 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %35 = load i32, i32* %y, align 4
  %36 = load i8, i8* %alpha, align 1
  %conv36 = zext i8 %36 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  %cond = select i1 %cmp37, i32 2, i32 1
  %conv39 = trunc i32 %cond to i8
  call void @tile_set_rowhint(%struct._Tile* %34, i32 %35, i8 zeroext %conv39)
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  %37 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %38 = load i32, i32* %y, align 4
  call void @tile_set_rowhint(%struct._Tile* %37, i32 %38, i8 zeroext 3)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.end.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %for.body.7
  br label %next_row4

next_row4:                                        ; preds = %if.end.41, %if.then.31
  %39 = load i32, i32* %ewidth, align 4
  %mul42 = mul nsw i32 4, %39
  %40 = load i8*, i8** %ptr, align 8
  %idx.ext = sext i32 %mul42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %next_row4
  %41 = load i32, i32* %y, align 4
  %inc44 = add nsw i32 %41, 1
  store i32 %inc44, i32* %y, align 4
  br label %for.cond.4

for.end.45:                                       ; preds = %for.cond.4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %42 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %43 = load i32, i32* %start.addr, align 4
  %call47 = call i8* @tile_data_pointer(%struct._Tile* %42, i32 0, i32 %43)
  store i8* %call47, i8** %ptr, align 8
  %44 = load i32, i32* %start.addr, align 4
  store i32 %44, i32* %y, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.101, %sw.bb.46
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %start.addr, align 4
  %47 = load i32, i32* %rows.addr, align 4
  %add49 = add nsw i32 %46, %47
  %cmp50 = icmp slt i32 %45, %add49
  br i1 %cmp50, label %for.body.52, label %for.end.103

for.body.52:                                      ; preds = %for.cond.48
  %48 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %49 = load i32, i32* %y, align 4
  %call54 = call zeroext i8 @tile_get_rowhint(%struct._Tile* %48, i32 %49)
  store i8 %call54, i8* %hint53, align 1
  %50 = load i8, i8* %hint53, align 1
  %conv55 = zext i8 %50 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.97

if.then.58:                                       ; preds = %for.body.52
  %51 = load i8*, i8** %ptr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx60, align 1
  store i8 %52, i8* %alpha59, align 1
  %53 = load i8, i8* %alpha59, align 1
  %conv61 = zext i8 %53 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.then.58
  %54 = load i8, i8* %alpha59, align 1
  %conv65 = zext i8 %54 to i32
  %cmp66 = icmp eq i32 %conv65, 255
  br i1 %cmp66, label %if.then.68, label %if.else.95

if.then.68:                                       ; preds = %lor.lhs.false.64, %if.then.58
  %55 = load i32, i32* %ewidth, align 4
  %cmp69 = icmp sgt i32 %55, 1
  br i1 %cmp69, label %if.then.71, label %if.end.89

if.then.71:                                       ; preds = %if.then.68
  store i32 1, i32* %x, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.86, %if.then.71
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %ewidth, align 4
  %cmp73 = icmp slt i32 %56, %57
  br i1 %cmp73, label %for.body.75, label %for.end.88

for.body.75:                                      ; preds = %for.cond.72
  %58 = load i32, i32* %x, align 4
  %mul76 = mul nsw i32 %58, 2
  %add77 = add nsw i32 %mul76, 1
  %idxprom78 = sext i32 %add77 to i64
  %59 = load i8*, i8** %ptr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %59, i64 %idxprom78
  %60 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %60 to i32
  %61 = load i8, i8* %alpha59, align 1
  %conv81 = zext i8 %61 to i32
  %cmp82 = icmp ne i32 %conv80, %conv81
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body.75
  %62 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %63 = load i32, i32* %y, align 4
  call void @tile_set_rowhint(%struct._Tile* %62, i32 %63, i8 zeroext 3)
  br label %next_row2

if.end.85:                                        ; preds = %for.body.75
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %64 = load i32, i32* %x, align 4
  %inc87 = add nsw i32 %64, 1
  store i32 %inc87, i32* %x, align 4
  br label %for.cond.72

for.end.88:                                       ; preds = %for.cond.72
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.then.68
  %65 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %66 = load i32, i32* %y, align 4
  %67 = load i8, i8* %alpha59, align 1
  %conv90 = zext i8 %67 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  %cond93 = select i1 %cmp91, i32 2, i32 1
  %conv94 = trunc i32 %cond93 to i8
  call void @tile_set_rowhint(%struct._Tile* %65, i32 %66, i8 zeroext %conv94)
  br label %if.end.96

if.else.95:                                       ; preds = %lor.lhs.false.64
  %68 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %69 = load i32, i32* %y, align 4
  call void @tile_set_rowhint(%struct._Tile* %68, i32 %69, i8 zeroext 3)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.end.89
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %for.body.52
  br label %next_row2

next_row2:                                        ; preds = %if.end.97, %if.then.84
  %70 = load i32, i32* %ewidth, align 4
  %mul98 = mul nsw i32 2, %70
  %71 = load i8*, i8** %ptr, align 8
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %71, i64 %idx.ext99
  store i8* %add.ptr100, i8** %ptr, align 8
  br label %for.inc.101

for.inc.101:                                      ; preds = %next_row2
  %72 = load i32, i32* %y, align 4
  %inc102 = add nsw i32 %72, 1
  store i32 %inc102, i32* %y, align 4
  br label %for.cond.48

for.end.103:                                      ; preds = %for.cond.48
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 260, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tile_update_rowhints, i32 0, i32 0))
  br label %sw.epilog

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %do.end, %for.end.103, %for.end.45, %for.end
  ret void
}

declare i32 @tile_bpp(%struct._Tile*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare void @g_log(i8*, i32, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
