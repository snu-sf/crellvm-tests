; ModuleID = './MultiSource.Applications.ClamAV/39.libclamav_wwunpack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"in wwunpack\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WWPack: next chunk out ouf file, giving up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"WWPack: inconsistent/hacked data, go figure!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"WWPack: Can't allocate %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"WWPack: packed data out of bounds, giving up.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"WWPack: unpacking failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"WWPack: found OEP @%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @wwunpack(i8* %exe, i32 %exesz, i32 %headsize, i32 %min, i32 %wwprva, i32 %e_lfanew, i8* %wwp, i32 %wwpsz, i16 zeroext %sects) #0 {
entry:
  %retval = alloca i32, align 4
  %exe.addr = alloca i8*, align 8
  %exesz.addr = alloca i32, align 4
  %headsize.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %wwprva.addr = alloca i32, align 4
  %e_lfanew.addr = alloca i32, align 4
  %wwp.addr = alloca i8*, align 8
  %wwpsz.addr = alloca i32, align 4
  %sects.addr = alloca i16, align 2
  %stuff = alloca i8*, align 8
  %packed = alloca i8*, align 8
  %unpacked = alloca i8*, align 8
  %rva = alloca i32, align 4
  %csize = alloca i32, align 4
  %v = alloca i32, align 4
  %r = alloca i32, align 4
  store i8* %exe, i8** %exe.addr, align 8
  store i32 %exesz, i32* %exesz.addr, align 4
  store i32 %headsize, i32* %headsize.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %wwprva, i32* %wwprva.addr, align 4
  store i32 %e_lfanew, i32* %e_lfanew.addr, align 4
  store i8* %wwp, i8** %wwp.addr, align 8
  store i32 %wwpsz, i32* %wwpsz.addr, align 4
  store i16 %sects, i16* %sects.addr, align 2
  %0 = load i8*, i8** %wwp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 673
  store i8* %add.ptr, i8** %stuff, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.60
  %1 = load i32, i32* %wwpsz.addr, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %wwpsz.addr, align 4
  %cmp1 = icmp ule i32 17, %2
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i8*, i8** %stuff, align 8
  %4 = load i8*, i8** %wwp.addr, align 8
  %cmp3 = icmp uge i8* %3, %4
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i8*, i8** %stuff, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 17
  %6 = load i8*, i8** %wwp.addr, align 8
  %7 = load i32, i32* %wwpsz.addr, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %cmp7 = icmp ule i8* %add.ptr5, %add.ptr6
  br i1 %cmp7, label %land.lhs.true.8, label %if.then

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %8 = load i8*, i8** %stuff, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %8, i64 17
  %9 = load i8*, i8** %wwp.addr, align 8
  %cmp10 = icmp ugt i8* %add.ptr9, %9
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8
  %10 = load i8*, i8** %stuff, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 8
  %11 = bitcast i8* %add.ptr11 to i32*
  %12 = load i32, i32* %11, align 4
  %mul = mul nsw i32 %12, 4
  store i32 %mul, i32* %csize, align 4
  %13 = load i8*, i8** %stuff, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %13, i64 12
  %14 = bitcast i8* %add.ptr12 to i32*
  %15 = load i32, i32* %14, align 4
  %add = add i32 %15, 4
  %cmp13 = icmp ne i32 %mul, %add
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %16 = load i32, i32* %wwprva.addr, align 4
  %17 = load i8*, i8** %stuff, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %sub = sub i32 %16, %19
  store i32 %sub, i32* %rva, align 4
  %20 = load i32, i32* %csize, align 4
  %conv = zext i32 %20 to i64
  %call = call i8* @cli_calloc(i64 %conv, i64 1)
  store i8* %call, i8** %packed, align 8
  %cmp16 = icmp eq i8* %call, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %21 = load i32, i32* %csize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 %21)
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %22 = load i8*, i8** %exe.addr, align 8
  %23 = load i32, i32* %headsize.addr, align 4
  %idx.ext20 = zext i32 %23 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %22, i64 %idx.ext20
  %24 = load i32, i32* %rva, align 4
  %idx.ext22 = zext i32 %24 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr21, i64 %idx.ext22
  %25 = load i32, i32* %min.addr, align 4
  %idx.ext24 = zext i32 %25 to i64
  %idx.neg = sub i64 0, %idx.ext24
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg
  store i8* %add.ptr25, i8** %unpacked, align 8
  %26 = load i32, i32* %exesz.addr, align 4
  %cmp26 = icmp ugt i32 %26, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.49

land.lhs.true.28:                                 ; preds = %if.end.19
  %27 = load i32, i32* %csize, align 4
  %cmp29 = icmp ugt i32 %27, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.then.49

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %28 = load i32, i32* %csize, align 4
  %29 = load i32, i32* %exesz.addr, align 4
  %cmp32 = icmp ule i32 %28, %29
  br i1 %cmp32, label %land.lhs.true.34, label %if.then.49

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %30 = load i8*, i8** %unpacked, align 8
  %31 = load i8*, i8** %exe.addr, align 8
  %cmp35 = icmp uge i8* %30, %31
  br i1 %cmp35, label %land.lhs.true.37, label %if.then.49

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %32 = load i8*, i8** %unpacked, align 8
  %33 = load i32, i32* %csize, align 4
  %idx.ext38 = zext i32 %33 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %32, i64 %idx.ext38
  %34 = load i8*, i8** %exe.addr, align 8
  %35 = load i32, i32* %exesz.addr, align 4
  %idx.ext40 = zext i32 %35 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %34, i64 %idx.ext40
  %cmp42 = icmp ule i8* %add.ptr39, %add.ptr41
  br i1 %cmp42, label %land.lhs.true.44, label %if.then.49

land.lhs.true.44:                                 ; preds = %land.lhs.true.37
  %36 = load i8*, i8** %unpacked, align 8
  %37 = load i32, i32* %csize, align 4
  %idx.ext45 = zext i32 %37 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %36, i64 %idx.ext45
  %38 = load i8*, i8** %exe.addr, align 8
  %cmp47 = icmp ugt i8* %add.ptr46, %38
  br i1 %cmp47, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.44, %land.lhs.true.37, %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true.28, %if.end.19
  %39 = load i8*, i8** %packed, align 8
  call void @free(i8* %39) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.44
  %40 = load i8*, i8** %packed, align 8
  %41 = load i8*, i8** %unpacked, align 8
  %42 = load i32, i32* %csize, align 4
  %conv51 = zext i32 %42 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %conv51, i32 1, i1 false)
  %43 = load i8*, i8** %packed, align 8
  %44 = load i8*, i8** %unpacked, align 8
  %45 = load i32, i32* %csize, align 4
  %46 = load i32, i32* %exesz.addr, align 4
  %conv52 = zext i32 %46 to i64
  %47 = load i8*, i8** %unpacked, align 8
  %48 = load i8*, i8** %exe.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub53 = sub nsw i64 %conv52, %sub.ptr.sub
  %conv54 = trunc i64 %sub53 to i32
  %call55 = call i32 @wunpsect(i8* %43, i8* %44, i32 %45, i32 %conv54)
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.50
  %49 = load i8*, i8** %packed, align 8
  call void @free(i8* %49) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.50
  %50 = load i8*, i8** %packed, align 8
  call void @free(i8* %50) #3
  %51 = load i8*, i8** %stuff, align 8
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 16
  %52 = load i8, i8* %arrayidx, align 1
  %tobool58 = icmp ne i8 %52, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.57
  br label %while.end

if.end.60:                                        ; preds = %if.end.57
  %53 = load i8*, i8** %stuff, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %53, i64 17
  store i8* %add.ptr61, i8** %stuff, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.59
  %54 = load i8*, i8** %exe.addr, align 8
  %55 = load i32, i32* %e_lfanew.addr, align 4
  %idx.ext62 = zext i32 %55 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %54, i64 %idx.ext62
  store i8* %add.ptr63, i8** %stuff, align 8
  %56 = load i16, i16* %sects.addr, align 2
  %conv64 = zext i16 %56 to i32
  %and = and i32 %conv64, 255
  %conv65 = trunc i32 %and to i8
  %57 = load i8*, i8** %stuff, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %57, i64 6
  store i8 %conv65, i8* %arrayidx66, align 1
  %58 = load i16, i16* %sects.addr, align 2
  %conv67 = zext i16 %58 to i32
  %shr = ashr i32 %conv67, 8
  %conv68 = trunc i32 %shr to i8
  %59 = load i8*, i8** %stuff, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %59, i64 7
  store i8 %conv68, i8* %arrayidx69, align 1
  %60 = load i8*, i8** %wwp.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %60, i64 661
  %61 = bitcast i8* %add.ptr70 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %wwprva.addr, align 4
  %add71 = add i32 %62, %63
  %add72 = add i32 %add71, 665
  store i32 %add72, i32* %csize, align 4
  %64 = load i32, i32* %csize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %64)
  %65 = load i32, i32* %csize, align 4
  %66 = load i8*, i8** %stuff, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %66, i64 40
  %67 = bitcast i8* %add.ptr73 to i32*
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** %stuff, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %68, i64 80
  %69 = bitcast i8* %add.ptr74 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %wwpsz.addr, align 4
  %div = udiv i32 %71, 4096
  %72 = load i32, i32* %wwpsz.addr, align 4
  %rem = urem i32 %72, 4096
  %cmp75 = icmp ne i32 %rem, 0
  %conv76 = zext i1 %cmp75 to i32
  %add77 = add i32 %div, %conv76
  %mul78 = mul i32 %add77, 4096
  %sub79 = sub i32 %70, %mul78
  store i32 %sub79, i32* %csize, align 4
  %73 = load i32, i32* %csize, align 4
  %74 = load i8*, i8** %stuff, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %74, i64 80
  %75 = bitcast i8* %add.ptr80 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** %stuff, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %76, i64 20
  %77 = bitcast i8* %add.ptr81 to i32*
  %78 = load i32, i32* %77, align 4
  %and82 = and i32 %78, 65535
  %add83 = add nsw i32 24, %and82
  %79 = load i8*, i8** %stuff, align 8
  %idx.ext84 = sext i32 %add83 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %79, i64 %idx.ext84
  store i8* %add.ptr85, i8** %stuff, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.97, %while.end
  %80 = load i16, i16* %sects.addr, align 2
  %dec = add i16 %80, -1
  store i16 %dec, i16* %sects.addr, align 2
  %tobool86 = icmp ne i16 %80, 0
  br i1 %tobool86, label %while.body.87, label %while.end.111

while.body.87:                                    ; preds = %while.cond
  %81 = load i8*, i8** %stuff, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %81, i64 8
  %82 = bitcast i8* %add.ptr88 to i32*
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %v, align 4
  %84 = load i8*, i8** %stuff, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %84, i64 16
  %85 = bitcast i8* %add.ptr89 to i32*
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %r, align 4
  %87 = load i32, i32* %r, align 4
  %88 = load i32, i32* %v, align 4
  %cmp90 = icmp ugt i32 %87, %88
  br i1 %cmp90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.87
  %89 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.87
  %90 = load i32, i32* %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %89, %cond.true ], [ %90, %cond.false ]
  %div92 = udiv i32 %cond, 4096
  %91 = load i32, i32* %r, align 4
  %92 = load i32, i32* %v, align 4
  %cmp93 = icmp ugt i32 %91, %92
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end
  %93 = load i32, i32* %r, align 4
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end
  %94 = load i32, i32* %v, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i32 [ %93, %cond.true.95 ], [ %94, %cond.false.96 ]
  %rem99 = urem i32 %cond98, 4096
  %cmp100 = icmp ne i32 %rem99, 0
  %conv101 = zext i1 %cmp100 to i32
  %add102 = add i32 %div92, %conv101
  %mul103 = mul i32 %add102, 4096
  store i32 %mul103, i32* %csize, align 4
  %95 = load i32, i32* %csize, align 4
  %96 = load i8*, i8** %stuff, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %96, i64 8
  %97 = bitcast i8* %add.ptr104 to i32*
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %csize, align 4
  %99 = load i8*, i8** %stuff, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %99, i64 16
  %100 = bitcast i8* %add.ptr105 to i32*
  store i32 %98, i32* %100, align 4
  %101 = load i8*, i8** %stuff, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %101, i64 12
  %102 = bitcast i8* %add.ptr106 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %min.addr, align 4
  %sub107 = sub i32 %103, %104
  %105 = load i32, i32* %headsize.addr, align 4
  %add108 = add i32 %sub107, %105
  %106 = load i8*, i8** %stuff, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %106, i64 20
  %107 = bitcast i8* %add.ptr109 to i32*
  store i32 %add108, i32* %107, align 4
  %108 = load i8*, i8** %stuff, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %108, i64 40
  store i8* %add.ptr110, i8** %stuff, align 8
  br label %while.cond

while.end.111:                                    ; preds = %while.cond
  %109 = load i8*, i8** %stuff, align 8
  call void @llvm.memset.p0i8.i64(i8* %109, i8 0, i64 40, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.111, %if.then.56, %if.then.49, %if.then.18, %if.then.14, %if.then
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @wunpsect(i8* %packed, i8* %unpacked, i32 %psize, i32 %usize) #0 {
entry:
  %retval = alloca i32, align 4
  %packed.addr = alloca i8*, align 8
  %unpacked.addr = alloca i8*, align 8
  %psize.addr = alloca i32, align 4
  %usize.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %bitmap = alloca i32, align 4
  %eax = alloca i32, align 4
  %bits = alloca i8, align 1
  %lostbit = alloca i32, align 4
  %getmorestuff = alloca i32, align 4
  %backbytes = alloca i16, align 2
  %backsize = alloca i16, align 2
  %oal = alloca i8, align 1
  %fetchbits = alloca i8, align 1
  %bk = alloca i16, align 2
  %c = alloca i8, align 1
  %d = alloca i16, align 2
  store i8* %packed, i8** %packed.addr, align 8
  store i8* %unpacked, i8** %unpacked.addr, align 8
  store i32 %psize, i32* %psize.addr, align 4
  store i32 %usize, i32* %usize.addr, align 4
  %0 = load i8*, i8** %packed.addr, align 8
  store i8* %0, i8** %src, align 8
  %1 = load i8*, i8** %unpacked.addr, align 8
  store i8* %1, i8** %dst, align 8
  %2 = load i8*, i8** %packed.addr, align 8
  %3 = load i32, i32* %psize.addr, align 4
  %call = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bitmap, align 4
  store i32 %4, i32* %eax, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.39, %if.end.88, %if.end.190, %while.end.468
  %5 = load i32, i32* %bitmap, align 4
  %shr = lshr i32 %5, 31
  store i32 %shr, i32* %lostbit, align 4
  %6 = load i32, i32* %bitmap, align 4
  %shl = shl i32 %6, 1
  store i32 %shl, i32* %bitmap, align 4
  %7 = load i8, i8* %bits, align 1
  %dec = add i8 %7, -1
  store i8 %dec, i8* %bits, align 1
  %8 = load i32, i32* %lostbit, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.end.41, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8, i8* %bits, align 1
  %conv = zext i8 %9 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.end.41

if.then.3:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %psize.addr, align 4
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.then.38

land.lhs.true.5:                                  ; preds = %if.then.3
  %11 = load i32, i32* %psize.addr, align 4
  %cmp6 = icmp ule i32 1, %11
  br i1 %cmp6, label %land.lhs.true.8, label %if.then.38

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %12 = load i8*, i8** %src, align 8
  %13 = load i8*, i8** %packed.addr, align 8
  %cmp9 = icmp uge i8* %12, %13
  br i1 %cmp9, label %land.lhs.true.11, label %if.then.38

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %14 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8*, i8** %packed.addr, align 8
  %16 = load i32, i32* %psize.addr, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %cmp13 = icmp ule i8* %add.ptr, %add.ptr12
  br i1 %cmp13, label %land.lhs.true.15, label %if.then.38

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %17 = load i8*, i8** %src, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8*, i8** %packed.addr, align 8
  %cmp17 = icmp ugt i8* %add.ptr16, %18
  br i1 %cmp17, label %land.lhs.true.19, label %if.then.38

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %19 = load i32, i32* %usize.addr, align 4
  %cmp20 = icmp ugt i32 %19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.38

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %20 = load i32, i32* %usize.addr, align 4
  %cmp23 = icmp ule i32 1, %20
  br i1 %cmp23, label %land.lhs.true.25, label %if.then.38

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %21 = load i8*, i8** %dst, align 8
  %22 = load i8*, i8** %unpacked.addr, align 8
  %cmp26 = icmp uge i8* %21, %22
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.38

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %23 = load i8*, i8** %dst, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8*, i8** %unpacked.addr, align 8
  %25 = load i32, i32* %usize.addr, align 4
  %idx.ext30 = zext i32 %25 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %24, i64 %idx.ext30
  %cmp32 = icmp ule i8* %add.ptr29, %add.ptr31
  br i1 %cmp32, label %land.lhs.true.34, label %if.then.38

land.lhs.true.34:                                 ; preds = %land.lhs.true.28
  %26 = load i8*, i8** %dst, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8*, i8** %unpacked.addr, align 8
  %cmp36 = icmp ugt i8* %add.ptr35, %27
  br i1 %cmp36, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.34, %land.lhs.true.28, %land.lhs.true.25, %land.lhs.true.22, %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true.11, %land.lhs.true.8, %land.lhs.true.5, %if.then.3
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.34
  %28 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %dst, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr40, i8** %dst, align 8
  store i8 %29, i8* %30, align 1
  br label %while.body

if.end.41:                                        ; preds = %land.lhs.true, %while.body
  %31 = load i8, i8* %bits, align 1
  %tobool42 = icmp ne i8 %31, 0
  br i1 %tobool42, label %if.end.92, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  %32 = load i8*, i8** %packed.addr, align 8
  %33 = load i32, i32* %psize.addr, align 4
  %call44 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %32, i32 %33)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.43
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.43
  %34 = load i32, i32* %bitmap, align 4
  store i32 %34, i32* %eax, align 4
  %35 = load i32, i32* %lostbit, align 4
  %tobool48 = icmp ne i32 %35, 0
  br i1 %tobool48, label %if.end.91, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %36 = load i32, i32* %psize.addr, align 4
  %cmp50 = icmp ugt i32 %36, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.then.87

land.lhs.true.52:                                 ; preds = %if.then.49
  %37 = load i32, i32* %psize.addr, align 4
  %cmp53 = icmp ule i32 1, %37
  br i1 %cmp53, label %land.lhs.true.55, label %if.then.87

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %38 = load i8*, i8** %src, align 8
  %39 = load i8*, i8** %packed.addr, align 8
  %cmp56 = icmp uge i8* %38, %39
  br i1 %cmp56, label %land.lhs.true.58, label %if.then.87

land.lhs.true.58:                                 ; preds = %land.lhs.true.55
  %40 = load i8*, i8** %src, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8*, i8** %packed.addr, align 8
  %42 = load i32, i32* %psize.addr, align 4
  %idx.ext60 = zext i32 %42 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %41, i64 %idx.ext60
  %cmp62 = icmp ule i8* %add.ptr59, %add.ptr61
  br i1 %cmp62, label %land.lhs.true.64, label %if.then.87

land.lhs.true.64:                                 ; preds = %land.lhs.true.58
  %43 = load i8*, i8** %src, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8*, i8** %packed.addr, align 8
  %cmp66 = icmp ugt i8* %add.ptr65, %44
  br i1 %cmp66, label %land.lhs.true.68, label %if.then.87

land.lhs.true.68:                                 ; preds = %land.lhs.true.64
  %45 = load i32, i32* %usize.addr, align 4
  %cmp69 = icmp ugt i32 %45, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.then.87

land.lhs.true.71:                                 ; preds = %land.lhs.true.68
  %46 = load i32, i32* %usize.addr, align 4
  %cmp72 = icmp ule i32 1, %46
  br i1 %cmp72, label %land.lhs.true.74, label %if.then.87

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %47 = load i8*, i8** %dst, align 8
  %48 = load i8*, i8** %unpacked.addr, align 8
  %cmp75 = icmp uge i8* %47, %48
  br i1 %cmp75, label %land.lhs.true.77, label %if.then.87

land.lhs.true.77:                                 ; preds = %land.lhs.true.74
  %49 = load i8*, i8** %dst, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8*, i8** %unpacked.addr, align 8
  %51 = load i32, i32* %usize.addr, align 4
  %idx.ext79 = zext i32 %51 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %50, i64 %idx.ext79
  %cmp81 = icmp ule i8* %add.ptr78, %add.ptr80
  br i1 %cmp81, label %land.lhs.true.83, label %if.then.87

land.lhs.true.83:                                 ; preds = %land.lhs.true.77
  %52 = load i8*, i8** %dst, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8*, i8** %unpacked.addr, align 8
  %cmp85 = icmp ugt i8* %add.ptr84, %53
  br i1 %cmp85, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.83, %land.lhs.true.77, %land.lhs.true.74, %land.lhs.true.71, %land.lhs.true.68, %land.lhs.true.64, %land.lhs.true.58, %land.lhs.true.55, %land.lhs.true.52, %if.then.49
  store i32 1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %land.lhs.true.83
  %54 = load i8*, i8** %src, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr89, i8** %src, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %dst, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr90, i8** %dst, align 8
  store i8 %55, i8* %56, align 1
  br label %while.body

if.end.91:                                        ; preds = %if.end.47
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.41
  %57 = load i8*, i8** %packed.addr, align 8
  %58 = load i32, i32* %psize.addr, align 4
  %call93 = call i32 @getbits(i8 zeroext 2, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %57, i32 %58)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  store i32 1, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.92
  %59 = load i32, i32* %eax, align 4
  %and = and i32 %59, 255
  %cmp97 = icmp uge i32 %and, 3
  br i1 %cmp97, label %if.then.99, label %if.end.201

if.then.99:                                       ; preds = %if.end.96
  %60 = load i8*, i8** %packed.addr, align 8
  %61 = load i32, i32* %psize.addr, align 4
  %call100 = call i32 @getbits(i8 zeroext 2, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %60, i32 %61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.99
  store i32 1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.99
  %62 = load i32, i32* %eax, align 4
  %and104 = and i32 %62, 255
  %add = add i32 %and104, 5
  %conv105 = trunc i32 %add to i8
  store i8 %conv105, i8* %fetchbits, align 1
  %63 = load i32, i32* %eax, align 4
  %dec106 = add i32 %63, -1
  store i32 %dec106, i32* %eax, align 4
  %64 = load i32, i32* %eax, align 4
  %and107 = and i32 %64, 65535
  %conv108 = trunc i32 %and107 to i16
  %conv109 = sext i16 %conv108 to i32
  %cmp110 = icmp sle i32 %conv109, 0
  br i1 %cmp110, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %if.end.103
  %65 = load i8, i8* %fetchbits, align 1
  %conv113 = zext i8 %65 to i32
  %shl114 = shl i32 1, %conv113
  %conv115 = trunc i32 %shl114 to i16
  store i16 %conv115, i16* %backbytes, align 2
  %66 = load i16, i16* %backbytes, align 2
  %conv116 = zext i16 %66 to i32
  %and117 = and i32 %conv116, 65280
  %67 = load i16, i16* %backbytes, align 2
  %conv118 = zext i16 %67 to i32
  %sub = sub nsw i32 %conv118, 31
  %and119 = and i32 %sub, 255
  %or = or i32 %and117, %and119
  %conv120 = trunc i32 %or to i16
  store i16 %conv120, i16* %backbytes, align 2
  br label %if.end.127

if.else:                                          ; preds = %if.end.103
  %68 = load i8, i8* %fetchbits, align 1
  %inc = add i8 %68, 1
  store i8 %inc, i8* %fetchbits, align 1
  %69 = load i8, i8* %fetchbits, align 1
  %conv121 = zext i8 %69 to i32
  %shl122 = shl i32 1, %conv121
  %conv123 = trunc i32 %shl122 to i16
  store i16 %conv123, i16* %backbytes, align 2
  %70 = load i16, i16* %backbytes, align 2
  %conv124 = zext i16 %70 to i32
  %sub125 = sub nsw i32 %conv124, 159
  %conv126 = trunc i32 %sub125 to i16
  store i16 %conv126, i16* %backbytes, align 2
  br label %if.end.127

if.end.127:                                       ; preds = %if.else, %if.then.112
  %71 = load i8, i8* %fetchbits, align 1
  %72 = load i8*, i8** %packed.addr, align 8
  %73 = load i32, i32* %psize.addr, align 4
  %call128 = call i32 @getbits(i8 zeroext %71, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %72, i32 %73)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.127
  %74 = load i32, i32* %eax, align 4
  %and132 = and i32 %74, 65535
  %cmp133 = icmp eq i32 %and132, 511
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.131
  br label %while.end.469

if.end.136:                                       ; preds = %if.end.131
  %75 = load i32, i32* %eax, align 4
  %and137 = and i32 %75, 65535
  store i32 %and137, i32* %eax, align 4
  %76 = load i32, i32* %eax, align 4
  %77 = load i16, i16* %backbytes, align 2
  %conv138 = zext i16 %77 to i32
  %add139 = add i32 %conv138, %76
  %conv140 = trunc i32 %add139 to i16
  store i16 %conv140, i16* %backbytes, align 2
  %78 = load i32, i32* %usize.addr, align 4
  %cmp141 = icmp ugt i32 %78, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.then.189

land.lhs.true.143:                                ; preds = %if.end.136
  %79 = load i32, i32* %usize.addr, align 4
  %cmp144 = icmp ule i32 2, %79
  br i1 %cmp144, label %land.lhs.true.146, label %if.then.189

land.lhs.true.146:                                ; preds = %land.lhs.true.143
  %80 = load i8*, i8** %dst, align 8
  %81 = load i16, i16* %backbytes, align 2
  %conv147 = zext i16 %81 to i32
  %idx.ext148 = sext i32 %conv147 to i64
  %idx.neg = sub i64 0, %idx.ext148
  %add.ptr149 = getelementptr inbounds i8, i8* %80, i64 %idx.neg
  %82 = load i8*, i8** %unpacked.addr, align 8
  %cmp150 = icmp uge i8* %add.ptr149, %82
  br i1 %cmp150, label %land.lhs.true.152, label %if.then.189

land.lhs.true.152:                                ; preds = %land.lhs.true.146
  %83 = load i8*, i8** %dst, align 8
  %84 = load i16, i16* %backbytes, align 2
  %conv153 = zext i16 %84 to i32
  %idx.ext154 = sext i32 %conv153 to i64
  %idx.neg155 = sub i64 0, %idx.ext154
  %add.ptr156 = getelementptr inbounds i8, i8* %83, i64 %idx.neg155
  %add.ptr157 = getelementptr inbounds i8, i8* %add.ptr156, i64 2
  %85 = load i8*, i8** %unpacked.addr, align 8
  %86 = load i32, i32* %usize.addr, align 4
  %idx.ext158 = zext i32 %86 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %85, i64 %idx.ext158
  %cmp160 = icmp ule i8* %add.ptr157, %add.ptr159
  br i1 %cmp160, label %land.lhs.true.162, label %if.then.189

land.lhs.true.162:                                ; preds = %land.lhs.true.152
  %87 = load i8*, i8** %dst, align 8
  %88 = load i16, i16* %backbytes, align 2
  %conv163 = zext i16 %88 to i32
  %idx.ext164 = sext i32 %conv163 to i64
  %idx.neg165 = sub i64 0, %idx.ext164
  %add.ptr166 = getelementptr inbounds i8, i8* %87, i64 %idx.neg165
  %add.ptr167 = getelementptr inbounds i8, i8* %add.ptr166, i64 2
  %89 = load i8*, i8** %unpacked.addr, align 8
  %cmp168 = icmp ugt i8* %add.ptr167, %89
  br i1 %cmp168, label %land.lhs.true.170, label %if.then.189

land.lhs.true.170:                                ; preds = %land.lhs.true.162
  %90 = load i32, i32* %usize.addr, align 4
  %cmp171 = icmp ugt i32 %90, 0
  br i1 %cmp171, label %land.lhs.true.173, label %if.then.189

land.lhs.true.173:                                ; preds = %land.lhs.true.170
  %91 = load i32, i32* %usize.addr, align 4
  %cmp174 = icmp ule i32 2, %91
  br i1 %cmp174, label %land.lhs.true.176, label %if.then.189

land.lhs.true.176:                                ; preds = %land.lhs.true.173
  %92 = load i8*, i8** %dst, align 8
  %93 = load i8*, i8** %unpacked.addr, align 8
  %cmp177 = icmp uge i8* %92, %93
  br i1 %cmp177, label %land.lhs.true.179, label %if.then.189

land.lhs.true.179:                                ; preds = %land.lhs.true.176
  %94 = load i8*, i8** %dst, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8*, i8** %unpacked.addr, align 8
  %96 = load i32, i32* %usize.addr, align 4
  %idx.ext181 = zext i32 %96 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %95, i64 %idx.ext181
  %cmp183 = icmp ule i8* %add.ptr180, %add.ptr182
  br i1 %cmp183, label %land.lhs.true.185, label %if.then.189

land.lhs.true.185:                                ; preds = %land.lhs.true.179
  %97 = load i8*, i8** %dst, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8*, i8** %unpacked.addr, align 8
  %cmp187 = icmp ugt i8* %add.ptr186, %98
  br i1 %cmp187, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %land.lhs.true.185, %land.lhs.true.179, %land.lhs.true.176, %land.lhs.true.173, %land.lhs.true.170, %land.lhs.true.162, %land.lhs.true.152, %land.lhs.true.146, %land.lhs.true.143, %if.end.136
  store i32 1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.185
  %99 = load i8*, i8** %dst, align 8
  %100 = load i16, i16* %backbytes, align 2
  %conv191 = zext i16 %100 to i32
  %idx.ext192 = sext i32 %conv191 to i64
  %idx.neg193 = sub i64 0, %idx.ext192
  %add.ptr194 = getelementptr inbounds i8, i8* %99, i64 %idx.neg193
  %101 = load i8, i8* %add.ptr194, align 1
  %102 = load i8*, i8** %dst, align 8
  store i8 %101, i8* %102, align 1
  %103 = load i8*, i8** %dst, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr195, i8** %dst, align 8
  %104 = load i8*, i8** %dst, align 8
  %105 = load i16, i16* %backbytes, align 2
  %conv196 = zext i16 %105 to i32
  %idx.ext197 = sext i32 %conv196 to i64
  %idx.neg198 = sub i64 0, %idx.ext197
  %add.ptr199 = getelementptr inbounds i8, i8* %104, i64 %idx.neg198
  %106 = load i8, i8* %add.ptr199, align 1
  %107 = load i8*, i8** %dst, align 8
  store i8 %106, i8* %107, align 1
  %108 = load i8*, i8** %dst, align 8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr200, i8** %dst, align 8
  br label %while.body

if.end.201:                                       ; preds = %if.end.96
  %109 = load i32, i32* %eax, align 4
  %and202 = and i32 %109, 255
  %conv203 = trunc i32 %and202 to i8
  store i8 %conv203, i8* %oal, align 1
  store i32 1, i32* %getmorestuff, align 4
  %110 = load i8*, i8** %packed.addr, align 8
  %111 = load i32, i32* %psize.addr, align 4
  %call204 = call i32 @getbits(i8 zeroext 3, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %110, i32 %111)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.201
  store i32 1, i32* %retval
  br label %return

if.end.207:                                       ; preds = %if.end.201
  %112 = load i32, i32* %eax, align 4
  %and208 = and i32 %112, 255
  %cmp209 = icmp ule i32 %and208, 3
  br i1 %cmp209, label %if.then.211, label %if.else.229

if.then.211:                                      ; preds = %if.end.207
  store i32 0, i32* %lostbit, align 4
  %113 = load i32, i32* %eax, align 4
  %and212 = and i32 %113, 255
  %cmp213 = icmp eq i32 %and212, 3
  br i1 %cmp213, label %if.then.215, label %if.end.226

if.then.215:                                      ; preds = %if.then.211
  %114 = load i32, i32* %bitmap, align 4
  %shr216 = lshr i32 %114, 31
  store i32 %shr216, i32* %lostbit, align 4
  %115 = load i32, i32* %bitmap, align 4
  %shl217 = shl i32 %115, 1
  store i32 %shl217, i32* %bitmap, align 4
  %116 = load i8, i8* %bits, align 1
  %dec218 = add i8 %116, -1
  store i8 %dec218, i8* %bits, align 1
  %117 = load i8, i8* %bits, align 1
  %tobool219 = icmp ne i8 %117, 0
  br i1 %tobool219, label %if.end.225, label %if.then.220

if.then.220:                                      ; preds = %if.then.215
  %118 = load i8*, i8** %packed.addr, align 8
  %119 = load i32, i32* %psize.addr, align 4
  %call221 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %118, i32 %119)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.then.220
  store i32 1, i32* %retval
  br label %return

if.end.224:                                       ; preds = %if.then.220
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.215
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.211
  %120 = load i32, i32* %eax, align 4
  %121 = load i32, i32* %lostbit, align 4
  %add227 = add i32 %120, %121
  %add228 = add i32 %add227, 5
  store i32 %add228, i32* %eax, align 4
  br label %if.end.270

if.else.229:                                      ; preds = %if.end.207
  %122 = load i32, i32* %eax, align 4
  %and230 = and i32 %122, 255
  %cmp231 = icmp eq i32 %and230, 4
  br i1 %cmp231, label %if.then.233, label %if.else.246

if.then.233:                                      ; preds = %if.else.229
  %123 = load i32, i32* %bitmap, align 4
  %shr234 = lshr i32 %123, 31
  store i32 %shr234, i32* %lostbit, align 4
  %124 = load i32, i32* %bitmap, align 4
  %shl235 = shl i32 %124, 1
  store i32 %shl235, i32* %bitmap, align 4
  %125 = load i8, i8* %bits, align 1
  %dec236 = add i8 %125, -1
  store i8 %dec236, i8* %bits, align 1
  %126 = load i8, i8* %bits, align 1
  %tobool237 = icmp ne i8 %126, 0
  br i1 %tobool237, label %if.end.243, label %if.then.238

if.then.238:                                      ; preds = %if.then.233
  %127 = load i8*, i8** %packed.addr, align 8
  %128 = load i32, i32* %psize.addr, align 4
  %call239 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %127, i32 %128)
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.then.238
  store i32 1, i32* %retval
  br label %return

if.end.242:                                       ; preds = %if.then.238
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.233
  %129 = load i32, i32* %eax, align 4
  %130 = load i32, i32* %lostbit, align 4
  %add244 = add i32 %129, %130
  %add245 = add i32 %add244, 6
  store i32 %add245, i32* %eax, align 4
  br label %if.end.269

if.else.246:                                      ; preds = %if.else.229
  %131 = load i32, i32* %eax, align 4
  %add247 = add i32 %131, 7
  store i32 %add247, i32* %eax, align 4
  %132 = load i32, i32* %eax, align 4
  %and248 = and i32 %132, 255
  %cmp249 = icmp uge i32 %and248, 13
  br i1 %cmp249, label %if.then.251, label %if.end.268

if.then.251:                                      ; preds = %if.else.246
  store i32 0, i32* %getmorestuff, align 4
  %133 = load i32, i32* %eax, align 4
  %and252 = and i32 %133, 255
  %cmp253 = icmp eq i32 %and252, 13
  br i1 %cmp253, label %if.then.255, label %if.else.261

if.then.255:                                      ; preds = %if.then.251
  %134 = load i8*, i8** %packed.addr, align 8
  %135 = load i32, i32* %psize.addr, align 4
  %call256 = call i32 @getbits(i8 zeroext 14, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %134, i32 %135)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.255
  store i32 1, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.then.255
  %136 = load i32, i32* %eax, align 4
  %add260 = add i32 %136, 8161
  store i32 %add260, i32* %eax, align 4
  br label %if.end.267

if.else.261:                                      ; preds = %if.then.251
  %137 = load i8*, i8** %packed.addr, align 8
  %138 = load i32, i32* %psize.addr, align 4
  %call262 = call i32 @getbits(i8 zeroext 15, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %137, i32 %138)
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.else.261
  store i32 1, i32* %retval
  br label %return

if.end.265:                                       ; preds = %if.else.261
  %139 = load i32, i32* %eax, align 4
  %add266 = add i32 %139, 24545
  store i32 %add266, i32* %eax, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.265, %if.end.259
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.else.246
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.243
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.226
  %140 = load i32, i32* %getmorestuff, align 4
  %tobool271 = icmp ne i32 %140, 0
  br i1 %tobool271, label %if.then.272, label %if.end.285

if.then.272:                                      ; preds = %if.end.270
  %141 = load i32, i32* %eax, align 4
  %and273 = and i32 %141, 255
  %shl274 = shl i32 1, %and273
  %sub275 = sub nsw i32 %shl274, 31
  %conv276 = trunc i32 %sub275 to i16
  store i16 %conv276, i16* %bk, align 2
  %142 = load i32, i32* %eax, align 4
  %and277 = and i32 %142, 255
  %conv278 = trunc i32 %and277 to i8
  %143 = load i8*, i8** %packed.addr, align 8
  %144 = load i32, i32* %psize.addr, align 4
  %call279 = call i32 @getbits(i8 zeroext %conv278, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %143, i32 %144)
  %tobool280 = icmp ne i32 %call279, 0
  br i1 %tobool280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.then.272
  store i32 1, i32* %retval
  br label %return

if.end.282:                                       ; preds = %if.then.272
  %145 = load i16, i16* %bk, align 2
  %conv283 = zext i16 %145 to i32
  %146 = load i32, i32* %eax, align 4
  %add284 = add i32 %146, %conv283
  store i32 %add284, i32* %eax, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.282, %if.end.270
  %147 = load i32, i32* %eax, align 4
  %and286 = and i32 %147, 65535
  store i32 %and286, i32* %eax, align 4
  %148 = load i32, i32* %eax, align 4
  %conv287 = trunc i32 %148 to i16
  store i16 %conv287, i16* %backbytes, align 2
  %149 = load i8, i8* %oal, align 1
  %conv288 = zext i8 %149 to i32
  %cmp289 = icmp ne i32 %conv288, 1
  %conv290 = zext i1 %cmp289 to i32
  %add291 = add nsw i32 3, %conv290
  %conv292 = trunc i32 %add291 to i16
  store i16 %conv292, i16* %backsize, align 2
  %150 = load i8, i8* %oal, align 1
  %conv293 = zext i8 %150 to i32
  %cmp294 = icmp slt i32 %conv293, 1
  br i1 %cmp294, label %if.then.296, label %if.end.389

if.then.296:                                      ; preds = %if.end.285
  %151 = load i32, i32* %bitmap, align 4
  %shr297 = lshr i32 %151, 31
  store i32 %shr297, i32* %lostbit, align 4
  %152 = load i32, i32* %bitmap, align 4
  %shl298 = shl i32 %152, 1
  store i32 %shl298, i32* %bitmap, align 4
  %153 = load i8, i8* %bits, align 1
  %dec299 = add i8 %153, -1
  store i8 %dec299, i8* %bits, align 1
  %154 = load i8, i8* %bits, align 1
  %tobool300 = icmp ne i8 %154, 0
  br i1 %tobool300, label %if.end.306, label %if.then.301

if.then.301:                                      ; preds = %if.then.296
  %155 = load i8*, i8** %packed.addr, align 8
  %156 = load i32, i32* %psize.addr, align 4
  %call302 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %155, i32 %156)
  %tobool303 = icmp ne i32 %call302, 0
  br i1 %tobool303, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.then.301
  store i32 1, i32* %retval
  br label %return

if.end.305:                                       ; preds = %if.then.301
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.296
  %157 = load i32, i32* %lostbit, align 4
  %tobool307 = icmp ne i32 %157, 0
  br i1 %tobool307, label %if.else.320, label %if.then.308

if.then.308:                                      ; preds = %if.end.306
  %158 = load i32, i32* %bitmap, align 4
  %shr309 = lshr i32 %158, 31
  store i32 %shr309, i32* %lostbit, align 4
  %159 = load i32, i32* %bitmap, align 4
  %shl310 = shl i32 %159, 1
  store i32 %shl310, i32* %bitmap, align 4
  %160 = load i8, i8* %bits, align 1
  %dec311 = add i8 %160, -1
  store i8 %dec311, i8* %bits, align 1
  %161 = load i8, i8* %bits, align 1
  %tobool312 = icmp ne i8 %161, 0
  br i1 %tobool312, label %if.end.318, label %if.then.313

if.then.313:                                      ; preds = %if.then.308
  %162 = load i8*, i8** %packed.addr, align 8
  %163 = load i32, i32* %psize.addr, align 4
  %call314 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %162, i32 %163)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.then.313
  store i32 1, i32* %retval
  br label %return

if.end.317:                                       ; preds = %if.then.313
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.308
  %164 = load i32, i32* %lostbit, align 4
  %add319 = add i32 5, %164
  store i32 %add319, i32* %eax, align 4
  br label %if.end.386

if.else.320:                                      ; preds = %if.end.306
  %165 = load i8*, i8** %packed.addr, align 8
  %166 = load i32, i32* %psize.addr, align 4
  %call321 = call i32 @getbits(i8 zeroext 3, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %165, i32 %166)
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.else.320
  store i32 1, i32* %retval
  br label %return

if.end.324:                                       ; preds = %if.else.320
  %167 = load i32, i32* %eax, align 4
  %and325 = and i32 %167, 255
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %if.then.327, label %if.else.329

if.then.327:                                      ; preds = %if.end.324
  %168 = load i32, i32* %eax, align 4
  %add328 = add i32 %168, 6
  store i32 %add328, i32* %eax, align 4
  br label %if.end.385

if.else.329:                                      ; preds = %if.end.324
  %169 = load i8*, i8** %packed.addr, align 8
  %170 = load i32, i32* %psize.addr, align 4
  %call330 = call i32 @getbits(i8 zeroext 4, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %169, i32 %170)
  %tobool331 = icmp ne i32 %call330, 0
  br i1 %tobool331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.else.329
  store i32 1, i32* %retval
  br label %return

if.end.333:                                       ; preds = %if.else.329
  %171 = load i32, i32* %eax, align 4
  %and334 = and i32 %171, 255
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %if.then.336, label %if.else.338

if.then.336:                                      ; preds = %if.end.333
  %172 = load i32, i32* %eax, align 4
  %add337 = add i32 %172, 13
  store i32 %add337, i32* %eax, align 4
  br label %if.end.384

if.else.338:                                      ; preds = %if.end.333
  store i8 4, i8* %c, align 1
  store i16 13, i16* %d, align 2
  br label %while.body.340

while.body.340:                                   ; preds = %if.else.338, %if.then.364
  %173 = load i8, i8* %c, align 1
  %conv341 = zext i8 %173 to i32
  %cmp342 = icmp ne i32 %conv341, 7
  br i1 %cmp342, label %if.then.344, label %if.else.378

if.then.344:                                      ; preds = %while.body.340
  %174 = load i16, i16* %d, align 2
  %conv345 = zext i16 %174 to i32
  %add346 = add nsw i32 %conv345, 2
  %conv347 = trunc i32 %add346 to i16
  store i16 %conv347, i16* %d, align 2
  %175 = load i16, i16* %d, align 2
  %conv348 = zext i16 %175 to i32
  %shl349 = shl i32 %conv348, 1
  %conv350 = trunc i32 %shl349 to i16
  store i16 %conv350, i16* %d, align 2
  %176 = load i16, i16* %d, align 2
  %dec351 = add i16 %176, -1
  store i16 %dec351, i16* %d, align 2
  %177 = load i32, i32* %bitmap, align 4
  %shr352 = lshr i32 %177, 31
  store i32 %shr352, i32* %lostbit, align 4
  %178 = load i32, i32* %bitmap, align 4
  %shl353 = shl i32 %178, 1
  store i32 %shl353, i32* %bitmap, align 4
  %179 = load i8, i8* %bits, align 1
  %dec354 = add i8 %179, -1
  store i8 %dec354, i8* %bits, align 1
  %180 = load i8, i8* %bits, align 1
  %tobool355 = icmp ne i8 %180, 0
  br i1 %tobool355, label %if.end.361, label %if.then.356

if.then.356:                                      ; preds = %if.then.344
  %181 = load i8*, i8** %packed.addr, align 8
  %182 = load i32, i32* %psize.addr, align 4
  %call357 = call i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %181, i32 %182)
  %tobool358 = icmp ne i32 %call357, 0
  br i1 %tobool358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %if.then.356
  store i32 1, i32* %retval
  br label %return

if.end.360:                                       ; preds = %if.then.356
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.344
  %183 = load i8, i8* %c, align 1
  %inc362 = add i8 %183, 1
  store i8 %inc362, i8* %c, align 1
  %184 = load i32, i32* %lostbit, align 4
  %tobool363 = icmp ne i32 %184, 0
  br i1 %tobool363, label %if.end.365, label %if.then.364

if.then.364:                                      ; preds = %if.end.361
  br label %while.body.340

if.end.365:                                       ; preds = %if.end.361
  %185 = load i8, i8* %c, align 1
  %186 = load i8*, i8** %packed.addr, align 8
  %187 = load i32, i32* %psize.addr, align 4
  %call366 = call i32 @getbits(i8 zeroext %185, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %186, i32 %187)
  %tobool367 = icmp ne i32 %call366, 0
  br i1 %tobool367, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.365
  store i32 1, i32* %retval
  br label %return

if.end.369:                                       ; preds = %if.end.365
  %188 = load i32, i32* %eax, align 4
  %and370 = and i32 %188, 255
  %189 = load i16, i16* %d, align 2
  %conv371 = zext i16 %189 to i32
  %add372 = add i32 %conv371, %and370
  %conv373 = trunc i32 %add372 to i16
  store i16 %conv373, i16* %d, align 2
  %190 = load i32, i32* %eax, align 4
  %and374 = and i32 %190, -256
  store i32 %and374, i32* %eax, align 4
  %191 = load i16, i16* %d, align 2
  %conv375 = zext i16 %191 to i32
  %and376 = and i32 %conv375, 255
  %192 = load i32, i32* %eax, align 4
  %or377 = or i32 %192, %and376
  store i32 %or377, i32* %eax, align 4
  br label %if.end.383

if.else.378:                                      ; preds = %while.body.340
  %193 = load i8*, i8** %packed.addr, align 8
  %194 = load i32, i32* %psize.addr, align 4
  %call379 = call i32 @getbits(i8 zeroext 14, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %193, i32 %194)
  %tobool380 = icmp ne i32 %call379, 0
  br i1 %tobool380, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %if.else.378
  store i32 1, i32* %retval
  br label %return

if.end.382:                                       ; preds = %if.else.378
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.end.369
  br label %while.end

while.end:                                        ; preds = %if.end.383
  br label %if.end.384

if.end.384:                                       ; preds = %while.end, %if.then.336
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.327
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.318
  %195 = load i32, i32* %eax, align 4
  %and387 = and i32 %195, 65535
  %conv388 = trunc i32 %and387 to i16
  store i16 %conv388, i16* %backsize, align 2
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.386, %if.end.285
  %196 = load i32, i32* %usize.addr, align 4
  %cmp390 = icmp ugt i32 %196, 0
  br i1 %cmp390, label %land.lhs.true.392, label %if.then.457

land.lhs.true.392:                                ; preds = %if.end.389
  %197 = load i16, i16* %backsize, align 2
  %conv393 = zext i16 %197 to i32
  %cmp394 = icmp sgt i32 %conv393, 0
  br i1 %cmp394, label %land.lhs.true.396, label %if.then.457

land.lhs.true.396:                                ; preds = %land.lhs.true.392
  %198 = load i16, i16* %backsize, align 2
  %conv397 = zext i16 %198 to i32
  %199 = load i32, i32* %usize.addr, align 4
  %cmp398 = icmp ule i32 %conv397, %199
  br i1 %cmp398, label %land.lhs.true.400, label %if.then.457

land.lhs.true.400:                                ; preds = %land.lhs.true.396
  %200 = load i8*, i8** %dst, align 8
  %201 = load i16, i16* %backbytes, align 2
  %conv401 = zext i16 %201 to i32
  %idx.ext402 = sext i32 %conv401 to i64
  %idx.neg403 = sub i64 0, %idx.ext402
  %add.ptr404 = getelementptr inbounds i8, i8* %200, i64 %idx.neg403
  %202 = load i8*, i8** %unpacked.addr, align 8
  %cmp405 = icmp uge i8* %add.ptr404, %202
  br i1 %cmp405, label %land.lhs.true.407, label %if.then.457

land.lhs.true.407:                                ; preds = %land.lhs.true.400
  %203 = load i8*, i8** %dst, align 8
  %204 = load i16, i16* %backbytes, align 2
  %conv408 = zext i16 %204 to i32
  %idx.ext409 = sext i32 %conv408 to i64
  %idx.neg410 = sub i64 0, %idx.ext409
  %add.ptr411 = getelementptr inbounds i8, i8* %203, i64 %idx.neg410
  %205 = load i16, i16* %backsize, align 2
  %conv412 = zext i16 %205 to i32
  %idx.ext413 = sext i32 %conv412 to i64
  %add.ptr414 = getelementptr inbounds i8, i8* %add.ptr411, i64 %idx.ext413
  %206 = load i8*, i8** %unpacked.addr, align 8
  %207 = load i32, i32* %usize.addr, align 4
  %idx.ext415 = zext i32 %207 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %206, i64 %idx.ext415
  %cmp417 = icmp ule i8* %add.ptr414, %add.ptr416
  br i1 %cmp417, label %land.lhs.true.419, label %if.then.457

land.lhs.true.419:                                ; preds = %land.lhs.true.407
  %208 = load i8*, i8** %dst, align 8
  %209 = load i16, i16* %backbytes, align 2
  %conv420 = zext i16 %209 to i32
  %idx.ext421 = sext i32 %conv420 to i64
  %idx.neg422 = sub i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, i8* %208, i64 %idx.neg422
  %210 = load i16, i16* %backsize, align 2
  %conv424 = zext i16 %210 to i32
  %idx.ext425 = sext i32 %conv424 to i64
  %add.ptr426 = getelementptr inbounds i8, i8* %add.ptr423, i64 %idx.ext425
  %211 = load i8*, i8** %unpacked.addr, align 8
  %cmp427 = icmp ugt i8* %add.ptr426, %211
  br i1 %cmp427, label %land.lhs.true.429, label %if.then.457

land.lhs.true.429:                                ; preds = %land.lhs.true.419
  %212 = load i32, i32* %usize.addr, align 4
  %cmp430 = icmp ugt i32 %212, 0
  br i1 %cmp430, label %land.lhs.true.432, label %if.then.457

land.lhs.true.432:                                ; preds = %land.lhs.true.429
  %213 = load i16, i16* %backsize, align 2
  %conv433 = zext i16 %213 to i32
  %cmp434 = icmp sgt i32 %conv433, 0
  br i1 %cmp434, label %land.lhs.true.436, label %if.then.457

land.lhs.true.436:                                ; preds = %land.lhs.true.432
  %214 = load i16, i16* %backsize, align 2
  %conv437 = zext i16 %214 to i32
  %215 = load i32, i32* %usize.addr, align 4
  %cmp438 = icmp ule i32 %conv437, %215
  br i1 %cmp438, label %land.lhs.true.440, label %if.then.457

land.lhs.true.440:                                ; preds = %land.lhs.true.436
  %216 = load i8*, i8** %dst, align 8
  %217 = load i8*, i8** %unpacked.addr, align 8
  %cmp441 = icmp uge i8* %216, %217
  br i1 %cmp441, label %land.lhs.true.443, label %if.then.457

land.lhs.true.443:                                ; preds = %land.lhs.true.440
  %218 = load i8*, i8** %dst, align 8
  %219 = load i16, i16* %backsize, align 2
  %conv444 = zext i16 %219 to i32
  %idx.ext445 = sext i32 %conv444 to i64
  %add.ptr446 = getelementptr inbounds i8, i8* %218, i64 %idx.ext445
  %220 = load i8*, i8** %unpacked.addr, align 8
  %221 = load i32, i32* %usize.addr, align 4
  %idx.ext447 = zext i32 %221 to i64
  %add.ptr448 = getelementptr inbounds i8, i8* %220, i64 %idx.ext447
  %cmp449 = icmp ule i8* %add.ptr446, %add.ptr448
  br i1 %cmp449, label %land.lhs.true.451, label %if.then.457

land.lhs.true.451:                                ; preds = %land.lhs.true.443
  %222 = load i8*, i8** %dst, align 8
  %223 = load i16, i16* %backsize, align 2
  %conv452 = zext i16 %223 to i32
  %idx.ext453 = sext i32 %conv452 to i64
  %add.ptr454 = getelementptr inbounds i8, i8* %222, i64 %idx.ext453
  %224 = load i8*, i8** %unpacked.addr, align 8
  %cmp455 = icmp ugt i8* %add.ptr454, %224
  br i1 %cmp455, label %if.end.458, label %if.then.457

if.then.457:                                      ; preds = %land.lhs.true.451, %land.lhs.true.443, %land.lhs.true.440, %land.lhs.true.436, %land.lhs.true.432, %land.lhs.true.429, %land.lhs.true.419, %land.lhs.true.407, %land.lhs.true.400, %land.lhs.true.396, %land.lhs.true.392, %if.end.389
  store i32 1, i32* %retval
  br label %return

if.end.458:                                       ; preds = %land.lhs.true.451
  br label %while.cond.459

while.cond.459:                                   ; preds = %while.body.462, %if.end.458
  %225 = load i16, i16* %backsize, align 2
  %dec460 = add i16 %225, -1
  store i16 %dec460, i16* %backsize, align 2
  %tobool461 = icmp ne i16 %225, 0
  br i1 %tobool461, label %while.body.462, label %while.end.468

while.body.462:                                   ; preds = %while.cond.459
  %226 = load i8*, i8** %dst, align 8
  %227 = load i16, i16* %backbytes, align 2
  %conv463 = zext i16 %227 to i32
  %idx.ext464 = sext i32 %conv463 to i64
  %idx.neg465 = sub i64 0, %idx.ext464
  %add.ptr466 = getelementptr inbounds i8, i8* %226, i64 %idx.neg465
  %228 = load i8, i8* %add.ptr466, align 1
  %229 = load i8*, i8** %dst, align 8
  store i8 %228, i8* %229, align 1
  %230 = load i8*, i8** %dst, align 8
  %incdec.ptr467 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr467, i8** %dst, align 8
  br label %while.cond.459

while.end.468:                                    ; preds = %while.cond.459
  br label %while.body

while.end.469:                                    ; preds = %if.then.135
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.469, %if.then.457, %if.then.381, %if.then.368, %if.then.359, %if.then.332, %if.then.323, %if.then.316, %if.then.304, %if.then.281, %if.then.264, %if.then.258, %if.then.241, %if.then.223, %if.then.206, %if.then.189, %if.then.130, %if.then.102, %if.then.95, %if.then.87, %if.then.46, %if.then.38, %if.then
  %231 = load i32, i32* %retval
  ret i32 %231
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @getbitmap(i32* %bitmap, i8** %src, i8* %bits, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %bitmap.addr = alloca i32*, align 8
  %src.addr = alloca i8**, align 8
  %bits.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i32* %bitmap, i32** %bitmap.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i8* %bits, i8** %bits.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp ule i32 4, %1
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8**, i8*** %src.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp uge i8* %3, %4
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i8**, i8*** %src.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %cmp6 = icmp ule i8* %add.ptr, %add.ptr5
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %9 = load i8**, i8*** %src.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i64 4
  %11 = load i8*, i8** %buf.addr, align 8
  %cmp9 = icmp ugt i8* %add.ptr8, %11
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7
  %12 = load i8**, i8*** %src.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %bitmap.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i8**, i8*** %src.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %add.ptr10, i8** %17, align 8
  %19 = load i8*, i8** %bits.addr, align 8
  store i8 32, i8* %19, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @getbits(i8 zeroext %X, i32* %eax, i32* %bitmap, i8* %bits, i8** %src, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca i8, align 1
  %eax.addr = alloca i32*, align 8
  %bitmap.addr = alloca i32*, align 8
  %bits.addr = alloca i8*, align 8
  %src.addr = alloca i8**, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8 %X, i8* %X.addr, align 1
  store i32* %eax, i32** %eax.addr, align 8
  store i32* %bitmap, i32** %bitmap.addr, align 8
  store i8* %bits, i8** %bits.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %bitmap.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i8, i8* %X.addr, align 1
  %conv = zext i8 %2 to i32
  %sub = sub nsw i32 32, %conv
  %shr = lshr i32 %1, %sub
  %3 = load i32*, i32** %eax.addr, align 8
  store i32 %shr, i32* %3, align 4
  %4 = load i8*, i8** %bits.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = zext i8 %5 to i32
  %6 = load i8, i8* %X.addr, align 1
  %conv2 = zext i8 %6 to i32
  %cmp = icmp sgt i32 %conv1, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8, i8* %X.addr, align 1
  %conv4 = zext i8 %7 to i32
  %8 = load i32*, i32** %bitmap.addr, align 8
  %9 = load i32, i32* %8, align 4
  %shl = shl i32 %9, %conv4
  store i32 %shl, i32* %8, align 4
  %10 = load i8, i8* %X.addr, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load i8*, i8** %bits.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = zext i8 %12 to i32
  %sub7 = sub nsw i32 %conv6, %conv5
  %conv8 = trunc i32 %sub7 to i8
  store i8 %conv8, i8* %11, align 1
  br label %if.end.38

if.else:                                          ; preds = %entry
  %13 = load i8*, i8** %bits.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv9 = zext i8 %14 to i32
  %15 = load i8, i8* %X.addr, align 1
  %conv10 = zext i8 %15 to i32
  %cmp11 = icmp slt i32 %conv9, %conv10
  br i1 %cmp11, label %if.then.13, label %if.else.32

if.then.13:                                       ; preds = %if.else
  %16 = load i8*, i8** %bits.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv14 = zext i8 %17 to i32
  %18 = load i8, i8* %X.addr, align 1
  %conv15 = zext i8 %18 to i32
  %sub16 = sub nsw i32 %conv15, %conv14
  %conv17 = trunc i32 %sub16 to i8
  store i8 %conv17, i8* %X.addr, align 1
  %19 = load i8, i8* %X.addr, align 1
  %conv18 = zext i8 %19 to i32
  %20 = load i32*, i32** %eax.addr, align 8
  %21 = load i32, i32* %20, align 4
  %shr19 = lshr i32 %21, %conv18
  store i32 %shr19, i32* %20, align 4
  %22 = load i32*, i32** %bitmap.addr, align 8
  %23 = load i8**, i8*** %src.addr, align 8
  %24 = load i8*, i8** %bits.addr, align 8
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i32, i32* %size.addr, align 4
  %call = call i32 @getbitmap(i32* %22, i8** %23, i8* %24, i8* %25, i32 %26)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.13
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.13
  %27 = load i8, i8* %X.addr, align 1
  %conv21 = zext i8 %27 to i32
  %28 = load i32*, i32** %eax.addr, align 8
  %29 = load i32, i32* %28, align 4
  %shl22 = shl i32 %29, %conv21
  store i32 %shl22, i32* %28, align 4
  %30 = load i32*, i32** %bitmap.addr, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i8, i8* %X.addr, align 1
  %conv23 = zext i8 %32 to i32
  %sub24 = sub nsw i32 32, %conv23
  %shr25 = lshr i32 %31, %sub24
  %33 = load i32*, i32** %eax.addr, align 8
  %34 = load i32, i32* %33, align 4
  %or = or i32 %34, %shr25
  store i32 %or, i32* %33, align 4
  %35 = load i8, i8* %X.addr, align 1
  %conv26 = zext i8 %35 to i32
  %36 = load i32*, i32** %bitmap.addr, align 8
  %37 = load i32, i32* %36, align 4
  %shl27 = shl i32 %37, %conv26
  store i32 %shl27, i32* %36, align 4
  %38 = load i8, i8* %X.addr, align 1
  %conv28 = zext i8 %38 to i32
  %39 = load i8*, i8** %bits.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv29 = zext i8 %40 to i32
  %sub30 = sub nsw i32 %conv29, %conv28
  %conv31 = trunc i32 %sub30 to i8
  store i8 %conv31, i8* %39, align 1
  br label %if.end.37

if.else.32:                                       ; preds = %if.else
  %41 = load i32*, i32** %bitmap.addr, align 8
  %42 = load i8**, i8*** %src.addr, align 8
  %43 = load i8*, i8** %bits.addr, align 8
  %44 = load i8*, i8** %buf.addr, align 8
  %45 = load i32, i32* %size.addr, align 4
  %call33 = call i32 @getbitmap(i32* %41, i8** %42, i8* %43, i8* %44, i32 %45)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.32
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.else.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.35, %if.then.20
  %46 = load i32, i32* %retval
  ret i32 %46
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
