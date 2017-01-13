; ModuleID = './MultiSource.Benchmarks.BitBench/1.drop3.drop3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage: drop_0XX [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @drop_0xx(i8* %in, i8* %out, i64 %size) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %left = alloca i32, align 4
  %ibuf = alloca i16, align 2
  %obuf = alloca i16, align 2
  %res = alloca i8, align 1
  %outoff = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %left, align 4
  store i16 0, i16* %ibuf, align 2
  store i16 0, i16* %obuf, align 2
  store i32 0, i32* %outoff, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.261, %entry
  %1 = load i32, i32* %left, align 4
  %sub = sub nsw i32 %1, 3
  store i32 %sub, i32* %left, align 4
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %4 = load i16, i16* %ibuf, align 2
  %conv3 = zext i16 %4 to i32
  %or = or i32 %conv3, %shl
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %ibuf, align 2
  %5 = load i16, i16* %ibuf, align 2
  %conv5 = zext i16 %5 to i32
  %shr = ashr i32 %conv5, 13
  %conv6 = trunc i32 %shr to i8
  store i8 %conv6, i8* %res, align 1
  %conv7 = zext i8 %conv6 to i32
  %cmp8 = icmp sge i32 %conv7, 4
  br i1 %cmp8, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %if.end
  %6 = load i16, i16* %obuf, align 2
  %conv11 = zext i16 %6 to i32
  %shl12 = shl i32 %conv11, 3
  %7 = load i8, i8* %res, align 1
  %conv13 = zext i8 %7 to i32
  %or14 = or i32 %shl12, %conv13
  %conv15 = trunc i32 %or14 to i16
  store i16 %conv15, i16* %obuf, align 2
  %8 = load i32, i32* %outoff, align 4
  %add = add nsw i32 %8, 3
  store i32 %add, i32* %outoff, align 4
  %9 = load i32, i32* %outoff, align 4
  %and = and i32 %9, 7
  %cmp16 = icmp slt i32 %and, 3
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.then.10
  %10 = load i16, i16* %obuf, align 2
  %conv19 = zext i16 %10 to i32
  %11 = load i32, i32* %outoff, align 4
  %and20 = and i32 %11, 7
  %shr21 = ashr i32 %conv19, %and20
  %conv22 = trunc i32 %shr21 to i8
  %12 = load i8*, i8** %out.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr23, i8** %out.addr, align 8
  store i8 %conv22, i8* %12, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %if.then.10
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %13 = load i16, i16* %ibuf, align 2
  %conv26 = zext i16 %13 to i32
  %shl27 = shl i32 %conv26, 3
  %conv28 = trunc i32 %shl27 to i16
  store i16 %conv28, i16* %ibuf, align 2
  %14 = load i32, i32* %left, align 4
  %sub29 = sub nsw i32 %14, 3
  store i32 %sub29, i32* %left, align 4
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.25
  br label %for.end

if.end.33:                                        ; preds = %if.end.25
  %15 = load i16, i16* %ibuf, align 2
  %conv34 = zext i16 %15 to i32
  %shr35 = ashr i32 %conv34, 13
  %conv36 = trunc i32 %shr35 to i8
  store i8 %conv36, i8* %res, align 1
  %conv37 = zext i8 %conv36 to i32
  %cmp38 = icmp sge i32 %conv37, 4
  br i1 %cmp38, label %if.then.40, label %if.end.57

if.then.40:                                       ; preds = %if.end.33
  %16 = load i16, i16* %obuf, align 2
  %conv41 = zext i16 %16 to i32
  %shl42 = shl i32 %conv41, 3
  %17 = load i8, i8* %res, align 1
  %conv43 = zext i8 %17 to i32
  %or44 = or i32 %shl42, %conv43
  %conv45 = trunc i32 %or44 to i16
  store i16 %conv45, i16* %obuf, align 2
  %18 = load i32, i32* %outoff, align 4
  %add46 = add nsw i32 %18, 3
  store i32 %add46, i32* %outoff, align 4
  %19 = load i32, i32* %outoff, align 4
  %and47 = and i32 %19, 7
  %cmp48 = icmp slt i32 %and47, 3
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.40
  %20 = load i16, i16* %obuf, align 2
  %conv51 = zext i16 %20 to i32
  %21 = load i32, i32* %outoff, align 4
  %and52 = and i32 %21, 7
  %shr53 = ashr i32 %conv51, %and52
  %conv54 = trunc i32 %shr53 to i8
  %22 = load i8*, i8** %out.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr55, i8** %out.addr, align 8
  store i8 %conv54, i8* %22, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.then.40
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.33
  %23 = load i16, i16* %ibuf, align 2
  %conv58 = zext i16 %23 to i32
  %shl59 = shl i32 %conv58, 3
  %conv60 = trunc i32 %shl59 to i16
  store i16 %conv60, i16* %ibuf, align 2
  %24 = load i32, i32* %left, align 4
  %sub61 = sub nsw i32 %24, 3
  store i32 %sub61, i32* %left, align 4
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.57
  br label %for.end

if.end.65:                                        ; preds = %if.end.57
  %25 = load i8*, i8** %in.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr66, i8** %in.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv67 = zext i8 %26 to i32
  %shl68 = shl i32 %conv67, 6
  %27 = load i16, i16* %ibuf, align 2
  %conv69 = zext i16 %27 to i32
  %or70 = or i32 %conv69, %shl68
  %conv71 = trunc i32 %or70 to i16
  store i16 %conv71, i16* %ibuf, align 2
  %28 = load i16, i16* %ibuf, align 2
  %conv72 = zext i16 %28 to i32
  %shr73 = ashr i32 %conv72, 13
  %conv74 = trunc i32 %shr73 to i8
  store i8 %conv74, i8* %res, align 1
  %conv75 = zext i8 %conv74 to i32
  %cmp76 = icmp sge i32 %conv75, 4
  br i1 %cmp76, label %if.then.78, label %if.end.95

if.then.78:                                       ; preds = %if.end.65
  %29 = load i16, i16* %obuf, align 2
  %conv79 = zext i16 %29 to i32
  %shl80 = shl i32 %conv79, 3
  %30 = load i8, i8* %res, align 1
  %conv81 = zext i8 %30 to i32
  %or82 = or i32 %shl80, %conv81
  %conv83 = trunc i32 %or82 to i16
  store i16 %conv83, i16* %obuf, align 2
  %31 = load i32, i32* %outoff, align 4
  %add84 = add nsw i32 %31, 3
  store i32 %add84, i32* %outoff, align 4
  %32 = load i32, i32* %outoff, align 4
  %and85 = and i32 %32, 7
  %cmp86 = icmp slt i32 %and85, 3
  br i1 %cmp86, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.then.78
  %33 = load i16, i16* %obuf, align 2
  %conv89 = zext i16 %33 to i32
  %34 = load i32, i32* %outoff, align 4
  %and90 = and i32 %34, 7
  %shr91 = ashr i32 %conv89, %and90
  %conv92 = trunc i32 %shr91 to i8
  %35 = load i8*, i8** %out.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr93, i8** %out.addr, align 8
  store i8 %conv92, i8* %35, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.then.78
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.65
  %36 = load i16, i16* %ibuf, align 2
  %conv96 = zext i16 %36 to i32
  %shl97 = shl i32 %conv96, 3
  %conv98 = trunc i32 %shl97 to i16
  store i16 %conv98, i16* %ibuf, align 2
  %37 = load i32, i32* %left, align 4
  %sub99 = sub nsw i32 %37, 3
  store i32 %sub99, i32* %left, align 4
  %cmp100 = icmp slt i32 %sub99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.95
  br label %for.end

if.end.103:                                       ; preds = %if.end.95
  %38 = load i16, i16* %ibuf, align 2
  %conv104 = zext i16 %38 to i32
  %shr105 = ashr i32 %conv104, 13
  %conv106 = trunc i32 %shr105 to i8
  store i8 %conv106, i8* %res, align 1
  %conv107 = zext i8 %conv106 to i32
  %cmp108 = icmp sge i32 %conv107, 4
  br i1 %cmp108, label %if.then.110, label %if.end.127

if.then.110:                                      ; preds = %if.end.103
  %39 = load i16, i16* %obuf, align 2
  %conv111 = zext i16 %39 to i32
  %shl112 = shl i32 %conv111, 3
  %40 = load i8, i8* %res, align 1
  %conv113 = zext i8 %40 to i32
  %or114 = or i32 %shl112, %conv113
  %conv115 = trunc i32 %or114 to i16
  store i16 %conv115, i16* %obuf, align 2
  %41 = load i32, i32* %outoff, align 4
  %add116 = add nsw i32 %41, 3
  store i32 %add116, i32* %outoff, align 4
  %42 = load i32, i32* %outoff, align 4
  %and117 = and i32 %42, 7
  %cmp118 = icmp slt i32 %and117, 3
  br i1 %cmp118, label %if.then.120, label %if.end.126

if.then.120:                                      ; preds = %if.then.110
  %43 = load i16, i16* %obuf, align 2
  %conv121 = zext i16 %43 to i32
  %44 = load i32, i32* %outoff, align 4
  %and122 = and i32 %44, 7
  %shr123 = ashr i32 %conv121, %and122
  %conv124 = trunc i32 %shr123 to i8
  %45 = load i8*, i8** %out.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr125, i8** %out.addr, align 8
  store i8 %conv124, i8* %45, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.120, %if.then.110
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.103
  %46 = load i16, i16* %ibuf, align 2
  %conv128 = zext i16 %46 to i32
  %shl129 = shl i32 %conv128, 3
  %conv130 = trunc i32 %shl129 to i16
  store i16 %conv130, i16* %ibuf, align 2
  %47 = load i32, i32* %left, align 4
  %sub131 = sub nsw i32 %47, 3
  store i32 %sub131, i32* %left, align 4
  %cmp132 = icmp slt i32 %sub131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.127
  br label %for.end

if.end.135:                                       ; preds = %if.end.127
  %48 = load i16, i16* %ibuf, align 2
  %conv136 = zext i16 %48 to i32
  %shr137 = ashr i32 %conv136, 13
  %conv138 = trunc i32 %shr137 to i8
  store i8 %conv138, i8* %res, align 1
  %conv139 = zext i8 %conv138 to i32
  %cmp140 = icmp sge i32 %conv139, 4
  br i1 %cmp140, label %if.then.142, label %if.end.159

if.then.142:                                      ; preds = %if.end.135
  %49 = load i16, i16* %obuf, align 2
  %conv143 = zext i16 %49 to i32
  %shl144 = shl i32 %conv143, 3
  %50 = load i8, i8* %res, align 1
  %conv145 = zext i8 %50 to i32
  %or146 = or i32 %shl144, %conv145
  %conv147 = trunc i32 %or146 to i16
  store i16 %conv147, i16* %obuf, align 2
  %51 = load i32, i32* %outoff, align 4
  %add148 = add nsw i32 %51, 3
  store i32 %add148, i32* %outoff, align 4
  %52 = load i32, i32* %outoff, align 4
  %and149 = and i32 %52, 7
  %cmp150 = icmp slt i32 %and149, 3
  br i1 %cmp150, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.then.142
  %53 = load i16, i16* %obuf, align 2
  %conv153 = zext i16 %53 to i32
  %54 = load i32, i32* %outoff, align 4
  %and154 = and i32 %54, 7
  %shr155 = ashr i32 %conv153, %and154
  %conv156 = trunc i32 %shr155 to i8
  %55 = load i8*, i8** %out.addr, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr157, i8** %out.addr, align 8
  store i8 %conv156, i8* %55, align 1
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.152, %if.then.142
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.135
  %56 = load i16, i16* %ibuf, align 2
  %conv160 = zext i16 %56 to i32
  %shl161 = shl i32 %conv160, 3
  %conv162 = trunc i32 %shl161 to i16
  store i16 %conv162, i16* %ibuf, align 2
  %57 = load i32, i32* %left, align 4
  %sub163 = sub nsw i32 %57, 3
  store i32 %sub163, i32* %left, align 4
  %cmp164 = icmp slt i32 %sub163, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.159
  br label %for.end

if.end.167:                                       ; preds = %if.end.159
  %58 = load i8*, i8** %in.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr168, i8** %in.addr, align 8
  %59 = load i8, i8* %58, align 1
  %conv169 = zext i8 %59 to i32
  %shl170 = shl i32 %conv169, 7
  %60 = load i16, i16* %ibuf, align 2
  %conv171 = zext i16 %60 to i32
  %or172 = or i32 %conv171, %shl170
  %conv173 = trunc i32 %or172 to i16
  store i16 %conv173, i16* %ibuf, align 2
  %61 = load i16, i16* %ibuf, align 2
  %conv174 = zext i16 %61 to i32
  %shr175 = ashr i32 %conv174, 13
  %conv176 = trunc i32 %shr175 to i8
  store i8 %conv176, i8* %res, align 1
  %conv177 = zext i8 %conv176 to i32
  %cmp178 = icmp sge i32 %conv177, 4
  br i1 %cmp178, label %if.then.180, label %if.end.197

if.then.180:                                      ; preds = %if.end.167
  %62 = load i16, i16* %obuf, align 2
  %conv181 = zext i16 %62 to i32
  %shl182 = shl i32 %conv181, 3
  %63 = load i8, i8* %res, align 1
  %conv183 = zext i8 %63 to i32
  %or184 = or i32 %shl182, %conv183
  %conv185 = trunc i32 %or184 to i16
  store i16 %conv185, i16* %obuf, align 2
  %64 = load i32, i32* %outoff, align 4
  %add186 = add nsw i32 %64, 3
  store i32 %add186, i32* %outoff, align 4
  %65 = load i32, i32* %outoff, align 4
  %and187 = and i32 %65, 7
  %cmp188 = icmp slt i32 %and187, 3
  br i1 %cmp188, label %if.then.190, label %if.end.196

if.then.190:                                      ; preds = %if.then.180
  %66 = load i16, i16* %obuf, align 2
  %conv191 = zext i16 %66 to i32
  %67 = load i32, i32* %outoff, align 4
  %and192 = and i32 %67, 7
  %shr193 = ashr i32 %conv191, %and192
  %conv194 = trunc i32 %shr193 to i8
  %68 = load i8*, i8** %out.addr, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr195, i8** %out.addr, align 8
  store i8 %conv194, i8* %68, align 1
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.190, %if.then.180
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.167
  %69 = load i16, i16* %ibuf, align 2
  %conv198 = zext i16 %69 to i32
  %shl199 = shl i32 %conv198, 3
  %conv200 = trunc i32 %shl199 to i16
  store i16 %conv200, i16* %ibuf, align 2
  %70 = load i32, i32* %left, align 4
  %sub201 = sub nsw i32 %70, 3
  store i32 %sub201, i32* %left, align 4
  %cmp202 = icmp slt i32 %sub201, 0
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.end.197
  br label %for.end

if.end.205:                                       ; preds = %if.end.197
  %71 = load i16, i16* %ibuf, align 2
  %conv206 = zext i16 %71 to i32
  %shr207 = ashr i32 %conv206, 13
  %conv208 = trunc i32 %shr207 to i8
  store i8 %conv208, i8* %res, align 1
  %conv209 = zext i8 %conv208 to i32
  %cmp210 = icmp sge i32 %conv209, 4
  br i1 %cmp210, label %if.then.212, label %if.end.229

if.then.212:                                      ; preds = %if.end.205
  %72 = load i16, i16* %obuf, align 2
  %conv213 = zext i16 %72 to i32
  %shl214 = shl i32 %conv213, 3
  %73 = load i8, i8* %res, align 1
  %conv215 = zext i8 %73 to i32
  %or216 = or i32 %shl214, %conv215
  %conv217 = trunc i32 %or216 to i16
  store i16 %conv217, i16* %obuf, align 2
  %74 = load i32, i32* %outoff, align 4
  %add218 = add nsw i32 %74, 3
  store i32 %add218, i32* %outoff, align 4
  %75 = load i32, i32* %outoff, align 4
  %and219 = and i32 %75, 7
  %cmp220 = icmp slt i32 %and219, 3
  br i1 %cmp220, label %if.then.222, label %if.end.228

if.then.222:                                      ; preds = %if.then.212
  %76 = load i16, i16* %obuf, align 2
  %conv223 = zext i16 %76 to i32
  %77 = load i32, i32* %outoff, align 4
  %and224 = and i32 %77, 7
  %shr225 = ashr i32 %conv223, %and224
  %conv226 = trunc i32 %shr225 to i8
  %78 = load i8*, i8** %out.addr, align 8
  %incdec.ptr227 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr227, i8** %out.addr, align 8
  store i8 %conv226, i8* %78, align 1
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.222, %if.then.212
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.end.205
  %79 = load i16, i16* %ibuf, align 2
  %conv230 = zext i16 %79 to i32
  %shl231 = shl i32 %conv230, 3
  %conv232 = trunc i32 %shl231 to i16
  store i16 %conv232, i16* %ibuf, align 2
  %80 = load i32, i32* %left, align 4
  %sub233 = sub nsw i32 %80, 3
  store i32 %sub233, i32* %left, align 4
  %cmp234 = icmp slt i32 %sub233, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.229
  br label %for.end

if.end.237:                                       ; preds = %if.end.229
  %81 = load i16, i16* %ibuf, align 2
  %conv238 = zext i16 %81 to i32
  %shr239 = ashr i32 %conv238, 13
  %conv240 = trunc i32 %shr239 to i8
  store i8 %conv240, i8* %res, align 1
  %conv241 = zext i8 %conv240 to i32
  %cmp242 = icmp sge i32 %conv241, 4
  br i1 %cmp242, label %if.then.244, label %if.end.261

if.then.244:                                      ; preds = %if.end.237
  %82 = load i16, i16* %obuf, align 2
  %conv245 = zext i16 %82 to i32
  %shl246 = shl i32 %conv245, 3
  %83 = load i8, i8* %res, align 1
  %conv247 = zext i8 %83 to i32
  %or248 = or i32 %shl246, %conv247
  %conv249 = trunc i32 %or248 to i16
  store i16 %conv249, i16* %obuf, align 2
  %84 = load i32, i32* %outoff, align 4
  %add250 = add nsw i32 %84, 3
  store i32 %add250, i32* %outoff, align 4
  %85 = load i32, i32* %outoff, align 4
  %and251 = and i32 %85, 7
  %cmp252 = icmp slt i32 %and251, 3
  br i1 %cmp252, label %if.then.254, label %if.end.260

if.then.254:                                      ; preds = %if.then.244
  %86 = load i16, i16* %obuf, align 2
  %conv255 = zext i16 %86 to i32
  %87 = load i32, i32* %outoff, align 4
  %and256 = and i32 %87, 7
  %shr257 = ashr i32 %conv255, %and256
  %conv258 = trunc i32 %shr257 to i8
  %88 = load i8*, i8** %out.addr, align 8
  %incdec.ptr259 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr259, i8** %out.addr, align 8
  store i8 %conv258, i8* %88, align 1
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.254, %if.then.244
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.237
  %89 = load i16, i16* %ibuf, align 2
  %conv262 = zext i16 %89 to i32
  %shl263 = shl i32 %conv262, 3
  %conv264 = trunc i32 %shl263 to i16
  store i16 %conv264, i16* %ibuf, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.236, %if.then.204, %if.then.166, %if.then.134, %if.then.102, %if.then.64, %if.then.32, %if.then
  %90 = load i32, i32* %outoff, align 4
  %and265 = and i32 %90, 7
  %cmp266 = icmp ne i32 %and265, 0
  br i1 %cmp266, label %if.then.268, label %if.end.275

if.then.268:                                      ; preds = %for.end
  %91 = load i16, i16* %obuf, align 2
  %conv269 = zext i16 %91 to i32
  %92 = load i32, i32* %outoff, align 4
  %and270 = and i32 %92, 7
  %sub271 = sub nsw i32 8, %and270
  %shl272 = shl i32 %conv269, %sub271
  %conv273 = trunc i32 %shl272 to i8
  %93 = load i8*, i8** %out.addr, align 8
  %incdec.ptr274 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr274, i8** %out.addr, align 8
  store i8 %conv273, i8* %93, align 1
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.268, %for.end
  %94 = load i32, i32* %outoff, align 4
  %shr276 = ashr i32 %94, 3
  ret i32 %shr276
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %outsize = alloca i32, align 4
  %time = alloca i32, align 4
  %inbuf = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %outfilename = alloca i8*, align 8
  %postfix = alloca [3 x i8], align 1
  %pre = alloca %struct.timeval, align 8
  %post = alloca %struct.timeval, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [3 x i8]* %postfix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @main.postfix, i32 0, i32 0), i64 3, i32 1, i1 false)
  %call = call noalias i8* @malloc(i64 4000000) #1
  store i8* %call, i8** %inbuf, align 8
  %call1 = call noalias i8* @malloc(i64 4000000) #1
  store i8* %call1, i8** %outbuf, align 8
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %in, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx5, align 8
  call void @perror(i8* %5)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %7) #7
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %postfix, i32 0, i32 0
  %call8 = call i64 @strlen(i8* %arraydecay) #7
  %add = add i64 %call7, %call8
  %add9 = add i64 %add, 1
  %call10 = call noalias i8* @malloc(i64 %add9) #1
  store i8* %call10, i8** %outfilename, align 8
  %8 = load i8*, i8** %outfilename, align 8
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i8* @strcpy(i8* %8, i8* %10) #1
  %11 = load i8*, i8** %outfilename, align 8
  %arraydecay13 = getelementptr inbounds [3 x i8], [3 x i8]* %postfix, i32 0, i32 0
  %call14 = call i8* @strcat(i8* %11, i8* %arraydecay13) #1
  %12 = load i8*, i8** %outfilename, align 8
  call void @free(i8* %12) #1
  %13 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %14 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %in, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %16 = load i32, i32* %argc.addr, align 4
  %cmp16 = icmp ne i32 %16, 1
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end.19:                                        ; preds = %if.end.15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %18 = load i8*, i8** %inbuf, align 8
  %call20 = call i64 @read_data(%struct._IO_FILE* %17, i8* %18)
  store i64 %call20, i64* %size, align 8
  %call21 = call i32 @gettimeofday(%struct.timeval* %pre, %struct.timezone* null) #1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %19 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %19, 20
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %inbuf, align 8
  store i8* %20, i8** %temp, align 8
  %21 = load i8*, i8** %temp, align 8
  %22 = load i8*, i8** %outbuf, align 8
  %23 = load i64, i64* %size, align 8
  %mul = mul i64 %23, 8
  %call23 = call i32 @drop_0xx(i8* %21, i8* %22, i64 %mul)
  store i32 %call23, i32* %outsize, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call24 = call i32 @gettimeofday(%struct.timeval* %post, %struct.timezone* null) #1
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %post, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %mul25 = mul nsw i64 %25, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %post, i32 0, i32 1
  %26 = load i64, i64* %tv_usec, align 8
  %add26 = add nsw i64 %mul25, %26
  %tv_sec27 = getelementptr inbounds %struct.timeval, %struct.timeval* %pre, i32 0, i32 0
  %27 = load i64, i64* %tv_sec27, align 8
  %mul28 = mul nsw i64 %27, 1000000
  %tv_usec29 = getelementptr inbounds %struct.timeval, %struct.timeval* %pre, i32 0, i32 1
  %28 = load i64, i64* %tv_usec29, align 8
  %add30 = add nsw i64 %mul28, %28
  %sub = sub nsw i64 %add26, %add30
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %time, align 4
  %29 = load i32, i32* %outsize, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %29)
  call void @exit(i32 0) #6
  unreachable

return:                                           ; No predecessors!
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %in, i8* %buffer) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 4000000, %struct._IO_FILE* %1)
  ret i64 %call
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
