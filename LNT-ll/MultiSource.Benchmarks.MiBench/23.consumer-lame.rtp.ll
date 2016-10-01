; ModuleID = './MultiSource.Benchmarks.MiBench/23.consumer-lame.rtp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtpheader = type { %struct.rtpbits, i32, i32, i32 }
%struct.rtpbits = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"socket() failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt SO_REUSEADDR failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"setsockopt IP_MULTICAST_TTL failed.  multicast in kernel?\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"setsockopt IP_MULTICAST_LOOP failed.  multicast in kernel?\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @initrtp(%struct.rtpheader* %foo) #0 {
entry:
  %foo.addr = alloca %struct.rtpheader*, align 8
  store %struct.rtpheader* %foo, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %0 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i32 0, i32 0
  %1 = bitcast %struct.rtpbits* %b to i32*
  %bf.load = load i32, i32* %1, align 4
  %bf.clear = and i32 %bf.load, 1073741823
  %bf.set = or i32 %bf.clear, -2147483648
  store i32 %bf.set, i32* %1, align 4
  %2 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b1 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %2, i32 0, i32 0
  %3 = bitcast %struct.rtpbits* %b1 to i32*
  %bf.load2 = load i32, i32* %3, align 4
  %bf.clear3 = and i32 %bf.load2, -536870913
  store i32 %bf.clear3, i32* %3, align 4
  %4 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b4 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %4, i32 0, i32 0
  %5 = bitcast %struct.rtpbits* %b4 to i32*
  %bf.load5 = load i32, i32* %5, align 4
  %bf.clear6 = and i32 %bf.load5, -268435457
  store i32 %bf.clear6, i32* %5, align 4
  %6 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b7 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %6, i32 0, i32 0
  %7 = bitcast %struct.rtpbits* %b7 to i32*
  %bf.load8 = load i32, i32* %7, align 4
  %bf.clear9 = and i32 %bf.load8, -251658241
  store i32 %bf.clear9, i32* %7, align 4
  %8 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b10 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %8, i32 0, i32 0
  %9 = bitcast %struct.rtpbits* %b10 to i32*
  %bf.load11 = load i32, i32* %9, align 4
  %bf.clear12 = and i32 %bf.load11, -8388609
  store i32 %bf.clear12, i32* %9, align 4
  %10 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b13 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %10, i32 0, i32 0
  %11 = bitcast %struct.rtpbits* %b13 to i32*
  %bf.load14 = load i32, i32* %11, align 4
  %bf.clear15 = and i32 %bf.load14, -8323073
  %bf.set16 = or i32 %bf.clear15, 917504
  store i32 %bf.set16, i32* %11, align 4
  %call = call i32 @rand() #2
  %and = and i32 %call, 65535
  %12 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %b17 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %12, i32 0, i32 0
  %13 = bitcast %struct.rtpbits* %b17 to i32*
  %bf.load18 = load i32, i32* %13, align 4
  %bf.value = and i32 %and, 65535
  %bf.clear19 = and i32 %bf.load18, -65536
  %bf.set20 = or i32 %bf.clear19, %bf.value
  store i32 %bf.set20, i32* %13, align 4
  %bf.result.shl = shl i32 %bf.value, 16
  %bf.result.ashr = ashr i32 %bf.result.shl, 16
  %call21 = call i32 @rand() #2
  %14 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %timestamp = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %14, i32 0, i32 1
  store i32 %call21, i32* %timestamp, align 4, !tbaa !5
  %call22 = call i32 @rand() #2
  %15 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %ssrc = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %15, i32 0, i32 2
  store i32 %call22, i32* %ssrc, align 4, !tbaa !9
  %16 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %iAudioHeader = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %16, i32 0, i32 3
  store i32 0, i32* %iAudioHeader, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define i32 @sendrtp(i32 %fd, %struct.sockaddr_in* %sSockAddr, %struct.rtpheader* %foo, i8* %data, i32 %len) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %sSockAddr.addr = alloca %struct.sockaddr_in*, align 8
  %foo.addr = alloca %struct.rtpheader*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %cast = alloca i32*, align 8
  %outcast = alloca i32*, align 8
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__v3 = alloca i32, align 4
  %__x5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__v10 = alloca i32, align 4
  %__x12 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %__v17 = alloca i32, align 4
  %__x19 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !11
  store %struct.sockaddr_in* %sSockAddr, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  store %struct.rtpheader* %foo, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !11
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %len.addr, align 4, !tbaa !11
  %conv = sext i32 %1 to i64
  %add = add i64 %conv, 16
  %2 = alloca i8, i64 %add
  store i8* %2, i8** %buf, align 8, !tbaa !1
  %3 = bitcast i32** %cast to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.rtpheader*, %struct.rtpheader** %foo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.rtpheader* %4 to i32*
  store i32* %5, i32** %cast, align 8, !tbaa !1
  %6 = bitcast i32** %outcast to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %buf, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %outcast, align 8, !tbaa !1
  %9 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32*, i32** %cast, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %12, i32* %__x, align 4, !tbaa !11
  %13 = load i32, i32* %__x, align 4, !tbaa !11
  %14 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %13) #5, !srcloc !12
  store i32 %14, i32* %__v, align 4, !tbaa !11
  %15 = load i32, i32* %__v, align 4, !tbaa !11
  store i32 %15, i32* %tmp, !tbaa !11
  %16 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %tmp, !tbaa !11
  %19 = load i32*, i32** %outcast, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %arrayidx1, align 4, !tbaa !11
  %20 = bitcast i32* %__v3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %__x5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32*, i32** %cast, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load i32, i32* %arrayidx6, align 4, !tbaa !11
  store i32 %23, i32* %__x5, align 4, !tbaa !11
  %24 = load i32, i32* %__x5, align 4, !tbaa !11
  %25 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %24) #5, !srcloc !13
  store i32 %25, i32* %__v3, align 4, !tbaa !11
  %26 = load i32, i32* %__v3, align 4, !tbaa !11
  store i32 %26, i32* %tmp7, !tbaa !11
  %27 = bitcast i32* %__x5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %__v3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %tmp7, !tbaa !11
  %30 = load i32*, i32** %outcast, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %arrayidx8, align 4, !tbaa !11
  %31 = bitcast i32* %__v10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %__x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32*, i32** %cast, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %33, i64 2
  %34 = load i32, i32* %arrayidx13, align 4, !tbaa !11
  store i32 %34, i32* %__x12, align 4, !tbaa !11
  %35 = load i32, i32* %__x12, align 4, !tbaa !11
  %36 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #5, !srcloc !14
  store i32 %36, i32* %__v10, align 4, !tbaa !11
  %37 = load i32, i32* %__v10, align 4, !tbaa !11
  store i32 %37, i32* %tmp14, !tbaa !11
  %38 = bitcast i32* %__x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %__v10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = load i32, i32* %tmp14, !tbaa !11
  %41 = load i32*, i32** %outcast, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %arrayidx15, align 4, !tbaa !11
  %42 = bitcast i32* %__v17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %__x19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32*, i32** %cast, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %44, i64 3
  %45 = load i32, i32* %arrayidx20, align 4, !tbaa !11
  store i32 %45, i32* %__x19, align 4, !tbaa !11
  %46 = load i32, i32* %__x19, align 4, !tbaa !11
  %47 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %46) #5, !srcloc !15
  store i32 %47, i32* %__v17, align 4, !tbaa !11
  %48 = load i32, i32* %__v17, align 4, !tbaa !11
  store i32 %48, i32* %tmp21, !tbaa !11
  %49 = bitcast i32* %__x19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %__v17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %tmp21, !tbaa !11
  %52 = load i32*, i32** %outcast, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %arrayidx22, align 4, !tbaa !11
  %53 = load i8*, i8** %buf, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 16
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %55 = load i32, i32* %len.addr, align 4, !tbaa !11
  %conv23 = sext i32 %55 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %54, i64 %conv23, i32 1, i1 false)
  %56 = load i32, i32* %fd.addr, align 4, !tbaa !11
  %57 = load i8*, i8** %buf, align 8, !tbaa !1
  %58 = load i32, i32* %len.addr, align 4, !tbaa !11
  %conv24 = sext i32 %58 to i64
  %add25 = add i64 %conv24, 16
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  %60 = bitcast %struct.sockaddr_in* %59 to %struct.sockaddr*
  %call = call i64 @sendto(i32 %56, i8* %57, i64 %add25, i32 0, %struct.sockaddr* %60, i32 16)
  %conv26 = trunc i64 %call to i32
  %61 = bitcast i32** %outcast to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i32** %cast to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  ret i32 %conv26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @makesocket(i8* %szAddr, i16 zeroext %port, i32 %TTL, %struct.sockaddr_in* %sSockAddr) #0 {
entry:
  %szAddr.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %TTL.addr = alloca i32, align 4
  %sSockAddr.addr = alloca %struct.sockaddr_in*, align 8
  %iRet = alloca i32, align 4
  %iLoop = alloca i32, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  %cTtl = alloca i8, align 1
  %cLoop = alloca i8, align 1
  %tempaddr = alloca i32, align 4
  %iSocket = alloca i32, align 4
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__v13 = alloca i32, align 4
  %__x15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store i8* %szAddr, i8** %szAddr.addr, align 8, !tbaa !1
  store i16 %port, i16* %port.addr, align 2, !tbaa !16
  store i32 %TTL, i32* %TTL.addr, align 4, !tbaa !11
  store %struct.sockaddr_in* %sSockAddr, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %iRet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %iLoop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 1, i32* %iLoop, align 4, !tbaa !11
  %2 = bitcast %struct.sockaddr_in* %sin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  call void @llvm.lifetime.start(i64 1, i8* %cTtl) #2
  %3 = load i32, i32* %TTL.addr, align 4, !tbaa !11
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %cTtl, align 1, !tbaa !18
  call void @llvm.lifetime.start(i64 1, i8* %cLoop) #2
  store i8 0, i8* %cLoop, align 1, !tbaa !18
  %4 = bitcast i32* %tempaddr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %iSocket to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %call = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %call, i32* %iSocket, align 4, !tbaa !11
  %6 = load i32, i32* %iSocket, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %szAddr.addr, align 8, !tbaa !1
  %call3 = call i32 @inet_addr(i8* %8) #2
  store i32 %call3, i32* %tempaddr, align 4, !tbaa !11
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2, !tbaa !19
  %9 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  %sin_family4 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %sin_family4, align 2, !tbaa !19
  %10 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  %12 = load i16, i16* %port.addr, align 2, !tbaa !16
  store i16 %12, i16* %__x, align 2, !tbaa !16
  %13 = load i16, i16* %__x, align 2, !tbaa !16
  %14 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %13) #5, !srcloc !22
  store i16 %14, i16* %__v, align 2, !tbaa !16
  %15 = load i16, i16* %__v, align 2, !tbaa !16
  store i16 %15, i16* %tmp, !tbaa !16
  %16 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #2
  %17 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %17) #2
  %18 = load i16, i16* %tmp, !tbaa !16
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 1
  store i16 %18, i16* %sin_port, align 2, !tbaa !23
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  %sin_port5 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i16 %18, i16* %sin_port5, align 2, !tbaa !23
  %20 = load i32, i32* %tempaddr, align 4, !tbaa !11
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sSockAddr.addr, align 8, !tbaa !1
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %20, i32* %s_addr, align 4, !tbaa !24
  %22 = load i32, i32* %iSocket, align 4, !tbaa !11
  %23 = bitcast i32* %iLoop to i8*
  %call6 = call i32 @setsockopt(i32 %22, i32 1, i32 2, i8* %23, i32 4) #2
  store i32 %call6, i32* %iRet, align 4, !tbaa !11
  %24 = load i32, i32* %iRet, align 4, !tbaa !11
  %cmp7 = icmp slt i32 %24, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.11:                                        ; preds = %if.end
  %26 = bitcast i32* %__v13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %__x15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %tempaddr, align 4, !tbaa !11
  store i32 %28, i32* %__x15, align 4, !tbaa !11
  %29 = load i32, i32* %__x15, align 4, !tbaa !11
  %30 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %29) #5, !srcloc !25
  store i32 %30, i32* %__v13, align 4, !tbaa !11
  %31 = load i32, i32* %__v13, align 4, !tbaa !11
  store i32 %31, i32* %tmp16, !tbaa !11
  %32 = bitcast i32* %__x15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %__v13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = load i32, i32* %tmp16, !tbaa !11
  %shr = lshr i32 %34, 28
  %cmp17 = icmp eq i32 %shr, 14
  br i1 %cmp17, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %if.end.11
  %35 = load i32, i32* %iSocket, align 4, !tbaa !11
  %call20 = call i32 @setsockopt(i32 %35, i32 0, i32 33, i8* %cTtl, i32 1) #2
  store i32 %call20, i32* %iRet, align 4, !tbaa !11
  %36 = load i32, i32* %iRet, align 4, !tbaa !11
  %cmp21 = icmp slt i32 %36, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.19
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.25:                                        ; preds = %if.then.19
  store i8 1, i8* %cLoop, align 1, !tbaa !18
  %38 = load i32, i32* %iSocket, align 4, !tbaa !11
  %call26 = call i32 @setsockopt(i32 %38, i32 0, i32 34, i8* %cLoop, i32 1) #2
  store i32 %call26, i32* %iRet, align 4, !tbaa !11
  %39 = load i32, i32* %iRet, align 4, !tbaa !11
  %cmp27 = icmp slt i32 %39, 0
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.25
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.31:                                        ; preds = %if.end.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.11
  %41 = load i32, i32* %iSocket, align 4, !tbaa !11
  %42 = bitcast i32* %iSocket to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %tempaddr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  call void @llvm.lifetime.end(i64 1, i8* %cLoop) #2
  call void @llvm.lifetime.end(i64 1, i8* %cTtl) #2
  %44 = bitcast %struct.sockaddr_in* %sin to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #2
  %45 = bitcast i32* %iLoop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %iRet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 4}
!6 = !{!"rtpheader", !7, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!7 = !{!"rtpbits", !8, i64 0, !8, i64 2, !8, i64 2, !8, i64 3, !8, i64 3, !8, i64 3, !8, i64 3}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !8, i64 8}
!10 = !{!6, !8, i64 12}
!11 = !{!8, !8, i64 0}
!12 = !{i32 94578}
!13 = !{i32 94876}
!14 = !{i32 95174}
!15 = !{i32 95472}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !3, i64 0}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !17, i64 0}
!20 = !{!"sockaddr_in", !17, i64 0, !17, i64 2, !21, i64 4, !3, i64 8}
!21 = !{!"in_addr", !8, i64 0}
!22 = !{i32 96322}
!23 = !{!20, !17, i64 2}
!24 = !{!20, !8, i64 4}
!25 = !{i32 96817}
