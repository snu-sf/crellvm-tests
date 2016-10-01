; ModuleID = './MultiSource.Benchmarks.BitBench/2.five11.five11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.linked_list_int = type { i32, i8* }
%struct.linked_list_lli = type { %struct.linked_list_int*, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: five11 [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.linked_list_int* @cons1(i32 %hd, %struct.linked_list_int* %tl) #0 {
entry:
  %hd.addr = alloca i32, align 4
  %tl.addr = alloca %struct.linked_list_int*, align 8
  %res = alloca %struct.linked_list_int*, align 8
  store i32 %hd, i32* %hd.addr, align 4
  store %struct.linked_list_int* %tl, %struct.linked_list_int** %tl.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.linked_list_int*
  store %struct.linked_list_int* %0, %struct.linked_list_int** %res, align 8
  %1 = load i32, i32* %hd.addr, align 4
  %2 = load %struct.linked_list_int*, %struct.linked_list_int** %res, align 8
  %car = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %2, i32 0, i32 0
  store i32 %1, i32* %car, align 4
  %3 = load %struct.linked_list_int*, %struct.linked_list_int** %tl.addr, align 8
  %4 = bitcast %struct.linked_list_int* %3 to i8*
  %5 = load %struct.linked_list_int*, %struct.linked_list_int** %res, align 8
  %cdr = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %5, i32 0, i32 1
  store i8* %4, i8** %cdr, align 8
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %res, align 8
  ret %struct.linked_list_int* %6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.linked_list_lli* @cons2(%struct.linked_list_int* %hd, %struct.linked_list_lli* %tl) #0 {
entry:
  %hd.addr = alloca %struct.linked_list_int*, align 8
  %tl.addr = alloca %struct.linked_list_lli*, align 8
  %res = alloca %struct.linked_list_lli*, align 8
  store %struct.linked_list_int* %hd, %struct.linked_list_int** %hd.addr, align 8
  store %struct.linked_list_lli* %tl, %struct.linked_list_lli** %tl.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.linked_list_lli*
  store %struct.linked_list_lli* %0, %struct.linked_list_lli** %res, align 8
  %1 = load %struct.linked_list_int*, %struct.linked_list_int** %hd.addr, align 8
  %2 = load %struct.linked_list_lli*, %struct.linked_list_lli** %res, align 8
  %car = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %2, i32 0, i32 0
  store %struct.linked_list_int* %1, %struct.linked_list_int** %car, align 8
  %3 = load %struct.linked_list_lli*, %struct.linked_list_lli** %tl.addr, align 8
  %4 = bitcast %struct.linked_list_lli* %3 to i8*
  %5 = load %struct.linked_list_lli*, %struct.linked_list_lli** %res, align 8
  %cdr = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %5, i32 0, i32 1
  store i8* %4, i8** %cdr, align 8
  %6 = load %struct.linked_list_lli*, %struct.linked_list_lli** %res, align 8
  ret %struct.linked_list_lli* %6
}

; Function Attrs: nounwind uwtable
define void @free_list1(%struct.linked_list_int* %list) #0 {
entry:
  %list.addr = alloca %struct.linked_list_int*, align 8
  %next = alloca %struct.linked_list_int*, align 8
  store %struct.linked_list_int* %list, %struct.linked_list_int** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %cmp = icmp ne %struct.linked_list_int* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %cdr = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %1, i32 0, i32 1
  %2 = load i8*, i8** %cdr, align 8
  %3 = bitcast i8* %2 to %struct.linked_list_int*
  store %struct.linked_list_int* %3, %struct.linked_list_int** %next, align 8
  %4 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %5 = bitcast %struct.linked_list_int* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %next, align 8
  store %struct.linked_list_int* %6, %struct.linked_list_int** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @free_list2(%struct.linked_list_lli* %list) #0 {
entry:
  %list.addr = alloca %struct.linked_list_lli*, align 8
  %next = alloca %struct.linked_list_lli*, align 8
  %hd = alloca %struct.linked_list_int*, align 8
  store %struct.linked_list_lli* %list, %struct.linked_list_lli** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %cmp = icmp ne %struct.linked_list_lli* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %cdr = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %1, i32 0, i32 1
  %2 = load i8*, i8** %cdr, align 8
  %3 = bitcast i8* %2 to %struct.linked_list_lli*
  store %struct.linked_list_lli* %3, %struct.linked_list_lli** %next, align 8
  %4 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %car = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %4, i32 0, i32 0
  %5 = load %struct.linked_list_int*, %struct.linked_list_int** %car, align 8
  store %struct.linked_list_int* %5, %struct.linked_list_int** %hd, align 8
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %hd, align 8
  call void @free_list1(%struct.linked_list_int* %6)
  %7 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %8 = bitcast %struct.linked_list_lli* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct.linked_list_lli*, %struct.linked_list_lli** %next, align 8
  store %struct.linked_list_lli* %9, %struct.linked_list_lli** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @read_x_bits(i8* %buf, i32 %offset, i32 %x) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %byte_offset = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %present = alloca i32, align 4
  %initbits = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %byte_offset, align 4
  %1 = load i32, i32* %offset.addr, align 4
  %and = and i32 %1, 7
  store i32 %and, i32* %bit_offset, align 4
  %2 = load i32, i32* %bit_offset, align 4
  %sub = sub nsw i32 8, %2
  store i32 %sub, i32* %initbits, align 4
  %3 = load i32, i32* %byte_offset, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and1 = and i32 %conv, 255
  store i32 %and1, i32* %present, align 4
  %6 = load i32, i32* %present, align 4
  %7 = load i32, i32* %initbits, align 4
  %shl = shl i32 1, %7
  %sub2 = sub nsw i32 %shl, 1
  %and3 = and i32 %6, %sub2
  store i32 %and3, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %initbits, align 4
  %cmp = icmp sgt i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %byte_offset, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %byte_offset, align 4
  %11 = load i32, i32* %byte_offset, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  %13 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %and8 = and i32 %conv7, 255
  store i32 %and8, i32* %present, align 4
  %14 = load i32, i32* %res, align 4
  %shl9 = shl i32 %14, 8
  %15 = load i32, i32* %present, align 4
  %or = or i32 %shl9, %15
  store i32 %or, i32* %res, align 4
  %16 = load i32, i32* %initbits, align 4
  %add = add nsw i32 %16, 8
  store i32 %add, i32* %initbits, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %res, align 4
  %18 = load i32, i32* %initbits, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub10 = sub nsw i32 %18, %19
  %shr11 = ashr i32 %17, %sub10
  ret i32 %shr11
}

; Function Attrs: nounwind uwtable
define i32 @read_11_bits(i8* %buf, i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %byte_offset = alloca i32, align 4
  %ioffset = alloca i32, align 4
  %present = alloca i32, align 4
  %initbits = alloca i32, align 4
  %res = alloca i32, align 4
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %shr = ashr i32 %0, 3
  store i32 %shr, i32* %byte_offset, align 4
  %1 = load i32, i32* %offset.addr, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 8, %and
  store i32 %sub, i32* %ioffset, align 4
  %2 = load i32, i32* %byte_offset, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and1 = and i32 %conv, 255
  store i32 %and1, i32* %b0, align 4
  %5 = load i32, i32* %byte_offset, align 4
  %add = add nsw i32 %5, 1
  %idxprom2 = sext i32 %add to i64
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 255
  store i32 %and5, i32* %b1, align 4
  %8 = load i32, i32* %b0, align 4
  %9 = load i32, i32* %ioffset, align 4
  %sub6 = sub nsw i32 11, %9
  %shl = shl i32 %8, %sub6
  store i32 %shl, i32* %res, align 4
  %10 = load i32, i32* %ioffset, align 4
  %cmp = icmp sge i32 %10, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %res, align 4
  %12 = load i32, i32* %b1, align 4
  %13 = load i32, i32* %ioffset, align 4
  %sub8 = sub nsw i32 %13, 3
  %shr9 = ashr i32 %12, %sub8
  %or = or i32 %11, %shr9
  %and10 = and i32 %or, 2047
  store i32 %and10, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %byte_offset, align 4
  %add11 = add nsw i32 %14, 2
  %idxprom12 = sext i32 %add11 to i64
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %and15 = and i32 %conv14, 255
  store i32 %and15, i32* %b2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %17 = load i32, i32* %res, align 4
  %18 = load i32, i32* %b1, align 4
  %19 = load i32, i32* %ioffset, align 4
  %sub16 = sub nsw i32 3, %19
  %shl17 = shl i32 %18, %sub16
  %or18 = or i32 %17, %shl17
  %20 = load i32, i32* %b2, align 4
  %21 = load i32, i32* %ioffset, align 4
  %add19 = add nsw i32 %21, 5
  %shr20 = ashr i32 %20, %add19
  %or21 = or i32 %or18, %shr20
  %and22 = and i32 %or21, 2047
  store i32 %and22, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct.linked_list_lli* @five11(i8* %inbuf) #0 {
entry:
  %inbuf.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %nof_packets = alloca i32, align 4
  %nof_channels = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %chan = alloca i32, align 4
  %packet = alloca %struct.linked_list_int*, align 8
  %res = alloca %struct.linked_list_lli*, align 8
  store i8* %inbuf, i8** %inbuf.addr, align 8
  store %struct.linked_list_int* null, %struct.linked_list_int** %packet, align 8
  store %struct.linked_list_lli* null, %struct.linked_list_lli** %res, align 8
  store i32 0, i32* %offset, align 4
  %0 = load i8*, i8** %inbuf.addr, align 8
  %1 = load i32, i32* %offset, align 4
  %call = call i32 @read_x_bits(i8* %0, i32 %1, i32 16)
  store i32 %call, i32* %nof_packets, align 4
  %2 = load i32, i32* %offset, align 4
  %add = add nsw i32 %2, 16
  store i32 %add, i32* %offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nof_packets, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %inbuf.addr, align 8
  %6 = load i32, i32* %offset, align 4
  %call1 = call i32 @read_x_bits(i8* %5, i32 %6, i32 5)
  store i32 %call1, i32* %nof_channels, align 4
  %7 = load i32, i32* %offset, align 4
  %add2 = add nsw i32 %7, 5
  store i32 %add2, i32* %offset, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nof_channels, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i8*, i8** %inbuf.addr, align 8
  %11 = load i32, i32* %offset, align 4
  %call6 = call i32 @read_11_bits(i8* %10, i32 %11)
  store i32 %call6, i32* %chan, align 4
  %12 = load i32, i32* %offset, align 4
  %add7 = add nsw i32 %12, 11
  store i32 %add7, i32* %offset, align 4
  %13 = load i32, i32* %chan, align 4
  %14 = load %struct.linked_list_int*, %struct.linked_list_int** %packet, align 8
  %call8 = call %struct.linked_list_int* @cons1(i32 %13, %struct.linked_list_int* %14)
  store %struct.linked_list_int* %call8, %struct.linked_list_int** %packet, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %16 = load i32, i32* %offset, align 4
  %17 = load i32, i32* %nof_channels, align 4
  %call9 = call i32 @pad_size(i32 %17)
  %add10 = add nsw i32 %16, %call9
  store i32 %add10, i32* %offset, align 4
  %18 = load %struct.linked_list_int*, %struct.linked_list_int** %packet, align 8
  %19 = load %struct.linked_list_lli*, %struct.linked_list_lli** %res, align 8
  %call11 = call %struct.linked_list_lli* @cons2(%struct.linked_list_int* %18, %struct.linked_list_lli* %19)
  store %struct.linked_list_lli* %call11, %struct.linked_list_lli** %res, align 8
  store %struct.linked_list_int* null, %struct.linked_list_int** %packet, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %21 = load %struct.linked_list_lli*, %struct.linked_list_lli** %res, align 8
  ret %struct.linked_list_lli* %21
}

; Function Attrs: nounwind uwtable
define i32 @pad_size(i32 %nof_channels) #0 {
entry:
  %nof_channels.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  store i32 %nof_channels, i32* %nof_channels.addr, align 4
  %0 = load i32, i32* %nof_channels.addr, align 4
  %mul = mul nsw i32 %0, 11
  %add = add nsw i32 5, %mul
  store i32 %add, i32* %bits, align 4
  %1 = load i32, i32* %bits, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 8, %and
  %and1 = and i32 %sub, 7
  ret i32 %and1
}

; Function Attrs: nounwind uwtable
define i32 @calc_sum2(%struct.linked_list_lli* %list) #0 {
entry:
  %list.addr = alloca %struct.linked_list_lli*, align 8
  %next = alloca %struct.linked_list_lli*, align 8
  %hd = alloca %struct.linked_list_int*, align 8
  %res = alloca i32, align 4
  store %struct.linked_list_lli* %list, %struct.linked_list_lli** %list.addr, align 8
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %cmp = icmp ne %struct.linked_list_lli* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %cdr = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %1, i32 0, i32 1
  %2 = load i8*, i8** %cdr, align 8
  %3 = bitcast i8* %2 to %struct.linked_list_lli*
  store %struct.linked_list_lli* %3, %struct.linked_list_lli** %next, align 8
  %4 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list.addr, align 8
  %car = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %4, i32 0, i32 0
  %5 = load %struct.linked_list_int*, %struct.linked_list_int** %car, align 8
  store %struct.linked_list_int* %5, %struct.linked_list_int** %hd, align 8
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %hd, align 8
  %call = call i32 @calc_sum1(%struct.linked_list_int* %6)
  %7 = load i32, i32* %res, align 4
  %add = add nsw i32 %7, %call
  store i32 %add, i32* %res, align 4
  %8 = load %struct.linked_list_lli*, %struct.linked_list_lli** %next, align 8
  store %struct.linked_list_lli* %8, %struct.linked_list_lli** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %res, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @calc_sum1(%struct.linked_list_int* %list) #0 {
entry:
  %list.addr = alloca %struct.linked_list_int*, align 8
  %next = alloca %struct.linked_list_int*, align 8
  %hd = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.linked_list_int* %list, %struct.linked_list_int** %list.addr, align 8
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %cmp = icmp ne %struct.linked_list_int* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %cdr = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %1, i32 0, i32 1
  %2 = load i8*, i8** %cdr, align 8
  %3 = bitcast i8* %2 to %struct.linked_list_int*
  store %struct.linked_list_int* %3, %struct.linked_list_int** %next, align 8
  %4 = load %struct.linked_list_int*, %struct.linked_list_int** %list.addr, align 8
  %car = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %4, i32 0, i32 0
  %5 = load i32, i32* %car, align 4
  store i32 %5, i32* %hd, align 4
  %6 = load i32, i32* %hd, align 4
  %7 = load i32, i32* %res, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %res, align 4
  %8 = load %struct.linked_list_int*, %struct.linked_list_int** %next, align 8
  store %struct.linked_list_int* %8, %struct.linked_list_int** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %res, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %outsize = alloca i32, align 4
  %time = alloca i32, align 4
  %list = alloca %struct.linked_list_lli*, align 8
  %inbuf = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %pre = alloca %struct.timeval, align 8
  %post = alloca %struct.timeval, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 150000) #4
  store i8* %call, i8** %inbuf, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %in, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx4, align 8
  call void @perror(i8* %4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %6 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %in, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %8 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp ne i32 %8, 1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 2) #5
  unreachable

if.end.9:                                         ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %10 = load i8*, i8** %inbuf, align 8
  %call10 = call i64 @read_data(%struct._IO_FILE* %9, i8* %10)
  store i64 %call10, i64* %size, align 8
  %call11 = call i32 @gettimeofday(%struct.timeval* %pre, %struct.timezone* null) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %11 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %11, 10000
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %inbuf, align 8
  %call13 = call %struct.linked_list_lli* @five11(i8* %12)
  store %struct.linked_list_lli* %call13, %struct.linked_list_lli** %list, align 8
  %13 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list, align 8
  %call14 = call i32 @calc_sum2(%struct.linked_list_lli* %13)
  store i32 %call14, i32* %outsize, align 4
  %14 = load %struct.linked_list_lli*, %struct.linked_list_lli** %list, align 8
  call void @free_list2(%struct.linked_list_lli* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call15 = call i32 @gettimeofday(%struct.timeval* %post, %struct.timezone* null) #4
  %16 = load i32, i32* %outsize, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %16)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %in, i8* %buffer) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 150000, %struct._IO_FILE* %1)
  ret i64 %call
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
