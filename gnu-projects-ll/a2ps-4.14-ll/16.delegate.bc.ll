; ModuleID = './src/delegate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.delegation = type { i8*, i8*, i8* }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_s = type { i8*, i64, i64, %struct._IO_FILE*, i8, i8*, i32, i8, i8*, i64, i64, i64, i64, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.lister = type opaque

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0A:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@delegation_table = external global %struct.hash_table_s*, align 8
@job = external global %struct.a2ps_job*, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"delegating command\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"a2_\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"Delegating `%s' to `%s' (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"cannot create file `%s'\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"cannot open a pipe on `%s'\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%%Page: \00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%%DocumentNeededResources: \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \0A\09\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%%+ \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"BeginInclude\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%%%%BeginDocument: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%%%%EndDocument\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"EndInclude\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Applications configured for delegation\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Delegation `%s', from %s to %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @delegation_table_new() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* @delegate_hash_1, i64 (i8*)* @delegate_hash_2, i32 (i8*, i8*)* @delegate_hash_cmp)
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @delegate_hash_1(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.delegation*
  %contract = getelementptr inbounds %struct.delegation, %struct.delegation* %1, i32 0, i32 1
  %2 = load i8*, i8** %contract, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @delegate_hash_2(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.delegation*
  %contract = getelementptr inbounds %struct.delegation, %struct.delegation* %1, i32 0, i32 1
  %2 = load i8*, i8** %contract, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @delegate_hash_cmp(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.delegation*
  %contract = getelementptr inbounds %struct.delegation, %struct.delegation* %1, i32 0, i32 1
  %2 = load i8*, i8** %contract, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct.delegation*
  %contract2 = getelementptr inbounds %struct.delegation, %struct.delegation* %4, i32 0, i32 1
  %5 = load i8*, i8** %contract2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %6 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %8 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %12 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load i8*, i8** %xx, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8*, i8** %yy, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @delegation_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.delegation*)* @delegate_free to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #5
  ret void
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @delegate_free(%struct.delegation* %delegation) #0 {
entry:
  %delegation.addr = alloca %struct.delegation*, align 8
  store %struct.delegation* %delegation, %struct.delegation** %delegation.addr, align 8
  %0 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @free(i8* %1) #5
  %2 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %contract = getelementptr inbounds %struct.delegation, %struct.delegation* %2, i32 0, i32 1
  %3 = load i8*, i8** %contract, align 8
  call void @free(i8* %3) #5
  %4 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %command = getelementptr inbounds %struct.delegation, %struct.delegation* %4, i32 0, i32 2
  %5 = load i8*, i8** %command, align 8
  call void @free(i8* %5) #5
  %6 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %7 = bitcast %struct.delegation* %6 to i8*
  call void @free(i8* %7) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @add_delegation(i8* %filename, i32 %line, i8* %contract_line) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %contract_line.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  %contract = alloca %struct.delegation*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %contract_line, i8** %contract_line.addr, align 8
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.delegation*
  store %struct.delegation* %0, %struct.delegation** %contract, align 8
  %1 = load i8*, i8** %contract_line.addr, align 8
  %call1 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call1, i8** %cp, align 8
  %2 = load i8*, i8** %cp, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i32, i32* %line.addr, align 4
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  %5 = load i8*, i8** %contract_line.addr, align 8
  %call3 = call i8* @quotearg(i8* %5)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %3, i32 %4, i8* %call2, i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %cp, align 8
  %call4 = call i8* @xstrdup(i8* %6)
  %7 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %7, i32 0, i32 0
  store i8* %call4, i8** %name, align 8
  %call5 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call5, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %9 = load i8*, i8** %filename.addr, align 8
  %10 = load i32, i32* %line.addr, align 4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  %11 = load i8*, i8** %contract_line.addr, align 8
  %call9 = call i8* @quotearg(i8* %11)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %9, i32 %10, i8* %call8, i8* %call9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %call11 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call11, i8** %cp2, align 8
  %12 = load i8*, i8** %cp2, align 8
  %cmp12 = icmp eq i8* %12, null
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %13 = load i8*, i8** %filename.addr, align 8
  %14 = load i32, i32* %line.addr, align 4
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  %15 = load i8*, i8** %contract_line.addr, align 8
  %call15 = call i8* @quotearg(i8* %15)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %13, i32 %14, i8* %call14, i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  %16 = load i8*, i8** %cp, align 8
  %call17 = call i64 @strlen(i8* %16) #6
  %17 = load i8*, i8** %cp2, align 8
  %call18 = call i64 @strlen(i8* %17) #6
  %add = add i64 %call17, %call18
  %add19 = add i64 %add, 2
  %mul = mul i64 1, %add19
  %call20 = call i8* @xmalloc(i64 %mul)
  %18 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %contract21 = getelementptr inbounds %struct.delegation, %struct.delegation* %18, i32 0, i32 1
  store i8* %call20, i8** %contract21, align 8
  %19 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %contract22 = getelementptr inbounds %struct.delegation, %struct.delegation* %19, i32 0, i32 1
  %20 = load i8*, i8** %contract22, align 8
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8*, i8** %cp2, align 8
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %21, i8* %22) #5
  %call24 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call24, i8** %cp, align 8
  %23 = load i8*, i8** %cp, align 8
  %cmp25 = icmp eq i8* %23, null
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.16
  %24 = load i8*, i8** %filename.addr, align 8
  %25 = load i32, i32* %line.addr, align 4
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  %26 = load i8*, i8** %contract_line.addr, align 8
  %call28 = call i8* @quotearg(i8* %26)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %24, i32 %25, i8* %call27, i8* %call28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.16
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8*, i8** %cp, align 8
  %call30 = call i64 @strspn(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #6
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %call30
  %call31 = call i8* @xstrdup(i8* %add.ptr)
  %29 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %command = getelementptr inbounds %struct.delegation, %struct.delegation* %29, i32 0, i32 2
  store i8* %call31, i8** %command, align 8
  %30 = load %struct.hash_table_s*, %struct.hash_table_s** @delegation_table, align 8
  %31 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %32 = bitcast %struct.delegation* %31 to i8*
  %call32 = call i8* @hash_insert(%struct.hash_table_s* %30, i8* %32)
  ret void
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.delegation* @get_subcontract(i8* %src_type, i8* %dest_type) #0 {
entry:
  %src_type.addr = alloca i8*, align 8
  %dest_type.addr = alloca i8*, align 8
  %token = alloca %struct.delegation, align 8
  store i8* %src_type, i8** %src_type.addr, align 8
  store i8* %dest_type, i8** %dest_type.addr, align 8
  %0 = load i8*, i8** %src_type.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %1 = load i8*, i8** %dest_type.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %mul = mul i64 1, %add2
  %2 = alloca i8, i64 %mul
  %contract = getelementptr inbounds %struct.delegation, %struct.delegation* %token, i32 0, i32 1
  store i8* %2, i8** %contract, align 8
  %contract3 = getelementptr inbounds %struct.delegation, %struct.delegation* %token, i32 0, i32 1
  %3 = load i8*, i8** %contract3, align 8
  %4 = load i8*, i8** %src_type.addr, align 8
  %5 = load i8*, i8** %dest_type.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %4, i8* %5) #5
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** @delegation_table, align 8
  %7 = bitcast %struct.delegation* %token to i8*
  %call5 = call i8* @hash_find_item(%struct.hash_table_s* %6, i8* %7)
  %8 = bitcast i8* %call5 to %struct.delegation*
  ret %struct.delegation* %8
}

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @get_delegate_command(%struct.delegation* %contract, %struct.file_job* %file, i32 %evaluate) #0 {
entry:
  %retval = alloca i8*, align 8
  %contract.addr = alloca %struct.delegation*, align 8
  %file.addr = alloca %struct.file_job*, align 8
  %evaluate.addr = alloca i32, align 4
  store %struct.delegation* %contract, %struct.delegation** %contract.addr, align 8
  store %struct.file_job* %file, %struct.file_job** %file.addr, align 8
  store i32 %evaluate, i32* %evaluate.addr, align 4
  %0 = load i32, i32* %evaluate.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %2 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3 = load %struct.delegation*, %struct.delegation** %contract.addr, align 8
  %command = getelementptr inbounds %struct.delegation, %struct.delegation* %3, i32 0, i32 2
  %4 = load i8*, i8** %command, align 8
  %call = call i8* @expand_user_string(%struct.a2ps_job* %1, %struct.file_job* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* %4)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.delegation*, %struct.delegation** %contract.addr, align 8
  %command1 = getelementptr inbounds %struct.delegation, %struct.delegation* %5, i32 0, i32 2
  %6 = load i8*, i8** %command1, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @subcontract(%struct.file_job* %fjob, %struct.buffer_s* %buffer, %struct.delegation* %contractor) #0 {
entry:
  %retval = alloca i32, align 4
  %fjob.addr = alloca %struct.file_job*, align 8
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %contractor.addr = alloca %struct.delegation*, align 8
  %command = alloca i8*, align 8
  %stdin_content_filename = alloca i8*, align 8
  %in_stream = alloca %struct._IO_FILE*, align 8
  %out_stream = alloca %struct._IO_FILE*, align 8
  %lines_read = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %continuation = alloca i32, align 4
  %value = alloca i8*, align 8
  %res = alloca i8*, align 8
  %buf_copy = alloca i8*, align 8
  %_tmp_ = alloca i8*, align 8
  %value73 = alloca i8*, align 8
  %res74 = alloca i8*, align 8
  %buf_copy75 = alloca i8*, align 8
  %_tmp_77 = alloca i8*, align 8
  %saved_redirection_of_output = alloca i32, align 4
  store %struct.file_job* %fjob, %struct.file_job** %fjob.addr, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.delegation* %contractor, %struct.delegation** %contractor.addr, align 8
  store i8* null, i8** %stdin_content_filename, align 8
  store i32 0, i32* %lines_read, align 4
  store i32 0, i32* %continuation, align 4
  %0 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 24
  %3 = load i8*, i8** %stdin_filename, align 8
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %stdin_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %4, i32 0, i32 2
  %5 = load i8*, i8** %stdin_tmpname, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %6 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %stdin_tmpname1 = getelementptr inbounds %struct.file_job, %struct.file_job* %6, i32 0, i32 2
  %7 = load i8*, i8** %stdin_tmpname1, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call = call noalias i8* @tempnam(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call, %cond.false ]
  %8 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %stdin_tmpname2 = getelementptr inbounds %struct.file_job, %struct.file_job* %8, i32 0, i32 2
  store i8* %cond, i8** %stdin_tmpname2, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end
  %9 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %stdin_tmpname3 = getelementptr inbounds %struct.file_job, %struct.file_job* %9, i32 0, i32 2
  %10 = load i8*, i8** %stdin_tmpname3, align 8
  store i8* %10, i8** %stdin_content_filename, align 8
  %11 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %12 = load i8*, i8** %stdin_content_filename, align 8
  call void @buffer_save(%struct.buffer_s* %11, i8* %12)
  %13 = load i8*, i8** %stdin_content_filename, align 8
  %14 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %name4 = getelementptr inbounds %struct.file_job, %struct.file_job* %14, i32 0, i32 0
  store i8* %13, i8** %name4, align 8
  %15 = load %struct.delegation*, %struct.delegation** %contractor.addr, align 8
  %16 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %call5 = call i8* @get_delegate_command(%struct.delegation* %15, %struct.file_job* %16, i32 1)
  store i8* %call5, i8** %command, align 8
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %stdin_filename6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 24
  %18 = load i8*, i8** %stdin_filename6, align 8
  %19 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %name7 = getelementptr inbounds %struct.file_job, %struct.file_job* %19, i32 0, i32 0
  store i8* %18, i8** %name7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct.delegation*, %struct.delegation** %contractor.addr, align 8
  %21 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %call8 = call i8* @get_delegate_command(%struct.delegation* %20, %struct.file_job* %21, i32 1)
  store i8* %call8, i8** %command, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %22 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %22
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %do.body.9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %name12 = getelementptr inbounds %struct.file_job, %struct.file_job* %24, i32 0, i32 0
  %25 = load i8*, i8** %name12, align 8
  %26 = load %struct.delegation*, %struct.delegation** %contractor.addr, align 8
  %name13 = getelementptr inbounds %struct.delegation, %struct.delegation* %26, i32 0, i32 0
  %27 = load i8*, i8** %name13, align 8
  %28 = load i8*, i8** %command, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %25, i8* %27, i8* %28)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %do.body.9
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %29 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %29, i32 0, i32 1
  %30 = load i8*, i8** %delegation_tmpname, align 8
  %tobool18 = icmp ne i8* %30, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %do.body.17
  %31 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname20 = getelementptr inbounds %struct.file_job, %struct.file_job* %31, i32 0, i32 1
  %32 = load i8*, i8** %delegation_tmpname20, align 8
  br label %cond.end.23

cond.false.21:                                    ; preds = %do.body.17
  %call22 = call noalias i8* @tempnam(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi i8* [ %32, %cond.true.19 ], [ %call22, %cond.false.21 ]
  %33 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname25 = getelementptr inbounds %struct.file_job, %struct.file_job* %33, i32 0, i32 1
  store i8* %cond24, i8** %delegation_tmpname25, align 8
  br label %do.end.26

do.end.26:                                        ; preds = %cond.end.23
  %34 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname27 = getelementptr inbounds %struct.file_job, %struct.file_job* %34, i32 0, i32 1
  %35 = load i8*, i8** %delegation_tmpname27, align 8
  %call28 = call %struct._IO_FILE* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call28, %struct._IO_FILE** %out_stream, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %out_stream, align 8
  %tobool29 = icmp ne %struct._IO_FILE* %36, null
  br i1 %tobool29, label %if.end.35, label %if.then.30

if.then.30:                                       ; preds = %do.end.26
  %call31 = call i32* @__errno_location() #7
  %37 = load i32, i32* %call31, align 4
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #5
  %38 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname33 = getelementptr inbounds %struct.file_job, %struct.file_job* %38, i32 0, i32 1
  %39 = load i8*, i8** %delegation_tmpname33, align 8
  %call34 = call i8* @quotearg(i8* %39)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %37, i8* %call32, i8* %call34)
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %do.end.26
  %40 = load i8*, i8** %command, align 8
  %call36 = call %struct._IO_FILE* @popen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %in_stream, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream, align 8
  %tobool37 = icmp ne %struct._IO_FILE* %41, null
  br i1 %tobool37, label %if.end.43, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out_stream, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %42)
  %call40 = call i32* @__errno_location() #7
  %43 = load i32, i32* %call40, align 4
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0)) #5
  %44 = load i8*, i8** %command, align 8
  %call42 = call i8* @quotearg(i8* %44)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %43, i8* %call41, i8* %call42)
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.35
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @file_job_synchronize_sheets(%struct.a2ps_job* %45)
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @file_job_synchronize_pages(%struct.a2ps_job* %46)
  br label %while.cond

while.cond:                                       ; preds = %if.end.93, %if.end.43
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream, align 8
  %call44 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %47)
  %tobool45 = icmp ne i8* %call44, null
  br i1 %tobool45, label %while.body, label %while.end.96

while.body:                                       ; preds = %while.cond
  %48 = load i32, i32* %lines_read, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %lines_read, align 4
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call47 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay46, i64 8) #6
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.else.51, label %if.then.49

if.then.49:                                       ; preds = %while.body
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 15
  %50 = load i32, i32* %rows, align 4
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 14
  %52 = load i32, i32* %columns, align 4
  %mul = mul nsw i32 %50, %52
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 9
  %54 = load i32, i32* %pages, align 4
  %add = add nsw i32 %54, %mul
  store i32 %add, i32* %pages, align 4
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 8
  %56 = load i32, i32* %sheets, align 4
  %inc50 = add nsw i32 %56, 1
  store i32 %inc50, i32* %sheets, align 4
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @file_job_synchronize_sheets(%struct.a2ps_job* %57)
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @file_job_synchronize_pages(%struct.a2ps_job* %58)
  br label %if.end.93

if.else.51:                                       ; preds = %while.body
  %arraydecay52 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call53 = call i32 @strncmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay52, i64 27) #6
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.68, label %if.then.55

if.then.55:                                       ; preds = %if.else.51
  store i32 1, i32* %continuation, align 4
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay57, i64 27
  store i8* %add.ptr, i8** %_tmp_, align 8
  %59 = load i8*, i8** %_tmp_, align 8
  %call58 = call i64 @strlen(i8* %59) #6
  %add59 = add i64 %call58, 1
  %mul60 = mul i64 1, %add59
  %60 = alloca i8, i64 %mul60
  store i8* %60, i8** %buf_copy, align 8
  %61 = load i8*, i8** %buf_copy, align 8
  %62 = load i8*, i8** %_tmp_, align 8
  %call61 = call i8* @strcpy(i8* %61, i8* %62) #5
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.56
  %63 = load i8*, i8** %buf_copy, align 8
  %call63 = call i8* @strtok(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call63, i8** %res, align 8
  br label %while.cond.64

while.cond.64:                                    ; preds = %while.body.67, %do.end.62
  %call65 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call65, i8** %value, align 8
  %tobool66 = icmp ne i8* %call65, null
  br i1 %tobool66, label %while.body.67, label %while.end

while.body.67:                                    ; preds = %while.cond.64
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %65 = load i8*, i8** %res, align 8
  %66 = load i8*, i8** %value, align 8
  call void @add_needed_resource(%struct.a2ps_job* %64, i8* %65, i8* %66)
  br label %while.cond.64

while.end:                                        ; preds = %while.cond.64
  br label %if.end.92

if.else.68:                                       ; preds = %if.else.51
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call70 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay69, i64 4) #6
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.91, label %if.then.72

if.then.72:                                       ; preds = %if.else.68
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.72
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %add.ptr79 = getelementptr inbounds i8, i8* %arraydecay78, i64 4
  store i8* %add.ptr79, i8** %_tmp_77, align 8
  %67 = load i8*, i8** %_tmp_77, align 8
  %call80 = call i64 @strlen(i8* %67) #6
  %add81 = add i64 %call80, 1
  %mul82 = mul i64 1, %add81
  %68 = alloca i8, i64 %mul82
  store i8* %68, i8** %buf_copy75, align 8
  %69 = load i8*, i8** %buf_copy75, align 8
  %70 = load i8*, i8** %_tmp_77, align 8
  %call83 = call i8* @strcpy(i8* %69, i8* %70) #5
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.76
  %71 = load i8*, i8** %buf_copy75, align 8
  %call85 = call i8* @strtok(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call85, i8** %res74, align 8
  br label %while.cond.86

while.cond.86:                                    ; preds = %sw.epilog, %do.end.84
  %call87 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call87, i8** %value73, align 8
  %tobool88 = icmp ne i8* %call87, null
  br i1 %tobool88, label %while.body.89, label %while.end.90

while.body.89:                                    ; preds = %while.cond.86
  %72 = load i32, i32* %continuation, align 4
  switch i32 %72, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body.89
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %74 = load i8*, i8** %res74, align 8
  %75 = load i8*, i8** %value73, align 8
  call void @add_needed_resource(%struct.a2ps_job* %73, i8* %74, i8* %75)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.89
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %while.cond.86

while.end.90:                                     ; preds = %while.cond.86
  br label %if.end.91

if.end.91:                                        ; preds = %while.end.90, %if.else.68
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %while.end
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.49
  %arraydecay94 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %out_stream, align 8
  %call95 = call i32 @fputs(i8* %arraydecay94, %struct._IO_FILE* %76)
  br label %while.cond

while.end.96:                                     ; preds = %while.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream, align 8
  %call97 = call i32 @pclose(%struct._IO_FILE* %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %out_stream, align 8
  %call98 = call i32 @fclose(%struct._IO_FILE* %78)
  %79 = load i8*, i8** %stdin_content_filename, align 8
  %tobool99 = icmp ne i8* %79, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %while.end.96
  %80 = load i8*, i8** %stdin_content_filename, align 8
  %call101 = call i32 @unlink(i8* %80) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %while.end.96
  %81 = load i32, i32* %lines_read, align 4
  %cmp103 = icmp eq i32 %81, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.102
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.102
  %82 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %82, i32 0, i32 65
  %83 = load %struct.output*, %struct.output** %divertion, align 8
  %call106 = call i32 @output_is_to_void(%struct.output* %83)
  store i32 %call106, i32* %saved_redirection_of_output, align 4
  %84 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion107 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %84, i32 0, i32 65
  %85 = load %struct.output*, %struct.output** %divertion107, align 8
  call void @output_to_void(%struct.output* %85, i32 0)
  %86 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion108 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %86, i32 0, i32 65
  %87 = load %struct.output*, %struct.output** %divertion108, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  %88 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion109 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %88, i32 0, i32 65
  %89 = load %struct.output*, %struct.output** %divertion109, align 8
  %90 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %name110 = getelementptr inbounds %struct.file_job, %struct.file_job* %90, i32 0, i32 0
  %91 = load i8*, i8** %name110, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %91)
  %92 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion111 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %92, i32 0, i32 65
  %93 = load %struct.output*, %struct.output** %divertion111, align 8
  %94 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname112 = getelementptr inbounds %struct.file_job, %struct.file_job* %94, i32 0, i32 1
  %95 = load i8*, i8** %delegation_tmpname112, align 8
  call void @output_delayed_routine(%struct.output* %93, void (%struct._IO_FILE*, i8*)* @stream_dump, i8* %95)
  %96 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion113 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %96, i32 0, i32 65
  %97 = load %struct.output*, %struct.output** %divertion113, align 8
  %98 = load %struct.file_job*, %struct.file_job** %fjob.addr, align 8
  %delegation_tmpname114 = getelementptr inbounds %struct.file_job, %struct.file_job* %98, i32 0, i32 1
  %99 = load i8*, i8** %delegation_tmpname114, align 8
  call void @output_delayed_routine(%struct.output* %97, void (%struct._IO_FILE*, i8*)* bitcast (void (i8*, i8*)* @unlink2 to void (%struct._IO_FILE*, i8*)*), i8* %99)
  %100 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion115 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %100, i32 0, i32 65
  %101 = load %struct.output*, %struct.output** %divertion115, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %102 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion116 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %102, i32 0, i32 65
  %103 = load %struct.output*, %struct.output** %divertion116, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  %104 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %divertion117 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %104, i32 0, i32 65
  %105 = load %struct.output*, %struct.output** %divertion117, align 8
  %106 = load i32, i32* %saved_redirection_of_output, align 4
  call void @output_to_void(%struct.output* %105, i32 %106)
  %107 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %107, i32 0, i32 64
  %108 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %page_are_ordered = getelementptr inbounds %struct.ps_status, %struct.ps_status* %108, i32 0, i32 8
  store i32 0, i32* %page_are_ordered, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.then.104, %if.then.38, %if.then.30
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind
declare noalias i8* @tempnam(i8*, i8*) #2

declare void @buffer_save(%struct.buffer_s*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._IO_FILE* @popen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @file_job_synchronize_sheets(%struct.a2ps_job*) #1

declare void @file_job_synchronize_pages(%struct.a2ps_job*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @add_needed_resource(%struct.a2ps_job*, i8*, i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @pclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare i32 @output_is_to_void(%struct.output*) #1

declare void @output_to_void(%struct.output*, i32) #1

declare void @output(%struct.output*, i8*, ...) #1

declare void @output_delayed_routine(%struct.output*, void (%struct._IO_FILE*, i8*)*, i8*) #1

declare void @stream_dump(%struct._IO_FILE*, i8*) #1

declare void @unlink2(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @delegations_list_long(%struct.hash_table_s* %contracts, %struct._IO_FILE* %stream) #0 {
entry:
  %contracts.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %ordered_contracts = alloca %struct.delegation**, align 8
  store %struct.hash_table_s* %contracts, %struct.hash_table_s** %contracts.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %contracts.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.delegation**, %struct.delegation**)* @delegate_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.delegation**
  store %struct.delegation** %1, %struct.delegation*** %ordered_contracts, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* %call1, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.delegation**, %struct.delegation*** %ordered_contracts, align 8
  %arrayidx = getelementptr inbounds %struct.delegation*, %struct.delegation** %5, i64 %idxprom
  %6 = load %struct.delegation*, %struct.delegation** %arrayidx, align 8
  %tobool = icmp ne %struct.delegation* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.delegation**, %struct.delegation*** %ordered_contracts, align 8
  %arrayidx5 = getelementptr inbounds %struct.delegation*, %struct.delegation** %9, i64 %idxprom4
  %10 = load %struct.delegation*, %struct.delegation** %arrayidx5, align 8
  call void @dump_contract(%struct._IO_FILE* %7, %struct.delegation* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  %13 = load %struct.delegation**, %struct.delegation*** %ordered_contracts, align 8
  %14 = bitcast %struct.delegation** %13 to i8*
  call void @free(i8* %14) #5
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @delegate_hash_qcmp(%struct.delegation** %x, %struct.delegation** %y) #0 {
entry:
  %x.addr = alloca %struct.delegation**, align 8
  %y.addr = alloca %struct.delegation**, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.delegation** %x, %struct.delegation*** %x.addr, align 8
  store %struct.delegation** %y, %struct.delegation*** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.delegation**, %struct.delegation*** %x.addr, align 8
  %1 = load %struct.delegation*, %struct.delegation** %0, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load %struct.delegation**, %struct.delegation*** %y.addr, align 8
  %4 = load %struct.delegation*, %struct.delegation** %3, align 8
  %name2 = getelementptr inbounds %struct.delegation, %struct.delegation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %6 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %8 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %12 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load i8*, i8** %xx, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8*, i8** %yy, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %17
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @dump_contract(%struct._IO_FILE* %stream, %struct.delegation* %contract) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %contract.addr = alloca %struct.delegation*, align 8
  %cp = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.delegation* %contract, %struct.delegation** %contract.addr, align 8
  %0 = load %struct.delegation*, %struct.delegation** %contract.addr, align 8
  %contract1 = getelementptr inbounds %struct.delegation, %struct.delegation* %0, i32 0, i32 1
  %1 = load i8*, i8** %contract1, align 8
  %call = call i8* @xstrdup(i8* %1)
  store i8* %call, i8** %cp, align 8
  %2 = load i8*, i8** %cp, align 8
  %call2 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #5
  store i8* %call2, i8** %cp, align 8
  %call3 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #5
  store i8* %call3, i8** %cp2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0)) #5
  %4 = load %struct.delegation*, %struct.delegation** %contract.addr, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8*, i8** %cp2, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %call4, i8* %5, i8* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load %struct.delegation*, %struct.delegation** %contract.addr, align 8
  %command = getelementptr inbounds %struct.delegation, %struct.delegation* %9, i32 0, i32 2
  %10 = load i8*, i8** %command, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* %10)
  %11 = load i8*, i8** %cp, align 8
  call void @free(i8* %11) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @delegations_list_short(%struct.hash_table_s* %contracts, %struct._IO_FILE* %stream) #0 {
entry:
  %contracts.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %ordered_contracts = alloca %struct.delegation**, align 8
  store %struct.hash_table_s* %contracts, %struct.hash_table_s** %contracts.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %contracts.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.delegation**, %struct.delegation**)* @delegate_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.delegation**
  store %struct.delegation** %1, %struct.delegation*** %ordered_contracts, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* %call1, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.delegation**, %struct.delegation*** %ordered_contracts, align 8
  %6 = bitcast %struct.delegation** %5 to i8*
  %7 = bitcast i8* %6 to i8**
  call void @lister_fprint_vertical(%struct.lister* null, %struct._IO_FILE* %4, i8** %7, i64 -1, i64 (i8*)* bitcast (i64 (%struct.delegation*)* @delegate_name_len to i64 (i8*)*), void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.delegation*, %struct._IO_FILE*)* @delegate_name_fputs to void (i8*, %struct._IO_FILE*)*))
  %8 = load %struct.delegation**, %struct.delegation*** %ordered_contracts, align 8
  %9 = bitcast %struct.delegation** %8 to i8*
  call void @free(i8* %9) #5
  ret void
}

declare void @lister_fprint_vertical(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @delegate_name_len(%struct.delegation* %delegation) #0 {
entry:
  %delegation.addr = alloca %struct.delegation*, align 8
  store %struct.delegation* %delegation, %struct.delegation** %delegation.addr, align 8
  %0 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %1) #6
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @delegate_name_fputs(%struct.delegation* %delegation, %struct._IO_FILE* %stream) #0 {
entry:
  %delegation.addr = alloca %struct.delegation*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.delegation* %delegation, %struct.delegation** %delegation.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.delegation*, %struct.delegation** %delegation.addr, align 8
  %name = getelementptr inbounds %struct.delegation, %struct.delegation* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
