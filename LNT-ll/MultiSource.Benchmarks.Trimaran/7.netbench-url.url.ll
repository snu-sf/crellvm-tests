; ModuleID = './MultiSource.Benchmarks.Trimaran/7.netbench-url.url.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._StrTreeNode = type { i32, i8*, i32, i32*, %struct._StrTreeNode*, %struct._PatternNode* }
%struct._PatternNode = type { i32, i32, i32, %struct._IO_FILE*, i8*, i32, i32, i32*, %struct.rtentry*, %struct._PatternNode* }
%struct.rtentry = type opaque

@.str = private unnamed_addr constant [93 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c\00", align 1
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: url inputfilename #numberofpackets\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"URL table initialized, reading packets... \0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"URL finished for %d packets\0A\00", align 1
@tree_head = common global %struct._StrTreeNode* null, align 8

; Function Attrs: nounwind uwtable
define i64 @internet_checksum(i16* %addr, i32 %count) #0 {
entry:
  %addr.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  store i16* %addr, i16** %addr.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i64 0, i64* %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i16*, i16** %addr.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %addr.addr, align 8
  %2 = load i16, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %neg = xor i32 %conv, -1
  %conv1 = sext i32 %neg to i64
  %3 = load i64, i64* %sum, align 8
  %add = add i64 %3, %conv1
  store i64 %add, i64* %sum, align 8
  %4 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %count.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %count.addr, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %6 = load i16*, i16** %addr.addr, align 8
  %7 = bitcast i16* %6 to i8*
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i64
  %9 = load i64, i64* %sum, align 8
  %add5 = add i64 %9, %conv4
  store i64 %add5, i64* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.7, %if.end
  %10 = load i64, i64* %sum, align 8
  %shr = lshr i64 %10, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %while.body.7, label %while.end.10

while.body.7:                                     ; preds = %while.cond.6
  %11 = load i64, i64* %sum, align 8
  %and = and i64 %11, 65535
  %12 = load i64, i64* %sum, align 8
  %shr8 = lshr i64 %12, 16
  %add9 = add i64 %and, %shr8
  store i64 %add9, i64* %sum, align 8
  br label %while.cond.6

while.end.10:                                     ; preds = %while.cond.6
  %13 = load i64, i64* %sum, align 8
  %shr11 = lshr i64 %13, 8
  %and12 = and i64 %shr11, 255
  %14 = load i64, i64* %sum, align 8
  %shl = shl i64 %14, 8
  %and13 = and i64 %shl, 65280
  %add14 = add i64 %and12, %and13
  store i64 %add14, i64* %sum, align 8
  %15 = load i64, i64* %sum, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %entry1 = alloca %struct.rtentry*, align 8
  %num_packets = alloca i32, align 4
  %i = alloca i32, align 4
  %packet = alloca i8*, align 8
  %original_checksum = alloca i64, align 8
  %checksum = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.main, i32 0, i32 0), i32 102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 2
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #6
  store i32 %call, i32* %num_packets, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx2, align 8
  call void @db_init(i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %num_packets, align 4
  %cmp4 = icmp ult i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %call5 = call i8* @get_next_packet(i32 %8)
  store i8* %call5, i8** %packet, align 8
  %9 = load i8*, i8** %packet, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 10
  %10 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %11 = load i8*, i8** %packet, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 11
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %add = add nsw i32 %shl, %conv8
  %conv9 = sext i32 %add to i64
  store i64 %conv9, i64* %original_checksum, align 8
  %13 = load i8*, i8** %packet, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 10
  store i8 0, i8* %arrayidx10, align 1
  %14 = load i8*, i8** %packet, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 11
  store i8 0, i8* %arrayidx11, align 1
  %15 = load i8*, i8** %packet, align 8
  %16 = bitcast i8* %15 to i16*
  %call12 = call i64 @internet_checksum(i16* %16, i32 20)
  %and = and i64 %call12, 65535
  store i64 %and, i64* %checksum, align 8
  %17 = load i8*, i8** %packet, align 8
  %18 = load i32, i32* %i, align 4
  %call13 = call i32 @packet_size(i32 %18)
  %call14 = call %struct.rtentry* @find_destination(i8* %17, i32 %call13)
  store %struct.rtentry* %call14, %struct.rtentry** %entry1, align 8
  %19 = load i8*, i8** %packet, align 8
  %20 = bitcast i8* %19 to i16*
  %call15 = call i64 @internet_checksum(i16* %20, i32 20)
  %and16 = and i64 %call15, 65535
  store i64 %and16, i64* %checksum, align 8
  %21 = load i64, i64* %checksum, align 8
  %and17 = and i64 %21, 65280
  %shr = ashr i64 %and17, 8
  %conv18 = trunc i64 %shr to i8
  %22 = load i8*, i8** %packet, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 10
  store i8 %conv18, i8* %arrayidx19, align 1
  %23 = load i64, i64* %checksum, align 8
  %and20 = and i64 %23, 255
  %conv21 = trunc i64 %and20 to i8
  %24 = load i8*, i8** %packet, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 11
  store i8 %conv21, i8* %arrayidx22, align 1
  %25 = load i8*, i8** %packet, align 8
  call void @free(i8* %25) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = load i32, i32* %num_packets, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %28)
  ret i32 0
}

; Function Attrs: noreturn
declare void @_fatal(i8*, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare void @db_init(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @get_next_packet(i32) #3

declare %struct.rtentry* @find_destination(i8*, i32) #3

declare i32 @packet_size(i32) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
