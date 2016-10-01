; ModuleID = './MultiSource.Benchmarks.Trimaran/2.enc-md5.md5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_context = type { [2 x i64], [4 x i64], [64 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@md5_padding = internal global [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @md5_starts(%struct.md5_context* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.md5_context*, align 8
  store %struct.md5_context* %ctx, %struct.md5_context** %ctx.addr, align 8
  %0 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_context, %struct.md5_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  %1 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %total1, i32 0, i64 1
  store i64 0, i64* %arrayidx2, align 8
  %2 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.md5_context, %struct.md5_context* %2, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x i64], [4 x i64]* %state, i32 0, i64 0
  store i64 1732584193, i64* %arrayidx3, align 8
  %3 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state4 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x i64], [4 x i64]* %state4, i32 0, i64 1
  store i64 4023233417, i64* %arrayidx5, align 8
  %4 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [4 x i64], [4 x i64]* %state6, i32 0, i64 2
  store i64 2562383102, i64* %arrayidx7, align 8
  %5 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i64], [4 x i64]* %state8, i32 0, i64 3
  store i64 271733878, i64* %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @md5_process(%struct.md5_context* %ctx, i8* %data) #0 {
entry:
  %ctx.addr = alloca %struct.md5_context*, align 8
  %data.addr = alloca i8*, align 8
  %X = alloca [16 x i64], align 16
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.md5_context* %ctx, %struct.md5_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl = shl i64 %conv2, 8
  %or = or i64 %conv, %shl
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i64
  %shl5 = shl i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %arrayidx11 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 0
  store i64 %or10, i64* %arrayidx11, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i64
  %shl16 = shl i64 %conv15, 8
  %or17 = or i64 %conv13, %shl16
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i64
  %shl20 = shl i64 %conv19, 16
  %or21 = or i64 %or17, %shl20
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i64
  %shl24 = shl i64 %conv23, 24
  %or25 = or i64 %or21, %shl24
  %arrayidx26 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 1
  store i64 %or25, i64* %arrayidx26, align 8
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %17 to i64
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 9
  %19 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %19 to i64
  %shl31 = shl i64 %conv30, 8
  %or32 = or i64 %conv28, %shl31
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %20, i64 10
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i64
  %shl35 = shl i64 %conv34, 16
  %or36 = or i64 %or32, %shl35
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 11
  %23 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %23 to i64
  %shl39 = shl i64 %conv38, 24
  %or40 = or i64 %or36, %shl39
  %arrayidx41 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 2
  store i64 %or40, i64* %arrayidx41, align 8
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %24, i64 12
  %25 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %25 to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 13
  %27 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %27 to i64
  %shl46 = shl i64 %conv45, 8
  %or47 = or i64 %conv43, %shl46
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %28, i64 14
  %29 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %29 to i64
  %shl50 = shl i64 %conv49, 16
  %or51 = or i64 %or47, %shl50
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %30, i64 15
  %31 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %31 to i64
  %shl54 = shl i64 %conv53, 24
  %or55 = or i64 %or51, %shl54
  %arrayidx56 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 3
  store i64 %or55, i64* %arrayidx56, align 8
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %32, i64 16
  %33 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %33 to i64
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %34, i64 17
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %35 to i64
  %shl61 = shl i64 %conv60, 8
  %or62 = or i64 %conv58, %shl61
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %36, i64 18
  %37 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %37 to i64
  %shl65 = shl i64 %conv64, 16
  %or66 = or i64 %or62, %shl65
  %38 = load i8*, i8** %data.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %38, i64 19
  %39 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %39 to i64
  %shl69 = shl i64 %conv68, 24
  %or70 = or i64 %or66, %shl69
  %arrayidx71 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 4
  store i64 %or70, i64* %arrayidx71, align 8
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %40, i64 20
  %41 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %41 to i64
  %42 = load i8*, i8** %data.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %42, i64 21
  %43 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %43 to i64
  %shl76 = shl i64 %conv75, 8
  %or77 = or i64 %conv73, %shl76
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %44, i64 22
  %45 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %45 to i64
  %shl80 = shl i64 %conv79, 16
  %or81 = or i64 %or77, %shl80
  %46 = load i8*, i8** %data.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %46, i64 23
  %47 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %47 to i64
  %shl84 = shl i64 %conv83, 24
  %or85 = or i64 %or81, %shl84
  %arrayidx86 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 5
  store i64 %or85, i64* %arrayidx86, align 8
  %48 = load i8*, i8** %data.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %48, i64 24
  %49 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %49 to i64
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %50, i64 25
  %51 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %51 to i64
  %shl91 = shl i64 %conv90, 8
  %or92 = or i64 %conv88, %shl91
  %52 = load i8*, i8** %data.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %52, i64 26
  %53 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %53 to i64
  %shl95 = shl i64 %conv94, 16
  %or96 = or i64 %or92, %shl95
  %54 = load i8*, i8** %data.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %54, i64 27
  %55 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %55 to i64
  %shl99 = shl i64 %conv98, 24
  %or100 = or i64 %or96, %shl99
  %arrayidx101 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 6
  store i64 %or100, i64* %arrayidx101, align 8
  %56 = load i8*, i8** %data.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %56, i64 28
  %57 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %57 to i64
  %58 = load i8*, i8** %data.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %58, i64 29
  %59 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %59 to i64
  %shl106 = shl i64 %conv105, 8
  %or107 = or i64 %conv103, %shl106
  %60 = load i8*, i8** %data.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %60, i64 30
  %61 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %61 to i64
  %shl110 = shl i64 %conv109, 16
  %or111 = or i64 %or107, %shl110
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %62, i64 31
  %63 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %63 to i64
  %shl114 = shl i64 %conv113, 24
  %or115 = or i64 %or111, %shl114
  %arrayidx116 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 7
  store i64 %or115, i64* %arrayidx116, align 8
  %64 = load i8*, i8** %data.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %64, i64 32
  %65 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %65 to i64
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %66, i64 33
  %67 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %67 to i64
  %shl121 = shl i64 %conv120, 8
  %or122 = or i64 %conv118, %shl121
  %68 = load i8*, i8** %data.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %68, i64 34
  %69 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %69 to i64
  %shl125 = shl i64 %conv124, 16
  %or126 = or i64 %or122, %shl125
  %70 = load i8*, i8** %data.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %70, i64 35
  %71 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %71 to i64
  %shl129 = shl i64 %conv128, 24
  %or130 = or i64 %or126, %shl129
  %arrayidx131 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 8
  store i64 %or130, i64* %arrayidx131, align 8
  %72 = load i8*, i8** %data.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %72, i64 36
  %73 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %73 to i64
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %74, i64 37
  %75 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %75 to i64
  %shl136 = shl i64 %conv135, 8
  %or137 = or i64 %conv133, %shl136
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %76, i64 38
  %77 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %77 to i64
  %shl140 = shl i64 %conv139, 16
  %or141 = or i64 %or137, %shl140
  %78 = load i8*, i8** %data.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %78, i64 39
  %79 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %79 to i64
  %shl144 = shl i64 %conv143, 24
  %or145 = or i64 %or141, %shl144
  %arrayidx146 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 9
  store i64 %or145, i64* %arrayidx146, align 8
  %80 = load i8*, i8** %data.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %80, i64 40
  %81 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %81 to i64
  %82 = load i8*, i8** %data.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %82, i64 41
  %83 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %83 to i64
  %shl151 = shl i64 %conv150, 8
  %or152 = or i64 %conv148, %shl151
  %84 = load i8*, i8** %data.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %84, i64 42
  %85 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %85 to i64
  %shl155 = shl i64 %conv154, 16
  %or156 = or i64 %or152, %shl155
  %86 = load i8*, i8** %data.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %86, i64 43
  %87 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %87 to i64
  %shl159 = shl i64 %conv158, 24
  %or160 = or i64 %or156, %shl159
  %arrayidx161 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 10
  store i64 %or160, i64* %arrayidx161, align 8
  %88 = load i8*, i8** %data.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %88, i64 44
  %89 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %89 to i64
  %90 = load i8*, i8** %data.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %90, i64 45
  %91 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %91 to i64
  %shl166 = shl i64 %conv165, 8
  %or167 = or i64 %conv163, %shl166
  %92 = load i8*, i8** %data.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %92, i64 46
  %93 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %93 to i64
  %shl170 = shl i64 %conv169, 16
  %or171 = or i64 %or167, %shl170
  %94 = load i8*, i8** %data.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %94, i64 47
  %95 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %95 to i64
  %shl174 = shl i64 %conv173, 24
  %or175 = or i64 %or171, %shl174
  %arrayidx176 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 11
  store i64 %or175, i64* %arrayidx176, align 8
  %96 = load i8*, i8** %data.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %96, i64 48
  %97 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %97 to i64
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %98, i64 49
  %99 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %99 to i64
  %shl181 = shl i64 %conv180, 8
  %or182 = or i64 %conv178, %shl181
  %100 = load i8*, i8** %data.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %100, i64 50
  %101 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %101 to i64
  %shl185 = shl i64 %conv184, 16
  %or186 = or i64 %or182, %shl185
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %102, i64 51
  %103 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %103 to i64
  %shl189 = shl i64 %conv188, 24
  %or190 = or i64 %or186, %shl189
  %arrayidx191 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 12
  store i64 %or190, i64* %arrayidx191, align 8
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %104, i64 52
  %105 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %105 to i64
  %106 = load i8*, i8** %data.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %106, i64 53
  %107 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %107 to i64
  %shl196 = shl i64 %conv195, 8
  %or197 = or i64 %conv193, %shl196
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %108, i64 54
  %109 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %109 to i64
  %shl200 = shl i64 %conv199, 16
  %or201 = or i64 %or197, %shl200
  %110 = load i8*, i8** %data.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %110, i64 55
  %111 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %111 to i64
  %shl204 = shl i64 %conv203, 24
  %or205 = or i64 %or201, %shl204
  %arrayidx206 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 13
  store i64 %or205, i64* %arrayidx206, align 8
  %112 = load i8*, i8** %data.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %112, i64 56
  %113 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %113 to i64
  %114 = load i8*, i8** %data.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %114, i64 57
  %115 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %115 to i64
  %shl211 = shl i64 %conv210, 8
  %or212 = or i64 %conv208, %shl211
  %116 = load i8*, i8** %data.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %116, i64 58
  %117 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %117 to i64
  %shl215 = shl i64 %conv214, 16
  %or216 = or i64 %or212, %shl215
  %118 = load i8*, i8** %data.addr, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %118, i64 59
  %119 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %119 to i64
  %shl219 = shl i64 %conv218, 24
  %or220 = or i64 %or216, %shl219
  %arrayidx221 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 14
  store i64 %or220, i64* %arrayidx221, align 8
  %120 = load i8*, i8** %data.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %120, i64 60
  %121 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %121 to i64
  %122 = load i8*, i8** %data.addr, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %122, i64 61
  %123 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %123 to i64
  %shl226 = shl i64 %conv225, 8
  %or227 = or i64 %conv223, %shl226
  %124 = load i8*, i8** %data.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %124, i64 62
  %125 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %125 to i64
  %shl230 = shl i64 %conv229, 16
  %or231 = or i64 %or227, %shl230
  %126 = load i8*, i8** %data.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %126, i64 63
  %127 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %127 to i64
  %shl234 = shl i64 %conv233, 24
  %or235 = or i64 %or231, %shl234
  %arrayidx236 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 15
  store i64 %or235, i64* %arrayidx236, align 8
  %128 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.md5_context, %struct.md5_context* %128, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [4 x i64], [4 x i64]* %state, i32 0, i64 0
  %129 = load i64, i64* %arrayidx237, align 8
  store i64 %129, i64* %A, align 8
  %130 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state238 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %130, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [4 x i64], [4 x i64]* %state238, i32 0, i64 1
  %131 = load i64, i64* %arrayidx239, align 8
  store i64 %131, i64* %B, align 8
  %132 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state240 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %132, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [4 x i64], [4 x i64]* %state240, i32 0, i64 2
  %133 = load i64, i64* %arrayidx241, align 8
  store i64 %133, i64* %C, align 8
  %134 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state242 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %134, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [4 x i64], [4 x i64]* %state242, i32 0, i64 3
  %135 = load i64, i64* %arrayidx243, align 8
  store i64 %135, i64* %D, align 8
  %136 = load i64, i64* %D, align 8
  %137 = load i64, i64* %B, align 8
  %138 = load i64, i64* %C, align 8
  %139 = load i64, i64* %D, align 8
  %xor = xor i64 %138, %139
  %and = and i64 %137, %xor
  %xor244 = xor i64 %136, %and
  %arrayidx245 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 0
  %140 = load i64, i64* %arrayidx245, align 8
  %add = add i64 %xor244, %140
  %add246 = add i64 %add, 3614090360
  %141 = load i64, i64* %A, align 8
  %add247 = add i64 %141, %add246
  store i64 %add247, i64* %A, align 8
  %142 = load i64, i64* %A, align 8
  %shl248 = shl i64 %142, 7
  %143 = load i64, i64* %A, align 8
  %and249 = and i64 %143, 4294967295
  %shr = lshr i64 %and249, 25
  %or250 = or i64 %shl248, %shr
  %144 = load i64, i64* %B, align 8
  %add251 = add i64 %or250, %144
  store i64 %add251, i64* %A, align 8
  %145 = load i64, i64* %C, align 8
  %146 = load i64, i64* %A, align 8
  %147 = load i64, i64* %B, align 8
  %148 = load i64, i64* %C, align 8
  %xor252 = xor i64 %147, %148
  %and253 = and i64 %146, %xor252
  %xor254 = xor i64 %145, %and253
  %arrayidx255 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 1
  %149 = load i64, i64* %arrayidx255, align 8
  %add256 = add i64 %xor254, %149
  %add257 = add i64 %add256, 3905402710
  %150 = load i64, i64* %D, align 8
  %add258 = add i64 %150, %add257
  store i64 %add258, i64* %D, align 8
  %151 = load i64, i64* %D, align 8
  %shl259 = shl i64 %151, 12
  %152 = load i64, i64* %D, align 8
  %and260 = and i64 %152, 4294967295
  %shr261 = lshr i64 %and260, 20
  %or262 = or i64 %shl259, %shr261
  %153 = load i64, i64* %A, align 8
  %add263 = add i64 %or262, %153
  store i64 %add263, i64* %D, align 8
  %154 = load i64, i64* %B, align 8
  %155 = load i64, i64* %D, align 8
  %156 = load i64, i64* %A, align 8
  %157 = load i64, i64* %B, align 8
  %xor264 = xor i64 %156, %157
  %and265 = and i64 %155, %xor264
  %xor266 = xor i64 %154, %and265
  %arrayidx267 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 2
  %158 = load i64, i64* %arrayidx267, align 8
  %add268 = add i64 %xor266, %158
  %add269 = add i64 %add268, 606105819
  %159 = load i64, i64* %C, align 8
  %add270 = add i64 %159, %add269
  store i64 %add270, i64* %C, align 8
  %160 = load i64, i64* %C, align 8
  %shl271 = shl i64 %160, 17
  %161 = load i64, i64* %C, align 8
  %and272 = and i64 %161, 4294967295
  %shr273 = lshr i64 %and272, 15
  %or274 = or i64 %shl271, %shr273
  %162 = load i64, i64* %D, align 8
  %add275 = add i64 %or274, %162
  store i64 %add275, i64* %C, align 8
  %163 = load i64, i64* %A, align 8
  %164 = load i64, i64* %C, align 8
  %165 = load i64, i64* %D, align 8
  %166 = load i64, i64* %A, align 8
  %xor276 = xor i64 %165, %166
  %and277 = and i64 %164, %xor276
  %xor278 = xor i64 %163, %and277
  %arrayidx279 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 3
  %167 = load i64, i64* %arrayidx279, align 8
  %add280 = add i64 %xor278, %167
  %add281 = add i64 %add280, 3250441966
  %168 = load i64, i64* %B, align 8
  %add282 = add i64 %168, %add281
  store i64 %add282, i64* %B, align 8
  %169 = load i64, i64* %B, align 8
  %shl283 = shl i64 %169, 22
  %170 = load i64, i64* %B, align 8
  %and284 = and i64 %170, 4294967295
  %shr285 = lshr i64 %and284, 10
  %or286 = or i64 %shl283, %shr285
  %171 = load i64, i64* %C, align 8
  %add287 = add i64 %or286, %171
  store i64 %add287, i64* %B, align 8
  %172 = load i64, i64* %D, align 8
  %173 = load i64, i64* %B, align 8
  %174 = load i64, i64* %C, align 8
  %175 = load i64, i64* %D, align 8
  %xor288 = xor i64 %174, %175
  %and289 = and i64 %173, %xor288
  %xor290 = xor i64 %172, %and289
  %arrayidx291 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 4
  %176 = load i64, i64* %arrayidx291, align 8
  %add292 = add i64 %xor290, %176
  %add293 = add i64 %add292, 4118548399
  %177 = load i64, i64* %A, align 8
  %add294 = add i64 %177, %add293
  store i64 %add294, i64* %A, align 8
  %178 = load i64, i64* %A, align 8
  %shl295 = shl i64 %178, 7
  %179 = load i64, i64* %A, align 8
  %and296 = and i64 %179, 4294967295
  %shr297 = lshr i64 %and296, 25
  %or298 = or i64 %shl295, %shr297
  %180 = load i64, i64* %B, align 8
  %add299 = add i64 %or298, %180
  store i64 %add299, i64* %A, align 8
  %181 = load i64, i64* %C, align 8
  %182 = load i64, i64* %A, align 8
  %183 = load i64, i64* %B, align 8
  %184 = load i64, i64* %C, align 8
  %xor300 = xor i64 %183, %184
  %and301 = and i64 %182, %xor300
  %xor302 = xor i64 %181, %and301
  %arrayidx303 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 5
  %185 = load i64, i64* %arrayidx303, align 8
  %add304 = add i64 %xor302, %185
  %add305 = add i64 %add304, 1200080426
  %186 = load i64, i64* %D, align 8
  %add306 = add i64 %186, %add305
  store i64 %add306, i64* %D, align 8
  %187 = load i64, i64* %D, align 8
  %shl307 = shl i64 %187, 12
  %188 = load i64, i64* %D, align 8
  %and308 = and i64 %188, 4294967295
  %shr309 = lshr i64 %and308, 20
  %or310 = or i64 %shl307, %shr309
  %189 = load i64, i64* %A, align 8
  %add311 = add i64 %or310, %189
  store i64 %add311, i64* %D, align 8
  %190 = load i64, i64* %B, align 8
  %191 = load i64, i64* %D, align 8
  %192 = load i64, i64* %A, align 8
  %193 = load i64, i64* %B, align 8
  %xor312 = xor i64 %192, %193
  %and313 = and i64 %191, %xor312
  %xor314 = xor i64 %190, %and313
  %arrayidx315 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 6
  %194 = load i64, i64* %arrayidx315, align 8
  %add316 = add i64 %xor314, %194
  %add317 = add i64 %add316, 2821735955
  %195 = load i64, i64* %C, align 8
  %add318 = add i64 %195, %add317
  store i64 %add318, i64* %C, align 8
  %196 = load i64, i64* %C, align 8
  %shl319 = shl i64 %196, 17
  %197 = load i64, i64* %C, align 8
  %and320 = and i64 %197, 4294967295
  %shr321 = lshr i64 %and320, 15
  %or322 = or i64 %shl319, %shr321
  %198 = load i64, i64* %D, align 8
  %add323 = add i64 %or322, %198
  store i64 %add323, i64* %C, align 8
  %199 = load i64, i64* %A, align 8
  %200 = load i64, i64* %C, align 8
  %201 = load i64, i64* %D, align 8
  %202 = load i64, i64* %A, align 8
  %xor324 = xor i64 %201, %202
  %and325 = and i64 %200, %xor324
  %xor326 = xor i64 %199, %and325
  %arrayidx327 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 7
  %203 = load i64, i64* %arrayidx327, align 8
  %add328 = add i64 %xor326, %203
  %add329 = add i64 %add328, 4249261313
  %204 = load i64, i64* %B, align 8
  %add330 = add i64 %204, %add329
  store i64 %add330, i64* %B, align 8
  %205 = load i64, i64* %B, align 8
  %shl331 = shl i64 %205, 22
  %206 = load i64, i64* %B, align 8
  %and332 = and i64 %206, 4294967295
  %shr333 = lshr i64 %and332, 10
  %or334 = or i64 %shl331, %shr333
  %207 = load i64, i64* %C, align 8
  %add335 = add i64 %or334, %207
  store i64 %add335, i64* %B, align 8
  %208 = load i64, i64* %D, align 8
  %209 = load i64, i64* %B, align 8
  %210 = load i64, i64* %C, align 8
  %211 = load i64, i64* %D, align 8
  %xor336 = xor i64 %210, %211
  %and337 = and i64 %209, %xor336
  %xor338 = xor i64 %208, %and337
  %arrayidx339 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 8
  %212 = load i64, i64* %arrayidx339, align 8
  %add340 = add i64 %xor338, %212
  %add341 = add i64 %add340, 1770035416
  %213 = load i64, i64* %A, align 8
  %add342 = add i64 %213, %add341
  store i64 %add342, i64* %A, align 8
  %214 = load i64, i64* %A, align 8
  %shl343 = shl i64 %214, 7
  %215 = load i64, i64* %A, align 8
  %and344 = and i64 %215, 4294967295
  %shr345 = lshr i64 %and344, 25
  %or346 = or i64 %shl343, %shr345
  %216 = load i64, i64* %B, align 8
  %add347 = add i64 %or346, %216
  store i64 %add347, i64* %A, align 8
  %217 = load i64, i64* %C, align 8
  %218 = load i64, i64* %A, align 8
  %219 = load i64, i64* %B, align 8
  %220 = load i64, i64* %C, align 8
  %xor348 = xor i64 %219, %220
  %and349 = and i64 %218, %xor348
  %xor350 = xor i64 %217, %and349
  %arrayidx351 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 9
  %221 = load i64, i64* %arrayidx351, align 8
  %add352 = add i64 %xor350, %221
  %add353 = add i64 %add352, 2336552879
  %222 = load i64, i64* %D, align 8
  %add354 = add i64 %222, %add353
  store i64 %add354, i64* %D, align 8
  %223 = load i64, i64* %D, align 8
  %shl355 = shl i64 %223, 12
  %224 = load i64, i64* %D, align 8
  %and356 = and i64 %224, 4294967295
  %shr357 = lshr i64 %and356, 20
  %or358 = or i64 %shl355, %shr357
  %225 = load i64, i64* %A, align 8
  %add359 = add i64 %or358, %225
  store i64 %add359, i64* %D, align 8
  %226 = load i64, i64* %B, align 8
  %227 = load i64, i64* %D, align 8
  %228 = load i64, i64* %A, align 8
  %229 = load i64, i64* %B, align 8
  %xor360 = xor i64 %228, %229
  %and361 = and i64 %227, %xor360
  %xor362 = xor i64 %226, %and361
  %arrayidx363 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 10
  %230 = load i64, i64* %arrayidx363, align 8
  %add364 = add i64 %xor362, %230
  %add365 = add i64 %add364, 4294925233
  %231 = load i64, i64* %C, align 8
  %add366 = add i64 %231, %add365
  store i64 %add366, i64* %C, align 8
  %232 = load i64, i64* %C, align 8
  %shl367 = shl i64 %232, 17
  %233 = load i64, i64* %C, align 8
  %and368 = and i64 %233, 4294967295
  %shr369 = lshr i64 %and368, 15
  %or370 = or i64 %shl367, %shr369
  %234 = load i64, i64* %D, align 8
  %add371 = add i64 %or370, %234
  store i64 %add371, i64* %C, align 8
  %235 = load i64, i64* %A, align 8
  %236 = load i64, i64* %C, align 8
  %237 = load i64, i64* %D, align 8
  %238 = load i64, i64* %A, align 8
  %xor372 = xor i64 %237, %238
  %and373 = and i64 %236, %xor372
  %xor374 = xor i64 %235, %and373
  %arrayidx375 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 11
  %239 = load i64, i64* %arrayidx375, align 8
  %add376 = add i64 %xor374, %239
  %add377 = add i64 %add376, 2304563134
  %240 = load i64, i64* %B, align 8
  %add378 = add i64 %240, %add377
  store i64 %add378, i64* %B, align 8
  %241 = load i64, i64* %B, align 8
  %shl379 = shl i64 %241, 22
  %242 = load i64, i64* %B, align 8
  %and380 = and i64 %242, 4294967295
  %shr381 = lshr i64 %and380, 10
  %or382 = or i64 %shl379, %shr381
  %243 = load i64, i64* %C, align 8
  %add383 = add i64 %or382, %243
  store i64 %add383, i64* %B, align 8
  %244 = load i64, i64* %D, align 8
  %245 = load i64, i64* %B, align 8
  %246 = load i64, i64* %C, align 8
  %247 = load i64, i64* %D, align 8
  %xor384 = xor i64 %246, %247
  %and385 = and i64 %245, %xor384
  %xor386 = xor i64 %244, %and385
  %arrayidx387 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 12
  %248 = load i64, i64* %arrayidx387, align 8
  %add388 = add i64 %xor386, %248
  %add389 = add i64 %add388, 1804603682
  %249 = load i64, i64* %A, align 8
  %add390 = add i64 %249, %add389
  store i64 %add390, i64* %A, align 8
  %250 = load i64, i64* %A, align 8
  %shl391 = shl i64 %250, 7
  %251 = load i64, i64* %A, align 8
  %and392 = and i64 %251, 4294967295
  %shr393 = lshr i64 %and392, 25
  %or394 = or i64 %shl391, %shr393
  %252 = load i64, i64* %B, align 8
  %add395 = add i64 %or394, %252
  store i64 %add395, i64* %A, align 8
  %253 = load i64, i64* %C, align 8
  %254 = load i64, i64* %A, align 8
  %255 = load i64, i64* %B, align 8
  %256 = load i64, i64* %C, align 8
  %xor396 = xor i64 %255, %256
  %and397 = and i64 %254, %xor396
  %xor398 = xor i64 %253, %and397
  %arrayidx399 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 13
  %257 = load i64, i64* %arrayidx399, align 8
  %add400 = add i64 %xor398, %257
  %add401 = add i64 %add400, 4254626195
  %258 = load i64, i64* %D, align 8
  %add402 = add i64 %258, %add401
  store i64 %add402, i64* %D, align 8
  %259 = load i64, i64* %D, align 8
  %shl403 = shl i64 %259, 12
  %260 = load i64, i64* %D, align 8
  %and404 = and i64 %260, 4294967295
  %shr405 = lshr i64 %and404, 20
  %or406 = or i64 %shl403, %shr405
  %261 = load i64, i64* %A, align 8
  %add407 = add i64 %or406, %261
  store i64 %add407, i64* %D, align 8
  %262 = load i64, i64* %B, align 8
  %263 = load i64, i64* %D, align 8
  %264 = load i64, i64* %A, align 8
  %265 = load i64, i64* %B, align 8
  %xor408 = xor i64 %264, %265
  %and409 = and i64 %263, %xor408
  %xor410 = xor i64 %262, %and409
  %arrayidx411 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 14
  %266 = load i64, i64* %arrayidx411, align 8
  %add412 = add i64 %xor410, %266
  %add413 = add i64 %add412, 2792965006
  %267 = load i64, i64* %C, align 8
  %add414 = add i64 %267, %add413
  store i64 %add414, i64* %C, align 8
  %268 = load i64, i64* %C, align 8
  %shl415 = shl i64 %268, 17
  %269 = load i64, i64* %C, align 8
  %and416 = and i64 %269, 4294967295
  %shr417 = lshr i64 %and416, 15
  %or418 = or i64 %shl415, %shr417
  %270 = load i64, i64* %D, align 8
  %add419 = add i64 %or418, %270
  store i64 %add419, i64* %C, align 8
  %271 = load i64, i64* %A, align 8
  %272 = load i64, i64* %C, align 8
  %273 = load i64, i64* %D, align 8
  %274 = load i64, i64* %A, align 8
  %xor420 = xor i64 %273, %274
  %and421 = and i64 %272, %xor420
  %xor422 = xor i64 %271, %and421
  %arrayidx423 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 15
  %275 = load i64, i64* %arrayidx423, align 8
  %add424 = add i64 %xor422, %275
  %add425 = add i64 %add424, 1236535329
  %276 = load i64, i64* %B, align 8
  %add426 = add i64 %276, %add425
  store i64 %add426, i64* %B, align 8
  %277 = load i64, i64* %B, align 8
  %shl427 = shl i64 %277, 22
  %278 = load i64, i64* %B, align 8
  %and428 = and i64 %278, 4294967295
  %shr429 = lshr i64 %and428, 10
  %or430 = or i64 %shl427, %shr429
  %279 = load i64, i64* %C, align 8
  %add431 = add i64 %or430, %279
  store i64 %add431, i64* %B, align 8
  %280 = load i64, i64* %C, align 8
  %281 = load i64, i64* %D, align 8
  %282 = load i64, i64* %B, align 8
  %283 = load i64, i64* %C, align 8
  %xor432 = xor i64 %282, %283
  %and433 = and i64 %281, %xor432
  %xor434 = xor i64 %280, %and433
  %arrayidx435 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 1
  %284 = load i64, i64* %arrayidx435, align 8
  %add436 = add i64 %xor434, %284
  %add437 = add i64 %add436, 4129170786
  %285 = load i64, i64* %A, align 8
  %add438 = add i64 %285, %add437
  store i64 %add438, i64* %A, align 8
  %286 = load i64, i64* %A, align 8
  %shl439 = shl i64 %286, 5
  %287 = load i64, i64* %A, align 8
  %and440 = and i64 %287, 4294967295
  %shr441 = lshr i64 %and440, 27
  %or442 = or i64 %shl439, %shr441
  %288 = load i64, i64* %B, align 8
  %add443 = add i64 %or442, %288
  store i64 %add443, i64* %A, align 8
  %289 = load i64, i64* %B, align 8
  %290 = load i64, i64* %C, align 8
  %291 = load i64, i64* %A, align 8
  %292 = load i64, i64* %B, align 8
  %xor444 = xor i64 %291, %292
  %and445 = and i64 %290, %xor444
  %xor446 = xor i64 %289, %and445
  %arrayidx447 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 6
  %293 = load i64, i64* %arrayidx447, align 8
  %add448 = add i64 %xor446, %293
  %add449 = add i64 %add448, 3225465664
  %294 = load i64, i64* %D, align 8
  %add450 = add i64 %294, %add449
  store i64 %add450, i64* %D, align 8
  %295 = load i64, i64* %D, align 8
  %shl451 = shl i64 %295, 9
  %296 = load i64, i64* %D, align 8
  %and452 = and i64 %296, 4294967295
  %shr453 = lshr i64 %and452, 23
  %or454 = or i64 %shl451, %shr453
  %297 = load i64, i64* %A, align 8
  %add455 = add i64 %or454, %297
  store i64 %add455, i64* %D, align 8
  %298 = load i64, i64* %A, align 8
  %299 = load i64, i64* %B, align 8
  %300 = load i64, i64* %D, align 8
  %301 = load i64, i64* %A, align 8
  %xor456 = xor i64 %300, %301
  %and457 = and i64 %299, %xor456
  %xor458 = xor i64 %298, %and457
  %arrayidx459 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 11
  %302 = load i64, i64* %arrayidx459, align 8
  %add460 = add i64 %xor458, %302
  %add461 = add i64 %add460, 643717713
  %303 = load i64, i64* %C, align 8
  %add462 = add i64 %303, %add461
  store i64 %add462, i64* %C, align 8
  %304 = load i64, i64* %C, align 8
  %shl463 = shl i64 %304, 14
  %305 = load i64, i64* %C, align 8
  %and464 = and i64 %305, 4294967295
  %shr465 = lshr i64 %and464, 18
  %or466 = or i64 %shl463, %shr465
  %306 = load i64, i64* %D, align 8
  %add467 = add i64 %or466, %306
  store i64 %add467, i64* %C, align 8
  %307 = load i64, i64* %D, align 8
  %308 = load i64, i64* %A, align 8
  %309 = load i64, i64* %C, align 8
  %310 = load i64, i64* %D, align 8
  %xor468 = xor i64 %309, %310
  %and469 = and i64 %308, %xor468
  %xor470 = xor i64 %307, %and469
  %arrayidx471 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 0
  %311 = load i64, i64* %arrayidx471, align 8
  %add472 = add i64 %xor470, %311
  %add473 = add i64 %add472, 3921069994
  %312 = load i64, i64* %B, align 8
  %add474 = add i64 %312, %add473
  store i64 %add474, i64* %B, align 8
  %313 = load i64, i64* %B, align 8
  %shl475 = shl i64 %313, 20
  %314 = load i64, i64* %B, align 8
  %and476 = and i64 %314, 4294967295
  %shr477 = lshr i64 %and476, 12
  %or478 = or i64 %shl475, %shr477
  %315 = load i64, i64* %C, align 8
  %add479 = add i64 %or478, %315
  store i64 %add479, i64* %B, align 8
  %316 = load i64, i64* %C, align 8
  %317 = load i64, i64* %D, align 8
  %318 = load i64, i64* %B, align 8
  %319 = load i64, i64* %C, align 8
  %xor480 = xor i64 %318, %319
  %and481 = and i64 %317, %xor480
  %xor482 = xor i64 %316, %and481
  %arrayidx483 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 5
  %320 = load i64, i64* %arrayidx483, align 8
  %add484 = add i64 %xor482, %320
  %add485 = add i64 %add484, 3593408605
  %321 = load i64, i64* %A, align 8
  %add486 = add i64 %321, %add485
  store i64 %add486, i64* %A, align 8
  %322 = load i64, i64* %A, align 8
  %shl487 = shl i64 %322, 5
  %323 = load i64, i64* %A, align 8
  %and488 = and i64 %323, 4294967295
  %shr489 = lshr i64 %and488, 27
  %or490 = or i64 %shl487, %shr489
  %324 = load i64, i64* %B, align 8
  %add491 = add i64 %or490, %324
  store i64 %add491, i64* %A, align 8
  %325 = load i64, i64* %B, align 8
  %326 = load i64, i64* %C, align 8
  %327 = load i64, i64* %A, align 8
  %328 = load i64, i64* %B, align 8
  %xor492 = xor i64 %327, %328
  %and493 = and i64 %326, %xor492
  %xor494 = xor i64 %325, %and493
  %arrayidx495 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 10
  %329 = load i64, i64* %arrayidx495, align 8
  %add496 = add i64 %xor494, %329
  %add497 = add i64 %add496, 38016083
  %330 = load i64, i64* %D, align 8
  %add498 = add i64 %330, %add497
  store i64 %add498, i64* %D, align 8
  %331 = load i64, i64* %D, align 8
  %shl499 = shl i64 %331, 9
  %332 = load i64, i64* %D, align 8
  %and500 = and i64 %332, 4294967295
  %shr501 = lshr i64 %and500, 23
  %or502 = or i64 %shl499, %shr501
  %333 = load i64, i64* %A, align 8
  %add503 = add i64 %or502, %333
  store i64 %add503, i64* %D, align 8
  %334 = load i64, i64* %A, align 8
  %335 = load i64, i64* %B, align 8
  %336 = load i64, i64* %D, align 8
  %337 = load i64, i64* %A, align 8
  %xor504 = xor i64 %336, %337
  %and505 = and i64 %335, %xor504
  %xor506 = xor i64 %334, %and505
  %arrayidx507 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 15
  %338 = load i64, i64* %arrayidx507, align 8
  %add508 = add i64 %xor506, %338
  %add509 = add i64 %add508, 3634488961
  %339 = load i64, i64* %C, align 8
  %add510 = add i64 %339, %add509
  store i64 %add510, i64* %C, align 8
  %340 = load i64, i64* %C, align 8
  %shl511 = shl i64 %340, 14
  %341 = load i64, i64* %C, align 8
  %and512 = and i64 %341, 4294967295
  %shr513 = lshr i64 %and512, 18
  %or514 = or i64 %shl511, %shr513
  %342 = load i64, i64* %D, align 8
  %add515 = add i64 %or514, %342
  store i64 %add515, i64* %C, align 8
  %343 = load i64, i64* %D, align 8
  %344 = load i64, i64* %A, align 8
  %345 = load i64, i64* %C, align 8
  %346 = load i64, i64* %D, align 8
  %xor516 = xor i64 %345, %346
  %and517 = and i64 %344, %xor516
  %xor518 = xor i64 %343, %and517
  %arrayidx519 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 4
  %347 = load i64, i64* %arrayidx519, align 8
  %add520 = add i64 %xor518, %347
  %add521 = add i64 %add520, 3889429448
  %348 = load i64, i64* %B, align 8
  %add522 = add i64 %348, %add521
  store i64 %add522, i64* %B, align 8
  %349 = load i64, i64* %B, align 8
  %shl523 = shl i64 %349, 20
  %350 = load i64, i64* %B, align 8
  %and524 = and i64 %350, 4294967295
  %shr525 = lshr i64 %and524, 12
  %or526 = or i64 %shl523, %shr525
  %351 = load i64, i64* %C, align 8
  %add527 = add i64 %or526, %351
  store i64 %add527, i64* %B, align 8
  %352 = load i64, i64* %C, align 8
  %353 = load i64, i64* %D, align 8
  %354 = load i64, i64* %B, align 8
  %355 = load i64, i64* %C, align 8
  %xor528 = xor i64 %354, %355
  %and529 = and i64 %353, %xor528
  %xor530 = xor i64 %352, %and529
  %arrayidx531 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 9
  %356 = load i64, i64* %arrayidx531, align 8
  %add532 = add i64 %xor530, %356
  %add533 = add i64 %add532, 568446438
  %357 = load i64, i64* %A, align 8
  %add534 = add i64 %357, %add533
  store i64 %add534, i64* %A, align 8
  %358 = load i64, i64* %A, align 8
  %shl535 = shl i64 %358, 5
  %359 = load i64, i64* %A, align 8
  %and536 = and i64 %359, 4294967295
  %shr537 = lshr i64 %and536, 27
  %or538 = or i64 %shl535, %shr537
  %360 = load i64, i64* %B, align 8
  %add539 = add i64 %or538, %360
  store i64 %add539, i64* %A, align 8
  %361 = load i64, i64* %B, align 8
  %362 = load i64, i64* %C, align 8
  %363 = load i64, i64* %A, align 8
  %364 = load i64, i64* %B, align 8
  %xor540 = xor i64 %363, %364
  %and541 = and i64 %362, %xor540
  %xor542 = xor i64 %361, %and541
  %arrayidx543 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 14
  %365 = load i64, i64* %arrayidx543, align 8
  %add544 = add i64 %xor542, %365
  %add545 = add i64 %add544, 3275163606
  %366 = load i64, i64* %D, align 8
  %add546 = add i64 %366, %add545
  store i64 %add546, i64* %D, align 8
  %367 = load i64, i64* %D, align 8
  %shl547 = shl i64 %367, 9
  %368 = load i64, i64* %D, align 8
  %and548 = and i64 %368, 4294967295
  %shr549 = lshr i64 %and548, 23
  %or550 = or i64 %shl547, %shr549
  %369 = load i64, i64* %A, align 8
  %add551 = add i64 %or550, %369
  store i64 %add551, i64* %D, align 8
  %370 = load i64, i64* %A, align 8
  %371 = load i64, i64* %B, align 8
  %372 = load i64, i64* %D, align 8
  %373 = load i64, i64* %A, align 8
  %xor552 = xor i64 %372, %373
  %and553 = and i64 %371, %xor552
  %xor554 = xor i64 %370, %and553
  %arrayidx555 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 3
  %374 = load i64, i64* %arrayidx555, align 8
  %add556 = add i64 %xor554, %374
  %add557 = add i64 %add556, 4107603335
  %375 = load i64, i64* %C, align 8
  %add558 = add i64 %375, %add557
  store i64 %add558, i64* %C, align 8
  %376 = load i64, i64* %C, align 8
  %shl559 = shl i64 %376, 14
  %377 = load i64, i64* %C, align 8
  %and560 = and i64 %377, 4294967295
  %shr561 = lshr i64 %and560, 18
  %or562 = or i64 %shl559, %shr561
  %378 = load i64, i64* %D, align 8
  %add563 = add i64 %or562, %378
  store i64 %add563, i64* %C, align 8
  %379 = load i64, i64* %D, align 8
  %380 = load i64, i64* %A, align 8
  %381 = load i64, i64* %C, align 8
  %382 = load i64, i64* %D, align 8
  %xor564 = xor i64 %381, %382
  %and565 = and i64 %380, %xor564
  %xor566 = xor i64 %379, %and565
  %arrayidx567 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 8
  %383 = load i64, i64* %arrayidx567, align 8
  %add568 = add i64 %xor566, %383
  %add569 = add i64 %add568, 1163531501
  %384 = load i64, i64* %B, align 8
  %add570 = add i64 %384, %add569
  store i64 %add570, i64* %B, align 8
  %385 = load i64, i64* %B, align 8
  %shl571 = shl i64 %385, 20
  %386 = load i64, i64* %B, align 8
  %and572 = and i64 %386, 4294967295
  %shr573 = lshr i64 %and572, 12
  %or574 = or i64 %shl571, %shr573
  %387 = load i64, i64* %C, align 8
  %add575 = add i64 %or574, %387
  store i64 %add575, i64* %B, align 8
  %388 = load i64, i64* %C, align 8
  %389 = load i64, i64* %D, align 8
  %390 = load i64, i64* %B, align 8
  %391 = load i64, i64* %C, align 8
  %xor576 = xor i64 %390, %391
  %and577 = and i64 %389, %xor576
  %xor578 = xor i64 %388, %and577
  %arrayidx579 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 13
  %392 = load i64, i64* %arrayidx579, align 8
  %add580 = add i64 %xor578, %392
  %add581 = add i64 %add580, 2850285829
  %393 = load i64, i64* %A, align 8
  %add582 = add i64 %393, %add581
  store i64 %add582, i64* %A, align 8
  %394 = load i64, i64* %A, align 8
  %shl583 = shl i64 %394, 5
  %395 = load i64, i64* %A, align 8
  %and584 = and i64 %395, 4294967295
  %shr585 = lshr i64 %and584, 27
  %or586 = or i64 %shl583, %shr585
  %396 = load i64, i64* %B, align 8
  %add587 = add i64 %or586, %396
  store i64 %add587, i64* %A, align 8
  %397 = load i64, i64* %B, align 8
  %398 = load i64, i64* %C, align 8
  %399 = load i64, i64* %A, align 8
  %400 = load i64, i64* %B, align 8
  %xor588 = xor i64 %399, %400
  %and589 = and i64 %398, %xor588
  %xor590 = xor i64 %397, %and589
  %arrayidx591 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 2
  %401 = load i64, i64* %arrayidx591, align 8
  %add592 = add i64 %xor590, %401
  %add593 = add i64 %add592, 4243563512
  %402 = load i64, i64* %D, align 8
  %add594 = add i64 %402, %add593
  store i64 %add594, i64* %D, align 8
  %403 = load i64, i64* %D, align 8
  %shl595 = shl i64 %403, 9
  %404 = load i64, i64* %D, align 8
  %and596 = and i64 %404, 4294967295
  %shr597 = lshr i64 %and596, 23
  %or598 = or i64 %shl595, %shr597
  %405 = load i64, i64* %A, align 8
  %add599 = add i64 %or598, %405
  store i64 %add599, i64* %D, align 8
  %406 = load i64, i64* %A, align 8
  %407 = load i64, i64* %B, align 8
  %408 = load i64, i64* %D, align 8
  %409 = load i64, i64* %A, align 8
  %xor600 = xor i64 %408, %409
  %and601 = and i64 %407, %xor600
  %xor602 = xor i64 %406, %and601
  %arrayidx603 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 7
  %410 = load i64, i64* %arrayidx603, align 8
  %add604 = add i64 %xor602, %410
  %add605 = add i64 %add604, 1735328473
  %411 = load i64, i64* %C, align 8
  %add606 = add i64 %411, %add605
  store i64 %add606, i64* %C, align 8
  %412 = load i64, i64* %C, align 8
  %shl607 = shl i64 %412, 14
  %413 = load i64, i64* %C, align 8
  %and608 = and i64 %413, 4294967295
  %shr609 = lshr i64 %and608, 18
  %or610 = or i64 %shl607, %shr609
  %414 = load i64, i64* %D, align 8
  %add611 = add i64 %or610, %414
  store i64 %add611, i64* %C, align 8
  %415 = load i64, i64* %D, align 8
  %416 = load i64, i64* %A, align 8
  %417 = load i64, i64* %C, align 8
  %418 = load i64, i64* %D, align 8
  %xor612 = xor i64 %417, %418
  %and613 = and i64 %416, %xor612
  %xor614 = xor i64 %415, %and613
  %arrayidx615 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 12
  %419 = load i64, i64* %arrayidx615, align 8
  %add616 = add i64 %xor614, %419
  %add617 = add i64 %add616, 2368359562
  %420 = load i64, i64* %B, align 8
  %add618 = add i64 %420, %add617
  store i64 %add618, i64* %B, align 8
  %421 = load i64, i64* %B, align 8
  %shl619 = shl i64 %421, 20
  %422 = load i64, i64* %B, align 8
  %and620 = and i64 %422, 4294967295
  %shr621 = lshr i64 %and620, 12
  %or622 = or i64 %shl619, %shr621
  %423 = load i64, i64* %C, align 8
  %add623 = add i64 %or622, %423
  store i64 %add623, i64* %B, align 8
  %424 = load i64, i64* %B, align 8
  %425 = load i64, i64* %C, align 8
  %xor624 = xor i64 %424, %425
  %426 = load i64, i64* %D, align 8
  %xor625 = xor i64 %xor624, %426
  %arrayidx626 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 5
  %427 = load i64, i64* %arrayidx626, align 8
  %add627 = add i64 %xor625, %427
  %add628 = add i64 %add627, 4294588738
  %428 = load i64, i64* %A, align 8
  %add629 = add i64 %428, %add628
  store i64 %add629, i64* %A, align 8
  %429 = load i64, i64* %A, align 8
  %shl630 = shl i64 %429, 4
  %430 = load i64, i64* %A, align 8
  %and631 = and i64 %430, 4294967295
  %shr632 = lshr i64 %and631, 28
  %or633 = or i64 %shl630, %shr632
  %431 = load i64, i64* %B, align 8
  %add634 = add i64 %or633, %431
  store i64 %add634, i64* %A, align 8
  %432 = load i64, i64* %A, align 8
  %433 = load i64, i64* %B, align 8
  %xor635 = xor i64 %432, %433
  %434 = load i64, i64* %C, align 8
  %xor636 = xor i64 %xor635, %434
  %arrayidx637 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 8
  %435 = load i64, i64* %arrayidx637, align 8
  %add638 = add i64 %xor636, %435
  %add639 = add i64 %add638, 2272392833
  %436 = load i64, i64* %D, align 8
  %add640 = add i64 %436, %add639
  store i64 %add640, i64* %D, align 8
  %437 = load i64, i64* %D, align 8
  %shl641 = shl i64 %437, 11
  %438 = load i64, i64* %D, align 8
  %and642 = and i64 %438, 4294967295
  %shr643 = lshr i64 %and642, 21
  %or644 = or i64 %shl641, %shr643
  %439 = load i64, i64* %A, align 8
  %add645 = add i64 %or644, %439
  store i64 %add645, i64* %D, align 8
  %440 = load i64, i64* %D, align 8
  %441 = load i64, i64* %A, align 8
  %xor646 = xor i64 %440, %441
  %442 = load i64, i64* %B, align 8
  %xor647 = xor i64 %xor646, %442
  %arrayidx648 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 11
  %443 = load i64, i64* %arrayidx648, align 8
  %add649 = add i64 %xor647, %443
  %add650 = add i64 %add649, 1839030562
  %444 = load i64, i64* %C, align 8
  %add651 = add i64 %444, %add650
  store i64 %add651, i64* %C, align 8
  %445 = load i64, i64* %C, align 8
  %shl652 = shl i64 %445, 16
  %446 = load i64, i64* %C, align 8
  %and653 = and i64 %446, 4294967295
  %shr654 = lshr i64 %and653, 16
  %or655 = or i64 %shl652, %shr654
  %447 = load i64, i64* %D, align 8
  %add656 = add i64 %or655, %447
  store i64 %add656, i64* %C, align 8
  %448 = load i64, i64* %C, align 8
  %449 = load i64, i64* %D, align 8
  %xor657 = xor i64 %448, %449
  %450 = load i64, i64* %A, align 8
  %xor658 = xor i64 %xor657, %450
  %arrayidx659 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 14
  %451 = load i64, i64* %arrayidx659, align 8
  %add660 = add i64 %xor658, %451
  %add661 = add i64 %add660, 4259657740
  %452 = load i64, i64* %B, align 8
  %add662 = add i64 %452, %add661
  store i64 %add662, i64* %B, align 8
  %453 = load i64, i64* %B, align 8
  %shl663 = shl i64 %453, 23
  %454 = load i64, i64* %B, align 8
  %and664 = and i64 %454, 4294967295
  %shr665 = lshr i64 %and664, 9
  %or666 = or i64 %shl663, %shr665
  %455 = load i64, i64* %C, align 8
  %add667 = add i64 %or666, %455
  store i64 %add667, i64* %B, align 8
  %456 = load i64, i64* %B, align 8
  %457 = load i64, i64* %C, align 8
  %xor668 = xor i64 %456, %457
  %458 = load i64, i64* %D, align 8
  %xor669 = xor i64 %xor668, %458
  %arrayidx670 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 1
  %459 = load i64, i64* %arrayidx670, align 8
  %add671 = add i64 %xor669, %459
  %add672 = add i64 %add671, 2763975236
  %460 = load i64, i64* %A, align 8
  %add673 = add i64 %460, %add672
  store i64 %add673, i64* %A, align 8
  %461 = load i64, i64* %A, align 8
  %shl674 = shl i64 %461, 4
  %462 = load i64, i64* %A, align 8
  %and675 = and i64 %462, 4294967295
  %shr676 = lshr i64 %and675, 28
  %or677 = or i64 %shl674, %shr676
  %463 = load i64, i64* %B, align 8
  %add678 = add i64 %or677, %463
  store i64 %add678, i64* %A, align 8
  %464 = load i64, i64* %A, align 8
  %465 = load i64, i64* %B, align 8
  %xor679 = xor i64 %464, %465
  %466 = load i64, i64* %C, align 8
  %xor680 = xor i64 %xor679, %466
  %arrayidx681 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 4
  %467 = load i64, i64* %arrayidx681, align 8
  %add682 = add i64 %xor680, %467
  %add683 = add i64 %add682, 1272893353
  %468 = load i64, i64* %D, align 8
  %add684 = add i64 %468, %add683
  store i64 %add684, i64* %D, align 8
  %469 = load i64, i64* %D, align 8
  %shl685 = shl i64 %469, 11
  %470 = load i64, i64* %D, align 8
  %and686 = and i64 %470, 4294967295
  %shr687 = lshr i64 %and686, 21
  %or688 = or i64 %shl685, %shr687
  %471 = load i64, i64* %A, align 8
  %add689 = add i64 %or688, %471
  store i64 %add689, i64* %D, align 8
  %472 = load i64, i64* %D, align 8
  %473 = load i64, i64* %A, align 8
  %xor690 = xor i64 %472, %473
  %474 = load i64, i64* %B, align 8
  %xor691 = xor i64 %xor690, %474
  %arrayidx692 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 7
  %475 = load i64, i64* %arrayidx692, align 8
  %add693 = add i64 %xor691, %475
  %add694 = add i64 %add693, 4139469664
  %476 = load i64, i64* %C, align 8
  %add695 = add i64 %476, %add694
  store i64 %add695, i64* %C, align 8
  %477 = load i64, i64* %C, align 8
  %shl696 = shl i64 %477, 16
  %478 = load i64, i64* %C, align 8
  %and697 = and i64 %478, 4294967295
  %shr698 = lshr i64 %and697, 16
  %or699 = or i64 %shl696, %shr698
  %479 = load i64, i64* %D, align 8
  %add700 = add i64 %or699, %479
  store i64 %add700, i64* %C, align 8
  %480 = load i64, i64* %C, align 8
  %481 = load i64, i64* %D, align 8
  %xor701 = xor i64 %480, %481
  %482 = load i64, i64* %A, align 8
  %xor702 = xor i64 %xor701, %482
  %arrayidx703 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 10
  %483 = load i64, i64* %arrayidx703, align 8
  %add704 = add i64 %xor702, %483
  %add705 = add i64 %add704, 3200236656
  %484 = load i64, i64* %B, align 8
  %add706 = add i64 %484, %add705
  store i64 %add706, i64* %B, align 8
  %485 = load i64, i64* %B, align 8
  %shl707 = shl i64 %485, 23
  %486 = load i64, i64* %B, align 8
  %and708 = and i64 %486, 4294967295
  %shr709 = lshr i64 %and708, 9
  %or710 = or i64 %shl707, %shr709
  %487 = load i64, i64* %C, align 8
  %add711 = add i64 %or710, %487
  store i64 %add711, i64* %B, align 8
  %488 = load i64, i64* %B, align 8
  %489 = load i64, i64* %C, align 8
  %xor712 = xor i64 %488, %489
  %490 = load i64, i64* %D, align 8
  %xor713 = xor i64 %xor712, %490
  %arrayidx714 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 13
  %491 = load i64, i64* %arrayidx714, align 8
  %add715 = add i64 %xor713, %491
  %add716 = add i64 %add715, 681279174
  %492 = load i64, i64* %A, align 8
  %add717 = add i64 %492, %add716
  store i64 %add717, i64* %A, align 8
  %493 = load i64, i64* %A, align 8
  %shl718 = shl i64 %493, 4
  %494 = load i64, i64* %A, align 8
  %and719 = and i64 %494, 4294967295
  %shr720 = lshr i64 %and719, 28
  %or721 = or i64 %shl718, %shr720
  %495 = load i64, i64* %B, align 8
  %add722 = add i64 %or721, %495
  store i64 %add722, i64* %A, align 8
  %496 = load i64, i64* %A, align 8
  %497 = load i64, i64* %B, align 8
  %xor723 = xor i64 %496, %497
  %498 = load i64, i64* %C, align 8
  %xor724 = xor i64 %xor723, %498
  %arrayidx725 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 0
  %499 = load i64, i64* %arrayidx725, align 8
  %add726 = add i64 %xor724, %499
  %add727 = add i64 %add726, 3936430074
  %500 = load i64, i64* %D, align 8
  %add728 = add i64 %500, %add727
  store i64 %add728, i64* %D, align 8
  %501 = load i64, i64* %D, align 8
  %shl729 = shl i64 %501, 11
  %502 = load i64, i64* %D, align 8
  %and730 = and i64 %502, 4294967295
  %shr731 = lshr i64 %and730, 21
  %or732 = or i64 %shl729, %shr731
  %503 = load i64, i64* %A, align 8
  %add733 = add i64 %or732, %503
  store i64 %add733, i64* %D, align 8
  %504 = load i64, i64* %D, align 8
  %505 = load i64, i64* %A, align 8
  %xor734 = xor i64 %504, %505
  %506 = load i64, i64* %B, align 8
  %xor735 = xor i64 %xor734, %506
  %arrayidx736 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 3
  %507 = load i64, i64* %arrayidx736, align 8
  %add737 = add i64 %xor735, %507
  %add738 = add i64 %add737, 3572445317
  %508 = load i64, i64* %C, align 8
  %add739 = add i64 %508, %add738
  store i64 %add739, i64* %C, align 8
  %509 = load i64, i64* %C, align 8
  %shl740 = shl i64 %509, 16
  %510 = load i64, i64* %C, align 8
  %and741 = and i64 %510, 4294967295
  %shr742 = lshr i64 %and741, 16
  %or743 = or i64 %shl740, %shr742
  %511 = load i64, i64* %D, align 8
  %add744 = add i64 %or743, %511
  store i64 %add744, i64* %C, align 8
  %512 = load i64, i64* %C, align 8
  %513 = load i64, i64* %D, align 8
  %xor745 = xor i64 %512, %513
  %514 = load i64, i64* %A, align 8
  %xor746 = xor i64 %xor745, %514
  %arrayidx747 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 6
  %515 = load i64, i64* %arrayidx747, align 8
  %add748 = add i64 %xor746, %515
  %add749 = add i64 %add748, 76029189
  %516 = load i64, i64* %B, align 8
  %add750 = add i64 %516, %add749
  store i64 %add750, i64* %B, align 8
  %517 = load i64, i64* %B, align 8
  %shl751 = shl i64 %517, 23
  %518 = load i64, i64* %B, align 8
  %and752 = and i64 %518, 4294967295
  %shr753 = lshr i64 %and752, 9
  %or754 = or i64 %shl751, %shr753
  %519 = load i64, i64* %C, align 8
  %add755 = add i64 %or754, %519
  store i64 %add755, i64* %B, align 8
  %520 = load i64, i64* %B, align 8
  %521 = load i64, i64* %C, align 8
  %xor756 = xor i64 %520, %521
  %522 = load i64, i64* %D, align 8
  %xor757 = xor i64 %xor756, %522
  %arrayidx758 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 9
  %523 = load i64, i64* %arrayidx758, align 8
  %add759 = add i64 %xor757, %523
  %add760 = add i64 %add759, 3654602809
  %524 = load i64, i64* %A, align 8
  %add761 = add i64 %524, %add760
  store i64 %add761, i64* %A, align 8
  %525 = load i64, i64* %A, align 8
  %shl762 = shl i64 %525, 4
  %526 = load i64, i64* %A, align 8
  %and763 = and i64 %526, 4294967295
  %shr764 = lshr i64 %and763, 28
  %or765 = or i64 %shl762, %shr764
  %527 = load i64, i64* %B, align 8
  %add766 = add i64 %or765, %527
  store i64 %add766, i64* %A, align 8
  %528 = load i64, i64* %A, align 8
  %529 = load i64, i64* %B, align 8
  %xor767 = xor i64 %528, %529
  %530 = load i64, i64* %C, align 8
  %xor768 = xor i64 %xor767, %530
  %arrayidx769 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 12
  %531 = load i64, i64* %arrayidx769, align 8
  %add770 = add i64 %xor768, %531
  %add771 = add i64 %add770, 3873151461
  %532 = load i64, i64* %D, align 8
  %add772 = add i64 %532, %add771
  store i64 %add772, i64* %D, align 8
  %533 = load i64, i64* %D, align 8
  %shl773 = shl i64 %533, 11
  %534 = load i64, i64* %D, align 8
  %and774 = and i64 %534, 4294967295
  %shr775 = lshr i64 %and774, 21
  %or776 = or i64 %shl773, %shr775
  %535 = load i64, i64* %A, align 8
  %add777 = add i64 %or776, %535
  store i64 %add777, i64* %D, align 8
  %536 = load i64, i64* %D, align 8
  %537 = load i64, i64* %A, align 8
  %xor778 = xor i64 %536, %537
  %538 = load i64, i64* %B, align 8
  %xor779 = xor i64 %xor778, %538
  %arrayidx780 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 15
  %539 = load i64, i64* %arrayidx780, align 8
  %add781 = add i64 %xor779, %539
  %add782 = add i64 %add781, 530742520
  %540 = load i64, i64* %C, align 8
  %add783 = add i64 %540, %add782
  store i64 %add783, i64* %C, align 8
  %541 = load i64, i64* %C, align 8
  %shl784 = shl i64 %541, 16
  %542 = load i64, i64* %C, align 8
  %and785 = and i64 %542, 4294967295
  %shr786 = lshr i64 %and785, 16
  %or787 = or i64 %shl784, %shr786
  %543 = load i64, i64* %D, align 8
  %add788 = add i64 %or787, %543
  store i64 %add788, i64* %C, align 8
  %544 = load i64, i64* %C, align 8
  %545 = load i64, i64* %D, align 8
  %xor789 = xor i64 %544, %545
  %546 = load i64, i64* %A, align 8
  %xor790 = xor i64 %xor789, %546
  %arrayidx791 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 2
  %547 = load i64, i64* %arrayidx791, align 8
  %add792 = add i64 %xor790, %547
  %add793 = add i64 %add792, 3299628645
  %548 = load i64, i64* %B, align 8
  %add794 = add i64 %548, %add793
  store i64 %add794, i64* %B, align 8
  %549 = load i64, i64* %B, align 8
  %shl795 = shl i64 %549, 23
  %550 = load i64, i64* %B, align 8
  %and796 = and i64 %550, 4294967295
  %shr797 = lshr i64 %and796, 9
  %or798 = or i64 %shl795, %shr797
  %551 = load i64, i64* %C, align 8
  %add799 = add i64 %or798, %551
  store i64 %add799, i64* %B, align 8
  %552 = load i64, i64* %C, align 8
  %553 = load i64, i64* %B, align 8
  %554 = load i64, i64* %D, align 8
  %neg = xor i64 %554, -1
  %or800 = or i64 %553, %neg
  %xor801 = xor i64 %552, %or800
  %arrayidx802 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 0
  %555 = load i64, i64* %arrayidx802, align 8
  %add803 = add i64 %xor801, %555
  %add804 = add i64 %add803, 4096336452
  %556 = load i64, i64* %A, align 8
  %add805 = add i64 %556, %add804
  store i64 %add805, i64* %A, align 8
  %557 = load i64, i64* %A, align 8
  %shl806 = shl i64 %557, 6
  %558 = load i64, i64* %A, align 8
  %and807 = and i64 %558, 4294967295
  %shr808 = lshr i64 %and807, 26
  %or809 = or i64 %shl806, %shr808
  %559 = load i64, i64* %B, align 8
  %add810 = add i64 %or809, %559
  store i64 %add810, i64* %A, align 8
  %560 = load i64, i64* %B, align 8
  %561 = load i64, i64* %A, align 8
  %562 = load i64, i64* %C, align 8
  %neg811 = xor i64 %562, -1
  %or812 = or i64 %561, %neg811
  %xor813 = xor i64 %560, %or812
  %arrayidx814 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 7
  %563 = load i64, i64* %arrayidx814, align 8
  %add815 = add i64 %xor813, %563
  %add816 = add i64 %add815, 1126891415
  %564 = load i64, i64* %D, align 8
  %add817 = add i64 %564, %add816
  store i64 %add817, i64* %D, align 8
  %565 = load i64, i64* %D, align 8
  %shl818 = shl i64 %565, 10
  %566 = load i64, i64* %D, align 8
  %and819 = and i64 %566, 4294967295
  %shr820 = lshr i64 %and819, 22
  %or821 = or i64 %shl818, %shr820
  %567 = load i64, i64* %A, align 8
  %add822 = add i64 %or821, %567
  store i64 %add822, i64* %D, align 8
  %568 = load i64, i64* %A, align 8
  %569 = load i64, i64* %D, align 8
  %570 = load i64, i64* %B, align 8
  %neg823 = xor i64 %570, -1
  %or824 = or i64 %569, %neg823
  %xor825 = xor i64 %568, %or824
  %arrayidx826 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 14
  %571 = load i64, i64* %arrayidx826, align 8
  %add827 = add i64 %xor825, %571
  %add828 = add i64 %add827, 2878612391
  %572 = load i64, i64* %C, align 8
  %add829 = add i64 %572, %add828
  store i64 %add829, i64* %C, align 8
  %573 = load i64, i64* %C, align 8
  %shl830 = shl i64 %573, 15
  %574 = load i64, i64* %C, align 8
  %and831 = and i64 %574, 4294967295
  %shr832 = lshr i64 %and831, 17
  %or833 = or i64 %shl830, %shr832
  %575 = load i64, i64* %D, align 8
  %add834 = add i64 %or833, %575
  store i64 %add834, i64* %C, align 8
  %576 = load i64, i64* %D, align 8
  %577 = load i64, i64* %C, align 8
  %578 = load i64, i64* %A, align 8
  %neg835 = xor i64 %578, -1
  %or836 = or i64 %577, %neg835
  %xor837 = xor i64 %576, %or836
  %arrayidx838 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 5
  %579 = load i64, i64* %arrayidx838, align 8
  %add839 = add i64 %xor837, %579
  %add840 = add i64 %add839, 4237533241
  %580 = load i64, i64* %B, align 8
  %add841 = add i64 %580, %add840
  store i64 %add841, i64* %B, align 8
  %581 = load i64, i64* %B, align 8
  %shl842 = shl i64 %581, 21
  %582 = load i64, i64* %B, align 8
  %and843 = and i64 %582, 4294967295
  %shr844 = lshr i64 %and843, 11
  %or845 = or i64 %shl842, %shr844
  %583 = load i64, i64* %C, align 8
  %add846 = add i64 %or845, %583
  store i64 %add846, i64* %B, align 8
  %584 = load i64, i64* %C, align 8
  %585 = load i64, i64* %B, align 8
  %586 = load i64, i64* %D, align 8
  %neg847 = xor i64 %586, -1
  %or848 = or i64 %585, %neg847
  %xor849 = xor i64 %584, %or848
  %arrayidx850 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 12
  %587 = load i64, i64* %arrayidx850, align 8
  %add851 = add i64 %xor849, %587
  %add852 = add i64 %add851, 1700485571
  %588 = load i64, i64* %A, align 8
  %add853 = add i64 %588, %add852
  store i64 %add853, i64* %A, align 8
  %589 = load i64, i64* %A, align 8
  %shl854 = shl i64 %589, 6
  %590 = load i64, i64* %A, align 8
  %and855 = and i64 %590, 4294967295
  %shr856 = lshr i64 %and855, 26
  %or857 = or i64 %shl854, %shr856
  %591 = load i64, i64* %B, align 8
  %add858 = add i64 %or857, %591
  store i64 %add858, i64* %A, align 8
  %592 = load i64, i64* %B, align 8
  %593 = load i64, i64* %A, align 8
  %594 = load i64, i64* %C, align 8
  %neg859 = xor i64 %594, -1
  %or860 = or i64 %593, %neg859
  %xor861 = xor i64 %592, %or860
  %arrayidx862 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 3
  %595 = load i64, i64* %arrayidx862, align 8
  %add863 = add i64 %xor861, %595
  %add864 = add i64 %add863, 2399980690
  %596 = load i64, i64* %D, align 8
  %add865 = add i64 %596, %add864
  store i64 %add865, i64* %D, align 8
  %597 = load i64, i64* %D, align 8
  %shl866 = shl i64 %597, 10
  %598 = load i64, i64* %D, align 8
  %and867 = and i64 %598, 4294967295
  %shr868 = lshr i64 %and867, 22
  %or869 = or i64 %shl866, %shr868
  %599 = load i64, i64* %A, align 8
  %add870 = add i64 %or869, %599
  store i64 %add870, i64* %D, align 8
  %600 = load i64, i64* %A, align 8
  %601 = load i64, i64* %D, align 8
  %602 = load i64, i64* %B, align 8
  %neg871 = xor i64 %602, -1
  %or872 = or i64 %601, %neg871
  %xor873 = xor i64 %600, %or872
  %arrayidx874 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 10
  %603 = load i64, i64* %arrayidx874, align 8
  %add875 = add i64 %xor873, %603
  %add876 = add i64 %add875, 4293915773
  %604 = load i64, i64* %C, align 8
  %add877 = add i64 %604, %add876
  store i64 %add877, i64* %C, align 8
  %605 = load i64, i64* %C, align 8
  %shl878 = shl i64 %605, 15
  %606 = load i64, i64* %C, align 8
  %and879 = and i64 %606, 4294967295
  %shr880 = lshr i64 %and879, 17
  %or881 = or i64 %shl878, %shr880
  %607 = load i64, i64* %D, align 8
  %add882 = add i64 %or881, %607
  store i64 %add882, i64* %C, align 8
  %608 = load i64, i64* %D, align 8
  %609 = load i64, i64* %C, align 8
  %610 = load i64, i64* %A, align 8
  %neg883 = xor i64 %610, -1
  %or884 = or i64 %609, %neg883
  %xor885 = xor i64 %608, %or884
  %arrayidx886 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 1
  %611 = load i64, i64* %arrayidx886, align 8
  %add887 = add i64 %xor885, %611
  %add888 = add i64 %add887, 2240044497
  %612 = load i64, i64* %B, align 8
  %add889 = add i64 %612, %add888
  store i64 %add889, i64* %B, align 8
  %613 = load i64, i64* %B, align 8
  %shl890 = shl i64 %613, 21
  %614 = load i64, i64* %B, align 8
  %and891 = and i64 %614, 4294967295
  %shr892 = lshr i64 %and891, 11
  %or893 = or i64 %shl890, %shr892
  %615 = load i64, i64* %C, align 8
  %add894 = add i64 %or893, %615
  store i64 %add894, i64* %B, align 8
  %616 = load i64, i64* %C, align 8
  %617 = load i64, i64* %B, align 8
  %618 = load i64, i64* %D, align 8
  %neg895 = xor i64 %618, -1
  %or896 = or i64 %617, %neg895
  %xor897 = xor i64 %616, %or896
  %arrayidx898 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 8
  %619 = load i64, i64* %arrayidx898, align 8
  %add899 = add i64 %xor897, %619
  %add900 = add i64 %add899, 1873313359
  %620 = load i64, i64* %A, align 8
  %add901 = add i64 %620, %add900
  store i64 %add901, i64* %A, align 8
  %621 = load i64, i64* %A, align 8
  %shl902 = shl i64 %621, 6
  %622 = load i64, i64* %A, align 8
  %and903 = and i64 %622, 4294967295
  %shr904 = lshr i64 %and903, 26
  %or905 = or i64 %shl902, %shr904
  %623 = load i64, i64* %B, align 8
  %add906 = add i64 %or905, %623
  store i64 %add906, i64* %A, align 8
  %624 = load i64, i64* %B, align 8
  %625 = load i64, i64* %A, align 8
  %626 = load i64, i64* %C, align 8
  %neg907 = xor i64 %626, -1
  %or908 = or i64 %625, %neg907
  %xor909 = xor i64 %624, %or908
  %arrayidx910 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 15
  %627 = load i64, i64* %arrayidx910, align 8
  %add911 = add i64 %xor909, %627
  %add912 = add i64 %add911, 4264355552
  %628 = load i64, i64* %D, align 8
  %add913 = add i64 %628, %add912
  store i64 %add913, i64* %D, align 8
  %629 = load i64, i64* %D, align 8
  %shl914 = shl i64 %629, 10
  %630 = load i64, i64* %D, align 8
  %and915 = and i64 %630, 4294967295
  %shr916 = lshr i64 %and915, 22
  %or917 = or i64 %shl914, %shr916
  %631 = load i64, i64* %A, align 8
  %add918 = add i64 %or917, %631
  store i64 %add918, i64* %D, align 8
  %632 = load i64, i64* %A, align 8
  %633 = load i64, i64* %D, align 8
  %634 = load i64, i64* %B, align 8
  %neg919 = xor i64 %634, -1
  %or920 = or i64 %633, %neg919
  %xor921 = xor i64 %632, %or920
  %arrayidx922 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 6
  %635 = load i64, i64* %arrayidx922, align 8
  %add923 = add i64 %xor921, %635
  %add924 = add i64 %add923, 2734768916
  %636 = load i64, i64* %C, align 8
  %add925 = add i64 %636, %add924
  store i64 %add925, i64* %C, align 8
  %637 = load i64, i64* %C, align 8
  %shl926 = shl i64 %637, 15
  %638 = load i64, i64* %C, align 8
  %and927 = and i64 %638, 4294967295
  %shr928 = lshr i64 %and927, 17
  %or929 = or i64 %shl926, %shr928
  %639 = load i64, i64* %D, align 8
  %add930 = add i64 %or929, %639
  store i64 %add930, i64* %C, align 8
  %640 = load i64, i64* %D, align 8
  %641 = load i64, i64* %C, align 8
  %642 = load i64, i64* %A, align 8
  %neg931 = xor i64 %642, -1
  %or932 = or i64 %641, %neg931
  %xor933 = xor i64 %640, %or932
  %arrayidx934 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 13
  %643 = load i64, i64* %arrayidx934, align 8
  %add935 = add i64 %xor933, %643
  %add936 = add i64 %add935, 1309151649
  %644 = load i64, i64* %B, align 8
  %add937 = add i64 %644, %add936
  store i64 %add937, i64* %B, align 8
  %645 = load i64, i64* %B, align 8
  %shl938 = shl i64 %645, 21
  %646 = load i64, i64* %B, align 8
  %and939 = and i64 %646, 4294967295
  %shr940 = lshr i64 %and939, 11
  %or941 = or i64 %shl938, %shr940
  %647 = load i64, i64* %C, align 8
  %add942 = add i64 %or941, %647
  store i64 %add942, i64* %B, align 8
  %648 = load i64, i64* %C, align 8
  %649 = load i64, i64* %B, align 8
  %650 = load i64, i64* %D, align 8
  %neg943 = xor i64 %650, -1
  %or944 = or i64 %649, %neg943
  %xor945 = xor i64 %648, %or944
  %arrayidx946 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 4
  %651 = load i64, i64* %arrayidx946, align 8
  %add947 = add i64 %xor945, %651
  %add948 = add i64 %add947, 4149444226
  %652 = load i64, i64* %A, align 8
  %add949 = add i64 %652, %add948
  store i64 %add949, i64* %A, align 8
  %653 = load i64, i64* %A, align 8
  %shl950 = shl i64 %653, 6
  %654 = load i64, i64* %A, align 8
  %and951 = and i64 %654, 4294967295
  %shr952 = lshr i64 %and951, 26
  %or953 = or i64 %shl950, %shr952
  %655 = load i64, i64* %B, align 8
  %add954 = add i64 %or953, %655
  store i64 %add954, i64* %A, align 8
  %656 = load i64, i64* %B, align 8
  %657 = load i64, i64* %A, align 8
  %658 = load i64, i64* %C, align 8
  %neg955 = xor i64 %658, -1
  %or956 = or i64 %657, %neg955
  %xor957 = xor i64 %656, %or956
  %arrayidx958 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 11
  %659 = load i64, i64* %arrayidx958, align 8
  %add959 = add i64 %xor957, %659
  %add960 = add i64 %add959, 3174756917
  %660 = load i64, i64* %D, align 8
  %add961 = add i64 %660, %add960
  store i64 %add961, i64* %D, align 8
  %661 = load i64, i64* %D, align 8
  %shl962 = shl i64 %661, 10
  %662 = load i64, i64* %D, align 8
  %and963 = and i64 %662, 4294967295
  %shr964 = lshr i64 %and963, 22
  %or965 = or i64 %shl962, %shr964
  %663 = load i64, i64* %A, align 8
  %add966 = add i64 %or965, %663
  store i64 %add966, i64* %D, align 8
  %664 = load i64, i64* %A, align 8
  %665 = load i64, i64* %D, align 8
  %666 = load i64, i64* %B, align 8
  %neg967 = xor i64 %666, -1
  %or968 = or i64 %665, %neg967
  %xor969 = xor i64 %664, %or968
  %arrayidx970 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 2
  %667 = load i64, i64* %arrayidx970, align 8
  %add971 = add i64 %xor969, %667
  %add972 = add i64 %add971, 718787259
  %668 = load i64, i64* %C, align 8
  %add973 = add i64 %668, %add972
  store i64 %add973, i64* %C, align 8
  %669 = load i64, i64* %C, align 8
  %shl974 = shl i64 %669, 15
  %670 = load i64, i64* %C, align 8
  %and975 = and i64 %670, 4294967295
  %shr976 = lshr i64 %and975, 17
  %or977 = or i64 %shl974, %shr976
  %671 = load i64, i64* %D, align 8
  %add978 = add i64 %or977, %671
  store i64 %add978, i64* %C, align 8
  %672 = load i64, i64* %D, align 8
  %673 = load i64, i64* %C, align 8
  %674 = load i64, i64* %A, align 8
  %neg979 = xor i64 %674, -1
  %or980 = or i64 %673, %neg979
  %xor981 = xor i64 %672, %or980
  %arrayidx982 = getelementptr inbounds [16 x i64], [16 x i64]* %X, i32 0, i64 9
  %675 = load i64, i64* %arrayidx982, align 8
  %add983 = add i64 %xor981, %675
  %add984 = add i64 %add983, 3951481745
  %676 = load i64, i64* %B, align 8
  %add985 = add i64 %676, %add984
  store i64 %add985, i64* %B, align 8
  %677 = load i64, i64* %B, align 8
  %shl986 = shl i64 %677, 21
  %678 = load i64, i64* %B, align 8
  %and987 = and i64 %678, 4294967295
  %shr988 = lshr i64 %and987, 11
  %or989 = or i64 %shl986, %shr988
  %679 = load i64, i64* %C, align 8
  %add990 = add i64 %or989, %679
  store i64 %add990, i64* %B, align 8
  %680 = load i64, i64* %A, align 8
  %681 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state991 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %681, i32 0, i32 1
  %arrayidx992 = getelementptr inbounds [4 x i64], [4 x i64]* %state991, i32 0, i64 0
  %682 = load i64, i64* %arrayidx992, align 8
  %add993 = add i64 %682, %680
  store i64 %add993, i64* %arrayidx992, align 8
  %683 = load i64, i64* %B, align 8
  %684 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state994 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %684, i32 0, i32 1
  %arrayidx995 = getelementptr inbounds [4 x i64], [4 x i64]* %state994, i32 0, i64 1
  %685 = load i64, i64* %arrayidx995, align 8
  %add996 = add i64 %685, %683
  store i64 %add996, i64* %arrayidx995, align 8
  %686 = load i64, i64* %C, align 8
  %687 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state997 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %687, i32 0, i32 1
  %arrayidx998 = getelementptr inbounds [4 x i64], [4 x i64]* %state997, i32 0, i64 2
  %688 = load i64, i64* %arrayidx998, align 8
  %add999 = add i64 %688, %686
  store i64 %add999, i64* %arrayidx998, align 8
  %689 = load i64, i64* %D, align 8
  %690 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state1000 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %690, i32 0, i32 1
  %arrayidx1001 = getelementptr inbounds [4 x i64], [4 x i64]* %state1000, i32 0, i64 3
  %691 = load i64, i64* %arrayidx1001, align 8
  %add1002 = add i64 %691, %689
  store i64 %add1002, i64* %arrayidx1001, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @md5_update(%struct.md5_context* %ctx, i8* %input, i64 %length) #0 {
entry:
  %ctx.addr = alloca %struct.md5_context*, align 8
  %input.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %left = alloca i64, align 8
  %fill = alloca i64, align 8
  store %struct.md5_context* %ctx, %struct.md5_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.28

if.end:                                           ; preds = %entry
  %1 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_context, %struct.md5_context* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %and = and i64 %2, 63
  store i64 %and, i64* %left, align 8
  %3 = load i64, i64* %left, align 8
  %sub = sub i64 64, %3
  store i64 %sub, i64* %fill, align 8
  %4 = load i64, i64* %length.addr, align 8
  %5 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %5, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %total1, i32 0, i64 0
  %6 = load i64, i64* %arrayidx2, align 8
  %add = add i64 %6, %4
  store i64 %add, i64* %arrayidx2, align 8
  %7 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %7, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %total3, i32 0, i64 0
  %8 = load i64, i64* %arrayidx4, align 8
  %and5 = and i64 %8, 4294967295
  store i64 %and5, i64* %arrayidx4, align 8
  %9 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %9, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %total6, i32 0, i64 0
  %10 = load i64, i64* %arrayidx7, align 8
  %11 = load i64, i64* %length.addr, align 8
  %cmp = icmp ult i64 %10, %11
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %12 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total9 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %12, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x i64], [2 x i64]* %total9, i32 0, i64 1
  %13 = load i64, i64* %arrayidx10, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %arrayidx10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %14 = load i64, i64* %left, align 8
  %tobool12 = icmp ne i64 %14, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.11
  %15 = load i64, i64* %length.addr, align 8
  %16 = load i64, i64* %fill, align 8
  %cmp13 = icmp uge i64 %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true
  %17 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.md5_context, %struct.md5_context* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %18 = load i64, i64* %left, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %18
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %fill, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %22 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %buffer15 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %22, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer15, i32 0, i32 0
  call void @md5_process(%struct.md5_context* %21, i8* %arraydecay16)
  %23 = load i64, i64* %fill, align 8
  %24 = load i64, i64* %length.addr, align 8
  %sub17 = sub i64 %24, %23
  store i64 %sub17, i64* %length.addr, align 8
  %25 = load i64, i64* %fill, align 8
  %26 = load i8*, i8** %input.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %add.ptr18, i8** %input.addr, align 8
  store i64 0, i64* %left, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.19
  %27 = load i64, i64* %length.addr, align 8
  %cmp20 = icmp uge i64 %27, 64
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %29 = load i8*, i8** %input.addr, align 8
  call void @md5_process(%struct.md5_context* %28, i8* %29)
  %30 = load i64, i64* %length.addr, align 8
  %sub21 = sub i64 %30, 64
  store i64 %sub21, i64* %length.addr, align 8
  %31 = load i8*, i8** %input.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %31, i64 64
  store i8* %add.ptr22, i8** %input.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i64, i64* %length.addr, align 8
  %tobool23 = icmp ne i64 %32, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %while.end
  %33 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %buffer25 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %33, i32 0, i32 2
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer25, i32 0, i32 0
  %34 = load i64, i64* %left, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %arraydecay26, i64 %34
  %35 = load i8*, i8** %input.addr, align 8
  %36 = load i64, i64* %length.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr27, i8* %35, i64 %36, i32 1, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then, %if.then.24, %while.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @md5_finish(%struct.md5_context* %ctx, i8* %digest) #0 {
entry:
  %ctx.addr = alloca %struct.md5_context*, align 8
  %digest.addr = alloca i8*, align 8
  %last = alloca i64, align 8
  %padn = alloca i64, align 8
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  %msglen = alloca [8 x i8], align 1
  store %struct.md5_context* %ctx, %struct.md5_context** %ctx.addr, align 8
  store i8* %digest, i8** %digest.addr, align 8
  %0 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_context, %struct.md5_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %1, 29
  %2 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %total1, i32 0, i64 1
  %3 = load i64, i64* %arrayidx2, align 8
  %shl = shl i64 %3, 3
  %or = or i64 %shr, %shl
  store i64 %or, i64* %high, align 8
  %4 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %total3, i32 0, i64 0
  %5 = load i64, i64* %arrayidx4, align 8
  %shl5 = shl i64 %5, 3
  store i64 %shl5, i64* %low, align 8
  %6 = load i64, i64* %low, align 8
  %conv = trunc i64 %6 to i8
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 0
  store i8 %conv, i8* %arrayidx6, align 1
  %7 = load i64, i64* %low, align 8
  %shr7 = lshr i64 %7, 8
  %conv8 = trunc i64 %shr7 to i8
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 1
  store i8 %conv8, i8* %arrayidx9, align 1
  %8 = load i64, i64* %low, align 8
  %shr10 = lshr i64 %8, 16
  %conv11 = trunc i64 %shr10 to i8
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 2
  store i8 %conv11, i8* %arrayidx12, align 1
  %9 = load i64, i64* %low, align 8
  %shr13 = lshr i64 %9, 24
  %conv14 = trunc i64 %shr13 to i8
  %arrayidx15 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 3
  store i8 %conv14, i8* %arrayidx15, align 1
  %10 = load i64, i64* %high, align 8
  %conv16 = trunc i64 %10 to i8
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 4
  store i8 %conv16, i8* %arrayidx17, align 1
  %11 = load i64, i64* %high, align 8
  %shr18 = lshr i64 %11, 8
  %conv19 = trunc i64 %shr18 to i8
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 5
  store i8 %conv19, i8* %arrayidx20, align 1
  %12 = load i64, i64* %high, align 8
  %shr21 = lshr i64 %12, 16
  %conv22 = trunc i64 %shr21 to i8
  %arrayidx23 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 6
  store i8 %conv22, i8* %arrayidx23, align 1
  %13 = load i64, i64* %high, align 8
  %shr24 = lshr i64 %13, 24
  %conv25 = trunc i64 %shr24 to i8
  %arrayidx26 = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i64 7
  store i8 %conv25, i8* %arrayidx26, align 1
  %14 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %total27 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %14, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %total27, i32 0, i64 0
  %15 = load i64, i64* %arrayidx28, align 8
  %and = and i64 %15, 63
  store i64 %and, i64* %last, align 8
  %16 = load i64, i64* %last, align 8
  %cmp = icmp ult i64 %16, 56
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load i64, i64* %last, align 8
  %sub = sub i64 56, %17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i64, i64* %last, align 8
  %sub30 = sub i64 120, %18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %sub30, %cond.false ]
  store i64 %cond, i64* %padn, align 8
  %19 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %20 = load i64, i64* %padn, align 8
  call void @md5_update(%struct.md5_context* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @md5_padding, i32 0, i32 0), i64 %20)
  %21 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %msglen, i32 0, i32 0
  call void @md5_update(%struct.md5_context* %21, i8* %arraydecay, i64 8)
  %22 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.md5_context, %struct.md5_context* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [4 x i64], [4 x i64]* %state, i32 0, i64 0
  %23 = load i64, i64* %arrayidx31, align 8
  %conv32 = trunc i64 %23 to i8
  %24 = load i8*, i8** %digest.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %conv32, i8* %arrayidx33, align 1
  %25 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state34 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [4 x i64], [4 x i64]* %state34, i32 0, i64 0
  %26 = load i64, i64* %arrayidx35, align 8
  %shr36 = lshr i64 %26, 8
  %conv37 = trunc i64 %shr36 to i8
  %27 = load i8*, i8** %digest.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %conv37, i8* %arrayidx38, align 1
  %28 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state39 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %28, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [4 x i64], [4 x i64]* %state39, i32 0, i64 0
  %29 = load i64, i64* %arrayidx40, align 8
  %shr41 = lshr i64 %29, 16
  %conv42 = trunc i64 %shr41 to i8
  %30 = load i8*, i8** %digest.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %conv42, i8* %arrayidx43, align 1
  %31 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state44 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [4 x i64], [4 x i64]* %state44, i32 0, i64 0
  %32 = load i64, i64* %arrayidx45, align 8
  %shr46 = lshr i64 %32, 24
  %conv47 = trunc i64 %shr46 to i8
  %33 = load i8*, i8** %digest.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %conv47, i8* %arrayidx48, align 1
  %34 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state49 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %34, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [4 x i64], [4 x i64]* %state49, i32 0, i64 1
  %35 = load i64, i64* %arrayidx50, align 8
  %conv51 = trunc i64 %35 to i8
  %36 = load i8*, i8** %digest.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %36, i64 4
  store i8 %conv51, i8* %arrayidx52, align 1
  %37 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state53 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %37, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [4 x i64], [4 x i64]* %state53, i32 0, i64 1
  %38 = load i64, i64* %arrayidx54, align 8
  %shr55 = lshr i64 %38, 8
  %conv56 = trunc i64 %shr55 to i8
  %39 = load i8*, i8** %digest.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %39, i64 5
  store i8 %conv56, i8* %arrayidx57, align 1
  %40 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state58 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [4 x i64], [4 x i64]* %state58, i32 0, i64 1
  %41 = load i64, i64* %arrayidx59, align 8
  %shr60 = lshr i64 %41, 16
  %conv61 = trunc i64 %shr60 to i8
  %42 = load i8*, i8** %digest.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %42, i64 6
  store i8 %conv61, i8* %arrayidx62, align 1
  %43 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state63 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %43, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [4 x i64], [4 x i64]* %state63, i32 0, i64 1
  %44 = load i64, i64* %arrayidx64, align 8
  %shr65 = lshr i64 %44, 24
  %conv66 = trunc i64 %shr65 to i8
  %45 = load i8*, i8** %digest.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %45, i64 7
  store i8 %conv66, i8* %arrayidx67, align 1
  %46 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state68 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %46, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [4 x i64], [4 x i64]* %state68, i32 0, i64 2
  %47 = load i64, i64* %arrayidx69, align 8
  %conv70 = trunc i64 %47 to i8
  %48 = load i8*, i8** %digest.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %48, i64 8
  store i8 %conv70, i8* %arrayidx71, align 1
  %49 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state72 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %49, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [4 x i64], [4 x i64]* %state72, i32 0, i64 2
  %50 = load i64, i64* %arrayidx73, align 8
  %shr74 = lshr i64 %50, 8
  %conv75 = trunc i64 %shr74 to i8
  %51 = load i8*, i8** %digest.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 %conv75, i8* %arrayidx76, align 1
  %52 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state77 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %52, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [4 x i64], [4 x i64]* %state77, i32 0, i64 2
  %53 = load i64, i64* %arrayidx78, align 8
  %shr79 = lshr i64 %53, 16
  %conv80 = trunc i64 %shr79 to i8
  %54 = load i8*, i8** %digest.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %54, i64 10
  store i8 %conv80, i8* %arrayidx81, align 1
  %55 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state82 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %55, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [4 x i64], [4 x i64]* %state82, i32 0, i64 2
  %56 = load i64, i64* %arrayidx83, align 8
  %shr84 = lshr i64 %56, 24
  %conv85 = trunc i64 %shr84 to i8
  %57 = load i8*, i8** %digest.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %57, i64 11
  store i8 %conv85, i8* %arrayidx86, align 1
  %58 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state87 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %58, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [4 x i64], [4 x i64]* %state87, i32 0, i64 3
  %59 = load i64, i64* %arrayidx88, align 8
  %conv89 = trunc i64 %59 to i8
  %60 = load i8*, i8** %digest.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %60, i64 12
  store i8 %conv89, i8* %arrayidx90, align 1
  %61 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state91 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %61, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [4 x i64], [4 x i64]* %state91, i32 0, i64 3
  %62 = load i64, i64* %arrayidx92, align 8
  %shr93 = lshr i64 %62, 8
  %conv94 = trunc i64 %shr93 to i8
  %63 = load i8*, i8** %digest.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %63, i64 13
  store i8 %conv94, i8* %arrayidx95, align 1
  %64 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state96 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %64, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [4 x i64], [4 x i64]* %state96, i32 0, i64 3
  %65 = load i64, i64* %arrayidx97, align 8
  %shr98 = lshr i64 %65, 16
  %conv99 = trunc i64 %shr98 to i8
  %66 = load i8*, i8** %digest.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %66, i64 14
  store i8 %conv99, i8* %arrayidx100, align 1
  %67 = load %struct.md5_context*, %struct.md5_context** %ctx.addr, align 8
  %state101 = getelementptr inbounds %struct.md5_context, %struct.md5_context* %67, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [4 x i64], [4 x i64]* %state101, i32 0, i64 3
  %68 = load i64, i64* %arrayidx102, align 8
  %shr103 = lshr i64 %68, 24
  %conv104 = trunc i64 %shr103 to i8
  %69 = load i8*, i8** %digest.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %69, i64 15
  store i8 %conv104, i8* %arrayidx105, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @my_rand_r(i32* %seedp) #0 {
entry:
  %seedp.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  store i32* %seedp, i32** %seedp.addr, align 8
  %0 = load i32*, i32** %seedp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %mul = mul nsw i32 %1, 1664525
  %add = add nsw i32 %mul, 1013904223
  store i32 %add, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32*, i32** %seedp.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %x, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 32767
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %repeat = alloca i32, align 4
  %output = alloca [33 x i8], align 16
  %ctx = alloca %struct.md5_context, align 8
  %buf = alloca [100000 x i8], align 16
  %md5sum = alloca [16 x i8], align 16
  %random_seed = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %random_seed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @my_rand_r(i32* %random_seed)
  %conv2 = trunc i32 %call to i8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i8], [100000 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %repeat, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @atoi(i8* %5) #4
  store i32 %call6, i32* %repeat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.30, %if.end
  %6 = load i32, i32* %repeat, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body.8, label %for.end.31

for.body.8:                                       ; preds = %for.cond.7
  call void @md5_starts(%struct.md5_context* %ctx)
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.body.8
  %7 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %7, 512
  br i1 %cmp10, label %for.body.12, label %for.end.16

for.body.12:                                      ; preds = %for.cond.9
  %arraydecay = getelementptr inbounds [100000 x i8], [100000 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %repeat, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %9 = load i32, i32* %repeat, align 4
  %conv13 = sext i32 %9 to i64
  %sub = sub i64 100000, %conv13
  call void @md5_update(%struct.md5_context* %ctx, i8* %add.ptr, i64 %sub)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.12
  %10 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i32 0, i32 0
  call void @md5_finish(%struct.md5_context* %ctx, i8* %arraydecay17)
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end.16
  %11 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %11, 16
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %12 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i32 0, i64 %idxprom22
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %conv24)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %14 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.28
  %15 = load i32, i32* %repeat, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %repeat, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
