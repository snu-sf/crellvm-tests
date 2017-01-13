; ModuleID = './MultiSource.Benchmarks.Trimaran/3.netbench-crc.crc32.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@crc_table = internal global [256 x i64] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Usage: crc #numpackets\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CRC completed for %d packets \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"crc_accum is %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gen_crc_table() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %crc_accum = alloca i64, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %crc_accum, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 8
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %3 = load i64, i64* %crc_accum, align 8
  %and = and i64 %3, 2147483648
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %4 = load i64, i64* %crc_accum, align 8
  %shl5 = shl i64 %4, 1
  %xor = xor i64 %shl5, 79764919
  store i64 %xor, i64* %crc_accum, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.4
  %5 = load i64, i64* %crc_accum, align 8
  %shl6 = shl i64 %5, 1
  store i64 %shl6, i64* %crc_accum, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %7 = load i64, i64* %crc_accum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i32 0, i64 %idxprom
  store i64 %7, i64* %arrayidx, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @update_crc(i64 %crc_accum, i8* %data_blk_ptr, i32 %data_blk_size) #0 {
entry:
  %crc_accum.addr = alloca i64, align 8
  %data_blk_ptr.addr = alloca i8*, align 8
  %data_blk_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %crc_accum, i64* %crc_accum.addr, align 8
  store i8* %data_blk_ptr, i8** %data_blk_ptr.addr, align 8
  store i32 %data_blk_size, i32* %data_blk_size.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %data_blk_size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %crc_accum.addr, align 8
  %shr = lshr i64 %2, 24
  %conv = trunc i64 %shr to i32
  %3 = load i8*, i8** %data_blk_ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %data_blk_ptr.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %xor = xor i32 %conv, %conv1
  %and = and i32 %xor, 255
  store i32 %and, i32* %i, align 4
  %5 = load i64, i64* %crc_accum.addr, align 8
  %shl = shl i64 %5, 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i32 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %xor2 = xor i64 %shl, %7
  store i64 %xor2, i64* %crc_accum.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %crc_accum.addr, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %crc_accum = alloca i64, align 8
  %i = alloca i32, align 4
  %numpackets = alloca i32, align 4
  %packet = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #4
  unreachable

if.else:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %3) #5
  store i32 %call1, i32* %numpackets, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  call void @gen_crc_table()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %numpackets, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %i, align 4
  %call3 = call i8* (i32, ...) bitcast (i8* (...)* @get_next_packet to i8* (i32, ...)*)(i32 %6)
  store i8* %call3, i8** %packet, align 8
  %7 = load i8*, i8** %packet, align 8
  %8 = load i32, i32* %i, align 4
  %call4 = call i32 @packet_size(i32 %8)
  %call5 = call i64 @update_crc(i64 0, i8* %7, i32 %call4)
  store i64 %call5, i64* %crc_accum, align 8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load i32, i32* %numpackets, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = load i64, i64* %crc_accum, align 8
  %conv = trunc i64 %13 to i32
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %conv)
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i8* @get_next_packet(...) #1

declare i32 @packet_size(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
