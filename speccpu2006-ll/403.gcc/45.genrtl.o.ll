; ModuleID = 'genrtl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%union.tree_node = type opaque
%struct.bitmap_head_def = type opaque

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_s(i32 %code, i32 %mode, i8* %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %11
}

declare i8* @ggc_alloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_ee(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_ue(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iss(i32 %code, i32 %mode, i32 %arg0, i8* %arg1, i8* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr, align 8
  %13 = load i8*, i8** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtstr9 = bitcast %union.rtunion_def* %arrayidx8 to i8**
  store i8* %13, i8** %rtstr9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_is(i32 %code, i32 %mode, i32 %arg0, i8* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_i(i32 %code, i32 %mode, i32 %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_isE(i32 %code, i32 %mode, i32 %arg0, i8* %arg1, %struct.rtvec_def* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca %struct.rtvec_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 8
  store %struct.rtvec_def* %arg2, %struct.rtvec_def** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr, align 8
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtvec = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtvec_def**
  store %struct.rtvec_def* %13, %struct.rtvec_def** %rtvec, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iE(i32 %code, i32 %mode, i32 %arg0, %struct.rtvec_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtvec_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  store %struct.rtvec_def* %11, %struct.rtvec_def** %rtvec, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_Ess(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, i8* %arg1, i8* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtvec_def*, align 8
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %arg0.addr, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  store %struct.rtvec_def* %9, %struct.rtvec_def** %rtvec, align 8
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr, align 8
  %13 = load i8*, i8** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtstr9 = bitcast %union.rtunion_def* %arrayidx8 to i8**
  store i8* %13, i8** %rtstr9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_sEss(i32 %code, i32 %mode, i8* %arg0, %struct.rtvec_def* %arg1, i8* %arg2, i8* %arg3) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %arg1.addr = alloca %struct.rtvec_def*, align 8
  %arg2.addr = alloca i8*, align 8
  %arg3.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  store i8* %arg3, i8** %arg3.addr, align 8
  %call = call i8* @ggc_alloc(i64 40)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  store %struct.rtvec_def* %11, %struct.rtvec_def** %rtvec, align 8
  %13 = load i8*, i8** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtstr9 = bitcast %union.rtunion_def* %arrayidx8 to i8**
  store i8* %13, i8** %rtstr9, align 8
  %15 = load i8*, i8** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtstr12 = bitcast %union.rtunion_def* %arrayidx11 to i8**
  store i8* %15, i8** %rtstr12, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eE(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtvec_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtvec_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  store %struct.rtvec_def* %11, %struct.rtvec_def** %rtvec, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_E(i32 %code, i32 %mode, %struct.rtvec_def* %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtvec_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  store %struct.rtvec_def* %9, %struct.rtvec_def** %rtvec, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_e(i32 %code, i32 %mode, %struct.rtx_def* %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_sse(i32 %code, i32 %mode, i8* %arg0, i8* %arg1, %struct.rtx_def* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr7 = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_ss(i32 %code, i32 %mode, i8* %arg0, i8* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %arg1.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr7 = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_sE(i32 %code, i32 %mode, i8* %arg0, %struct.rtvec_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %arg1.addr = alloca %struct.rtvec_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  store %struct.rtvec_def* %11, %struct.rtvec_def** %rtvec, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iuueiee(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, %struct.rtx_def* %arg6) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca %struct.rtx_def*, align 8
  %arg6.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  store i32 %arg4, i32* %arg4.addr, align 4
  store %struct.rtx_def* %arg5, %struct.rtx_def** %arg5.addr, align 8
  store %struct.rtx_def* %arg6, %struct.rtx_def** %arg6.addr, align 8
  %call = call i8* @ggc_alloc(i64 64)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx12, align 8
  %17 = load i32, i32* %arg4.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  store i32 %17, i32* %rtint15, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arg5.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 5
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx18, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arg6.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 6
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  store %struct.rtx_def* %21, %struct.rtx_def** %rtx21, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %23
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iuueiee0(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, %struct.rtx_def* %arg6) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca %struct.rtx_def*, align 8
  %arg6.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  store i32 %arg4, i32* %arg4.addr, align 4
  store %struct.rtx_def* %arg5, %struct.rtx_def** %arg5.addr, align 8
  store %struct.rtx_def* %arg6, %struct.rtx_def** %arg6.addr, align 8
  %call = call i8* @ggc_alloc(i64 72)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx12, align 8
  %17 = load i32, i32* %arg4.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  store i32 %17, i32* %rtint15, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arg5.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 5
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx18, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arg6.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 6
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  store %struct.rtx_def* %21, %struct.rtx_def** %rtx21, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 7
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx24, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %24
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iuueieee(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3, i32 %arg4, %struct.rtx_def* %arg5, %struct.rtx_def* %arg6, %struct.rtx_def* %arg7) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca %struct.rtx_def*, align 8
  %arg6.addr = alloca %struct.rtx_def*, align 8
  %arg7.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  store i32 %arg4, i32* %arg4.addr, align 4
  store %struct.rtx_def* %arg5, %struct.rtx_def** %arg5.addr, align 8
  store %struct.rtx_def* %arg6, %struct.rtx_def** %arg6.addr, align 8
  store %struct.rtx_def* %arg7, %struct.rtx_def** %arg7.addr, align 8
  %call = call i8* @ggc_alloc(i64 72)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx12, align 8
  %17 = load i32, i32* %arg4.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  store i32 %17, i32* %rtint15, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arg5.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 5
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx18, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arg6.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 6
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  store %struct.rtx_def* %21, %struct.rtx_def** %rtx21, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arg7.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 7
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  store %struct.rtx_def* %23, %struct.rtx_def** %rtx24, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %25
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iuu(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iuu00iss(i32 %code, i32 %mode, i32 %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, i32 %arg3, i8* %arg4, i8* %arg5) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca i32, align 4
  %arg4.addr = alloca i8*, align 8
  %arg5.addr = alloca i8*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store i32 %arg3, i32* %arg3.addr, align 4
  store i8* %arg4, i8** %arg4.addr, align 8
  store i8* %arg5, i8** %arg5.addr, align 8
  %call = call i8* @ggc_alloc(i64 72)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx12, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx15, align 8
  %17 = load i32, i32* %arg3.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 5
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  store i32 %17, i32* %rtint18, align 4
  %19 = load i8*, i8** %arg4.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx20 to i8**
  store i8* %19, i8** %rtstr, align 8
  %21 = load i8*, i8** %arg5.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 7
  %rtstr23 = bitcast %union.rtunion_def* %arrayidx22 to i8**
  store i8* %21, i8** %rtstr23, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %23
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_ssiEEsi(i32 %code, i32 %mode, i8* %arg0, i8* %arg1, i32 %arg2, %struct.rtvec_def* %arg3, %struct.rtvec_def* %arg4, i8* %arg5, i32 %arg6) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i8*, align 8
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca %struct.rtvec_def*, align 8
  %arg4.addr = alloca %struct.rtvec_def*, align 8
  %arg5.addr = alloca i8*, align 8
  %arg6.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %arg0, i8** %arg0.addr, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i32 %arg2, i32* %arg2.addr, align 4
  store %struct.rtvec_def* %arg3, %struct.rtvec_def** %arg3.addr, align 8
  store %struct.rtvec_def* %arg4, %struct.rtvec_def** %arg4.addr, align 8
  store i8* %arg5, i8** %arg5.addr, align 8
  store i32 %arg6, i32* %arg6.addr, align 4
  %call = call i8* @ggc_alloc(i64 64)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i8*, i8** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load i8*, i8** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtstr7 = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* %11, i8** %rtstr7, align 8
  %13 = load i32, i32* %arg2.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  store i32 %13, i32* %rtint, align 4
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtvec_def**
  store %struct.rtvec_def* %15, %struct.rtvec_def** %rtvec, align 8
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %arg4.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 4
  %rtvec14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtvec_def**
  store %struct.rtvec_def* %17, %struct.rtvec_def** %rtvec14, align 8
  %19 = load i8*, i8** %arg5.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 5
  %rtstr17 = bitcast %union.rtunion_def* %arrayidx16 to i8**
  store i8* %19, i8** %rtstr17, align 8
  %21 = load i32, i32* %arg6.addr, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 6
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  store i32 %21, i32* %rtint20, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %23
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_Ei(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, i32 %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtvec_def*, align 8
  %arg1.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %arg0.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  store %struct.rtvec_def* %9, %struct.rtvec_def** %rtvec, align 8
  %11 = load i32, i32* %arg1.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  store i32 %11, i32* %rtint, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eEee0(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtvec_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtvec_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtvec_def* %arg1, %struct.rtvec_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  %call = call i8* @ggc_alloc(i64 48)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  store %struct.rtvec_def* %11, %struct.rtvec_def** %rtvec, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx9, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx12, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx15, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %18
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eee(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx10, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_(i32 %code, i32 %mode) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %call = call i8* @ggc_alloc(i64 8)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_w(i32 %code, i32 %mode, i64 %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i64, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %arg0, i64* %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i64, i64* %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  store i64 %9, i64* %rtwint, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_0www(i32 %code, i32 %mode, i64 %arg0, i64 %arg1, i64 %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i64, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca i64, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %arg0, i64* %arg0.addr, align 8
  store i64 %arg1, i64* %arg1.addr, align 8
  store i64 %arg2, i64* %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 40)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %10 = load i64, i64* %arg0.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx6 to i64*
  store i64 %10, i64* %rtwint, align 8
  %12 = load i64, i64* %arg1.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtwint9 = bitcast %union.rtunion_def* %arrayidx8 to i64*
  store i64 %12, i64* %rtwint9, align 8
  %14 = load i64, i64* %arg2.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtwint12 = bitcast %union.rtunion_def* %arrayidx11 to i64*
  store i64 %14, i64* %rtwint12, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_0(i32 %code, i32 %mode) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_i0(i32 %code, i32 %mode, i32 %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_ei(i32 %code, i32 %mode, %struct.rtx_def* %arg0, i32 %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load i32, i32* %arg1.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  store i32 %11, i32* %rtint, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_e0(i32 %code, i32 %mode, %struct.rtx_def* %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx7, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_u00(i32 %code, i32 %mode, %struct.rtx_def* %arg0) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx7, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx10, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eit(i32 %code, i32 %mode, %struct.rtx_def* %arg0, i32 %arg1, %union.tree_node* %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca %union.tree_node*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  store %union.tree_node* %arg2, %union.tree_node** %arg2.addr, align 8
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load i32, i32* %arg1.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  store i32 %11, i32* %rtint, align 4
  %13 = load %union.tree_node*, %union.tree_node** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rttree = bitcast %union.rtunion_def* %arrayidx8 to %union.tree_node**
  store %union.tree_node* %13, %union.tree_node** %rttree, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eeeee(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3, %struct.rtx_def* %arg4) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %arg4.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  store %struct.rtx_def* %arg4, %struct.rtx_def** %arg4.addr, align 8
  %call = call i8* @ggc_alloc(i64 48)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx10, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx13, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arg4.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  store %struct.rtx_def* %17, %struct.rtx_def** %rtx16, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_Ee(i32 %code, i32 %mode, %struct.rtvec_def* %arg0, %struct.rtx_def* %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtvec_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtvec_def* %arg0, %struct.rtvec_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  store %struct.rtvec_def* %9, %struct.rtvec_def** %rtvec, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_uuEiiiiiibbii(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtvec_def* %arg2, i32 %arg3, i32 %arg4, i32 %arg5, i32 %arg6, i32 %arg7, i32 %arg8, %struct.bitmap_head_def* %arg9, %struct.bitmap_head_def* %arg10, i32 %arg11, i32 %arg12) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtvec_def*, align 8
  %arg3.addr = alloca i32, align 4
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca i32, align 4
  %arg6.addr = alloca i32, align 4
  %arg7.addr = alloca i32, align 4
  %arg8.addr = alloca i32, align 4
  %arg9.addr = alloca %struct.bitmap_head_def*, align 8
  %arg10.addr = alloca %struct.bitmap_head_def*, align 8
  %arg11.addr = alloca i32, align 4
  %arg12.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtvec_def* %arg2, %struct.rtvec_def** %arg2.addr, align 8
  store i32 %arg3, i32* %arg3.addr, align 4
  store i32 %arg4, i32* %arg4.addr, align 4
  store i32 %arg5, i32* %arg5.addr, align 4
  store i32 %arg6, i32* %arg6.addr, align 4
  store i32 %arg7, i32* %arg7.addr, align 4
  store i32 %arg8, i32* %arg8.addr, align 4
  store %struct.bitmap_head_def* %arg9, %struct.bitmap_head_def** %arg9.addr, align 8
  store %struct.bitmap_head_def* %arg10, %struct.bitmap_head_def** %arg10.addr, align 8
  store i32 %arg11, i32* %arg11.addr, align 4
  store i32 %arg12, i32* %arg12.addr, align 4
  %call = call i8* @ggc_alloc(i64 112)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtvec = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtvec_def**
  store %struct.rtvec_def* %13, %struct.rtvec_def** %rtvec, align 8
  %15 = load i32, i32* %arg3.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  store i32 %15, i32* %rtint, align 4
  %17 = load i32, i32* %arg4.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 4
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  store i32 %17, i32* %rtint14, align 4
  %19 = load i32, i32* %arg5.addr, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 5
  %rtint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  store i32 %19, i32* %rtint17, align 4
  %21 = load i32, i32* %arg6.addr, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 6
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  store i32 %21, i32* %rtint20, align 4
  %23 = load i32, i32* %arg7.addr, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 7
  %rtint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  store i32 %23, i32* %rtint23, align 4
  %25 = load i32, i32* %arg8.addr, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 8
  %rtint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  store i32 %25, i32* %rtint26, align 4
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arg9.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 9
  %rtbit = bitcast %union.rtunion_def* %arrayidx28 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def* %27, %struct.bitmap_head_def** %rtbit, align 8
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arg10.addr, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 10
  %rtbit31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def* %29, %struct.bitmap_head_def** %rtbit31, align 8
  %31 = load i32, i32* %arg11.addr, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 11
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  store i32 %31, i32* %rtint34, align 4
  %33 = load i32, i32* %arg12.addr, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 12
  %rtint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  store i32 %33, i32* %rtint37, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %35
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_iiiiiiiitt(i32 %code, i32 %mode, i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5, i32 %arg6, i32 %arg7, %union.tree_node* %arg8, %union.tree_node* %arg9) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i32, align 4
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca i32, align 4
  %arg6.addr = alloca i32, align 4
  %arg7.addr = alloca i32, align 4
  %arg8.addr = alloca %union.tree_node*, align 8
  %arg9.addr = alloca %union.tree_node*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %arg0, i32* %arg0.addr, align 4
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  store i32 %arg3, i32* %arg3.addr, align 4
  store i32 %arg4, i32* %arg4.addr, align 4
  store i32 %arg5, i32* %arg5.addr, align 4
  store i32 %arg6, i32* %arg6.addr, align 4
  store i32 %arg7, i32* %arg7.addr, align 4
  store %union.tree_node* %arg8, %union.tree_node** %arg8.addr, align 8
  store %union.tree_node* %arg9, %union.tree_node** %arg9.addr, align 8
  %call = call i8* @ggc_alloc(i64 88)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load i32, i32* %arg0.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %9, i32* %rtint, align 4
  %11 = load i32, i32* %arg1.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  store i32 %11, i32* %rtint7, align 4
  %13 = load i32, i32* %arg2.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  store i32 %13, i32* %rtint10, align 4
  %15 = load i32, i32* %arg3.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  store i32 %15, i32* %rtint13, align 4
  %17 = load i32, i32* %arg4.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  store i32 %17, i32* %rtint16, align 4
  %19 = load i32, i32* %arg5.addr, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 5
  %rtint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  store i32 %19, i32* %rtint19, align 4
  %21 = load i32, i32* %arg6.addr, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 6
  %rtint22 = bitcast %union.rtunion_def* %arrayidx21 to i32*
  store i32 %21, i32* %rtint22, align 4
  %23 = load i32, i32* %arg7.addr, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 7
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  store i32 %23, i32* %rtint25, align 4
  %25 = load %union.tree_node*, %union.tree_node** %arg8.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 8
  %rttree = bitcast %union.rtunion_def* %arrayidx27 to %union.tree_node**
  store %union.tree_node* %25, %union.tree_node** %rttree, align 8
  %27 = load %union.tree_node*, %union.tree_node** %arg9.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 9
  %rttree30 = bitcast %union.rtunion_def* %arrayidx29 to %union.tree_node**
  store %union.tree_node* %27, %union.tree_node** %rttree30, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %29
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_eti(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %union.tree_node* %arg1, i32 %arg2) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %union.tree_node*, align 8
  %arg2.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %union.tree_node* %arg1, %union.tree_node** %arg1.addr, align 8
  store i32 %arg2, i32* %arg2.addr, align 4
  %call = call i8* @ggc_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %union.tree_node*, %union.tree_node** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rttree = bitcast %union.rtunion_def* %arrayidx6 to %union.tree_node**
  store %union.tree_node* %11, %union.tree_node** %rttree, align 8
  %13 = load i32, i32* %arg2.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  store i32 %13, i32* %rtint, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_bi(i32 %code, i32 %mode, %struct.bitmap_head_def* %arg0, i32 %arg1) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.bitmap_head_def*, align 8
  %arg1.addr = alloca i32, align 4
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.bitmap_head_def* %arg0, %struct.bitmap_head_def** %arg0.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  %call = call i8* @ggc_alloc(i64 24)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtbit = bitcast %union.rtunion_def* %arrayidx to %struct.bitmap_head_def**
  store %struct.bitmap_head_def* %9, %struct.bitmap_head_def** %rtbit, align 8
  %11 = load i32, i32* %arg1.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  store i32 %11, i32* %rtint, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_fmt_uuuu(i32 %code, i32 %mode, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %arg2, %struct.rtx_def* %arg3) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %arg3.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store %struct.rtx_def* %arg3, %struct.rtx_def** %arg3.addr, align 8
  %call = call i8* @ggc_alloc(i64 40)
  %0 = bitcast i8* %call to %struct.rtx_def*
  store %struct.rtx_def* %0, %struct.rtx_def** %rt, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  %3 = load i32, i32* %code.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.value = and i32 %3, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %5, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.value2 = and i32 %6, 255
  %bf.shl = shl i32 %bf.value2, 16
  %bf.clear3 = and i32 %bf.load1, -16711681
  %bf.set4 = or i32 %bf.clear3, %bf.shl
  store i32 %bf.set4, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx10, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arg3.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  store %struct.rtx_def* %15, %struct.rtx_def** %rtx13, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
