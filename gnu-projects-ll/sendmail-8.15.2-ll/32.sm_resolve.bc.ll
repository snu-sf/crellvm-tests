; ModuleID = '32.sm_resolve.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stot = type { i8*, i32 }
%struct.DNS_REPLY_T = type { %struct.HEADER, %struct.DNS_QUERY_T, %struct.resource_record* }
%struct.HEADER = type { [12 x i8] }
%struct.DNS_QUERY_T = type { i8*, i32, i32 }
%struct.resource_record = type { i8*, i32, i32, i32, i32, %union.anon, %struct.resource_record* }
%union.anon = type { i8* }
%union.querybuf = type { [8192 x i8] }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon.0 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { %struct.in_addr, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.MX_RECORD_T = type { i32, [1 x i8] }
%struct.SRV_RECORDT_T = type { i32, i32, i32, [1 x i8] }

@stot = internal global [9 x %struct.stot] [%struct.stot { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1 }, %struct.stot { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2 }, %struct.stot { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 5 }, %struct.stot { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 12 }, %struct.stot { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 15 }, %struct.stot { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 16 }, %struct.stot { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 18 }, %struct.stot { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 33 }, %struct.stot zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"sm_resolve.c\00", align 1
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"dns_lookup(%s, %d, %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"dns_lookup: domain=%s, length=%d, default_size=%d, max=%d, status=response too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"dns_lookup: domain=%s, length=%d, default_size=%d, max=%d, status=response longer than default size, resizing\0A\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"dns_lookup(%s, %d, %s) --> %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"AFSDB\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SRV\00", align 1
@LogLevel = external global i32, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"ERROR: DNS RDLENGTH=%d > data len=%d\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"ERROR: DNS TXT record size=%d <= text len=%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dns_string_to_type(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.stot*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stot** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.stot* getelementptr inbounds ([9 x %struct.stot], [9 x %struct.stot]* @stot, i32 0, i32 0), %struct.stot** %p, align 8, !tbaa !1
  store %struct.stot* getelementptr inbounds ([9 x %struct.stot], [9 x %struct.stot]* @stot, i32 0, i32 0), %struct.stot** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_name = getelementptr inbounds %struct.stot, %struct.stot* %1, i32 0, i32 0
  %2 = load i8*, i8** %st_name, align 8, !tbaa !5
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %4 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_name1 = getelementptr inbounds %struct.stot, %struct.stot* %4, i32 0, i32 0
  %5 = load i8*, i8** %st_name1, align 8, !tbaa !5
  %call = call i32 @sm_strcasecmp(i8* %3, i8* %5)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_type = getelementptr inbounds %struct.stot, %struct.stot* %6, i32 0, i32 1
  %7 = load i32, i32* %st_type, align 4, !tbaa !8
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stot, %struct.stot* %8, i32 1
  store %struct.stot* %incdec.ptr, %struct.stot** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast %struct.stot** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @dns_type_to_string(i32 %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %p = alloca %struct.stot*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %type, i32* %type.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stot** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.stot* getelementptr inbounds ([9 x %struct.stot], [9 x %struct.stot]* @stot, i32 0, i32 0), %struct.stot** %p, align 8, !tbaa !1
  store %struct.stot* getelementptr inbounds ([9 x %struct.stot], [9 x %struct.stot]* @stot, i32 0, i32 0), %struct.stot** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_name = getelementptr inbounds %struct.stot, %struct.stot* %1, i32 0, i32 0
  %2 = load i8*, i8** %st_name, align 8, !tbaa !5
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %type.addr, align 4, !tbaa !9
  %4 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_type = getelementptr inbounds %struct.stot, %struct.stot* %4, i32 0, i32 1
  %5 = load i32, i32* %st_type, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %st_name2 = getelementptr inbounds %struct.stot, %struct.stot* %6, i32 0, i32 0
  %7 = load i8*, i8** %st_name2, align 8, !tbaa !5
  store i8* %7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.stot*, %struct.stot** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.stot, %struct.stot* %8, i32 1
  store %struct.stot* %incdec.ptr, %struct.stot** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast %struct.stot** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define void @dns_free_data(%struct.DNS_REPLY_T* %r) #0 {
entry:
  %r.addr = alloca %struct.DNS_REPLY_T*, align 8
  %rr = alloca %struct.resource_record*, align 8
  %tmp = alloca %struct.resource_record*, align 8
  store %struct.DNS_REPLY_T* %r, %struct.DNS_REPLY_T** %r.addr, align 8, !tbaa !1
  %0 = bitcast %struct.resource_record** %rr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r.addr, align 8, !tbaa !1
  %dns_r_q = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %1, i32 0, i32 1
  %dns_q_domain = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q, i32 0, i32 0
  %2 = load i8*, i8** %dns_q_domain, align 8, !tbaa !10
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r.addr, align 8, !tbaa !1
  %dns_r_q1 = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %3, i32 0, i32 1
  %dns_q_domain2 = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q1, i32 0, i32 0
  %4 = load i8*, i8** %dns_q_domain2, align 8, !tbaa !10
  call void @sm_free_tagged(i8* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 142)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r.addr, align 8, !tbaa !1
  %dns_r_head = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %5, i32 0, i32 2
  %6 = load %struct.resource_record*, %struct.resource_record** %dns_r_head, align 8, !tbaa !14
  store %struct.resource_record* %6, %struct.resource_record** %rr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.12, %if.end
  %7 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.resource_record* %7, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.resource_record** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  store %struct.resource_record* %9, %struct.resource_record** %tmp, align 8, !tbaa !1
  %10 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_domain = getelementptr inbounds %struct.resource_record, %struct.resource_record* %10, i32 0, i32 0
  %11 = load i8*, i8** %rr_domain, align 8, !tbaa !15
  %cmp4 = icmp ne i8* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.body
  %12 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_domain6 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %12, i32 0, i32 0
  %13 = load i8*, i8** %rr_domain6, align 8, !tbaa !15
  call void @sm_free_tagged(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 148)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %for.body
  %14 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u = getelementptr inbounds %struct.resource_record, %struct.resource_record* %14, i32 0, i32 5
  %rr_data = bitcast %union.anon* %rr_u to i8**
  %15 = load i8*, i8** %rr_data, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %16 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u10 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %16, i32 0, i32 5
  %rr_data11 = bitcast %union.anon* %rr_u10 to i8**
  %17 = load i8*, i8** %rr_data11, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 150)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %18 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_next = getelementptr inbounds %struct.resource_record, %struct.resource_record* %18, i32 0, i32 6
  %19 = load %struct.resource_record*, %struct.resource_record** %rr_next, align 8, !tbaa !17
  store %struct.resource_record* %19, %struct.resource_record** %rr, align 8, !tbaa !1
  %20 = load %struct.resource_record*, %struct.resource_record** %tmp, align 8, !tbaa !1
  %21 = bitcast %struct.resource_record* %20 to i8*
  call void @sm_free_tagged(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 152)
  %22 = bitcast %struct.resource_record** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r.addr, align 8, !tbaa !1
  %24 = bitcast %struct.DNS_REPLY_T* %23 to i8*
  call void @sm_free_tagged(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 154)
  %25 = bitcast %struct.resource_record** %rr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.DNS_REPLY_T* @dns_lookup_int(i8* %domain, i32 %rr_class, i32 %rr_type, i64 %retrans, i32 %retry) #0 {
entry:
  %domain.addr = alloca i8*, align 8
  %rr_class.addr = alloca i32, align 4
  %rr_type.addr = alloca i32, align 4
  %retrans.addr = alloca i64, align 8
  %retry.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %old_options = alloca i64, align 8
  %save_retrans = alloca i64, align 8
  %save_retry = alloca i32, align 4
  %r = alloca %struct.DNS_REPLY_T*, align 8
  %reply_buf = alloca %union.querybuf, align 4
  %reply = alloca i8*, align 8
  store i8* %domain, i8** %domain.addr, align 8, !tbaa !1
  store i32 %rr_class, i32* %rr_class.addr, align 4, !tbaa !9
  store i32 %rr_type, i32* %rr_type.addr, align 4, !tbaa !9
  store i64 %retrans, i64* %retrans.addr, align 8, !tbaa !18
  store i32 %retry, i32* %retry.addr, align 4, !tbaa !9
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %old_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %old_options, align 8, !tbaa !18
  %2 = bitcast i64* %save_retrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %save_retrans, align 8, !tbaa !18
  %3 = bitcast i32* %save_retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %save_retry, align 4, !tbaa !9
  %4 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %5 = bitcast %union.querybuf* %reply_buf to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %5) #1
  %6 = bitcast i8** %reply to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %cmp = icmp sge i32 %conv, 16
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.__res_state* @__res_state() #6
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call, i32 0, i32 2
  %9 = load i64, i64* %options, align 8, !tbaa !21
  store i64 %9, i64* %old_options, align 8, !tbaa !18
  %call2 = call %struct.__res_state* @__res_state() #6
  %options3 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call2, i32 0, i32 2
  %10 = load i64, i64* %options3, align 8, !tbaa !21
  %or = or i64 %10, 2
  store i64 %or, i64* %options3, align 8, !tbaa !21
  %11 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %12 = load i32, i32* %rr_class.addr, align 4, !tbaa !9
  %13 = load i32, i32* %rr_type.addr, align 4, !tbaa !9
  %call4 = call i8* @dns_type_to_string(i32 %13)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %11, i32 %12, i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load i64, i64* %retrans.addr, align 8, !tbaa !18
  %cmp5 = icmp sgt i64 %14, 0
  br i1 %cmp5, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct.__res_state* @__res_state() #6
  %retrans9 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call8, i32 0, i32 0
  %15 = load i32, i32* %retrans9, align 4, !tbaa !24
  %conv10 = sext i32 %15 to i64
  store i64 %conv10, i64* %save_retrans, align 8, !tbaa !18
  %16 = load i64, i64* %retrans.addr, align 8, !tbaa !18
  %conv11 = trunc i64 %16 to i32
  %call12 = call %struct.__res_state* @__res_state() #6
  %retrans13 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call12, i32 0, i32 0
  store i32 %conv11, i32* %retrans13, align 4, !tbaa !24
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %if.end
  %17 = load i32, i32* %retry.addr, align 4, !tbaa !9
  %cmp15 = icmp sgt i32 %17, 0
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct.__res_state* @__res_state() #6
  %retry19 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call18, i32 0, i32 1
  %18 = load i32, i32* %retry19, align 4, !tbaa !25
  store i32 %18, i32* %save_retry, align 4, !tbaa !9
  %19 = load i32, i32* %retry.addr, align 4, !tbaa !9
  %call20 = call %struct.__res_state* @__res_state() #6
  %retry21 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call20, i32 0, i32 1
  store i32 %19, i32* %retry21, align 4, !tbaa !25
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.14
  %call23 = call i32* @__errno_location() #6
  store i32 0, i32* %call23, align 4, !tbaa !9
  %call24 = call i32* @__h_errno_location() #6
  store i32 0, i32* %call24, align 4, !tbaa !9
  %20 = bitcast %union.querybuf* %reply_buf to i8*
  store i8* %20, i8** %reply, align 8, !tbaa !1
  %21 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %22 = load i32, i32* %rr_class.addr, align 4, !tbaa !9
  %23 = load i32, i32* %rr_type.addr, align 4, !tbaa !9
  %24 = load i8*, i8** %reply, align 8, !tbaa !1
  %call25 = call i32 @__res_search(i8* %21, i32 %22, i32 %23, i8* %24, i32 8192) #1
  store i32 %call25, i32* %len, align 4, !tbaa !9
  %25 = load i32, i32* %len, align 4, !tbaa !9
  %conv26 = sext i32 %25 to i64
  %cmp27 = icmp uge i64 %conv26, 8192
  br i1 %cmp27, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %if.end.22
  %26 = load i32, i32* %len, align 4, !tbaa !9
  %cmp30 = icmp sge i32 %26, 65535
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.29
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !20
  %conv33 = zext i8 %27 to i32
  %cmp34 = icmp sge i32 %conv33, 4
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %if.then.32
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool37 = icmp ne i32 %28, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.36
  %29 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %30 = load i32, i32* %len, align 4, !tbaa !9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i8* %29, i32 %30, i32 8192, i32 65535)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.36, %if.then.32
  br label %if.end.55

if.else:                                          ; preds = %if.then.29
  %31 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !20
  %conv40 = zext i8 %31 to i32
  %cmp41 = icmp sge i32 %conv40, 6
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.46

land.lhs.true.43:                                 ; preds = %if.else
  %32 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.43
  %33 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %34 = load i32, i32* %len, align 4, !tbaa !9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i32 0, i32 0), i8* %33, i32 %34, i32 8192, i32 65535)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.43, %if.else
  %35 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call47 = call i8* @sm_malloc_tagged(i64 65535, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 445, i32 %35)
  store i8* %call47, i8** %reply, align 8, !tbaa !1
  %36 = load i8*, i8** %reply, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %36, null
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.46
  %call51 = call i32* @__h_errno_location() #6
  store i32 2, i32* %call51, align 4, !tbaa !9
  br label %if.end.54

if.else.52:                                       ; preds = %if.end.46
  %37 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %38 = load i32, i32* %rr_class.addr, align 4, !tbaa !9
  %39 = load i32, i32* %rr_type.addr, align 4, !tbaa !9
  %40 = load i8*, i8** %reply, align 8, !tbaa !1
  %call53 = call i32 @__res_search(i8* %37, i32 %38, i32 %39, i8* %40, i32 65535) #1
  store i32 %call53, i32* %len, align 4, !tbaa !9
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.39
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.22
  %41 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !20
  %conv57 = zext i8 %41 to i32
  %cmp58 = icmp sge i32 %conv57, 16
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.66

land.lhs.true.60:                                 ; preds = %if.end.56
  %42 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool61 = icmp ne i32 %42, 0
  br i1 %tobool61, label %if.end.66, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.60
  %43 = load i64, i64* %old_options, align 8, !tbaa !18
  %call63 = call %struct.__res_state* @__res_state() #6
  %options64 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call63, i32 0, i32 2
  store i64 %43, i64* %options64, align 8, !tbaa !21
  %44 = load i8*, i8** %domain.addr, align 8, !tbaa !1
  %45 = load i32, i32* %rr_class.addr, align 4, !tbaa !9
  %46 = load i32, i32* %rr_type.addr, align 4, !tbaa !9
  %call65 = call i8* @dns_type_to_string(i32 %46)
  %47 = load i32, i32* %len, align 4, !tbaa !9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %44, i32 %45, i8* %call65, i32 %47)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %land.lhs.true.60, %if.end.56
  %48 = load i32, i32* %len, align 4, !tbaa !9
  %cmp67 = icmp sge i32 %48, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.77

land.lhs.true.69:                                 ; preds = %if.end.66
  %49 = load i32, i32* %len, align 4, !tbaa !9
  %cmp70 = icmp slt i32 %49, 65535
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.77

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %50 = load i8*, i8** %reply, align 8, !tbaa !1
  %cmp73 = icmp ne i8* %50, null
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %land.lhs.true.72
  %51 = load i8*, i8** %reply, align 8, !tbaa !1
  %52 = load i32, i32* %len, align 4, !tbaa !9
  %call76 = call %struct.DNS_REPLY_T* @parse_dns_reply(i8* %51, i32 %52)
  store %struct.DNS_REPLY_T* %call76, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %land.lhs.true.72, %land.lhs.true.69, %if.end.66
  %53 = load i8*, i8** %reply, align 8, !tbaa !1
  %54 = bitcast %union.querybuf* %reply_buf to i8*
  %cmp78 = icmp ne i8* %53, %54
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.84

land.lhs.true.80:                                 ; preds = %if.end.77
  %55 = load i8*, i8** %reply, align 8, !tbaa !1
  %cmp81 = icmp ne i8* %55, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true.80
  %56 = load i8*, i8** %reply, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 463)
  store i8* null, i8** %reply, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %land.lhs.true.80, %if.end.77
  %57 = load i64, i64* %retrans.addr, align 8, !tbaa !18
  %cmp85 = icmp sgt i64 %57, 0
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.end.84
  %58 = load i64, i64* %save_retrans, align 8, !tbaa !18
  %conv88 = trunc i64 %58 to i32
  %call89 = call %struct.__res_state* @__res_state() #6
  %retrans90 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call89, i32 0, i32 0
  store i32 %conv88, i32* %retrans90, align 4, !tbaa !24
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %if.end.84
  %59 = load i32, i32* %retry.addr, align 4, !tbaa !9
  %cmp92 = icmp sgt i32 %59, 0
  br i1 %cmp92, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.91
  %60 = load i32, i32* %save_retry, align 4, !tbaa !9
  %call95 = call %struct.__res_state* @__res_state() #6
  %retry96 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call95, i32 0, i32 1
  store i32 %60, i32* %retry96, align 4, !tbaa !25
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.91
  %61 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %62 = bitcast i8** %reply to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %union.querybuf* %reply_buf to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %63) #1
  %64 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %save_retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64* %save_retrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %old_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  ret %struct.DNS_REPLY_T* %61
}

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #3

declare void @sm_dprintf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #3

; Function Attrs: nounwind
declare i32 @__res_search(i8*, i32, i32, i8*, i32) #4

declare i8* @sm_malloc_tagged(i64, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.DNS_REPLY_T* @parse_dns_reply(i8* %data, i32 %len) #0 {
entry:
  %retval = alloca %struct.DNS_REPLY_T*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %ans_cnt = alloca i16, align 2
  %ui = alloca i16, align 2
  %status = alloca i32, align 4
  %l = alloca i64, align 8
  %host = alloca [64 x i8], align 16
  %r = alloca %struct.DNS_REPLY_T*, align 8
  %rr = alloca %struct.resource_record**, align 8
  %cleanup.dest.slot = alloca i32
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %t_cp = alloca i8*, align 8
  %t_cp26 = alloca i8*, align 8
  %type = alloca i32, align 4
  %class = alloca i32, align 4
  %ttl = alloca i32, align 4
  %size = alloca i32, align 4
  %txtlen = alloca i32, align 4
  %t_cp64 = alloca i8*, align 8
  %t_cp78 = alloca i8*, align 8
  %t_cp92 = alloca i8*, align 8
  %t_cp112 = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !9
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i16* %ans_cnt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i16* %ui to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i8]* %host to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.resource_record*** %rr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call = call i8* @sm_malloc_tagged(i64 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 182, i32 %8)
  %9 = bitcast i8* %call to %struct.DNS_REPLY_T*
  store %struct.DNS_REPLY_T* %9, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %10 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %cmp = icmp eq %struct.DNS_REPLY_T* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end:                                           ; preds = %entry
  %11 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %12 = bitcast %struct.DNS_REPLY_T* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 40, i32 8, i1 false)
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  %14 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_h = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %14, i32 0, i32 0
  %15 = bitcast %struct.HEADER* %dns_r_h to i8*
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 12, i32 1, i1 false)
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 12
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %20 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext = sext i32 %20 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call2 = call i32 @__dn_expand(i8* %18, i8* %add.ptr1, i8* %21, i8* %arraydecay, i32 64) #1
  store i32 %call2, i32* %status, align 4, !tbaa !9
  %22 = load i32, i32* %status, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %22, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %23 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %23)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call7 = call i8* @sm_strdup(i8* %arraydecay6)
  %24 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_q = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %24, i32 0, i32 1
  %dns_q_domain = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q, i32 0, i32 0
  store i8* %call7, i8** %dns_q_domain, align 8, !tbaa !10
  %25 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_q8 = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %25, i32 0, i32 1
  %dns_q_domain9 = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q8, i32 0, i32 0
  %26 = load i8*, i8** %dns_q_domain9, align 8, !tbaa !10
  %cmp10 = icmp eq i8* %26, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  %27 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %27)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.12:                                        ; preds = %if.end.5
  %28 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  %29 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  %30 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_h13 = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %30, i32 0, i32 0
  %31 = bitcast %struct.HEADER* %dns_r_h13 to i96*
  %bf.load = load i96, i96* %31, align 4
  %bf.lshr = lshr i96 %bf.load, 48
  %bf.clear = and i96 %bf.lshr, 65535
  %bf.cast = trunc i96 %bf.clear to i32
  %conv = trunc i32 %bf.cast to i16
  store i16 %conv, i16* %__x, align 2, !tbaa !26
  %32 = load i16, i16* %__x, align 2, !tbaa !26
  %33 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %32) #6, !srcloc !27
  store i16 %33, i16* %__v, align 2, !tbaa !26
  %34 = load i16, i16* %__v, align 2, !tbaa !26
  store i16 %34, i16* %tmp, !tbaa !26
  %35 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %35) #1
  %36 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #1
  %37 = load i16, i16* %tmp, !tbaa !26
  store i16 %37, i16* %ans_cnt, align 2, !tbaa !26
  %38 = load i32, i32* %status, align 4, !tbaa !9
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext14 = sext i32 %38 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %39, i64 %idx.ext14
  store i8* %add.ptr15, i8** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %40 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %41, i8** %t_cp, align 8, !tbaa !1
  %42 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv17 = zext i8 %43 to i16
  %conv18 = zext i16 %conv17 to i32
  %shl = shl i32 %conv18, 8
  %44 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx19, align 1, !tbaa !20
  %conv20 = zext i8 %45 to i16
  %conv21 = zext i16 %conv20 to i32
  %or = or i32 %shl, %conv21
  %46 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_q22 = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %46, i32 0, i32 1
  %dns_q_type = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q22, i32 0, i32 1
  store i32 %or, i32* %dns_q_type, align 4, !tbaa !28
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %add.ptr23, i8** %p, align 8, !tbaa !1
  %48 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.24

do.body.24:                                       ; preds = %do.end
  %49 = bitcast i8** %t_cp26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %50, i8** %t_cp26, align 8, !tbaa !1
  %51 = load i8*, i8** %t_cp26, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx27, align 1, !tbaa !20
  %conv28 = zext i8 %52 to i16
  %conv29 = zext i16 %conv28 to i32
  %shl30 = shl i32 %conv29, 8
  %53 = load i8*, i8** %t_cp26, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx31, align 1, !tbaa !20
  %conv32 = zext i8 %54 to i16
  %conv33 = zext i16 %conv32 to i32
  %or34 = or i32 %shl30, %conv33
  %55 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_q35 = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %55, i32 0, i32 1
  %dns_q_class = getelementptr inbounds %struct.DNS_QUERY_T, %struct.DNS_QUERY_T* %dns_r_q35, i32 0, i32 2
  store i32 %or34, i32* %dns_q_class, align 4, !tbaa !29
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %add.ptr36, i8** %p, align 8, !tbaa !1
  %57 = bitcast i8** %t_cp26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.24
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %58 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_head = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %58, i32 0, i32 2
  store %struct.resource_record** %dns_r_head, %struct.resource_record*** %rr, align 8, !tbaa !1
  store i16 0, i16* %ui, align 2, !tbaa !26
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.38
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %60 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %61 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext39 = sext i32 %61 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %60, i64 %idx.ext39
  %cmp41 = icmp ult i8* %59, %add.ptr40
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %62 = load i16, i16* %ui, align 2, !tbaa !26
  %conv43 = zext i16 %62 to i32
  %63 = load i16, i16* %ans_cnt, align 2, !tbaa !26
  %conv44 = zext i16 %63 to i32
  %cmp45 = icmp slt i32 %conv43, %conv44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %64 = phi i1 [ false, %while.cond ], [ %cmp45, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %class to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %txtlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %72 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext52 = sext i32 %72 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %71, i64 %idx.ext52
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call55 = call i32 @__dn_expand(i8* %70, i8* %add.ptr53, i8* %73, i8* %arraydecay54, i32 64) #1
  store i32 %call55, i32* %status, align 4, !tbaa !9
  %74 = load i32, i32* %status, align 4, !tbaa !9
  %cmp56 = icmp slt i32 %74, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.body
  %75 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %75)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %while.body
  %76 = load i16, i16* %ui, align 2, !tbaa !26
  %inc = add i16 %76, 1
  store i16 %inc, i16* %ui, align 2, !tbaa !26
  %77 = load i32, i32* %status, align 4, !tbaa !9
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext60 = sext i32 %77 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %78, i64 %idx.ext60
  store i8* %add.ptr61, i8** %p, align 8, !tbaa !1
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.59
  %79 = bitcast i8** %t_cp64 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %80, i8** %t_cp64, align 8, !tbaa !1
  %81 = load i8*, i8** %t_cp64, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx65, align 1, !tbaa !20
  %conv66 = zext i8 %82 to i16
  %conv67 = zext i16 %conv66 to i32
  %shl68 = shl i32 %conv67, 8
  %83 = load i8*, i8** %t_cp64, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx69, align 1, !tbaa !20
  %conv70 = zext i8 %84 to i16
  %conv71 = zext i16 %conv70 to i32
  %or72 = or i32 %shl68, %conv71
  store i32 %or72, i32* %type, align 4, !tbaa !9
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %add.ptr73, i8** %p, align 8, !tbaa !1
  %86 = bitcast i8** %t_cp64 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.62
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %87 = bitcast i8** %t_cp78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %88, i8** %t_cp78, align 8, !tbaa !1
  %89 = load i8*, i8** %t_cp78, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx79, align 1, !tbaa !20
  %conv80 = zext i8 %90 to i16
  %conv81 = zext i16 %conv80 to i32
  %shl82 = shl i32 %conv81, 8
  %91 = load i8*, i8** %t_cp78, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx83, align 1, !tbaa !20
  %conv84 = zext i8 %92 to i16
  %conv85 = zext i16 %conv84 to i32
  %or86 = or i32 %shl82, %conv85
  store i32 %or86, i32* %class, align 4, !tbaa !9
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %add.ptr87, i8** %p, align 8, !tbaa !1
  %94 = bitcast i8** %t_cp78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.76
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %95 = bitcast i8** %t_cp92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %96, i8** %t_cp92, align 8, !tbaa !1
  %97 = load i8*, i8** %t_cp92, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx93, align 1, !tbaa !20
  %conv94 = zext i8 %98 to i32
  %shl95 = shl i32 %conv94, 24
  %99 = load i8*, i8** %t_cp92, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx96, align 1, !tbaa !20
  %conv97 = zext i8 %100 to i32
  %shl98 = shl i32 %conv97, 16
  %or99 = or i32 %shl95, %shl98
  %101 = load i8*, i8** %t_cp92, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx100, align 1, !tbaa !20
  %conv101 = zext i8 %102 to i32
  %shl102 = shl i32 %conv101, 8
  %or103 = or i32 %or99, %shl102
  %103 = load i8*, i8** %t_cp92, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %103, i64 3
  %104 = load i8, i8* %arrayidx104, align 1, !tbaa !20
  %conv105 = zext i8 %104 to i32
  %or106 = or i32 %or103, %conv105
  store i32 %or106, i32* %ttl, align 4, !tbaa !9
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds i8, i8* %105, i64 4
  store i8* %add.ptr107, i8** %p, align 8, !tbaa !1
  %106 = bitcast i8** %t_cp92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.90
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  br label %do.body.110

do.body.110:                                      ; preds = %do.end.109
  %107 = bitcast i8** %t_cp112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %108, i8** %t_cp112, align 8, !tbaa !1
  %109 = load i8*, i8** %t_cp112, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx113, align 1, !tbaa !20
  %conv114 = zext i8 %110 to i16
  %conv115 = zext i16 %conv114 to i32
  %shl116 = shl i32 %conv115, 8
  %111 = load i8*, i8** %t_cp112, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i8, i8* %arrayidx117, align 1, !tbaa !20
  %conv118 = zext i8 %112 to i16
  %conv119 = zext i16 %conv118 to i32
  %or120 = or i32 %shl116, %conv119
  store i32 %or120, i32* %size, align 4, !tbaa !9
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr121 = getelementptr inbounds i8, i8* %113, i64 2
  store i8* %add.ptr121, i8** %p, align 8, !tbaa !1
  %114 = bitcast i8** %t_cp112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.110
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %115 = load i8*, i8** %p, align 8, !tbaa !1
  %116 = load i32, i32* %size, align 4, !tbaa !9
  %idx.ext124 = sext i32 %116 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %115, i64 %idx.ext124
  %117 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %118 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext126 = sext i32 %118 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %117, i64 %idx.ext126
  %cmp128 = icmp ugt i8* %add.ptr125, %add.ptr127
  br i1 %cmp128, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %do.end.123
  %119 = load i32, i32* @LogLevel, align 4, !tbaa !9
  %cmp131 = icmp sgt i32 %119, 5
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.then.130
  %120 = load i32, i32* %size, align 4, !tbaa !9
  %121 = load i32, i32* %len.addr, align 4, !tbaa !9
  %122 = load i8*, i8** %p, align 8, !tbaa !1
  %123 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %123 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv134 = trunc i64 %sub.ptr.sub to i32
  %sub = sub nsw i32 %121, %conv134
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i32 %120, i32 %sub)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.then.130
  %124 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %124)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %do.end.123
  %125 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call137 = call i8* @sm_malloc_tagged(i64 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 242, i32 %125)
  %126 = bitcast i8* %call137 to %struct.resource_record*
  %127 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  store %struct.resource_record* %126, %struct.resource_record** %127, align 8, !tbaa !1
  %128 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %129 = load %struct.resource_record*, %struct.resource_record** %128, align 8, !tbaa !1
  %cmp138 = icmp eq %struct.resource_record* %129, null
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.136
  %130 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %130)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %if.end.136
  %131 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %132 = load %struct.resource_record*, %struct.resource_record** %131, align 8, !tbaa !1
  %133 = bitcast %struct.resource_record* %132 to i8*
  call void @llvm.memset.p0i8.i64(i8* %133, i8 0, i64 40, i32 8, i1 false)
  %arraydecay142 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call143 = call i8* @sm_strdup(i8* %arraydecay142)
  %134 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %135 = load %struct.resource_record*, %struct.resource_record** %134, align 8, !tbaa !1
  %rr_domain = getelementptr inbounds %struct.resource_record, %struct.resource_record* %135, i32 0, i32 0
  store i8* %call143, i8** %rr_domain, align 8, !tbaa !15
  %136 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %137 = load %struct.resource_record*, %struct.resource_record** %136, align 8, !tbaa !1
  %rr_domain144 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %137, i32 0, i32 0
  %138 = load i8*, i8** %rr_domain144, align 8, !tbaa !15
  %cmp145 = icmp eq i8* %138, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.141
  %139 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %139)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.148:                                       ; preds = %if.end.141
  %140 = load i32, i32* %type, align 4, !tbaa !9
  %141 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %142 = load %struct.resource_record*, %struct.resource_record** %141, align 8, !tbaa !1
  %rr_type = getelementptr inbounds %struct.resource_record, %struct.resource_record* %142, i32 0, i32 1
  store i32 %140, i32* %rr_type, align 4, !tbaa !30
  %143 = load i32, i32* %class, align 4, !tbaa !9
  %144 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %145 = load %struct.resource_record*, %struct.resource_record** %144, align 8, !tbaa !1
  %rr_class = getelementptr inbounds %struct.resource_record, %struct.resource_record* %145, i32 0, i32 2
  store i32 %143, i32* %rr_class, align 4, !tbaa !31
  %146 = load i32, i32* %ttl, align 4, !tbaa !9
  %147 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %148 = load %struct.resource_record*, %struct.resource_record** %147, align 8, !tbaa !1
  %rr_ttl = getelementptr inbounds %struct.resource_record, %struct.resource_record* %148, i32 0, i32 3
  store i32 %146, i32* %rr_ttl, align 4, !tbaa !32
  %149 = load i32, i32* %size, align 4, !tbaa !9
  %150 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %151 = load %struct.resource_record*, %struct.resource_record** %150, align 8, !tbaa !1
  %rr_size = getelementptr inbounds %struct.resource_record, %struct.resource_record* %151, i32 0, i32 4
  store i32 %149, i32* %rr_size, align 4, !tbaa !33
  %152 = load i32, i32* %type, align 4, !tbaa !9
  switch i32 %152, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 12, label %sw.bb
    i32 15, label %sw.bb.165
    i32 18, label %sw.bb.165
    i32 33, label %sw.bb.199
    i32 16, label %sw.bb.250
  ]

sw.bb:                                            ; preds = %if.end.148, %if.end.148, %if.end.148
  %153 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %154 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %155 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext149 = sext i32 %155 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %154, i64 %idx.ext149
  %156 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay151 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call152 = call i32 @__dn_expand(i8* %153, i8* %add.ptr150, i8* %156, i8* %arraydecay151, i32 64) #1
  store i32 %call152, i32* %status, align 4, !tbaa !9
  %157 = load i32, i32* %status, align 4, !tbaa !9
  %cmp153 = icmp slt i32 %157, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %sw.bb
  %158 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %158)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %sw.bb
  %arraydecay157 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call158 = call i8* @sm_strdup(i8* %arraydecay157)
  %159 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %160 = load %struct.resource_record*, %struct.resource_record** %159, align 8, !tbaa !1
  %rr_u = getelementptr inbounds %struct.resource_record, %struct.resource_record* %160, i32 0, i32 5
  %rr_txt = bitcast %union.anon* %rr_u to i8**
  store i8* %call158, i8** %rr_txt, align 8, !tbaa !1
  %161 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %162 = load %struct.resource_record*, %struct.resource_record** %161, align 8, !tbaa !1
  %rr_u159 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %162, i32 0, i32 5
  %rr_txt160 = bitcast %union.anon* %rr_u159 to i8**
  %163 = load i8*, i8** %rr_txt160, align 8, !tbaa !1
  %cmp161 = icmp eq i8* %163, null
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.156
  %164 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %164)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.164:                                       ; preds = %if.end.156
  br label %sw.epilog

sw.bb.165:                                        ; preds = %if.end.148, %if.end.148
  %165 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %166 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %167 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext166 = sext i32 %167 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %166, i64 %idx.ext166
  %168 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr168 = getelementptr inbounds i8, i8* %168, i64 2
  %arraydecay169 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call170 = call i32 @__dn_expand(i8* %165, i8* %add.ptr167, i8* %add.ptr168, i8* %arraydecay169, i32 64) #1
  store i32 %call170, i32* %status, align 4, !tbaa !9
  %169 = load i32, i32* %status, align 4, !tbaa !9
  %cmp171 = icmp slt i32 %169, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %sw.bb.165
  %170 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %170)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.174:                                       ; preds = %sw.bb.165
  %arraydecay175 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call176 = call i64 @strlen(i8* %arraydecay175) #7
  %add = add i64 %call176, 1
  store i64 %add, i64* %l, align 8, !tbaa !18
  %171 = load i64, i64* %l, align 8, !tbaa !18
  %add177 = add i64 8, %171
  %172 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call178 = call i8* @sm_malloc_tagged(i64 %add177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 290, i32 %172)
  %173 = bitcast i8* %call178 to %struct.MX_RECORD_T*
  %174 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %175 = load %struct.resource_record*, %struct.resource_record** %174, align 8, !tbaa !1
  %rr_u179 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %175, i32 0, i32 5
  %rr_mx = bitcast %union.anon* %rr_u179 to %struct.MX_RECORD_T**
  store %struct.MX_RECORD_T* %173, %struct.MX_RECORD_T** %rr_mx, align 8, !tbaa !1
  %176 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %177 = load %struct.resource_record*, %struct.resource_record** %176, align 8, !tbaa !1
  %rr_u180 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %177, i32 0, i32 5
  %rr_mx181 = bitcast %union.anon* %rr_u180 to %struct.MX_RECORD_T**
  %178 = load %struct.MX_RECORD_T*, %struct.MX_RECORD_T** %rr_mx181, align 8, !tbaa !1
  %cmp182 = icmp eq %struct.MX_RECORD_T* %178, null
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.174
  %179 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %179)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.185:                                       ; preds = %if.end.174
  %180 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %180, i64 0
  %181 = load i8, i8* %arrayidx186, align 1, !tbaa !20
  %conv187 = zext i8 %181 to i32
  %shl188 = shl i32 %conv187, 8
  %182 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %182, i64 1
  %183 = load i8, i8* %arrayidx189, align 1, !tbaa !20
  %conv190 = zext i8 %183 to i32
  %or191 = or i32 %shl188, %conv190
  %184 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %185 = load %struct.resource_record*, %struct.resource_record** %184, align 8, !tbaa !1
  %rr_u192 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %185, i32 0, i32 5
  %rr_mx193 = bitcast %union.anon* %rr_u192 to %struct.MX_RECORD_T**
  %186 = load %struct.MX_RECORD_T*, %struct.MX_RECORD_T** %rr_mx193, align 8, !tbaa !1
  %mx_r_preference = getelementptr inbounds %struct.MX_RECORD_T, %struct.MX_RECORD_T* %186, i32 0, i32 0
  store i32 %or191, i32* %mx_r_preference, align 4, !tbaa !34
  %187 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %188 = load %struct.resource_record*, %struct.resource_record** %187, align 8, !tbaa !1
  %rr_u194 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %188, i32 0, i32 5
  %rr_mx195 = bitcast %union.anon* %rr_u194 to %struct.MX_RECORD_T**
  %189 = load %struct.MX_RECORD_T*, %struct.MX_RECORD_T** %rr_mx195, align 8, !tbaa !1
  %mx_r_domain = getelementptr inbounds %struct.MX_RECORD_T, %struct.MX_RECORD_T* %189, i32 0, i32 1
  %arraydecay196 = getelementptr inbounds [1 x i8], [1 x i8]* %mx_r_domain, i32 0, i32 0
  %arraydecay197 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %190 = load i64, i64* %l, align 8, !tbaa !18
  %call198 = call i64 @sm_strlcpy(i8* %arraydecay196, i8* %arraydecay197, i64 %190)
  br label %sw.epilog

sw.bb.199:                                        ; preds = %if.end.148
  %191 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %192 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %193 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext200 = sext i32 %193 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %192, i64 %idx.ext200
  %194 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr202 = getelementptr inbounds i8, i8* %194, i64 6
  %arraydecay203 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call204 = call i32 @__dn_expand(i8* %191, i8* %add.ptr201, i8* %add.ptr202, i8* %arraydecay203, i32 64) #1
  store i32 %call204, i32* %status, align 4, !tbaa !9
  %195 = load i32, i32* %status, align 4, !tbaa !9
  %cmp205 = icmp slt i32 %195, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %sw.bb.199
  %196 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %196)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %sw.bb.199
  %arraydecay209 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call210 = call i64 @strlen(i8* %arraydecay209) #7
  %add211 = add i64 %call210, 1
  store i64 %add211, i64* %l, align 8, !tbaa !18
  %197 = load i64, i64* %l, align 8, !tbaa !18
  %add212 = add i64 16, %197
  %198 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call213 = call i8* @sm_malloc_tagged(i64 %add212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 311, i32 %198)
  %199 = bitcast i8* %call213 to %struct.SRV_RECORDT_T*
  %200 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %201 = load %struct.resource_record*, %struct.resource_record** %200, align 8, !tbaa !1
  %rr_u214 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %201, i32 0, i32 5
  %rr_srv = bitcast %union.anon* %rr_u214 to %struct.SRV_RECORDT_T**
  store %struct.SRV_RECORDT_T* %199, %struct.SRV_RECORDT_T** %rr_srv, align 8, !tbaa !1
  %202 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %203 = load %struct.resource_record*, %struct.resource_record** %202, align 8, !tbaa !1
  %rr_u215 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %203, i32 0, i32 5
  %rr_srv216 = bitcast %union.anon* %rr_u215 to %struct.SRV_RECORDT_T**
  %204 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv216, align 8, !tbaa !1
  %cmp217 = icmp eq %struct.SRV_RECORDT_T* %204, null
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.end.208
  %205 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %205)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.220:                                       ; preds = %if.end.208
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %206, i64 0
  %207 = load i8, i8* %arrayidx221, align 1, !tbaa !20
  %conv222 = zext i8 %207 to i32
  %shl223 = shl i32 %conv222, 8
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx224, align 1, !tbaa !20
  %conv225 = zext i8 %209 to i32
  %or226 = or i32 %shl223, %conv225
  %210 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %211 = load %struct.resource_record*, %struct.resource_record** %210, align 8, !tbaa !1
  %rr_u227 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %211, i32 0, i32 5
  %rr_srv228 = bitcast %union.anon* %rr_u227 to %struct.SRV_RECORDT_T**
  %212 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv228, align 8, !tbaa !1
  %srv_r_priority = getelementptr inbounds %struct.SRV_RECORDT_T, %struct.SRV_RECORDT_T* %212, i32 0, i32 0
  store i32 %or226, i32* %srv_r_priority, align 4, !tbaa !36
  %213 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %213, i64 2
  %214 = load i8, i8* %arrayidx229, align 1, !tbaa !20
  %conv230 = zext i8 %214 to i32
  %shl231 = shl i32 %conv230, 8
  %215 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %215, i64 3
  %216 = load i8, i8* %arrayidx232, align 1, !tbaa !20
  %conv233 = zext i8 %216 to i32
  %or234 = or i32 %shl231, %conv233
  %217 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %218 = load %struct.resource_record*, %struct.resource_record** %217, align 8, !tbaa !1
  %rr_u235 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %218, i32 0, i32 5
  %rr_srv236 = bitcast %union.anon* %rr_u235 to %struct.SRV_RECORDT_T**
  %219 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv236, align 8, !tbaa !1
  %srv_r_weight = getelementptr inbounds %struct.SRV_RECORDT_T, %struct.SRV_RECORDT_T* %219, i32 0, i32 1
  store i32 %or234, i32* %srv_r_weight, align 4, !tbaa !38
  %220 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i8, i8* %220, i64 4
  %221 = load i8, i8* %arrayidx237, align 1, !tbaa !20
  %conv238 = zext i8 %221 to i32
  %shl239 = shl i32 %conv238, 8
  %222 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %222, i64 5
  %223 = load i8, i8* %arrayidx240, align 1, !tbaa !20
  %conv241 = zext i8 %223 to i32
  %or242 = or i32 %shl239, %conv241
  %224 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %225 = load %struct.resource_record*, %struct.resource_record** %224, align 8, !tbaa !1
  %rr_u243 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %225, i32 0, i32 5
  %rr_srv244 = bitcast %union.anon* %rr_u243 to %struct.SRV_RECORDT_T**
  %226 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv244, align 8, !tbaa !1
  %srv_r_port = getelementptr inbounds %struct.SRV_RECORDT_T, %struct.SRV_RECORDT_T* %226, i32 0, i32 2
  store i32 %or242, i32* %srv_r_port, align 4, !tbaa !39
  %227 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %228 = load %struct.resource_record*, %struct.resource_record** %227, align 8, !tbaa !1
  %rr_u245 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %228, i32 0, i32 5
  %rr_srv246 = bitcast %union.anon* %rr_u245 to %struct.SRV_RECORDT_T**
  %229 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv246, align 8, !tbaa !1
  %srv_r_target = getelementptr inbounds %struct.SRV_RECORDT_T, %struct.SRV_RECORDT_T* %229, i32 0, i32 3
  %arraydecay247 = getelementptr inbounds [1 x i8], [1 x i8]* %srv_r_target, i32 0, i32 0
  %arraydecay248 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %230 = load i64, i64* %l, align 8, !tbaa !18
  %call249 = call i64 @sm_strlcpy(i8* %arraydecay247, i8* %arraydecay248, i64 %230)
  br label %sw.epilog

sw.bb.250:                                        ; preds = %if.end.148
  %231 = load i8*, i8** %p, align 8, !tbaa !1
  %232 = load i8, i8* %231, align 1, !tbaa !20
  %conv251 = zext i8 %232 to i32
  store i32 %conv251, i32* %txtlen, align 4, !tbaa !9
  %233 = load i32, i32* %txtlen, align 4, !tbaa !9
  %234 = load i32, i32* %size, align 4, !tbaa !9
  %cmp252 = icmp sge i32 %233, %234
  br i1 %cmp252, label %if.then.254, label %if.end.259

if.then.254:                                      ; preds = %sw.bb.250
  %235 = load i32, i32* @LogLevel, align 4, !tbaa !9
  %cmp255 = icmp sgt i32 %235, 5
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.then.254
  %236 = load i32, i32* %size, align 4, !tbaa !9
  %237 = load i32, i32* %txtlen, align 4, !tbaa !9
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i32 %236, i32 %237)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.257, %if.then.254
  %238 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %238)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.259:                                       ; preds = %sw.bb.250
  %239 = load i32, i32* %txtlen, align 4, !tbaa !9
  %add260 = add nsw i32 %239, 1
  %conv261 = sext i32 %add260 to i64
  %240 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call262 = call i8* @sm_malloc_tagged(i64 %conv261, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 346, i32 %240)
  %241 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %242 = load %struct.resource_record*, %struct.resource_record** %241, align 8, !tbaa !1
  %rr_u263 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %242, i32 0, i32 5
  %rr_txt264 = bitcast %union.anon* %rr_u263 to i8**
  store i8* %call262, i8** %rr_txt264, align 8, !tbaa !1
  %243 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %244 = load %struct.resource_record*, %struct.resource_record** %243, align 8, !tbaa !1
  %rr_u265 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %244, i32 0, i32 5
  %rr_txt266 = bitcast %union.anon* %rr_u265 to i8**
  %245 = load i8*, i8** %rr_txt266, align 8, !tbaa !1
  %cmp267 = icmp eq i8* %245, null
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.259
  %246 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %246)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.270:                                       ; preds = %if.end.259
  %247 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %248 = load %struct.resource_record*, %struct.resource_record** %247, align 8, !tbaa !1
  %rr_u271 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %248, i32 0, i32 5
  %rr_txt272 = bitcast %union.anon* %rr_u271 to i8**
  %249 = load i8*, i8** %rr_txt272, align 8, !tbaa !1
  %250 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr273 = getelementptr inbounds i8, i8* %250, i64 1
  %251 = load i32, i32* %txtlen, align 4, !tbaa !9
  %add274 = add nsw i32 %251, 1
  %conv275 = sext i32 %add274 to i64
  %call276 = call i64 @sm_strlcpy(i8* %249, i8* %add.ptr273, i64 %conv275)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.148
  %252 = load i32, i32* %size, align 4, !tbaa !9
  %conv277 = sext i32 %252 to i64
  %253 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  %call278 = call i8* @sm_malloc_tagged(i64 %conv277, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 357, i32 %253)
  %254 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %255 = load %struct.resource_record*, %struct.resource_record** %254, align 8, !tbaa !1
  %rr_u279 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %255, i32 0, i32 5
  %rr_data = bitcast %union.anon* %rr_u279 to i8**
  store i8* %call278, i8** %rr_data, align 8, !tbaa !1
  %256 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %257 = load %struct.resource_record*, %struct.resource_record** %256, align 8, !tbaa !1
  %rr_u280 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %257, i32 0, i32 5
  %rr_data281 = bitcast %union.anon* %rr_u280 to i8**
  %258 = load i8*, i8** %rr_data281, align 8, !tbaa !1
  %cmp282 = icmp eq i8* %258, null
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %sw.default
  %259 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %259)
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.285:                                       ; preds = %sw.default
  %260 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %261 = load %struct.resource_record*, %struct.resource_record** %260, align 8, !tbaa !1
  %rr_u286 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %261, i32 0, i32 5
  %rr_data287 = bitcast %union.anon* %rr_u286 to i8**
  %262 = load i8*, i8** %rr_data287, align 8, !tbaa !1
  %263 = load i8*, i8** %p, align 8, !tbaa !1
  %264 = load i32, i32* %size, align 4, !tbaa !9
  %conv288 = sext i32 %264 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %262, i8* %263, i64 %conv288, i32 1, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.285, %if.end.270, %if.end.220, %if.end.185, %if.end.164
  %265 = load i32, i32* %size, align 4, !tbaa !9
  %266 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext289 = sext i32 %265 to i64
  %add.ptr290 = getelementptr inbounds i8, i8* %266, i64 %idx.ext289
  store i8* %add.ptr290, i8** %p, align 8, !tbaa !1
  %267 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  %268 = load %struct.resource_record*, %struct.resource_record** %267, align 8, !tbaa !1
  %rr_next = getelementptr inbounds %struct.resource_record, %struct.resource_record* %268, i32 0, i32 6
  store %struct.resource_record** %rr_next, %struct.resource_record*** %rr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.284, %if.then.269, %if.end.258, %if.then.219, %if.then.207, %if.then.184, %if.then.173, %if.then.163, %if.then.155, %if.then.147, %if.then.140, %if.end.135, %if.then.58
  %269 = bitcast i32* %txtlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast i32* %class to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.295 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %land.end
  %274 = load %struct.resource_record**, %struct.resource_record*** %rr, align 8, !tbaa !1
  store %struct.resource_record* null, %struct.resource_record** %274, align 8, !tbaa !1
  %275 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  store %struct.DNS_REPLY_T* %275, %struct.DNS_REPLY_T** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %while.end, %cleanup, %if.then.11, %if.then.4, %if.then
  %276 = bitcast %struct.resource_record*** %rr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast [64 x i8]* %host to i8*
  call void @llvm.lifetime.end(i64 64, i8* %278) #1
  %279 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i16* %ui to i8*
  call void @llvm.lifetime.end(i64 2, i8* %281) #1
  %282 = bitcast i16* %ans_cnt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %282) #1
  %283 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %retval
  ret %struct.DNS_REPLY_T* %284
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @__dn_expand(i8*, i8*, i8*, i8*, i32) #4

declare i8* @sm_strdup(i8*) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"stot", !2, i64 0, !7, i64 8}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 8}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !2, i64 16}
!11 = !{!"", !12, i64 0, !13, i64 16, !2, i64 32}
!12 = !{!"", !7, i64 0, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 3, !7, i64 3, !7, i64 3, !7, i64 3, !7, i64 3, !7, i64 4, !7, i64 6, !7, i64 8, !7, i64 10}
!13 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12}
!14 = !{!11, !2, i64 32}
!15 = !{!16, !2, i64 0}
!16 = !{!"resource_record", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !3, i64 24, !2, i64 32}
!17 = !{!16, !2, i64 32}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !3, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{!22, !19, i64 8}
!22 = !{!"__res_state", !7, i64 0, !7, i64 4, !19, i64 8, !7, i64 16, !3, i64 20, !23, i64 68, !3, i64 72, !3, i64 128, !19, i64 384, !7, i64 392, !7, i64 392, !7, i64 393, !7, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !7, i64 496, !7, i64 500, !7, i64 504, !3, i64 512}
!23 = !{!"short", !3, i64 0}
!24 = !{!22, !7, i64 0}
!25 = !{!22, !7, i64 4}
!26 = !{!23, !23, i64 0}
!27 = !{i32 205723}
!28 = !{!11, !7, i64 24}
!29 = !{!11, !7, i64 28}
!30 = !{!16, !7, i64 8}
!31 = !{!16, !7, i64 12}
!32 = !{!16, !7, i64 16}
!33 = !{!16, !7, i64 20}
!34 = !{!35, !7, i64 0}
!35 = !{!"", !7, i64 0, !3, i64 4}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !3, i64 12}
!38 = !{!37, !7, i64 4}
!39 = !{!37, !7, i64 8}
