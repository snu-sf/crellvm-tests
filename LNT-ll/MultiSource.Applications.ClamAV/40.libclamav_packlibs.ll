; ModuleID = './MultiSource.Applications.ClamAV/40.libclamav_packlibs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"MEW: rete: %d %d %d %d %d || %d %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"MEW: retf %08x %08x+%08x=%08x, %08x %08x+%08x=%08x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_unfsg(i8* %source, i8* %dest, i32 %ssize, i32 %dsize, i8** %endsrc, i8** %enddst) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %endsrc.addr = alloca i8**, align 8
  %enddst.addr = alloca i8**, align 8
  %mydl = alloca i8, align 1
  %backbytes = alloca i32, align 4
  %backsize = alloca i32, align 4
  %oldback = alloca i32, align 4
  %csrc = alloca i8*, align 8
  %cdst = alloca i8*, align 8
  %oob = alloca i32, align 4
  %lostbit = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 %dsize, i32* %dsize.addr, align 4
  store i8** %endsrc, i8*** %endsrc.addr, align 8
  store i8** %enddst, i8*** %enddst.addr, align 8
  store i8 -128, i8* %mydl, align 1
  store i32 0, i32* %oldback, align 4
  %0 = load i8*, i8** %source.addr, align 8
  store i8* %0, i8** %csrc, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  store i8* %1, i8** %cdst, align 8
  store i32 1, i32* %lostbit, align 4
  %2 = load i32, i32* %ssize.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %dsize.addr, align 4
  %cmp1 = icmp sle i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %csrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %csrc, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %cdst, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %cdst, align 8
  store i8 %5, i8* %6, align 1
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.30, %if.end.209
  %7 = load i8*, i8** %source.addr, align 8
  %8 = load i32, i32* %ssize.addr, align 4
  %call = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %7, i32 %8)
  store i32 %call, i32* %oob, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else.189

if.then.3:                                        ; preds = %while.body
  %9 = load i32, i32* %oob, align 4
  %cmp4 = icmp eq i32 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  store i32 0, i32* %backsize, align 4
  %10 = load i8*, i8** %source.addr, align 8
  %11 = load i32, i32* %ssize.addr, align 4
  %call7 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %10, i32 %11)
  store i32 %call7, i32* %oob, align 4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.48

if.then.9:                                        ; preds = %if.end.6
  %12 = load i32, i32* %oob, align 4
  %cmp10 = icmp eq i32 %12, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.9
  store i32 0, i32* %backbytes, align 4
  %13 = load i8*, i8** %source.addr, align 8
  %14 = load i32, i32* %ssize.addr, align 4
  %call13 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %13, i32 %14)
  store i32 %call13, i32* %oob, align 4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  %15 = load i32, i32* %oob, align 4
  %cmp16 = icmp eq i32 %15, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  store i32 1, i32* %lostbit, align 4
  %16 = load i32, i32* %backsize, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %backsize, align 4
  store i32 16, i32* %backbytes, align 4
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.25, %if.end.18
  %17 = load i32, i32* %backbytes, align 4
  %cmp20 = icmp ult i32 %17, 256
  br i1 %cmp20, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.19
  %18 = load i8*, i8** %source.addr, align 8
  %19 = load i32, i32* %ssize.addr, align 4
  %call22 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %18, i32 %19)
  store i32 %call22, i32* %oob, align 4
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body.21
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.body.21
  %20 = load i32, i32* %backbytes, align 4
  %mul = mul i32 %20, 2
  %21 = load i32, i32* %oob, align 4
  %add = add i32 %mul, %21
  store i32 %add, i32* %backbytes, align 4
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %22 = load i32, i32* %backbytes, align 4
  %and = and i32 %22, 255
  store i32 %and, i32* %backbytes, align 4
  %23 = load i32, i32* %backbytes, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %while.end
  %24 = load i8*, i8** %cdst, align 8
  %25 = load i8*, i8** %dest.addr, align 8
  %26 = load i32, i32* %dsize.addr, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %cmp28 = icmp uge i8* %24, %add.ptr
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.27
  %27 = load i8*, i8** %cdst, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr31, i8** %cdst, align 8
  store i8 0, i8* %27, align 1
  br label %while.body

if.end.32:                                        ; preds = %while.end
  br label %if.end.47

if.else:                                          ; preds = %if.end.12
  %28 = load i8*, i8** %csrc, align 8
  %29 = load i8*, i8** %source.addr, align 8
  %30 = load i32, i32* %ssize.addr, align 4
  %idx.ext33 = sext i32 %30 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %29, i64 %idx.ext33
  %cmp35 = icmp uge i8* %28, %add.ptr34
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else
  %31 = load i8*, i8** %csrc, align 8
  %32 = load i8, i8* %31, align 1
  %conv = zext i8 %32 to i32
  store i32 %conv, i32* %backbytes, align 4
  %33 = load i32, i32* %backsize, align 4
  %mul38 = mul i32 %33, 2
  %34 = load i32, i32* %backbytes, align 4
  %and39 = and i32 %34, 1
  %add40 = add i32 %mul38, %and39
  store i32 %add40, i32* %backsize, align 4
  %35 = load i32, i32* %backbytes, align 4
  %and41 = and i32 %35, 255
  %shr = lshr i32 %and41, 1
  store i32 %shr, i32* %backbytes, align 4
  %36 = load i8*, i8** %csrc, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr42, i8** %csrc, align 8
  %37 = load i32, i32* %backbytes, align 4
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.37
  br label %while.end.210

if.end.45:                                        ; preds = %if.end.37
  %38 = load i32, i32* %backsize, align 4
  %add46 = add i32 %38, 2
  store i32 %add46, i32* %backsize, align 4
  %39 = load i32, i32* %backbytes, align 4
  store i32 %39, i32* %oldback, align 4
  store i32 0, i32* %lostbit, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %if.end.32
  br label %if.end.124

if.else.48:                                       ; preds = %if.end.6
  store i32 1, i32* %backsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.48
  %40 = load i8*, i8** %source.addr, align 8
  %41 = load i32, i32* %ssize.addr, align 4
  %call49 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %40, i32 %41)
  store i32 %call49, i32* %oob, align 4
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %do.body
  %42 = load i32, i32* %backsize, align 4
  %mul54 = mul i32 %42, 2
  %43 = load i32, i32* %oob, align 4
  %add55 = add i32 %mul54, %43
  store i32 %add55, i32* %backsize, align 4
  %44 = load i8*, i8** %source.addr, align 8
  %45 = load i32, i32* %ssize.addr, align 4
  %call56 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %44, i32 %45)
  store i32 %call56, i32* %oob, align 4
  %cmp57 = icmp eq i32 %call56, -1
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.53
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.53
  br label %do.cond

do.cond:                                          ; preds = %if.end.60
  %46 = load i32, i32* %oob, align 4
  %tobool61 = icmp ne i32 %46, 0
  br i1 %tobool61, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load i32, i32* %backsize, align 4
  %sub = sub i32 %47, 1
  %48 = load i32, i32* %lostbit, align 4
  %sub62 = sub i32 %sub, %48
  store i32 %sub62, i32* %backsize, align 4
  %49 = load i32, i32* %backsize, align 4
  %tobool63 = icmp ne i32 %49, 0
  br i1 %tobool63, label %if.else.81, label %if.then.64

if.then.64:                                       ; preds = %do.end
  store i32 1, i32* %backsize, align 4
  br label %do.body.65

do.body.65:                                       ; preds = %do.cond.78, %if.then.64
  %50 = load i8*, i8** %source.addr, align 8
  %51 = load i32, i32* %ssize.addr, align 4
  %call66 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %50, i32 %51)
  store i32 %call66, i32* %oob, align 4
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.body.65
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %do.body.65
  %52 = load i32, i32* %backsize, align 4
  %mul71 = mul i32 %52, 2
  %53 = load i32, i32* %oob, align 4
  %add72 = add i32 %mul71, %53
  store i32 %add72, i32* %backsize, align 4
  %54 = load i8*, i8** %source.addr, align 8
  %55 = load i32, i32* %ssize.addr, align 4
  %call73 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %54, i32 %55)
  store i32 %call73, i32* %oob, align 4
  %cmp74 = icmp eq i32 %call73, -1
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.70
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  %56 = load i32, i32* %oob, align 4
  %tobool79 = icmp ne i32 %56, 0
  br i1 %tobool79, label %do.body.65, label %do.end.80

do.end.80:                                        ; preds = %do.cond.78
  %57 = load i32, i32* %oldback, align 4
  store i32 %57, i32* %backbytes, align 4
  br label %if.end.123

if.else.81:                                       ; preds = %do.end
  %58 = load i8*, i8** %csrc, align 8
  %59 = load i8*, i8** %source.addr, align 8
  %60 = load i32, i32* %ssize.addr, align 4
  %idx.ext82 = sext i32 %60 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %59, i64 %idx.ext82
  %cmp84 = icmp uge i8* %58, %add.ptr83
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.else.81
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.else.81
  %61 = load i8*, i8** %csrc, align 8
  %62 = load i8, i8* %61, align 1
  %conv88 = zext i8 %62 to i32
  store i32 %conv88, i32* %backbytes, align 4
  %63 = load i32, i32* %backsize, align 4
  %sub89 = sub i32 %63, 1
  %shl = shl i32 %sub89, 8
  %64 = load i32, i32* %backbytes, align 4
  %add90 = add i32 %64, %shl
  store i32 %add90, i32* %backbytes, align 4
  store i32 1, i32* %backsize, align 4
  %65 = load i8*, i8** %csrc, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr91, i8** %csrc, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %do.cond.105, %if.end.87
  %66 = load i8*, i8** %source.addr, align 8
  %67 = load i32, i32* %ssize.addr, align 4
  %call93 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %66, i32 %67)
  store i32 %call93, i32* %oob, align 4
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.body.92
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %do.body.92
  %68 = load i32, i32* %backsize, align 4
  %mul98 = mul i32 %68, 2
  %69 = load i32, i32* %oob, align 4
  %add99 = add i32 %mul98, %69
  store i32 %add99, i32* %backsize, align 4
  %70 = load i8*, i8** %source.addr, align 8
  %71 = load i32, i32* %ssize.addr, align 4
  %call100 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %70, i32 %71)
  store i32 %call100, i32* %oob, align 4
  %cmp101 = icmp eq i32 %call100, -1
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.97
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.97
  br label %do.cond.105

do.cond.105:                                      ; preds = %if.end.104
  %72 = load i32, i32* %oob, align 4
  %tobool106 = icmp ne i32 %72, 0
  br i1 %tobool106, label %do.body.92, label %do.end.107

do.end.107:                                       ; preds = %do.cond.105
  %73 = load i32, i32* %backbytes, align 4
  %cmp108 = icmp uge i32 %73, 32000
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %do.end.107
  %74 = load i32, i32* %backsize, align 4
  %inc111 = add i32 %74, 1
  store i32 %inc111, i32* %backsize, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %do.end.107
  %75 = load i32, i32* %backbytes, align 4
  %cmp113 = icmp uge i32 %75, 1280
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.112
  %76 = load i32, i32* %backsize, align 4
  %inc116 = add i32 %76, 1
  store i32 %inc116, i32* %backsize, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.112
  %77 = load i32, i32* %backbytes, align 4
  %cmp118 = icmp ule i32 %77, 127
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.117
  %78 = load i32, i32* %backsize, align 4
  %add121 = add i32 %78, 2
  store i32 %add121, i32* %backsize, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.117
  %79 = load i32, i32* %backbytes, align 4
  store i32 %79, i32* %oldback, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %do.end.80
  store i32 0, i32* %lostbit, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.47
  %80 = load i32, i32* %dsize.addr, align 4
  %cmp125 = icmp sgt i32 %80, 0
  br i1 %cmp125, label %land.lhs.true, label %if.then.179

land.lhs.true:                                    ; preds = %if.end.124
  %81 = load i32, i32* %backsize, align 4
  %cmp127 = icmp ugt i32 %81, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.then.179

land.lhs.true.129:                                ; preds = %land.lhs.true
  %82 = load i32, i32* %backsize, align 4
  %83 = load i32, i32* %dsize.addr, align 4
  %cmp130 = icmp ule i32 %82, %83
  br i1 %cmp130, label %land.lhs.true.132, label %if.then.179

land.lhs.true.132:                                ; preds = %land.lhs.true.129
  %84 = load i8*, i8** %cdst, align 8
  %85 = load i8*, i8** %dest.addr, align 8
  %cmp133 = icmp uge i8* %84, %85
  br i1 %cmp133, label %land.lhs.true.135, label %if.then.179

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %86 = load i8*, i8** %cdst, align 8
  %87 = load i32, i32* %backsize, align 4
  %idx.ext136 = zext i32 %87 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %86, i64 %idx.ext136
  %88 = load i8*, i8** %dest.addr, align 8
  %89 = load i32, i32* %dsize.addr, align 4
  %idx.ext138 = sext i32 %89 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %88, i64 %idx.ext138
  %cmp140 = icmp ule i8* %add.ptr137, %add.ptr139
  br i1 %cmp140, label %land.lhs.true.142, label %if.then.179

land.lhs.true.142:                                ; preds = %land.lhs.true.135
  %90 = load i8*, i8** %cdst, align 8
  %91 = load i32, i32* %backsize, align 4
  %idx.ext143 = zext i32 %91 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %90, i64 %idx.ext143
  %92 = load i8*, i8** %dest.addr, align 8
  %cmp145 = icmp ugt i8* %add.ptr144, %92
  br i1 %cmp145, label %lor.lhs.false.147, label %if.then.179

lor.lhs.false.147:                                ; preds = %land.lhs.true.142
  %93 = load i32, i32* %dsize.addr, align 4
  %cmp148 = icmp sgt i32 %93, 0
  br i1 %cmp148, label %land.lhs.true.150, label %if.then.179

land.lhs.true.150:                                ; preds = %lor.lhs.false.147
  %94 = load i32, i32* %backsize, align 4
  %cmp151 = icmp ugt i32 %94, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.then.179

land.lhs.true.153:                                ; preds = %land.lhs.true.150
  %95 = load i32, i32* %backsize, align 4
  %96 = load i32, i32* %dsize.addr, align 4
  %cmp154 = icmp ule i32 %95, %96
  br i1 %cmp154, label %land.lhs.true.156, label %if.then.179

land.lhs.true.156:                                ; preds = %land.lhs.true.153
  %97 = load i8*, i8** %cdst, align 8
  %98 = load i32, i32* %backbytes, align 4
  %idx.ext157 = zext i32 %98 to i64
  %idx.neg = sub i64 0, %idx.ext157
  %add.ptr158 = getelementptr inbounds i8, i8* %97, i64 %idx.neg
  %99 = load i8*, i8** %dest.addr, align 8
  %cmp159 = icmp uge i8* %add.ptr158, %99
  br i1 %cmp159, label %land.lhs.true.161, label %if.then.179

land.lhs.true.161:                                ; preds = %land.lhs.true.156
  %100 = load i8*, i8** %cdst, align 8
  %101 = load i32, i32* %backbytes, align 4
  %idx.ext162 = zext i32 %101 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %100, i64 %idx.neg163
  %102 = load i32, i32* %backsize, align 4
  %idx.ext165 = zext i32 %102 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr164, i64 %idx.ext165
  %103 = load i8*, i8** %dest.addr, align 8
  %104 = load i32, i32* %dsize.addr, align 4
  %idx.ext167 = sext i32 %104 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %103, i64 %idx.ext167
  %cmp169 = icmp ule i8* %add.ptr166, %add.ptr168
  br i1 %cmp169, label %land.lhs.true.171, label %if.then.179

land.lhs.true.171:                                ; preds = %land.lhs.true.161
  %105 = load i8*, i8** %cdst, align 8
  %106 = load i32, i32* %backbytes, align 4
  %idx.ext172 = zext i32 %106 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %105, i64 %idx.neg173
  %107 = load i32, i32* %backsize, align 4
  %idx.ext175 = zext i32 %107 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %add.ptr174, i64 %idx.ext175
  %108 = load i8*, i8** %dest.addr, align 8
  %cmp177 = icmp ugt i8* %add.ptr176, %108
  br i1 %cmp177, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %land.lhs.true.171, %land.lhs.true.161, %land.lhs.true.156, %land.lhs.true.153, %land.lhs.true.150, %lor.lhs.false.147, %land.lhs.true.142, %land.lhs.true.135, %land.lhs.true.132, %land.lhs.true.129, %land.lhs.true, %if.end.124
  store i32 -1, i32* %retval
  br label %return

if.end.180:                                       ; preds = %land.lhs.true.171
  br label %while.cond.181

while.cond.181:                                   ; preds = %while.body.183, %if.end.180
  %109 = load i32, i32* %backsize, align 4
  %dec = add i32 %109, -1
  store i32 %dec, i32* %backsize, align 4
  %tobool182 = icmp ne i32 %109, 0
  br i1 %tobool182, label %while.body.183, label %while.end.188

while.body.183:                                   ; preds = %while.cond.181
  %110 = load i8*, i8** %cdst, align 8
  %111 = load i32, i32* %backbytes, align 4
  %idx.ext184 = zext i32 %111 to i64
  %idx.neg185 = sub i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, i8* %110, i64 %idx.neg185
  %112 = load i8, i8* %add.ptr186, align 1
  %113 = load i8*, i8** %cdst, align 8
  store i8 %112, i8* %113, align 1
  %114 = load i8*, i8** %cdst, align 8
  %incdec.ptr187 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr187, i8** %cdst, align 8
  br label %while.cond.181

while.end.188:                                    ; preds = %while.cond.181
  br label %if.end.209

if.else.189:                                      ; preds = %while.body
  %115 = load i8*, i8** %cdst, align 8
  %116 = load i8*, i8** %dest.addr, align 8
  %cmp190 = icmp ult i8* %115, %116
  br i1 %cmp190, label %if.then.205, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %if.else.189
  %117 = load i8*, i8** %cdst, align 8
  %118 = load i8*, i8** %dest.addr, align 8
  %119 = load i32, i32* %dsize.addr, align 4
  %idx.ext193 = sext i32 %119 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %118, i64 %idx.ext193
  %cmp195 = icmp uge i8* %117, %add.ptr194
  br i1 %cmp195, label %if.then.205, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %lor.lhs.false.192
  %120 = load i8*, i8** %csrc, align 8
  %121 = load i8*, i8** %source.addr, align 8
  %cmp198 = icmp ult i8* %120, %121
  br i1 %cmp198, label %if.then.205, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %lor.lhs.false.197
  %122 = load i8*, i8** %csrc, align 8
  %123 = load i8*, i8** %source.addr, align 8
  %124 = load i32, i32* %ssize.addr, align 4
  %idx.ext201 = sext i32 %124 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %123, i64 %idx.ext201
  %cmp203 = icmp uge i8* %122, %add.ptr202
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %lor.lhs.false.200, %lor.lhs.false.197, %lor.lhs.false.192, %if.else.189
  store i32 -1, i32* %retval
  br label %return

if.end.206:                                       ; preds = %lor.lhs.false.200
  %125 = load i8*, i8** %csrc, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr207, i8** %csrc, align 8
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %cdst, align 8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr208, i8** %cdst, align 8
  store i8 %126, i8* %127, align 1
  store i32 1, i32* %lostbit, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.206, %while.end.188
  br label %while.body

while.end.210:                                    ; preds = %if.then.44
  %128 = load i8**, i8*** %endsrc.addr, align 8
  %tobool211 = icmp ne i8** %128, null
  br i1 %tobool211, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %while.end.210
  %129 = load i8*, i8** %csrc, align 8
  %130 = load i8**, i8*** %endsrc.addr, align 8
  store i8* %129, i8** %130, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.212, %while.end.210
  %131 = load i8**, i8*** %enddst.addr, align 8
  %tobool214 = icmp ne i8** %131, null
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.213
  %132 = load i8*, i8** %cdst, align 8
  %133 = load i8**, i8*** %enddst.addr, align 8
  store i8* %132, i8** %133, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.end.213
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.216, %if.then.205, %if.then.179, %if.then.103, %if.then.96, %if.then.86, %if.then.76, %if.then.69, %if.then.59, %if.then.52, %if.then.36, %if.then.29, %if.then.24, %if.then.17, %if.then.11, %if.then.5, %if.then
  %134 = load i32, i32* %retval
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal i32 @doubledl(i8** %scur, i8* %mydlptr, i8* %buffer, i32 %buffersize) #0 {
entry:
  %retval = alloca i32, align 4
  %scur.addr = alloca i8**, align 8
  %mydlptr.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i32, align 4
  %mydl = alloca i8, align 1
  %olddl = alloca i8, align 1
  store i8** %scur, i8*** %scur.addr, align 8
  store i8* %mydlptr, i8** %mydlptr.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %buffersize, i32* %buffersize.addr, align 4
  %0 = load i8*, i8** %mydlptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %mydl, align 1
  %2 = load i8, i8* %mydl, align 1
  store i8 %2, i8* %olddl, align 1
  %3 = load i8, i8* %mydl, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, 2
  %conv1 = trunc i32 %mul to i8
  store i8 %conv1, i8* %mydl, align 1
  %4 = load i8, i8* %olddl, align 1
  %conv2 = zext i8 %4 to i32
  %and = and i32 %conv2, 127
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %scur.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8**, i8*** %scur.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i32, i32* %buffersize.addr, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp5 = icmp uge i8* %9, %add.ptr4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i8**, i8*** %scur.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %olddl, align 1
  %15 = load i8, i8* %olddl, align 1
  %conv8 = zext i8 %15 to i32
  %mul9 = mul nsw i32 %conv8, 2
  %add = add nsw i32 %mul9, 1
  %conv10 = trunc i32 %add to i8
  store i8 %conv10, i8* %mydl, align 1
  %16 = load i8**, i8*** %scur.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8**, i8*** %scur.addr, align 8
  store i8* %add.ptr11, i8** %18, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %19 = load i8, i8* %mydl, align 1
  %20 = load i8*, i8** %mydlptr.addr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* %olddl, align 1
  %conv13 = zext i8 %21 to i32
  %shr = ashr i32 %conv13, 7
  %and14 = and i32 %shr, 1
  store i32 %and14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @unmew(i8* %source, i8* %dest, i32 %ssize, i32 %dsize, i8** %endsrc, i8** %enddst) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %endsrc.addr = alloca i8**, align 8
  %enddst.addr = alloca i8**, align 8
  %mydl = alloca i8, align 1
  %myeax_backbytes = alloca i32, align 4
  %myecx_backsize = alloca i32, align 4
  %oldback = alloca i32, align 4
  %csrc = alloca i8*, align 8
  %cdst = alloca i8*, align 8
  %oob = alloca i32, align 4
  %lostbit = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 %dsize, i32* %dsize.addr, align 4
  store i8** %endsrc, i8*** %endsrc.addr, align 8
  store i8** %enddst, i8*** %enddst.addr, align 8
  store i8 -128, i8* %mydl, align 1
  store i32 0, i32* %oldback, align 4
  %0 = load i8*, i8** %source.addr, align 8
  store i8* %0, i8** %csrc, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  store i8* %1, i8** %cdst, align 8
  store i32 1, i32* %lostbit, align 4
  %2 = load i8*, i8** %csrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %csrc, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %cdst, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %cdst, align 8
  store i8 %3, i8* %4, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.26, %if.end.267
  %5 = load i8*, i8** %source.addr, align 8
  %6 = load i32, i32* %ssize.addr, align 4
  %call = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %5, i32 %6)
  store i32 %call, i32* %oob, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.243

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %oob, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %myecx_backsize, align 4
  %8 = load i8*, i8** %source.addr, align 8
  %9 = load i32, i32* %ssize.addr, align 4
  %call3 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %8, i32 %9)
  store i32 %call3, i32* %oob, align 4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.44

if.then.5:                                        ; preds = %if.end
  %10 = load i32, i32* %oob, align 4
  %cmp6 = icmp eq i32 %10, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  store i32 0, i32* %myeax_backbytes, align 4
  %11 = load i8*, i8** %source.addr, align 8
  %12 = load i32, i32* %ssize.addr, align 4
  %call9 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %11, i32 %12)
  store i32 %call9, i32* %oob, align 4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %13 = load i32, i32* %oob, align 4
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.11
  store i32 1, i32* %lostbit, align 4
  %14 = load i32, i32* %myecx_backsize, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %myecx_backsize, align 4
  store i32 16, i32* %myeax_backbytes, align 4
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.21, %if.end.14
  %15 = load i32, i32* %myeax_backbytes, align 4
  %cmp16 = icmp ult i32 %15, 256
  br i1 %cmp16, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.15
  %16 = load i8*, i8** %source.addr, align 8
  %17 = load i32, i32* %ssize.addr, align 4
  %call18 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %16, i32 %17)
  store i32 %call18, i32* %oob, align 4
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body.17
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.body.17
  %18 = load i32, i32* %myeax_backbytes, align 4
  %mul = mul i32 %18, 2
  %19 = load i32, i32* %oob, align 4
  %add = add i32 %mul, %19
  store i32 %add, i32* %myeax_backbytes, align 4
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %20 = load i32, i32* %myeax_backbytes, align 4
  %and = and i32 %20, 255
  store i32 %and, i32* %myeax_backbytes, align 4
  %21 = load i32, i32* %myeax_backbytes, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %while.end
  %22 = load i8*, i8** %cdst, align 8
  %23 = load i8*, i8** %dest.addr, align 8
  %24 = load i32, i32* %dsize.addr, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %cmp24 = icmp uge i8* %22, %add.ptr
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.23
  %25 = load i8*, i8** %cdst, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr27, i8** %cdst, align 8
  store i8 0, i8* %25, align 1
  br label %while.body

if.end.28:                                        ; preds = %while.end
  br label %if.end.43

if.else:                                          ; preds = %if.end.8
  %26 = load i8*, i8** %csrc, align 8
  %27 = load i8*, i8** %source.addr, align 8
  %28 = load i32, i32* %ssize.addr, align 4
  %idx.ext29 = sext i32 %28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %27, i64 %idx.ext29
  %cmp31 = icmp uge i8* %26, %add.ptr30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.else
  %29 = load i8*, i8** %csrc, align 8
  %30 = load i8, i8* %29, align 1
  %conv = zext i8 %30 to i32
  store i32 %conv, i32* %myeax_backbytes, align 4
  %31 = load i32, i32* %myecx_backsize, align 4
  %mul34 = mul i32 %31, 2
  %32 = load i32, i32* %myeax_backbytes, align 4
  %and35 = and i32 %32, 1
  %add36 = add i32 %mul34, %and35
  store i32 %add36, i32* %myecx_backsize, align 4
  %33 = load i32, i32* %myeax_backbytes, align 4
  %and37 = and i32 %33, 255
  %shr = lshr i32 %and37, 1
  store i32 %shr, i32* %myeax_backbytes, align 4
  %34 = load i8*, i8** %csrc, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr38, i8** %csrc, align 8
  %35 = load i32, i32* %myeax_backbytes, align 4
  %tobool39 = icmp ne i32 %35, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.33
  br label %while.end.268

if.end.41:                                        ; preds = %if.end.33
  %36 = load i32, i32* %myecx_backsize, align 4
  %add42 = add i32 %36, 2
  store i32 %add42, i32* %myecx_backsize, align 4
  %37 = load i32, i32* %myeax_backbytes, align 4
  store i32 %37, i32* %oldback, align 4
  store i32 0, i32* %lostbit, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end.28
  br label %if.end.120

if.else.44:                                       ; preds = %if.end
  store i32 1, i32* %myecx_backsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.44
  %38 = load i8*, i8** %source.addr, align 8
  %39 = load i32, i32* %ssize.addr, align 4
  %call45 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %38, i32 %39)
  store i32 %call45, i32* %oob, align 4
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %do.body
  %40 = load i32, i32* %myecx_backsize, align 4
  %mul50 = mul i32 %40, 2
  %41 = load i32, i32* %oob, align 4
  %add51 = add i32 %mul50, %41
  store i32 %add51, i32* %myecx_backsize, align 4
  %42 = load i8*, i8** %source.addr, align 8
  %43 = load i32, i32* %ssize.addr, align 4
  %call52 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %42, i32 %43)
  store i32 %call52, i32* %oob, align 4
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.49
  br label %do.cond

do.cond:                                          ; preds = %if.end.56
  %44 = load i32, i32* %oob, align 4
  %tobool57 = icmp ne i32 %44, 0
  br i1 %tobool57, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load i32, i32* %myecx_backsize, align 4
  %sub = sub i32 %45, 1
  %46 = load i32, i32* %lostbit, align 4
  %sub58 = sub i32 %sub, %46
  store i32 %sub58, i32* %myecx_backsize, align 4
  %47 = load i32, i32* %myecx_backsize, align 4
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.else.77, label %if.then.60

if.then.60:                                       ; preds = %do.end
  store i32 1, i32* %myecx_backsize, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %do.cond.74, %if.then.60
  %48 = load i8*, i8** %source.addr, align 8
  %49 = load i32, i32* %ssize.addr, align 4
  %call62 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %48, i32 %49)
  store i32 %call62, i32* %oob, align 4
  %cmp63 = icmp eq i32 %call62, -1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %do.body.61
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %do.body.61
  %50 = load i32, i32* %myecx_backsize, align 4
  %mul67 = mul i32 %50, 2
  %51 = load i32, i32* %oob, align 4
  %add68 = add i32 %mul67, %51
  store i32 %add68, i32* %myecx_backsize, align 4
  %52 = load i8*, i8** %source.addr, align 8
  %53 = load i32, i32* %ssize.addr, align 4
  %call69 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %52, i32 %53)
  store i32 %call69, i32* %oob, align 4
  %cmp70 = icmp eq i32 %call69, -1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.66
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.66
  br label %do.cond.74

do.cond.74:                                       ; preds = %if.end.73
  %54 = load i32, i32* %oob, align 4
  %tobool75 = icmp ne i32 %54, 0
  br i1 %tobool75, label %do.body.61, label %do.end.76

do.end.76:                                        ; preds = %do.cond.74
  %55 = load i32, i32* %oldback, align 4
  store i32 %55, i32* %myeax_backbytes, align 4
  br label %if.end.119

if.else.77:                                       ; preds = %do.end
  %56 = load i8*, i8** %csrc, align 8
  %57 = load i8*, i8** %source.addr, align 8
  %58 = load i32, i32* %ssize.addr, align 4
  %idx.ext78 = sext i32 %58 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %57, i64 %idx.ext78
  %cmp80 = icmp uge i8* %56, %add.ptr79
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else.77
  store i32 -1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.else.77
  %59 = load i8*, i8** %csrc, align 8
  %60 = load i8, i8* %59, align 1
  %conv84 = zext i8 %60 to i32
  store i32 %conv84, i32* %myeax_backbytes, align 4
  %61 = load i32, i32* %myecx_backsize, align 4
  %sub85 = sub i32 %61, 1
  %shl = shl i32 %sub85, 8
  %62 = load i32, i32* %myeax_backbytes, align 4
  %add86 = add i32 %62, %shl
  store i32 %add86, i32* %myeax_backbytes, align 4
  store i32 1, i32* %myecx_backsize, align 4
  %63 = load i8*, i8** %csrc, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr87, i8** %csrc, align 8
  br label %do.body.88

do.body.88:                                       ; preds = %do.cond.101, %if.end.83
  %64 = load i8*, i8** %source.addr, align 8
  %65 = load i32, i32* %ssize.addr, align 4
  %call89 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %64, i32 %65)
  store i32 %call89, i32* %oob, align 4
  %cmp90 = icmp eq i32 %call89, -1
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.body.88
  store i32 -1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %do.body.88
  %66 = load i32, i32* %myecx_backsize, align 4
  %mul94 = mul i32 %66, 2
  %67 = load i32, i32* %oob, align 4
  %add95 = add i32 %mul94, %67
  store i32 %add95, i32* %myecx_backsize, align 4
  %68 = load i8*, i8** %source.addr, align 8
  %69 = load i32, i32* %ssize.addr, align 4
  %call96 = call i32 @doubledl(i8** %csrc, i8* %mydl, i8* %68, i32 %69)
  store i32 %call96, i32* %oob, align 4
  %cmp97 = icmp eq i32 %call96, -1
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.93
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.93
  br label %do.cond.101

do.cond.101:                                      ; preds = %if.end.100
  %70 = load i32, i32* %oob, align 4
  %tobool102 = icmp ne i32 %70, 0
  br i1 %tobool102, label %do.body.88, label %do.end.103

do.end.103:                                       ; preds = %do.cond.101
  %71 = load i32, i32* %myeax_backbytes, align 4
  %cmp104 = icmp uge i32 %71, 32000
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %do.end.103
  %72 = load i32, i32* %myecx_backsize, align 4
  %inc107 = add i32 %72, 1
  store i32 %inc107, i32* %myecx_backsize, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %do.end.103
  %73 = load i32, i32* %myeax_backbytes, align 4
  %cmp109 = icmp uge i32 %73, 1280
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.108
  %74 = load i32, i32* %myecx_backsize, align 4
  %inc112 = add i32 %74, 1
  store i32 %inc112, i32* %myecx_backsize, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.108
  %75 = load i32, i32* %myeax_backbytes, align 4
  %cmp114 = icmp ule i32 %75, 127
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.113
  %76 = load i32, i32* %myecx_backsize, align 4
  %add117 = add i32 %76, 2
  store i32 %add117, i32* %myecx_backsize, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.113
  %77 = load i32, i32* %myeax_backbytes, align 4
  store i32 %77, i32* %oldback, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.end.76
  store i32 0, i32* %lostbit, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.43
  %78 = load i32, i32* %dsize.addr, align 4
  %cmp121 = icmp sgt i32 %78, 0
  br i1 %cmp121, label %land.lhs.true, label %if.then.174

land.lhs.true:                                    ; preds = %if.end.120
  %79 = load i32, i32* %myecx_backsize, align 4
  %cmp123 = icmp ugt i32 %79, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.then.174

land.lhs.true.125:                                ; preds = %land.lhs.true
  %80 = load i32, i32* %myecx_backsize, align 4
  %81 = load i32, i32* %dsize.addr, align 4
  %cmp126 = icmp ule i32 %80, %81
  br i1 %cmp126, label %land.lhs.true.128, label %if.then.174

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %82 = load i8*, i8** %cdst, align 8
  %83 = load i8*, i8** %dest.addr, align 8
  %cmp129 = icmp uge i8* %82, %83
  br i1 %cmp129, label %land.lhs.true.131, label %if.then.174

land.lhs.true.131:                                ; preds = %land.lhs.true.128
  %84 = load i8*, i8** %cdst, align 8
  %85 = load i32, i32* %myecx_backsize, align 4
  %idx.ext132 = zext i32 %85 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %84, i64 %idx.ext132
  %86 = load i8*, i8** %dest.addr, align 8
  %87 = load i32, i32* %dsize.addr, align 4
  %idx.ext134 = sext i32 %87 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %86, i64 %idx.ext134
  %cmp136 = icmp ule i8* %add.ptr133, %add.ptr135
  br i1 %cmp136, label %land.lhs.true.138, label %if.then.174

land.lhs.true.138:                                ; preds = %land.lhs.true.131
  %88 = load i8*, i8** %cdst, align 8
  %89 = load i32, i32* %myecx_backsize, align 4
  %idx.ext139 = zext i32 %89 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %88, i64 %idx.ext139
  %90 = load i8*, i8** %dest.addr, align 8
  %cmp141 = icmp ugt i8* %add.ptr140, %90
  br i1 %cmp141, label %lor.lhs.false, label %if.then.174

lor.lhs.false:                                    ; preds = %land.lhs.true.138
  %91 = load i32, i32* %dsize.addr, align 4
  %cmp143 = icmp sgt i32 %91, 0
  br i1 %cmp143, label %land.lhs.true.145, label %if.then.174

land.lhs.true.145:                                ; preds = %lor.lhs.false
  %92 = load i32, i32* %myecx_backsize, align 4
  %cmp146 = icmp ugt i32 %92, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.then.174

land.lhs.true.148:                                ; preds = %land.lhs.true.145
  %93 = load i32, i32* %myecx_backsize, align 4
  %94 = load i32, i32* %dsize.addr, align 4
  %cmp149 = icmp ule i32 %93, %94
  br i1 %cmp149, label %land.lhs.true.151, label %if.then.174

land.lhs.true.151:                                ; preds = %land.lhs.true.148
  %95 = load i8*, i8** %cdst, align 8
  %96 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext152 = zext i32 %96 to i64
  %idx.neg = sub i64 0, %idx.ext152
  %add.ptr153 = getelementptr inbounds i8, i8* %95, i64 %idx.neg
  %97 = load i8*, i8** %dest.addr, align 8
  %cmp154 = icmp uge i8* %add.ptr153, %97
  br i1 %cmp154, label %land.lhs.true.156, label %if.then.174

land.lhs.true.156:                                ; preds = %land.lhs.true.151
  %98 = load i8*, i8** %cdst, align 8
  %99 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext157 = zext i32 %99 to i64
  %idx.neg158 = sub i64 0, %idx.ext157
  %add.ptr159 = getelementptr inbounds i8, i8* %98, i64 %idx.neg158
  %100 = load i32, i32* %myecx_backsize, align 4
  %idx.ext160 = zext i32 %100 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %add.ptr159, i64 %idx.ext160
  %101 = load i8*, i8** %dest.addr, align 8
  %102 = load i32, i32* %dsize.addr, align 4
  %idx.ext162 = sext i32 %102 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %101, i64 %idx.ext162
  %cmp164 = icmp ule i8* %add.ptr161, %add.ptr163
  br i1 %cmp164, label %land.lhs.true.166, label %if.then.174

land.lhs.true.166:                                ; preds = %land.lhs.true.156
  %103 = load i8*, i8** %cdst, align 8
  %104 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext167 = zext i32 %104 to i64
  %idx.neg168 = sub i64 0, %idx.ext167
  %add.ptr169 = getelementptr inbounds i8, i8* %103, i64 %idx.neg168
  %105 = load i32, i32* %myecx_backsize, align 4
  %idx.ext170 = zext i32 %105 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %add.ptr169, i64 %idx.ext170
  %106 = load i8*, i8** %dest.addr, align 8
  %cmp172 = icmp ugt i8* %add.ptr171, %106
  br i1 %cmp172, label %if.end.234, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.166, %land.lhs.true.156, %land.lhs.true.151, %land.lhs.true.148, %land.lhs.true.145, %lor.lhs.false, %land.lhs.true.138, %land.lhs.true.131, %land.lhs.true.128, %land.lhs.true.125, %land.lhs.true, %if.end.120
  %107 = load i8*, i8** %dest.addr, align 8
  %108 = load i32, i32* %dsize.addr, align 4
  %109 = load i8*, i8** %cdst, align 8
  %110 = load i32, i32* %myecx_backsize, align 4
  %111 = load i32, i32* %dsize.addr, align 4
  %cmp175 = icmp sgt i32 %111, 0
  br i1 %cmp175, label %land.lhs.true.177, label %land.end

land.lhs.true.177:                                ; preds = %if.then.174
  %112 = load i32, i32* %myecx_backsize, align 4
  %cmp178 = icmp ugt i32 %112, 0
  br i1 %cmp178, label %land.lhs.true.180, label %land.end

land.lhs.true.180:                                ; preds = %land.lhs.true.177
  %113 = load i32, i32* %myecx_backsize, align 4
  %114 = load i32, i32* %dsize.addr, align 4
  %cmp181 = icmp ule i32 %113, %114
  br i1 %cmp181, label %land.lhs.true.183, label %land.end

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %115 = load i8*, i8** %cdst, align 8
  %116 = load i8*, i8** %dest.addr, align 8
  %cmp184 = icmp uge i8* %115, %116
  br i1 %cmp184, label %land.lhs.true.186, label %land.end

land.lhs.true.186:                                ; preds = %land.lhs.true.183
  %117 = load i8*, i8** %cdst, align 8
  %118 = load i32, i32* %myecx_backsize, align 4
  %idx.ext187 = zext i32 %118 to i64
  %add.ptr188 = getelementptr inbounds i8, i8* %117, i64 %idx.ext187
  %119 = load i8*, i8** %dest.addr, align 8
  %120 = load i32, i32* %dsize.addr, align 4
  %idx.ext189 = sext i32 %120 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %119, i64 %idx.ext189
  %cmp191 = icmp ule i8* %add.ptr188, %add.ptr190
  br i1 %cmp191, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.186
  %121 = load i8*, i8** %cdst, align 8
  %122 = load i32, i32* %myecx_backsize, align 4
  %idx.ext193 = zext i32 %122 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %121, i64 %idx.ext193
  %123 = load i8*, i8** %dest.addr, align 8
  %cmp195 = icmp ugt i8* %add.ptr194, %123
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.186, %land.lhs.true.183, %land.lhs.true.180, %land.lhs.true.177, %if.then.174
  %124 = phi i1 [ false, %land.lhs.true.186 ], [ false, %land.lhs.true.183 ], [ false, %land.lhs.true.180 ], [ false, %land.lhs.true.177 ], [ false, %if.then.174 ], [ %cmp195, %land.rhs ]
  %land.ext = zext i1 %124 to i32
  %125 = load i8*, i8** %dest.addr, align 8
  %126 = load i32, i32* %dsize.addr, align 4
  %127 = load i8*, i8** %cdst, align 8
  %128 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext197 = zext i32 %128 to i64
  %idx.neg198 = sub i64 0, %idx.ext197
  %add.ptr199 = getelementptr inbounds i8, i8* %127, i64 %idx.neg198
  %129 = load i32, i32* %myecx_backsize, align 4
  %130 = load i32, i32* %dsize.addr, align 4
  %cmp200 = icmp sgt i32 %130, 0
  br i1 %cmp200, label %land.lhs.true.202, label %land.end.232

land.lhs.true.202:                                ; preds = %land.end
  %131 = load i32, i32* %myecx_backsize, align 4
  %cmp203 = icmp ugt i32 %131, 0
  br i1 %cmp203, label %land.lhs.true.205, label %land.end.232

land.lhs.true.205:                                ; preds = %land.lhs.true.202
  %132 = load i32, i32* %myecx_backsize, align 4
  %133 = load i32, i32* %dsize.addr, align 4
  %cmp206 = icmp ule i32 %132, %133
  br i1 %cmp206, label %land.lhs.true.208, label %land.end.232

land.lhs.true.208:                                ; preds = %land.lhs.true.205
  %134 = load i8*, i8** %cdst, align 8
  %135 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext209 = zext i32 %135 to i64
  %idx.neg210 = sub i64 0, %idx.ext209
  %add.ptr211 = getelementptr inbounds i8, i8* %134, i64 %idx.neg210
  %136 = load i8*, i8** %dest.addr, align 8
  %cmp212 = icmp uge i8* %add.ptr211, %136
  br i1 %cmp212, label %land.lhs.true.214, label %land.end.232

land.lhs.true.214:                                ; preds = %land.lhs.true.208
  %137 = load i8*, i8** %cdst, align 8
  %138 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext215 = zext i32 %138 to i64
  %idx.neg216 = sub i64 0, %idx.ext215
  %add.ptr217 = getelementptr inbounds i8, i8* %137, i64 %idx.neg216
  %139 = load i32, i32* %myecx_backsize, align 4
  %idx.ext218 = zext i32 %139 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %add.ptr217, i64 %idx.ext218
  %140 = load i8*, i8** %dest.addr, align 8
  %141 = load i32, i32* %dsize.addr, align 4
  %idx.ext220 = sext i32 %141 to i64
  %add.ptr221 = getelementptr inbounds i8, i8* %140, i64 %idx.ext220
  %cmp222 = icmp ule i8* %add.ptr219, %add.ptr221
  br i1 %cmp222, label %land.rhs.224, label %land.end.232

land.rhs.224:                                     ; preds = %land.lhs.true.214
  %142 = load i8*, i8** %cdst, align 8
  %143 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext225 = zext i32 %143 to i64
  %idx.neg226 = sub i64 0, %idx.ext225
  %add.ptr227 = getelementptr inbounds i8, i8* %142, i64 %idx.neg226
  %144 = load i32, i32* %myecx_backsize, align 4
  %idx.ext228 = zext i32 %144 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %add.ptr227, i64 %idx.ext228
  %145 = load i8*, i8** %dest.addr, align 8
  %cmp230 = icmp ugt i8* %add.ptr229, %145
  br label %land.end.232

land.end.232:                                     ; preds = %land.rhs.224, %land.lhs.true.214, %land.lhs.true.208, %land.lhs.true.205, %land.lhs.true.202, %land.end
  %146 = phi i1 [ false, %land.lhs.true.214 ], [ false, %land.lhs.true.208 ], [ false, %land.lhs.true.205 ], [ false, %land.lhs.true.202 ], [ false, %land.end ], [ %cmp230, %land.rhs.224 ]
  %land.ext233 = zext i1 %146 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i8* %107, i32 %108, i8* %109, i32 %110, i32 %land.ext, i8* %125, i32 %126, i8* %add.ptr199, i32 %129, i32 %land.ext233)
  store i32 -1, i32* %retval
  br label %return

if.end.234:                                       ; preds = %land.lhs.true.166
  br label %while.cond.235

while.cond.235:                                   ; preds = %while.body.237, %if.end.234
  %147 = load i32, i32* %myecx_backsize, align 4
  %dec = add i32 %147, -1
  store i32 %dec, i32* %myecx_backsize, align 4
  %tobool236 = icmp ne i32 %147, 0
  br i1 %tobool236, label %while.body.237, label %while.end.242

while.body.237:                                   ; preds = %while.cond.235
  %148 = load i8*, i8** %cdst, align 8
  %149 = load i32, i32* %myeax_backbytes, align 4
  %idx.ext238 = zext i32 %149 to i64
  %idx.neg239 = sub i64 0, %idx.ext238
  %add.ptr240 = getelementptr inbounds i8, i8* %148, i64 %idx.neg239
  %150 = load i8, i8* %add.ptr240, align 1
  %151 = load i8*, i8** %cdst, align 8
  store i8 %150, i8* %151, align 1
  %152 = load i8*, i8** %cdst, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr241, i8** %cdst, align 8
  br label %while.cond.235

while.end.242:                                    ; preds = %while.cond.235
  br label %if.end.267

if.else.243:                                      ; preds = %while.body
  %153 = load i8*, i8** %cdst, align 8
  %154 = load i8*, i8** %dest.addr, align 8
  %cmp244 = icmp ult i8* %153, %154
  br i1 %cmp244, label %if.then.259, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %if.else.243
  %155 = load i8*, i8** %cdst, align 8
  %156 = load i8*, i8** %dest.addr, align 8
  %157 = load i32, i32* %dsize.addr, align 4
  %idx.ext247 = sext i32 %157 to i64
  %add.ptr248 = getelementptr inbounds i8, i8* %156, i64 %idx.ext247
  %cmp249 = icmp uge i8* %155, %add.ptr248
  br i1 %cmp249, label %if.then.259, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %lor.lhs.false.246
  %158 = load i8*, i8** %csrc, align 8
  %159 = load i8*, i8** %source.addr, align 8
  %cmp252 = icmp ult i8* %158, %159
  br i1 %cmp252, label %if.then.259, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %lor.lhs.false.251
  %160 = load i8*, i8** %csrc, align 8
  %161 = load i8*, i8** %source.addr, align 8
  %162 = load i32, i32* %ssize.addr, align 4
  %idx.ext255 = sext i32 %162 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %161, i64 %idx.ext255
  %cmp257 = icmp uge i8* %160, %add.ptr256
  br i1 %cmp257, label %if.then.259, label %if.end.264

if.then.259:                                      ; preds = %lor.lhs.false.254, %lor.lhs.false.251, %lor.lhs.false.246, %if.else.243
  %163 = load i8*, i8** %cdst, align 8
  %164 = load i8*, i8** %dest.addr, align 8
  %165 = load i32, i32* %dsize.addr, align 4
  %166 = load i8*, i8** %dest.addr, align 8
  %167 = load i32, i32* %dsize.addr, align 4
  %idx.ext260 = sext i32 %167 to i64
  %add.ptr261 = getelementptr inbounds i8, i8* %166, i64 %idx.ext260
  %168 = load i8*, i8** %csrc, align 8
  %169 = load i8*, i8** %source.addr, align 8
  %170 = load i32, i32* %ssize.addr, align 4
  %171 = load i8*, i8** %source.addr, align 8
  %172 = load i32, i32* %ssize.addr, align 4
  %idx.ext262 = sext i32 %172 to i64
  %add.ptr263 = getelementptr inbounds i8, i8* %171, i64 %idx.ext262
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i8* %163, i8* %164, i32 %165, i8* %add.ptr261, i8* %168, i8* %169, i32 %170, i8* %add.ptr263)
  store i32 -1, i32* %retval
  br label %return

if.end.264:                                       ; preds = %lor.lhs.false.254
  %173 = load i8*, i8** %csrc, align 8
  %incdec.ptr265 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr265, i8** %csrc, align 8
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %cdst, align 8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr266, i8** %cdst, align 8
  store i8 %174, i8* %175, align 1
  store i32 1, i32* %lostbit, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.264, %while.end.242
  br label %while.body

while.end.268:                                    ; preds = %if.then.40
  %176 = load i8*, i8** %csrc, align 8
  %177 = load i8**, i8*** %endsrc.addr, align 8
  store i8* %176, i8** %177, align 8
  %178 = load i8*, i8** %cdst, align 8
  %179 = load i8**, i8*** %enddst.addr, align 8
  store i8* %178, i8** %179, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.268, %if.then.259, %land.end.232, %if.then.99, %if.then.92, %if.then.82, %if.then.72, %if.then.65, %if.then.55, %if.then.48, %if.then.32, %if.then.25, %if.then.20, %if.then.13, %if.then.7, %if.then.2
  %180 = load i32, i32* %retval
  ret i32 %180
}

declare void @cli_dbgmsg(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
