; ModuleID = './MultiSource.Benchmarks.Prolangs-C/37.archie-client.dirsend.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.sockaddr = type { i16, [14 x i8] }

@pkt = internal global %struct.ptext* null, align 8
@hostname = internal global i8* null, align 8
@hostaddr = internal global %struct.sockaddr_in* null, align 8
@first = internal global %struct.ptext* null, align 8
@lp = internal global i32 -1, align 4
@one = internal global i16 0, align 2
@zero = internal global i16 0, align 2
@req_udp_port = internal global i32 0, align 4
@scpflag = internal global i32 0, align 4
@ackpend = internal global i32 0, align 4
@gaps = internal global i32 0, align 4
@client_dirsrv_retry = internal global i32 3, align 4
@retries = internal global i32 0, align 4
@dirsendReturn = internal global %struct.ptext* null, align 8
@dirsendDone = internal global i32 0, align 4
@to_hostname = common global [512 x i8] zeroinitializer, align 16
@rdgram_priority = external global i32, align 4
@priority = internal global i16 0, align 2
@client_dirsrv_timeout = internal global i32 4, align 4
@timeout = internal global %struct.timeval zeroinitializer, align 8
@ackwait = internal global %struct.timeval zeroinitializer, align 8
@gapwait = internal global %struct.timeval zeroinitializer, align 8
@comp_thru = internal global %struct.ptext* null, align 8
@perrno = external global i32, align 4
@nd_pkts = internal global i32 0, align 4
@no_pkts = internal global i32 0, align 4
@pkt_cid = internal global i32 0, align 4
@next_conn_id = internal global i16 0, align 2
@dir_udp_port = internal global i32 0, align 4
@pfs_enable = external global i32, align 4
@tmp = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dirsrv\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@openparen = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@hostnoport = internal global [500 x i8] zeroinitializer, align 16
@host = internal global %struct.hostent* null, align 8
@newhostaddr = internal global i64 0, align 8
@to = internal global %struct.sockaddr_in zeroinitializer, align 4
@notprived = internal global i32 0, align 4
@us = internal global %struct.sockaddr_in zeroinitializer, align 4
@this_conn_id = internal global i16 0, align 2
@next = internal global %struct.ptext* null, align 8
@ns = internal global i32 0, align 4
@readfds = internal global %struct.fd_set zeroinitializer, align 8
@selwait = internal global %struct.timeval* null, align 8
@timerId = internal global i8* null, align 8
@inputId = internal global i8* null, align 8
@from_sz = internal global i32 0, align 4
@from = internal global %struct.sockaddr_in zeroinitializer, align 4
@nr = internal global i32 0, align 4
@hdr_len = internal global i32 0, align 4
@ctlptr = internal global i8* null, align 8
@stmp = internal global i16 0, align 2
@backoff = internal global i32 0, align 4
@rdflag11 = internal global i8 0, align 1
@rdflag12 = internal global i8 0, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MULTI-PACKET\00", align 1
@seqtxt = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"%d OF %d\00", align 1
@vtmp = internal global %struct.ptext* null, align 8
@recvd_thru = internal global i16 0, align 2

; Function Attrs: nounwind uwtable
define %struct.ptext* @dirsend(%struct.ptext* %pkt_p, i8* %hostname_p, %struct.sockaddr_in* %hostaddr_p) #0 {
entry:
  %retval = alloca %struct.ptext*, align 8
  %pkt_p.addr = alloca %struct.ptext*, align 8
  %hostname_p.addr = alloca i8*, align 8
  %hostaddr_p.addr = alloca %struct.sockaddr_in*, align 8
  store %struct.ptext* %pkt_p, %struct.ptext** %pkt_p.addr, align 8
  store i8* %hostname_p, i8** %hostname_p.addr, align 8
  store %struct.sockaddr_in* %hostaddr_p, %struct.sockaddr_in** %hostaddr_p.addr, align 8
  %0 = load %struct.ptext*, %struct.ptext** %pkt_p.addr, align 8
  store %struct.ptext* %0, %struct.ptext** @pkt, align 8
  %1 = load i8*, i8** %hostname_p.addr, align 8
  store i8* %1, i8** @hostname, align 8
  %2 = load %struct.sockaddr_in*, %struct.sockaddr_in** %hostaddr_p.addr, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** @hostaddr, align 8
  store %struct.ptext* null, %struct.ptext** @first, align 8
  store i32 -1, i32* @lp, align 4
  store i16 0, i16* @one, align 2
  store i16 0, i16* @zero, align 2
  store i32 0, i32* @req_udp_port, align 4
  store i32 0, i32* @scpflag, align 4
  store i32 0, i32* @ackpend, align 4
  store i32 0, i32* @gaps, align 4
  %3 = load i32, i32* @client_dirsrv_retry, align 4
  store i32 %3, i32* @retries, align 4
  %call = call i32 @initDirsend()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ptext* null, %struct.ptext** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @retryDirsend()
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 0, i32* @dirsendDone, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* @dirsendDone, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @processEvent()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.ptext*, %struct.ptext** @dirsendReturn, align 8
  store %struct.ptext* %5, %struct.ptext** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load %struct.ptext*, %struct.ptext** %retval
  ret %struct.ptext* %6
}

; Function Attrs: nounwind uwtable
define void @abortDirsend() #0 {
entry:
  %0 = load i32, i32* @dirsendDone, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @lp, align 4
  %call = call i32 @close(i32 %1)
  %2 = load %struct.ptext*, %struct.ptext** @first, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %2)
  %3 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %3)
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 -5, i32* @dirsendDone, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @close(i32) #1

declare void @ptlfree(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @initDirsend() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca %struct.servent*, align 8
  %0 = load i16, i16* @one, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call zeroext i16 @htons(i16 zeroext 1) #5
  store i16 %call, i16* @one, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @rdgram_priority, align 4
  %conv2 = trunc i32 %1 to i16
  %call3 = call zeroext i16 @htons(i16 zeroext %conv2) #5
  store i16 %call3, i16* @priority, align 2
  %2 = load i32, i32* @client_dirsrv_timeout, align 4
  %conv4 = sext i32 %2 to i64
  store i64 %conv4, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @ackwait, i32 0, i32 0), align 8
  store i64 500000, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @ackwait, i32 0, i32 1), align 8
  %3 = load i32, i32* @client_dirsrv_timeout, align 4
  %cmp5 = icmp slt i32 %3, 5
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* @client_dirsrv_timeout, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 5, %cond.false ]
  %conv7 = sext i32 %cond to i64
  store i64 %conv7, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @gapwait, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @gapwait, i32 0, i32 1), align 8
  store %struct.ptext* null, %struct.ptext** @comp_thru, align 8
  store i32 0, i32* @perrno, align 4
  store i32 0, i32* @nd_pkts, align 4
  store i32 0, i32* @no_pkts, align 4
  store i32 0, i32* @pkt_cid, align 4
  %5 = load i16, i16* @next_conn_id, align 2
  %conv8 = zext i16 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %cond.end
  %call12 = call i32 @getpid() #4
  %call13 = call i32 (i32, ...) bitcast (i32 (...)* @time to i32 (i32, ...)*)(i32 0)
  %add = add nsw i32 %call12, %call13
  call void @srand(i32 %add) #4
  %call14 = call i32 @rand() #4
  %conv15 = trunc i32 %call14 to i16
  store i16 %conv15, i16* @next_conn_id, align 2
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %cond.end
  %6 = load i32, i32* @dir_udp_port, align 4
  %cmp17 = icmp eq i32 %6, 0
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.end.16
  %7 = load i32, i32* @pfs_enable, align 4
  store i32 %7, i32* @tmp, align 4
  store i32 0, i32* @pfs_enable, align 4
  %call20 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store %struct.servent* %call20, %struct.servent** %sp, align 8
  %8 = load %struct.servent*, %struct.servent** %sp, align 8
  %cmp21 = icmp eq %struct.servent* %8, null
  br i1 %cmp21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %9 = load %struct.servent*, %struct.servent** %sp, align 8
  %cmp23 = icmp eq %struct.servent* %9, inttoptr (i64 -1 to %struct.servent*)
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %lor.lhs.false, %if.then.19
  %call26 = call zeroext i16 @htons(i16 zeroext 1525) #5
  %conv27 = zext i16 %call26 to i32
  store i32 %conv27, i32* @dir_udp_port, align 4
  br label %if.end.28

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %struct.servent*, %struct.servent** %sp, align 8
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %10, i32 0, i32 2
  %11 = load i32, i32* %s_port, align 4
  store i32 %11, i32* @dir_udp_port, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.25
  %12 = load i32, i32* @tmp, align 4
  store i32 %12, i32* @pfs_enable, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.16
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %tobool = icmp ne %struct.sockaddr_in* %13, null
  br i1 %tobool, label %lor.lhs.false.30, label %if.then.33

lor.lhs.false.30:                                 ; preds = %if.end.29
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %15 = load i32, i32* %s_addr, align 4
  %cmp31 = icmp eq i32 %15, 0
  br i1 %cmp31, label %if.then.33, label %if.else.76

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.end.29
  %16 = load i8*, i8** @hostname, align 8
  %cmp34 = icmp eq i8* %16, null
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.33
  %17 = load i8*, i8** @hostname, align 8
  %18 = load i8, i8* %17, align 1
  %conv37 = sext i8 %18 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.36, %if.then.33
  store i32 3, i32* @perrno, align 4
  %19 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %19)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.36
  %20 = load i8*, i8** @hostname, align 8
  %call42 = call i8* @strchr(i8* %20, i32 40)
  store i8* %call42, i8** @openparen, align 8
  %tobool43 = icmp ne i8* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.41
  %21 = load i8*, i8** @openparen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %call45 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* @req_udp_port) #4
  %22 = load i8*, i8** @hostname, align 8
  %call46 = call i8* @strncpy(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hostnoport, i32 0, i32 0), i8* %22, i64 400)
  %23 = load i8*, i8** @openparen, align 8
  %24 = load i8*, i8** @hostname, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp47 = icmp slt i64 %sub.ptr.sub, 400
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.then.44
  %25 = load i8*, i8** @openparen, align 8
  %26 = load i8*, i8** @hostname, align 8
  %sub.ptr.lhs.cast50 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %26 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %add.ptr53 = getelementptr inbounds i8, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hostnoport, i32 0, i32 0), i64 %sub.ptr.sub52
  store i8 0, i8* %add.ptr53, align 1
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hostnoport, i32 0, i32 0), i8** @hostname, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.then.44
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.41
  %27 = load i32, i32* @pfs_enable, align 4
  store i32 %27, i32* @tmp, align 4
  store i32 0, i32* @pfs_enable, align 4
  %28 = load i8*, i8** @hostname, align 8
  %call56 = call %struct.hostent* @gethostbyname(i8* %28)
  store %struct.hostent* %call56, %struct.hostent** @host, align 8
  %cmp57 = icmp eq %struct.hostent* %call56, null
  br i1 %cmp57, label %if.then.59, label %if.else.69

if.then.59:                                       ; preds = %if.end.55
  %29 = load i32, i32* @tmp, align 4
  store i32 %29, i32* @pfs_enable, align 4
  %30 = load i8*, i8** @hostname, align 8
  %call60 = call i32 @inet_addr(i8* %30) #4
  %conv61 = zext i32 %call60 to i64
  store i64 %conv61, i64* @newhostaddr, align 8
  %31 = load i64, i64* @newhostaddr, align 8
  %cmp62 = icmp eq i64 %31, -1
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.59
  store i32 3, i32* @perrno, align 4
  %32 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %32)
  store i32 -1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.59
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.sockaddr_in* @to to i8*), i8 0, i64 16, i32 1, i1 false)
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 0), align 2
  call void @bcopy(i8* bitcast (i64* @newhostaddr to i8*), i8* bitcast (%struct.in_addr* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 2) to i8*), i64 4) #4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %tobool66 = icmp ne %struct.sockaddr_in* %33, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %35 = bitcast %struct.sockaddr_in* %34 to i8*
  call void @bcopy(i8* bitcast (%struct.sockaddr_in* @to to i8*), i8* %35, i64 16) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  br label %if.end.75

if.else.69:                                       ; preds = %if.end.55
  %36 = load i32, i32* @tmp, align 4
  store i32 %36, i32* @pfs_enable, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.sockaddr_in* @to to i8*), i8 0, i64 16, i32 1, i1 false)
  %37 = load %struct.hostent*, %struct.hostent** @host, align 8
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 2
  %38 = load i32, i32* %h_addrtype, align 4
  %conv70 = trunc i32 %38 to i16
  store i16 %conv70, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 0), align 2
  %39 = load %struct.hostent*, %struct.hostent** @host, align 8
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %39, i32 0, i32 4
  %40 = load i8**, i8*** %h_addr_list, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 0
  %41 = load i8*, i8** %arrayidx, align 8
  %42 = load %struct.hostent*, %struct.hostent** @host, align 8
  %h_length = getelementptr inbounds %struct.hostent, %struct.hostent* %42, i32 0, i32 3
  %43 = load i32, i32* %h_length, align 4
  %conv71 = sext i32 %43 to i64
  call void @bcopy(i8* %41, i8* bitcast (%struct.in_addr* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 2) to i8*), i64 %conv71) #4
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %tobool72 = icmp ne %struct.sockaddr_in* %44, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.69
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %46 = bitcast %struct.sockaddr_in* %45 to i8*
  call void @bcopy(i8* bitcast (%struct.sockaddr_in* @to to i8*), i8* %46, i64 16) #4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.else.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.68
  br label %if.end.77

if.else.76:                                       ; preds = %lor.lhs.false.30
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %48 = bitcast %struct.sockaddr_in* %47 to i8*
  call void @bcopy(i8* %48, i8* bitcast (%struct.sockaddr_in* @to to i8*), i64 16) #4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.end.75
  %49 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 2, i32 0), align 4
  %call78 = call i8* @inet_ntoa(i32 %49) #4
  %call79 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @to_hostname, i32 0, i32 0), i8* %call78, i64 511)
  %50 = load i32, i32* @req_udp_port, align 4
  %tobool80 = icmp ne i32 %50, 0
  br i1 %tobool80, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %if.end.77
  %51 = load i32, i32* @req_udp_port, align 4
  %conv82 = trunc i32 %51 to i16
  %call83 = call zeroext i16 @htons(i16 zeroext %conv82) #5
  store i16 %call83, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 1), align 2
  br label %if.end.86

if.else.84:                                       ; preds = %if.end.77
  %52 = load i32, i32* @dir_udp_port, align 4
  %conv85 = trunc i32 %52 to i16
  store i16 %conv85, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 1), align 2
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.81
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %tobool87 = icmp ne %struct.sockaddr_in* %53, null
  br i1 %tobool87, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.86
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 1
  %55 = load i16, i16* %sin_port, align 2
  %tobool89 = icmp ne i16 %55, 0
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.then.88
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %sin_port91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 1
  %57 = load i16, i16* %sin_port91, align 2
  store i16 %57, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 1), align 2
  br label %if.end.94

if.else.92:                                       ; preds = %if.then.88
  %58 = load i16, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @to, i32 0, i32 1), align 2
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** @hostaddr, align 8
  %sin_port93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 1
  store i16 %58, i16* %sin_port93, align 2
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.86
  %call96 = call i32 @socket(i32 2, i32 2, i32 0) #4
  store i32 %call96, i32* @lp, align 4
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  store i32 2, i32* @perrno, align 4
  %60 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %60)
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.95
  %61 = load i32, i32* @notprived, align 4
  %tobool101 = icmp ne i32 %61, 0
  br i1 %tobool101, label %if.end.118, label %if.then.102

if.then.102:                                      ; preds = %if.end.100
  store i32 901, i32* @tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.102
  %62 = load i32, i32* @tmp, align 4
  %cmp103 = icmp slt i32 %62, 921
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.sockaddr_in* @us to i8*), i8 0, i64 16, i32 1, i1 false)
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @us, i32 0, i32 0), align 2
  %63 = load i32, i32* @tmp, align 4
  %conv105 = trunc i32 %63 to i16
  %call106 = call zeroext i16 @htons(i16 zeroext %conv105) #5
  store i16 %call106, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @us, i32 0, i32 1), align 2
  %64 = load i32, i32* @lp, align 4
  %call107 = call i32 @bind(i32 %64, %struct.sockaddr* bitcast (%struct.sockaddr_in* @us to %struct.sockaddr*), i32 16) #4
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.115

if.then.109:                                      ; preds = %for.body
  %call110 = call i32* @__errno_location() #5
  %65 = load i32, i32* %call110, align 4
  %cmp111 = icmp ne i32 %65, 98
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.109
  %66 = load i32, i32* @notprived, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* @notprived, align 4
  br label %for.end

if.end.114:                                       ; preds = %if.then.109
  br label %if.end.116

if.else.115:                                      ; preds = %for.body
  br label %for.end

if.end.116:                                       ; preds = %if.end.114
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %67 = load i32, i32* @tmp, align 4
  %inc117 = add nsw i32 %67, 1
  store i32 %inc117, i32* @tmp, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.115, %if.then.113, %for.cond
  br label %if.end.118

if.end.118:                                       ; preds = %for.end, %if.end.100
  %68 = load i32, i32* @rdgram_priority, align 4
  %tobool119 = icmp ne i32 %68, 0
  br i1 %tobool119, label %if.then.120, label %if.else.130

if.then.120:                                      ; preds = %if.end.118
  %69 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start = getelementptr inbounds %struct.ptext, %struct.ptext* %69, i32 0, i32 1
  %70 = load i8*, i8** %start, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %70, i64 -15
  store i8* %add.ptr121, i8** %start, align 8
  %71 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length = getelementptr inbounds %struct.ptext, %struct.ptext* %71, i32 0, i32 0
  %72 = load i32, i32* %length, align 4
  %add122 = add nsw i32 %72, 15
  store i32 %add122, i32* %length, align 4
  %73 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start123 = getelementptr inbounds %struct.ptext, %struct.ptext* %73, i32 0, i32 1
  %74 = load i8*, i8** %start123, align 8
  store i8 15, i8* %74, align 1
  %75 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start124 = getelementptr inbounds %struct.ptext, %struct.ptext* %75, i32 0, i32 1
  %76 = load i8*, i8** %start124, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %76, i64 9
  call void @llvm.memset.p0i8.i64(i8* %add.ptr125, i8 0, i64 4, i32 1, i1 false)
  %77 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start126 = getelementptr inbounds %struct.ptext, %struct.ptext* %77, i32 0, i32 1
  %78 = load i8*, i8** %start126, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %78, i64 11
  store i8 2, i8* %add.ptr127, align 1
  %79 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start128 = getelementptr inbounds %struct.ptext, %struct.ptext* %79, i32 0, i32 1
  %80 = load i8*, i8** %start128, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %80, i64 13
  call void @bcopy(i8* bitcast (i16* @priority to i8*), i8* %add.ptr129, i64 2) #4
  br label %if.end.136

if.else.130:                                      ; preds = %if.end.118
  %81 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start131 = getelementptr inbounds %struct.ptext, %struct.ptext* %81, i32 0, i32 1
  %82 = load i8*, i8** %start131, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %82, i64 -9
  store i8* %add.ptr132, i8** %start131, align 8
  %83 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length133 = getelementptr inbounds %struct.ptext, %struct.ptext* %83, i32 0, i32 0
  %84 = load i32, i32* %length133, align 4
  %add134 = add nsw i32 %84, 9
  store i32 %add134, i32* %length133, align 4
  %85 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start135 = getelementptr inbounds %struct.ptext, %struct.ptext* %85, i32 0, i32 1
  %86 = load i8*, i8** %start135, align 8
  store i8 9, i8* %86, align 1
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.130, %if.then.120
  %87 = load i16, i16* @next_conn_id, align 2
  %inc137 = add i16 %87, 1
  store i16 %inc137, i16* @next_conn_id, align 2
  %call138 = call zeroext i16 @htons(i16 zeroext %87) #5
  store i16 %call138, i16* @this_conn_id, align 2
  %88 = load i16, i16* @next_conn_id, align 2
  %conv139 = zext i16 %88 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.136
  %89 = load i16, i16* @next_conn_id, align 2
  %inc143 = add i16 %89, 1
  store i16 %inc143, i16* @next_conn_id, align 2
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.136
  %90 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start145 = getelementptr inbounds %struct.ptext, %struct.ptext* %90, i32 0, i32 1
  %91 = load i8*, i8** %start145, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %91, i64 1
  call void @bcopy(i8* bitcast (i16* @this_conn_id to i8*), i8* %add.ptr146, i64 2) #4
  %92 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start147 = getelementptr inbounds %struct.ptext, %struct.ptext* %92, i32 0, i32 1
  %93 = load i8*, i8** %start147, align 8
  %add.ptr148 = getelementptr inbounds i8, i8* %93, i64 3
  call void @bcopy(i8* bitcast (i16* @one to i8*), i8* %add.ptr148, i64 2) #4
  %94 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start149 = getelementptr inbounds %struct.ptext, %struct.ptext* %94, i32 0, i32 1
  %95 = load i8*, i8** %start149, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %95, i64 5
  call void @bcopy(i8* bitcast (i16* @one to i8*), i8* %add.ptr150, i64 2) #4
  %96 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start151 = getelementptr inbounds %struct.ptext, %struct.ptext* %96, i32 0, i32 1
  %97 = load i8*, i8** %start151, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %97, i64 7
  call void @llvm.memset.p0i8.i64(i8* %add.ptr152, i8 0, i64 2, i32 1, i1 false)
  %call153 = call %struct.ptext* (...) @ptalloc()
  store %struct.ptext* %call153, %struct.ptext** @first, align 8
  %98 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %98, %struct.ptext** @next, align 8
  %99 = load i32, i32* @lp, align 4
  store i32 %99, i32* %retval
  br label %return

return:                                           ; preds = %if.end.144, %if.then.99, %if.then.64, %if.then.40
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @time(...) #1

; Function Attrs: nounwind
declare i32 @rand() #3

declare %struct.servent* @getservbyname(i8*, i8*) #1

declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i8* @strncpy(i8*, i8*, i64) #1

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct.ptext* @ptalloc(...) #1

; Function Attrs: nounwind uwtable
define internal void @retryDirsend() #0 {
entry:
  store i32 0, i32* @ackpend, align 4
  store i32 0, i32* @gaps, align 4
  %0 = load i32, i32* @lp, align 4
  %1 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start = getelementptr inbounds %struct.ptext, %struct.ptext* %1, i32 0, i32 1
  %2 = load i8*, i8** %start, align 8
  %3 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length = getelementptr inbounds %struct.ptext, %struct.ptext* %3, i32 0, i32 0
  %4 = load i32, i32* %length, align 4
  %conv = sext i32 %4 to i64
  %call = call i64 @sendto(i32 %0, i8* %2, i64 %conv, i32 0, %struct.sockaddr* bitcast (%struct.sockaddr_in* @to to %struct.sockaddr*), i32 16)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* @ns, align 4
  %5 = load i32, i32* @ns, align 4
  %6 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length2 = getelementptr inbounds %struct.ptext, %struct.ptext* %6, i32 0, i32 0
  %7 = load i32, i32* %length2, align 4
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* @lp, align 4
  %call4 = call i32 @close(i32 %8)
  store i32 4, i32* @perrno, align 4
  %9 = load %struct.ptext*, %struct.ptext** @first, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %9)
  %10 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %10)
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 -1, i32* @dirsendDone, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @keepWaitingDirsend()
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @keepWaitingDirsend() #0 {
entry:
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* getelementptr inbounds (%struct.fd_set, %struct.fd_set* @readfds, i32 0, i32 0, i64 0)) #4, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %0, 0
  %asmresult1 = extractvalue { i64, i64* } %0, 1
  %1 = trunc i64 %asmresult to i32
  store i32 %1, i32* %__d0, align 4
  %2 = ptrtoint i64* %asmresult1 to i64
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* @lp, align 4
  %rem = srem i32 %4, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %5 = load i32, i32* @lp, align 4
  %div = sdiv i32 %5, 64
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* getelementptr inbounds (%struct.fd_set, %struct.fd_set* @readfds, i32 0, i32 0), i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %arrayidx, align 8
  %7 = load i32, i32* @ackpend, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store %struct.timeval* @ackwait, %struct.timeval** @selwait, align 8
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %8 = load i32, i32* @gaps, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store %struct.timeval* @gapwait, %struct.timeval** @selwait, align 8
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store %struct.timeval* @timeout, %struct.timeval** @selwait, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @processEvent() #0 {
entry:
  %0 = load i32, i32* @lp, align 4
  %add = add nsw i32 %0, 1
  %1 = load %struct.timeval*, %struct.timeval** @selwait, align 8
  %call = call i32 @select(i32 %add, %struct.fd_set* @readfds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %1)
  store i32 %call, i32* @tmp, align 4
  %2 = load i32, i32* @tmp, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @timeoutProc(i8* null, i8** @timerId)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @tmp, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i32, i32* @lp, align 4
  %div = sdiv i32 %4, 64
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* getelementptr inbounds (%struct.fd_set, %struct.fd_set* @readfds, i32 0, i32 0), i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* @lp, align 4
  %rem = srem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %5, %shl
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.else.5, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %7 = load i32, i32* @lp, align 4
  %call4 = call i32 @close(i32 %7)
  store i32 5, i32* @perrno, align 4
  %8 = load %struct.ptext*, %struct.ptext** @first, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %8)
  %9 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %9)
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 -3, i32* @dirsendDone, align 4
  br label %if.end

if.else.5:                                        ; preds = %lor.lhs.false
  call void @readProc(i8* null, i32* @lp, i8** @inputId)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind uwtable
define internal void @timeoutProc(i8* %client_data, i8** %id) #0 {
entry:
  %client_data.addr = alloca i8*, align 8
  %id.addr = alloca i8**, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  store i8** %id, i8*** %id.addr, align 8
  %0 = load i32, i32* @gaps, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @ackpend, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @retryDirsend()
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @retries, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @retries, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 0), align 8
  %mul = mul nsw i64 2, %3
  store i64 %mul, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 0), align 8
  call void @retryDirsend()
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* @lp, align 4
  %call = call i32 @close(i32 %4)
  store i32 5, i32* @perrno, align 4
  %5 = load %struct.ptext*, %struct.ptext** @first, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %5)
  %6 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %6)
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 -4, i32* @dirsendDone, align 4
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readProc(i8* %client_data, i32* %source, i8** %id) #0 {
entry:
  %client_data.addr = alloca i8*, align 8
  %source.addr = alloca i32*, align 8
  %id.addr = alloca i8**, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  store i32* %source, i32** %source.addr, align 8
  store i8** %id, i8*** %id.addr, align 8
  store i32 16, i32* @from_sz, align 4
  %0 = load %struct.ptext*, %struct.ptext** @next, align 8
  %dat = getelementptr inbounds %struct.ptext, %struct.ptext* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1314 x i8], [1314 x i8]* %dat, i32 0, i32 0
  %1 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start = getelementptr inbounds %struct.ptext, %struct.ptext* %1, i32 0, i32 1
  store i8* %arraydecay, i8** %start, align 8
  %2 = load i32, i32* @lp, align 4
  %3 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start1 = getelementptr inbounds %struct.ptext, %struct.ptext* %3, i32 0, i32 1
  %4 = load i8*, i8** %start1, align 8
  %call = call i64 @recvfrom(i32 %2, i8* %4, i64 1314, i32 0, %struct.sockaddr* bitcast (%struct.sockaddr_in* @from to %struct.sockaddr*), i32* @from_sz)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @nr, align 4
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @lp, align 4
  %call3 = call i32 @close(i32 %5)
  store i32 6, i32* @perrno, align 4
  %6 = load %struct.ptext*, %struct.ptext** @first, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %6)
  %7 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %7)
  store %struct.ptext* null, %struct.ptext** @dirsendReturn, align 8
  store i32 -2, i32* @dirsendDone, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* @nr, align 4
  %9 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length = getelementptr inbounds %struct.ptext, %struct.ptext* %9, i32 0, i32 0
  store i32 %8, i32* %length, align 4
  %10 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length4 = getelementptr inbounds %struct.ptext, %struct.ptext* %10, i32 0, i32 0
  %11 = load i32, i32* %length4, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start5 = getelementptr inbounds %struct.ptext, %struct.ptext* %12, i32 0, i32 1
  %13 = load i8*, i8** %start5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %14 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start6 = getelementptr inbounds %struct.ptext, %struct.ptext* %14, i32 0, i32 1
  %15 = load i8*, i8** %start6, align 8
  %16 = load i8, i8* %15, align 1
  %conv7 = zext i8 %16 to i32
  store i32 %conv7, i32* @hdr_len, align 4
  %cmp8 = icmp slt i32 %conv7, 20
  br i1 %cmp8, label %if.then.10, label %if.end.121

if.then.10:                                       ; preds = %if.end
  %17 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start11 = getelementptr inbounds %struct.ptext, %struct.ptext* %17, i32 0, i32 1
  %18 = load i8*, i8** %start11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr, i8** @ctlptr, align 8
  %19 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq = getelementptr inbounds %struct.ptext, %struct.ptext* %19, i32 0, i32 6
  store i32 0, i32* %seq, align 4
  %20 = load i32, i32* @hdr_len, align 4
  %cmp12 = icmp sge i32 %20, 3
  br i1 %cmp12, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.then.10
  %21 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %21, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %22 = load i16, i16* @stmp, align 2
  %tobool = icmp ne i16 %22, 0
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.14
  %23 = load i16, i16* @stmp, align 2
  %call16 = call zeroext i16 @ntohs(i16 zeroext %23) #5
  %conv17 = zext i16 %call16 to i32
  store i32 %conv17, i32* @pkt_cid, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.14
  %24 = load i8*, i8** @ctlptr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr19, i8** @ctlptr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.18, %if.then.10
  %25 = load i32, i32* @pkt_cid, align 4
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.20
  %26 = load i16, i16* @this_conn_id, align 2
  %conv22 = zext i16 %26 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %27 = load i32, i32* @pkt_cid, align 4
  %28 = load i16, i16* @this_conn_id, align 2
  %conv25 = zext i16 %28 to i32
  %cmp26 = icmp ne i32 %27, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  call void @keepWaitingDirsend()
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %land.lhs.true, %if.end.20
  %29 = load i32, i32* @hdr_len, align 4
  %cmp30 = icmp sge i32 %29, 5
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.29
  %30 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %30, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %31 = load i16, i16* @stmp, align 2
  %call33 = call zeroext i16 @ntohs(i16 zeroext %31) #5
  %conv34 = zext i16 %call33 to i32
  %32 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq35 = getelementptr inbounds %struct.ptext, %struct.ptext* %32, i32 0, i32 6
  store i32 %conv34, i32* %seq35, align 4
  %33 = load i8*, i8** @ctlptr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr36, i8** @ctlptr, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end.29
  %34 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq37 = getelementptr inbounds %struct.ptext, %struct.ptext* %34, i32 0, i32 6
  store i32 1, i32* %seq37, align 4
  store i32 1, i32* @nd_pkts, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.32
  %35 = load i32, i32* @hdr_len, align 4
  %cmp39 = icmp sge i32 %35, 7
  br i1 %cmp39, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %if.end.38
  %36 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %36, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %37 = load i16, i16* @stmp, align 2
  %tobool42 = icmp ne i16 %37, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.41
  %38 = load i16, i16* @stmp, align 2
  %call44 = call zeroext i16 @ntohs(i16 zeroext %38) #5
  %conv45 = zext i16 %call44 to i32
  store i32 %conv45, i32* @nd_pkts, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.41
  %39 = load i8*, i8** @ctlptr, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %add.ptr47, i8** @ctlptr, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %if.end.38
  %40 = load i32, i32* @hdr_len, align 4
  %cmp49 = icmp sge i32 %40, 9
  br i1 %cmp49, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %if.end.48
  %41 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %41, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %42 = load i16, i16* @stmp, align 2
  %conv52 = sext i16 %42 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %if.then.51
  %43 = load i16, i16* @stmp, align 2
  %call55 = call zeroext i16 @ntohs(i16 zeroext %43) #5
  %conv56 = zext i16 %call55 to i32
  %cmp57 = icmp eq i32 %conv56, 1
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %land.lhs.true.54
  %44 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length60 = getelementptr inbounds %struct.ptext, %struct.ptext* %44, i32 0, i32 0
  store i32 9, i32* %length60, align 4
  %45 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start61 = getelementptr inbounds %struct.ptext, %struct.ptext* %45, i32 0, i32 1
  %46 = load i8*, i8** %start61, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %46, i64 3
  call void @bcopy(i8* bitcast (i16* @zero to i8*), i8* %add.ptr62, i64 2) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %land.lhs.true.54, %if.then.51
  %47 = load i8*, i8** @ctlptr, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %add.ptr64, i8** @ctlptr, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %if.end.48
  %48 = load i32, i32* @hdr_len, align 4
  %cmp66 = icmp sge i32 %48, 11
  br i1 %cmp66, label %if.then.68, label %if.end.86

if.then.68:                                       ; preds = %if.end.65
  %49 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %49, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %50 = load i16, i16* @stmp, align 2
  %tobool69 = icmp ne i16 %50, 0
  br i1 %tobool69, label %if.then.70, label %if.end.84

if.then.70:                                       ; preds = %if.then.68
  %51 = load i16, i16* @stmp, align 2
  %call71 = call zeroext i16 @ntohs(i16 zeroext %51) #5
  %conv72 = zext i16 %call71 to i32
  store i32 %conv72, i32* @backoff, align 4
  %52 = load i32, i32* @backoff, align 4
  %conv73 = sext i32 %52 to i64
  store i64 %conv73, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 0), align 8
  %53 = load i32, i32* @backoff, align 4
  %cmp74 = icmp sgt i32 %53, 60
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.83

land.lhs.true.76:                                 ; preds = %if.then.70
  %54 = load %struct.ptext*, %struct.ptext** @first, align 8
  %55 = load %struct.ptext*, %struct.ptext** @next, align 8
  %cmp77 = icmp eq %struct.ptext* %54, %55
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.83

land.lhs.true.79:                                 ; preds = %land.lhs.true.76
  %56 = load i32, i32* @no_pkts, align 4
  %cmp80 = icmp eq i32 %56, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.79
  %57 = load i32, i32* @client_dirsrv_retry, align 4
  store i32 %57, i32* @retries, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.79, %land.lhs.true.76, %if.then.70
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.68
  %58 = load i8*, i8** @ctlptr, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %add.ptr85, i8** @ctlptr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.84, %if.end.65
  %59 = load i32, i32* @hdr_len, align 4
  %cmp87 = icmp sge i32 %59, 12
  br i1 %cmp87, label %if.then.89, label %if.end.102

if.then.89:                                       ; preds = %if.end.86
  %60 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %60, i8* @rdflag11, i64 1) #4
  %61 = load i8, i8* @rdflag11, align 1
  %conv90 = zext i8 %61 to i32
  %and = and i32 %conv90, 128
  %tobool91 = icmp ne i32 %and, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  %62 = load i32, i32* @ackpend, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* @ackpend, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %63 = load i8, i8* @rdflag11, align 1
  %conv94 = zext i8 %63 to i32
  %and95 = and i32 %conv94, 64
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.end.93
  %64 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length98 = getelementptr inbounds %struct.ptext, %struct.ptext* %64, i32 0, i32 0
  store i32 -1, i32* %length98, align 4
  %65 = load i32, i32* @scpflag, align 4
  %inc99 = add nsw i32 %65, 1
  store i32 %inc99, i32* @scpflag, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.end.93
  %66 = load i8*, i8** @ctlptr, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %add.ptr101, i8** @ctlptr, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.100, %if.end.86
  %67 = load i32, i32* @hdr_len, align 4
  %cmp103 = icmp sge i32 %67, 13
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.102
  %68 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %68, i8* @rdflag12, i64 1) #4
  %69 = load i8*, i8** @ctlptr, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %add.ptr106, i8** @ctlptr, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.102
  %70 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq108 = getelementptr inbounds %struct.ptext, %struct.ptext* %70, i32 0, i32 6
  %71 = load i32, i32* %seq108, align 4
  %cmp109 = icmp eq i32 %71, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.107
  call void @keepWaitingDirsend()
  br label %return

if.end.112:                                       ; preds = %if.end.107
  %72 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length113 = getelementptr inbounds %struct.ptext, %struct.ptext* %72, i32 0, i32 0
  %73 = load i32, i32* %length113, align 4
  %cmp114 = icmp sge i32 %73, 0
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.112
  %74 = load i32, i32* @hdr_len, align 4
  %75 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length117 = getelementptr inbounds %struct.ptext, %struct.ptext* %75, i32 0, i32 0
  %76 = load i32, i32* %length117, align 4
  %sub = sub nsw i32 %76, %74
  store i32 %sub, i32* %length117, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.112
  %77 = load i32, i32* @hdr_len, align 4
  %78 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start119 = getelementptr inbounds %struct.ptext, %struct.ptext* %78, i32 0, i32 1
  %79 = load i8*, i8** %start119, align 8
  %idx.ext = sext i32 %77 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %79, i64 %idx.ext
  store i8* %add.ptr120, i8** %start119, align 8
  br label %done_old

if.end.121:                                       ; preds = %if.end
  store i32 0, i32* @pkt_cid, align 4
  %80 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start122 = getelementptr inbounds %struct.ptext, %struct.ptext* %80, i32 0, i32 1
  %81 = load i8*, i8** %start122, align 8
  %82 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length123 = getelementptr inbounds %struct.ptext, %struct.ptext* %82, i32 0, i32 0
  %83 = load i32, i32* %length123, align 4
  %sub124 = sub nsw i32 %83, 20
  %cmp125 = icmp sgt i32 0, %sub124
  br i1 %cmp125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.121
  br label %cond.end

cond.false:                                       ; preds = %if.end.121
  %84 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length127 = getelementptr inbounds %struct.ptext, %struct.ptext* %84, i32 0, i32 0
  %85 = load i32, i32* %length127, align 4
  %sub128 = sub nsw i32 %85, 20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub128, %cond.false ]
  %idx.ext129 = sext i32 %cond to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %81, i64 %idx.ext129
  store i8* %add.ptr130, i8** @ctlptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %86 = load i8*, i8** @ctlptr, align 8
  %87 = load i8, i8* %86, align 1
  %tobool131 = icmp ne i8 %87, 0
  br i1 %tobool131, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %88 = load i8*, i8** @ctlptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr, i8** @ctlptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load i8*, i8** @ctlptr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr132, i8** @ctlptr, align 8
  %90 = load i8*, i8** @ctlptr, align 8
  %91 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start133 = getelementptr inbounds %struct.ptext, %struct.ptext* %91, i32 0, i32 1
  %92 = load i8*, i8** %start133, align 8
  %93 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length134 = getelementptr inbounds %struct.ptext, %struct.ptext* %93, i32 0, i32 0
  %94 = load i32, i32* %length134, align 4
  %idx.ext135 = sext i32 %94 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %92, i64 %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr136, i64 -4
  %cmp138 = icmp ult i8* %90, %add.ptr137
  br i1 %cmp138, label %if.then.140, label %if.end.212

if.then.140:                                      ; preds = %while.end
  %95 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %95, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %96 = load i16, i16* @stmp, align 2
  %tobool141 = icmp ne i16 %96, 0
  br i1 %tobool141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %if.then.140
  %97 = load i16, i16* @stmp, align 2
  %call143 = call zeroext i16 @ntohs(i16 zeroext %97) #5
  %conv144 = zext i16 %call143 to i32
  store i32 %conv144, i32* @pkt_cid, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %if.then.140
  %98 = load i8*, i8** @ctlptr, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %add.ptr146, i8** @ctlptr, align 8
  %99 = load i32, i32* @pkt_cid, align 4
  %tobool147 = icmp ne i32 %99, 0
  br i1 %tobool147, label %land.lhs.true.148, label %if.end.156

land.lhs.true.148:                                ; preds = %if.end.145
  %100 = load i16, i16* @this_conn_id, align 2
  %conv149 = zext i16 %100 to i32
  %tobool150 = icmp ne i32 %conv149, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.156

land.lhs.true.151:                                ; preds = %land.lhs.true.148
  %101 = load i32, i32* @pkt_cid, align 4
  %102 = load i16, i16* @this_conn_id, align 2
  %conv152 = zext i16 %102 to i32
  %cmp153 = icmp ne i32 %101, %conv152
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.151
  call void @keepWaitingDirsend()
  br label %return

if.end.156:                                       ; preds = %land.lhs.true.151, %land.lhs.true.148, %if.end.145
  %103 = load i8*, i8** @ctlptr, align 8
  %104 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start157 = getelementptr inbounds %struct.ptext, %struct.ptext* %104, i32 0, i32 1
  %105 = load i8*, i8** %start157, align 8
  %106 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length158 = getelementptr inbounds %struct.ptext, %struct.ptext* %106, i32 0, i32 0
  %107 = load i32, i32* %length158, align 4
  %idx.ext159 = sext i32 %107 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %105, i64 %idx.ext159
  %cmp161 = icmp ult i8* %103, %add.ptr160
  br i1 %cmp161, label %if.then.163, label %if.end.168

if.then.163:                                      ; preds = %if.end.156
  %108 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %108, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %109 = load i16, i16* @stmp, align 2
  %call164 = call zeroext i16 @ntohs(i16 zeroext %109) #5
  %conv165 = zext i16 %call164 to i32
  %110 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq166 = getelementptr inbounds %struct.ptext, %struct.ptext* %110, i32 0, i32 6
  store i32 %conv165, i32* %seq166, align 4
  %111 = load i8*, i8** @ctlptr, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %111, i64 2
  store i8* %add.ptr167, i8** @ctlptr, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.163, %if.end.156
  %112 = load i8*, i8** @ctlptr, align 8
  %113 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start169 = getelementptr inbounds %struct.ptext, %struct.ptext* %113, i32 0, i32 1
  %114 = load i8*, i8** %start169, align 8
  %115 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length170 = getelementptr inbounds %struct.ptext, %struct.ptext* %115, i32 0, i32 0
  %116 = load i32, i32* %length170, align 4
  %idx.ext171 = sext i32 %116 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %114, i64 %idx.ext171
  %cmp173 = icmp ult i8* %112, %add.ptr172
  br i1 %cmp173, label %if.then.175, label %if.end.182

if.then.175:                                      ; preds = %if.end.168
  %117 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %117, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %118 = load i16, i16* @stmp, align 2
  %tobool176 = icmp ne i16 %118, 0
  br i1 %tobool176, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %if.then.175
  %119 = load i16, i16* @stmp, align 2
  %call178 = call zeroext i16 @ntohs(i16 zeroext %119) #5
  %conv179 = zext i16 %call178 to i32
  store i32 %conv179, i32* @nd_pkts, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %if.then.175
  %120 = load i8*, i8** @ctlptr, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %120, i64 2
  store i8* %add.ptr181, i8** @ctlptr, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.180, %if.end.168
  %121 = load i8*, i8** @ctlptr, align 8
  %122 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start183 = getelementptr inbounds %struct.ptext, %struct.ptext* %122, i32 0, i32 1
  %123 = load i8*, i8** %start183, align 8
  %124 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length184 = getelementptr inbounds %struct.ptext, %struct.ptext* %124, i32 0, i32 0
  %125 = load i32, i32* %length184, align 4
  %idx.ext185 = sext i32 %125 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %123, i64 %idx.ext185
  %cmp187 = icmp ult i8* %121, %add.ptr186
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %if.end.182
  %126 = load i8*, i8** @ctlptr, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %add.ptr190, i8** @ctlptr, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %if.end.182
  %127 = load i8*, i8** @ctlptr, align 8
  %128 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start192 = getelementptr inbounds %struct.ptext, %struct.ptext* %128, i32 0, i32 1
  %129 = load i8*, i8** %start192, align 8
  %130 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length193 = getelementptr inbounds %struct.ptext, %struct.ptext* %130, i32 0, i32 0
  %131 = load i32, i32* %length193, align 4
  %idx.ext194 = sext i32 %131 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %129, i64 %idx.ext194
  %cmp196 = icmp ult i8* %127, %add.ptr195
  br i1 %cmp196, label %if.then.198, label %if.end.206

if.then.198:                                      ; preds = %if.end.191
  %132 = load i8*, i8** @ctlptr, align 8
  call void @bcopy(i8* %132, i8* bitcast (i16* @stmp to i8*), i64 2) #4
  %133 = load i16, i16* @stmp, align 2
  %call199 = call zeroext i16 @ntohs(i16 zeroext %133) #5
  %conv200 = zext i16 %call199 to i32
  store i32 %conv200, i32* @backoff, align 4
  %134 = load i32, i32* @backoff, align 4
  %tobool201 = icmp ne i32 %134, 0
  br i1 %tobool201, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %if.then.198
  %135 = load i32, i32* @backoff, align 4
  %conv203 = sext i32 %135 to i64
  store i64 %conv203, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @timeout, i32 0, i32 0), align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %if.then.198
  %136 = load i8*, i8** @ctlptr, align 8
  %add.ptr205 = getelementptr inbounds i8, i8* %136, i64 2
  store i8* %add.ptr205, i8** @ctlptr, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.204, %if.end.191
  %137 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq207 = getelementptr inbounds %struct.ptext, %struct.ptext* %137, i32 0, i32 6
  %138 = load i32, i32* %seq207, align 4
  %cmp208 = icmp eq i32 %138, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.206
  call void @keepWaitingDirsend()
  br label %return

if.end.211:                                       ; preds = %if.end.206
  br label %done_old

if.end.212:                                       ; preds = %while.end
  %139 = load %struct.ptext*, %struct.ptext** @next, align 8
  %start213 = getelementptr inbounds %struct.ptext, %struct.ptext* %139, i32 0, i32 1
  %140 = load i8*, i8** %start213, align 8
  %141 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length214 = getelementptr inbounds %struct.ptext, %struct.ptext* %141, i32 0, i32 0
  %142 = load i32, i32* %length214, align 4
  %sub215 = sub nsw i32 %142, 40
  %cmp216 = icmp sgt i32 0, %sub215
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %if.end.212
  br label %cond.end.222

cond.false.219:                                   ; preds = %if.end.212
  %143 = load %struct.ptext*, %struct.ptext** @next, align 8
  %length220 = getelementptr inbounds %struct.ptext, %struct.ptext* %143, i32 0, i32 0
  %144 = load i32, i32* %length220, align 4
  %sub221 = sub nsw i32 %144, 40
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.219, %cond.true.218
  %cond223 = phi i32 [ 0, %cond.true.218 ], [ %sub221, %cond.false.219 ]
  %idx.ext224 = sext i32 %cond223 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %140, i64 %idx.ext224
  %call226 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @nlsindex to i8* (i8*, i8*, ...)*)(i8* %add.ptr225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call226, i8** @seqtxt, align 8
  %145 = load i8*, i8** @seqtxt, align 8
  %tobool227 = icmp ne i8* %145, null
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %cond.end.222
  %146 = load i8*, i8** @seqtxt, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %146, i64 13
  store i8* %add.ptr229, i8** @seqtxt, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %cond.end.222
  %147 = load i32, i32* @nd_pkts, align 4
  %cmp231 = icmp eq i32 %147, 0
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.240

land.lhs.true.233:                                ; preds = %if.end.230
  %148 = load i32, i32* @no_pkts, align 4
  %cmp234 = icmp eq i32 %148, 0
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.240

land.lhs.true.236:                                ; preds = %land.lhs.true.233
  %149 = load i8*, i8** @seqtxt, align 8
  %cmp237 = icmp eq i8* %149, null
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %land.lhs.true.236
  br label %all_done

if.end.240:                                       ; preds = %land.lhs.true.236, %land.lhs.true.233, %if.end.230
  %150 = load i8*, i8** @seqtxt, align 8
  %151 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq241 = getelementptr inbounds %struct.ptext, %struct.ptext* %151, i32 0, i32 6
  %call242 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32* %seq241, i32* @nd_pkts) #4
  store i32 %call242, i32* @tmp, align 4
  br label %done_old

done_old:                                         ; preds = %if.end.240, %if.end.211, %if.end.118
  %152 = load %struct.ptext*, %struct.ptext** @first, align 8
  %153 = load %struct.ptext*, %struct.ptext** @next, align 8
  %cmp243 = icmp eq %struct.ptext* %152, %153
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.261

land.lhs.true.245:                                ; preds = %done_old
  %154 = load i32, i32* @no_pkts, align 4
  %cmp246 = icmp eq i32 %154, 0
  br i1 %cmp246, label %if.then.248, label %if.end.261

if.then.248:                                      ; preds = %land.lhs.true.245
  %155 = load %struct.ptext*, %struct.ptext** @first, align 8
  %seq249 = getelementptr inbounds %struct.ptext, %struct.ptext* %155, i32 0, i32 6
  %156 = load i32, i32* %seq249, align 4
  %cmp250 = icmp eq i32 %156, 1
  br i1 %cmp250, label %if.then.252, label %if.else.257

if.then.252:                                      ; preds = %if.then.248
  %157 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %157, %struct.ptext** @comp_thru, align 8
  %158 = load i32, i32* @nd_pkts, align 4
  %cmp253 = icmp eq i32 %158, 1
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.then.252
  br label %all_done

if.end.256:                                       ; preds = %if.then.252
  br label %if.end.259

if.else.257:                                      ; preds = %if.then.248
  %159 = load i32, i32* @gaps, align 4
  %inc258 = add nsw i32 %159, 1
  store i32 %inc258, i32* @gaps, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.257, %if.end.256
  store i32 1, i32* @no_pkts, align 4
  %call260 = call %struct.ptext* (...) @ptalloc()
  store %struct.ptext* %call260, %struct.ptext** @next, align 8
  call void @keepWaitingDirsend()
  br label %return

if.end.261:                                       ; preds = %land.lhs.true.245, %done_old
  %160 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %tobool262 = icmp ne %struct.ptext* %160, null
  br i1 %tobool262, label %land.lhs.true.263, label %if.else.269

land.lhs.true.263:                                ; preds = %if.end.261
  %161 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq264 = getelementptr inbounds %struct.ptext, %struct.ptext* %161, i32 0, i32 6
  %162 = load i32, i32* %seq264, align 4
  %163 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %seq265 = getelementptr inbounds %struct.ptext, %struct.ptext* %163, i32 0, i32 6
  %164 = load i32, i32* %seq265, align 4
  %cmp266 = icmp sle i32 %162, %164
  br i1 %cmp266, label %if.then.268, label %if.else.269

if.then.268:                                      ; preds = %land.lhs.true.263
  %165 = load %struct.ptext*, %struct.ptext** @next, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %165)
  br label %if.end.320

if.else.269:                                      ; preds = %land.lhs.true.263, %if.end.261
  %166 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq270 = getelementptr inbounds %struct.ptext, %struct.ptext* %166, i32 0, i32 6
  %167 = load i32, i32* %seq270, align 4
  %168 = load %struct.ptext*, %struct.ptext** @first, align 8
  %seq271 = getelementptr inbounds %struct.ptext, %struct.ptext* %168, i32 0, i32 6
  %169 = load i32, i32* %seq271, align 4
  %cmp272 = icmp slt i32 %167, %169
  br i1 %cmp272, label %if.then.274, label %if.else.282

if.then.274:                                      ; preds = %if.else.269
  %170 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %170, %struct.ptext** @vtmp, align 8
  %171 = load %struct.ptext*, %struct.ptext** @next, align 8
  store %struct.ptext* %171, %struct.ptext** @first, align 8
  %172 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %173 = load %struct.ptext*, %struct.ptext** @first, align 8
  %next = getelementptr inbounds %struct.ptext, %struct.ptext* %173, i32 0, i32 5
  store %struct.ptext* %172, %struct.ptext** %next, align 8
  %174 = load %struct.ptext*, %struct.ptext** @first, align 8
  %previous = getelementptr inbounds %struct.ptext, %struct.ptext* %174, i32 0, i32 4
  store %struct.ptext* null, %struct.ptext** %previous, align 8
  %175 = load %struct.ptext*, %struct.ptext** @first, align 8
  %176 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %previous275 = getelementptr inbounds %struct.ptext, %struct.ptext* %176, i32 0, i32 4
  store %struct.ptext* %175, %struct.ptext** %previous275, align 8
  %177 = load %struct.ptext*, %struct.ptext** @first, align 8
  %seq276 = getelementptr inbounds %struct.ptext, %struct.ptext* %177, i32 0, i32 6
  %178 = load i32, i32* %seq276, align 4
  %cmp277 = icmp eq i32 %178, 1
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %if.then.274
  %179 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %179, %struct.ptext** @comp_thru, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %if.then.274
  %180 = load i32, i32* @no_pkts, align 4
  %inc281 = add nsw i32 %180, 1
  store i32 %inc281, i32* @no_pkts, align 4
  br label %if.end.319

if.else.282:                                      ; preds = %if.else.269
  %181 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %tobool283 = icmp ne %struct.ptext* %181, null
  br i1 %tobool283, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %if.else.282
  %182 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  br label %cond.end.286

cond.false.285:                                   ; preds = %if.else.282
  %183 = load %struct.ptext*, %struct.ptext** @first, align 8
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.285, %cond.true.284
  %cond287 = phi %struct.ptext* [ %182, %cond.true.284 ], [ %183, %cond.false.285 ]
  store %struct.ptext* %cond287, %struct.ptext** @vtmp, align 8
  br label %while.cond.288

while.cond.288:                                   ; preds = %if.end.302, %cond.end.286
  %184 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %seq289 = getelementptr inbounds %struct.ptext, %struct.ptext* %184, i32 0, i32 6
  %185 = load i32, i32* %seq289, align 4
  %186 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq290 = getelementptr inbounds %struct.ptext, %struct.ptext* %186, i32 0, i32 6
  %187 = load i32, i32* %seq290, align 4
  %cmp291 = icmp slt i32 %185, %187
  br i1 %cmp291, label %while.body.293, label %while.end.304

while.body.293:                                   ; preds = %while.cond.288
  %188 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next294 = getelementptr inbounds %struct.ptext, %struct.ptext* %188, i32 0, i32 5
  %189 = load %struct.ptext*, %struct.ptext** %next294, align 8
  %cmp295 = icmp eq %struct.ptext* %189, null
  br i1 %cmp295, label %if.then.297, label %if.end.302

if.then.297:                                      ; preds = %while.body.293
  %190 = load %struct.ptext*, %struct.ptext** @next, align 8
  %191 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next298 = getelementptr inbounds %struct.ptext, %struct.ptext* %191, i32 0, i32 5
  store %struct.ptext* %190, %struct.ptext** %next298, align 8
  %192 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %193 = load %struct.ptext*, %struct.ptext** @next, align 8
  %previous299 = getelementptr inbounds %struct.ptext, %struct.ptext* %193, i32 0, i32 4
  store %struct.ptext* %192, %struct.ptext** %previous299, align 8
  %194 = load %struct.ptext*, %struct.ptext** @next, align 8
  %next300 = getelementptr inbounds %struct.ptext, %struct.ptext* %194, i32 0, i32 5
  store %struct.ptext* null, %struct.ptext** %next300, align 8
  %195 = load i32, i32* @no_pkts, align 4
  %inc301 = add nsw i32 %195, 1
  store i32 %inc301, i32* @no_pkts, align 4
  br label %ins_done

if.end.302:                                       ; preds = %while.body.293
  %196 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next303 = getelementptr inbounds %struct.ptext, %struct.ptext* %196, i32 0, i32 5
  %197 = load %struct.ptext*, %struct.ptext** %next303, align 8
  store %struct.ptext* %197, %struct.ptext** @vtmp, align 8
  br label %while.cond.288

while.end.304:                                    ; preds = %while.cond.288
  %198 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %seq305 = getelementptr inbounds %struct.ptext, %struct.ptext* %198, i32 0, i32 6
  %199 = load i32, i32* %seq305, align 4
  %200 = load %struct.ptext*, %struct.ptext** @next, align 8
  %seq306 = getelementptr inbounds %struct.ptext, %struct.ptext* %200, i32 0, i32 6
  %201 = load i32, i32* %seq306, align 4
  %cmp307 = icmp eq i32 %199, %201
  br i1 %cmp307, label %if.then.309, label %if.else.310

if.then.309:                                      ; preds = %while.end.304
  %202 = load %struct.ptext*, %struct.ptext** @next, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %202)
  br label %if.end.318

if.else.310:                                      ; preds = %while.end.304
  %203 = load %struct.ptext*, %struct.ptext** @next, align 8
  %204 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %previous311 = getelementptr inbounds %struct.ptext, %struct.ptext* %204, i32 0, i32 4
  %205 = load %struct.ptext*, %struct.ptext** %previous311, align 8
  %next312 = getelementptr inbounds %struct.ptext, %struct.ptext* %205, i32 0, i32 5
  store %struct.ptext* %203, %struct.ptext** %next312, align 8
  %206 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %previous313 = getelementptr inbounds %struct.ptext, %struct.ptext* %206, i32 0, i32 4
  %207 = load %struct.ptext*, %struct.ptext** %previous313, align 8
  %208 = load %struct.ptext*, %struct.ptext** @next, align 8
  %previous314 = getelementptr inbounds %struct.ptext, %struct.ptext* %208, i32 0, i32 4
  store %struct.ptext* %207, %struct.ptext** %previous314, align 8
  %209 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %210 = load %struct.ptext*, %struct.ptext** @next, align 8
  %next315 = getelementptr inbounds %struct.ptext, %struct.ptext* %210, i32 0, i32 5
  store %struct.ptext* %209, %struct.ptext** %next315, align 8
  %211 = load %struct.ptext*, %struct.ptext** @next, align 8
  %212 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %previous316 = getelementptr inbounds %struct.ptext, %struct.ptext* %212, i32 0, i32 4
  store %struct.ptext* %211, %struct.ptext** %previous316, align 8
  %213 = load i32, i32* @no_pkts, align 4
  %inc317 = add nsw i32 %213, 1
  store i32 %inc317, i32* @no_pkts, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.310, %if.then.309
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.end.280
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.268
  br label %ins_done

ins_done:                                         ; preds = %if.end.320, %if.then.297
  br label %while.cond.321

while.cond.321:                                   ; preds = %while.body.331, %ins_done
  %214 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %tobool322 = icmp ne %struct.ptext* %214, null
  br i1 %tobool322, label %land.lhs.true.323, label %land.end

land.lhs.true.323:                                ; preds = %while.cond.321
  %215 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %next324 = getelementptr inbounds %struct.ptext, %struct.ptext* %215, i32 0, i32 5
  %216 = load %struct.ptext*, %struct.ptext** %next324, align 8
  %tobool325 = icmp ne %struct.ptext* %216, null
  br i1 %tobool325, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.323
  %217 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %next326 = getelementptr inbounds %struct.ptext, %struct.ptext* %217, i32 0, i32 5
  %218 = load %struct.ptext*, %struct.ptext** %next326, align 8
  %seq327 = getelementptr inbounds %struct.ptext, %struct.ptext* %218, i32 0, i32 6
  %219 = load i32, i32* %seq327, align 4
  %220 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %seq328 = getelementptr inbounds %struct.ptext, %struct.ptext* %220, i32 0, i32 6
  %221 = load i32, i32* %seq328, align 4
  %add = add nsw i32 %221, 1
  %cmp329 = icmp eq i32 %219, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.323, %while.cond.321
  %222 = phi i1 [ false, %land.lhs.true.323 ], [ false, %while.cond.321 ], [ %cmp329, %land.rhs ]
  br i1 %222, label %while.body.331, label %while.end.338

while.body.331:                                   ; preds = %land.end
  %223 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %next332 = getelementptr inbounds %struct.ptext, %struct.ptext* %223, i32 0, i32 5
  %224 = load %struct.ptext*, %struct.ptext** %next332, align 8
  store %struct.ptext* %224, %struct.ptext** @comp_thru, align 8
  %225 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %seq333 = getelementptr inbounds %struct.ptext, %struct.ptext* %225, i32 0, i32 6
  %226 = load i32, i32* %seq333, align 4
  %conv334 = trunc i32 %226 to i16
  %call335 = call zeroext i16 @htons(i16 zeroext %conv334) #5
  store i16 %call335, i16* @recvd_thru, align 2
  %227 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start336 = getelementptr inbounds %struct.ptext, %struct.ptext* %227, i32 0, i32 1
  %228 = load i8*, i8** %start336, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %228, i64 7
  call void @bcopy(i8* bitcast (i16* @recvd_thru to i8*), i8* %add.ptr337, i64 2) #4
  %229 = load i32, i32* @client_dirsrv_retry, align 4
  store i32 %229, i32* @retries, align 4
  br label %while.cond.321

while.end.338:                                    ; preds = %land.end
  %230 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %tobool339 = icmp ne %struct.ptext* %230, null
  br i1 %tobool339, label %lor.lhs.false, label %if.then.342

lor.lhs.false:                                    ; preds = %while.end.338
  %231 = load %struct.ptext*, %struct.ptext** @comp_thru, align 8
  %next340 = getelementptr inbounds %struct.ptext, %struct.ptext* %231, i32 0, i32 5
  %232 = load %struct.ptext*, %struct.ptext** %next340, align 8
  %tobool341 = icmp ne %struct.ptext* %232, null
  br i1 %tobool341, label %if.then.342, label %if.else.344

if.then.342:                                      ; preds = %lor.lhs.false, %while.end.338
  %233 = load i32, i32* @gaps, align 4
  %inc343 = add nsw i32 %233, 1
  store i32 %inc343, i32* @gaps, align 4
  br label %if.end.345

if.else.344:                                      ; preds = %lor.lhs.false
  store i32 0, i32* @gaps, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.344, %if.then.342
  %234 = load i32, i32* @nd_pkts, align 4
  %cmp346 = icmp eq i32 %234, 0
  br i1 %cmp346, label %if.then.351, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %if.end.345
  %235 = load i32, i32* @no_pkts, align 4
  %236 = load i32, i32* @nd_pkts, align 4
  %cmp349 = icmp slt i32 %235, %236
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %lor.lhs.false.348, %if.end.345
  %call352 = call %struct.ptext* (...) @ptalloc()
  store %struct.ptext* %call352, %struct.ptext** @next, align 8
  call void @keepWaitingDirsend()
  br label %return

if.end.353:                                       ; preds = %lor.lhs.false.348
  br label %all_done

all_done:                                         ; preds = %if.end.353, %if.then.255, %if.then.239
  %237 = load i32, i32* @ackpend, align 4
  %tobool354 = icmp ne i32 %237, 0
  br i1 %tobool354, label %if.then.355, label %if.end.366

if.then.355:                                      ; preds = %all_done
  %238 = load i32, i32* @lp, align 4
  %239 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %start356 = getelementptr inbounds %struct.ptext, %struct.ptext* %239, i32 0, i32 1
  %240 = load i8*, i8** %start356, align 8
  %241 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length357 = getelementptr inbounds %struct.ptext, %struct.ptext* %241, i32 0, i32 0
  %242 = load i32, i32* %length357, align 4
  %conv358 = sext i32 %242 to i64
  %call359 = call i64 @sendto(i32 %238, i8* %240, i64 %conv358, i32 0, %struct.sockaddr* bitcast (%struct.sockaddr_in* @to to %struct.sockaddr*), i32 16)
  %conv360 = trunc i64 %call359 to i32
  store i32 %conv360, i32* @ns, align 4
  %243 = load i32, i32* @ns, align 4
  %244 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  %length361 = getelementptr inbounds %struct.ptext, %struct.ptext* %244, i32 0, i32 0
  %245 = load i32, i32* %length361, align 4
  %cmp362 = icmp ne i32 %243, %245
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.then.355
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.364, %if.then.355
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %all_done
  %246 = load i32, i32* @lp, align 4
  %call367 = call i32 @close(i32 %246)
  %247 = load %struct.ptext*, %struct.ptext** @pkt, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %247)
  %248 = load i32, i32* @scpflag, align 4
  %tobool368 = icmp ne i32 %248, 0
  br i1 %tobool368, label %if.then.369, label %if.end.414

if.then.369:                                      ; preds = %if.end.366
  br label %while.cond.370

while.cond.370:                                   ; preds = %if.end.382, %if.then.369
  %249 = load %struct.ptext*, %struct.ptext** @first, align 8
  %tobool371 = icmp ne %struct.ptext* %249, null
  br i1 %tobool371, label %land.rhs.372, label %land.end.376

land.rhs.372:                                     ; preds = %while.cond.370
  %250 = load %struct.ptext*, %struct.ptext** @first, align 8
  %length373 = getelementptr inbounds %struct.ptext, %struct.ptext* %250, i32 0, i32 0
  %251 = load i32, i32* %length373, align 4
  %cmp374 = icmp slt i32 %251, 0
  br label %land.end.376

land.end.376:                                     ; preds = %land.rhs.372, %while.cond.370
  %252 = phi i1 [ false, %while.cond.370 ], [ %cmp374, %land.rhs.372 ]
  br i1 %252, label %while.body.377, label %while.end.383

while.body.377:                                   ; preds = %land.end.376
  %253 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %253, %struct.ptext** @vtmp, align 8
  %254 = load %struct.ptext*, %struct.ptext** @first, align 8
  %next378 = getelementptr inbounds %struct.ptext, %struct.ptext* %254, i32 0, i32 5
  %255 = load %struct.ptext*, %struct.ptext** %next378, align 8
  store %struct.ptext* %255, %struct.ptext** @first, align 8
  %256 = load %struct.ptext*, %struct.ptext** @first, align 8
  %tobool379 = icmp ne %struct.ptext* %256, null
  br i1 %tobool379, label %if.then.380, label %if.end.382

if.then.380:                                      ; preds = %while.body.377
  %257 = load %struct.ptext*, %struct.ptext** @first, align 8
  %previous381 = getelementptr inbounds %struct.ptext, %struct.ptext* %257, i32 0, i32 4
  store %struct.ptext* null, %struct.ptext** %previous381, align 8
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.380, %while.body.377
  %258 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %258)
  br label %while.cond.370

while.end.383:                                    ; preds = %land.end.376
  %259 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %259, %struct.ptext** @vtmp, align 8
  br label %while.cond.384

while.cond.384:                                   ; preds = %if.end.411, %while.end.383
  %260 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %tobool385 = icmp ne %struct.ptext* %260, null
  br i1 %tobool385, label %land.rhs.386, label %land.end.389

land.rhs.386:                                     ; preds = %while.cond.384
  %261 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next387 = getelementptr inbounds %struct.ptext, %struct.ptext* %261, i32 0, i32 5
  %262 = load %struct.ptext*, %struct.ptext** %next387, align 8
  %tobool388 = icmp ne %struct.ptext* %262, null
  br label %land.end.389

land.end.389:                                     ; preds = %land.rhs.386, %while.cond.384
  %263 = phi i1 [ false, %while.cond.384 ], [ %tobool388, %land.rhs.386 ]
  br i1 %263, label %while.body.390, label %while.end.413

while.body.390:                                   ; preds = %land.end.389
  %264 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next391 = getelementptr inbounds %struct.ptext, %struct.ptext* %264, i32 0, i32 5
  %265 = load %struct.ptext*, %struct.ptext** %next391, align 8
  %length392 = getelementptr inbounds %struct.ptext, %struct.ptext* %265, i32 0, i32 0
  %266 = load i32, i32* %length392, align 4
  %cmp393 = icmp slt i32 %266, 0
  br i1 %cmp393, label %if.then.395, label %if.end.411

if.then.395:                                      ; preds = %while.body.390
  %267 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next396 = getelementptr inbounds %struct.ptext, %struct.ptext* %267, i32 0, i32 5
  %268 = load %struct.ptext*, %struct.ptext** %next396, align 8
  %next397 = getelementptr inbounds %struct.ptext, %struct.ptext* %268, i32 0, i32 5
  %269 = load %struct.ptext*, %struct.ptext** %next397, align 8
  %tobool398 = icmp ne %struct.ptext* %269, null
  br i1 %tobool398, label %if.then.399, label %if.else.407

if.then.399:                                      ; preds = %if.then.395
  %270 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next400 = getelementptr inbounds %struct.ptext, %struct.ptext* %270, i32 0, i32 5
  %271 = load %struct.ptext*, %struct.ptext** %next400, align 8
  %next401 = getelementptr inbounds %struct.ptext, %struct.ptext* %271, i32 0, i32 5
  %272 = load %struct.ptext*, %struct.ptext** %next401, align 8
  %273 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next402 = getelementptr inbounds %struct.ptext, %struct.ptext* %273, i32 0, i32 5
  store %struct.ptext* %272, %struct.ptext** %next402, align 8
  %274 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next403 = getelementptr inbounds %struct.ptext, %struct.ptext* %274, i32 0, i32 5
  %275 = load %struct.ptext*, %struct.ptext** %next403, align 8
  %previous404 = getelementptr inbounds %struct.ptext, %struct.ptext* %275, i32 0, i32 4
  %276 = load %struct.ptext*, %struct.ptext** %previous404, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %276)
  %277 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %278 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next405 = getelementptr inbounds %struct.ptext, %struct.ptext* %278, i32 0, i32 5
  %279 = load %struct.ptext*, %struct.ptext** %next405, align 8
  %previous406 = getelementptr inbounds %struct.ptext, %struct.ptext* %279, i32 0, i32 4
  store %struct.ptext* %277, %struct.ptext** %previous406, align 8
  br label %if.end.410

if.else.407:                                      ; preds = %if.then.395
  %280 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next408 = getelementptr inbounds %struct.ptext, %struct.ptext* %280, i32 0, i32 5
  %281 = load %struct.ptext*, %struct.ptext** %next408, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %281)
  %282 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next409 = getelementptr inbounds %struct.ptext, %struct.ptext* %282, i32 0, i32 5
  store %struct.ptext* null, %struct.ptext** %next409, align 8
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.407, %if.then.399
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %while.body.390
  %283 = load %struct.ptext*, %struct.ptext** @vtmp, align 8
  %next412 = getelementptr inbounds %struct.ptext, %struct.ptext* %283, i32 0, i32 5
  %284 = load %struct.ptext*, %struct.ptext** %next412, align 8
  store %struct.ptext* %284, %struct.ptext** @vtmp, align 8
  br label %while.cond.384

while.end.413:                                    ; preds = %land.end.389
  br label %if.end.414

if.end.414:                                       ; preds = %while.end.413, %if.end.366
  %285 = load %struct.ptext*, %struct.ptext** @first, align 8
  store %struct.ptext* %285, %struct.ptext** @dirsendReturn, align 8
  store i32 1, i32* @dirsendDone, align 4
  br label %return

return:                                           ; preds = %if.end.414, %if.then.351, %if.end.259, %if.then.210, %if.then.155, %if.then.111, %if.then.28, %if.then
  ret void
}

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #2

declare i8* @nlsindex(...) #1

declare void @ptfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 115394}
