; ModuleID = './MultiSource.Benchmarks.mediabench/63.g721.g721encode.encode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@pack_output.out_buffer = internal global i32 0, align 4
@pack_output.out_bits = internal global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"CCITT ADPCM Encoder -- usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\09encode [-3|4|5] [-a|u|l] < infile > outfile\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"where:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\09-3\09Generate G.723 24kbps (3-bit) data\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09-4\09Generate G.721 32kbps (4-bit) data [default]\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09-5\09Generate G.723 40kbps (5-bit) data\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09-a\09Process 8-bit A-law input data\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09-u\09Process 8-bit u-law input data [default]\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\09-l\09Process 16-bit linear PCM input data\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @pack_output(i32 %code, i32 %bits) #0 {
entry:
  %code.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %out_byte = alloca i8, align 1
  store i32 %code, i32* %code.addr, align 4
  store i32 %bits, i32* %bits.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* @pack_output.out_bits, align 4
  %shl = shl i32 %0, %1
  %2 = load i32, i32* @pack_output.out_buffer, align 4
  %or = or i32 %2, %shl
  store i32 %or, i32* @pack_output.out_buffer, align 4
  %3 = load i32, i32* %bits.addr, align 4
  %4 = load i32, i32* @pack_output.out_bits, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, i32* @pack_output.out_bits, align 4
  %5 = load i32, i32* @pack_output.out_bits, align 4
  %cmp = icmp sge i32 %5, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @pack_output.out_buffer, align 4
  %and = and i32 %6, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %out_byte, align 1
  %7 = load i32, i32* @pack_output.out_bits, align 4
  %sub = sub nsw i32 %7, 8
  store i32 %sub, i32* @pack_output.out_bits, align 4
  %8 = load i32, i32* @pack_output.out_buffer, align 4
  %shr = lshr i32 %8, 8
  store i32 %shr, i32* @pack_output.out_buffer, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i64 @fwrite(i8* %out_byte, i64 1, i64 1, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @pack_output.out_bits, align 4
  %cmp1 = icmp sgt i32 %10, 0
  %conv2 = zext i1 %cmp1 to i32
  ret i32 %conv2
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %state = alloca %struct.g72x_state, align 8
  %sample_char = alloca i8, align 1
  %sample_short = alloca i16, align 2
  %code = alloca i8, align 1
  %resid = alloca i32, align 4
  %in_coding = alloca i32, align 4
  %in_size = alloca i32, align 4
  %in_buf = alloca i32*, align 8
  %enc_routine = alloca i32 (...)*, align 8
  %enc_bits = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @g72x_init_state(%struct.g72x_state* %state)
  store i32 1, i32* %in_coding, align 4
  store i32 1, i32* %in_size, align 4
  %0 = bitcast i8* %sample_char to i32*
  store i32* %0, i32** %in_buf, align 8
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8
  store i32 4, i32* %enc_bits, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  switch i32 %conv6, label %sw.default [
    i32 51, label %sw.bb
    i32 52, label %sw.bb.7
    i32 53, label %sw.bb.8
    i32 117, label %sw.bb.9
    i32 97, label %sw.bb.10
    i32 108, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_24_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8
  store i32 3, i32* %enc_bits, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8
  store i32 4, i32* %enc_bits, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_40_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8
  store i32 5, i32* %enc_bits, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i32 1, i32* %in_coding, align 4
  store i32 1, i32* %in_size, align 4
  %9 = bitcast i8* %sample_char to i32*
  store i32* %9, i32** %in_buf, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 2, i32* %in_coding, align 4
  store i32 1, i32* %in_size, align 4
  %10 = bitcast i8* %sample_char to i32*
  store i32* %10, i32** %in_buf, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  store i32 3, i32* %in_coding, align 4
  store i32 2, i32* %in_size, align 4
  %11 = bitcast i16* %sample_short to i32*
  store i32* %11, i32** %in_buf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  %21 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %argc.addr, align 4
  %22 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %cond.end, %while.end
  %23 = load i32*, i32** %in_buf, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %in_size, align 4
  %conv21 = sext i32 %25 to i64
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call22 = call i64 @fread(i8* %24, i64 %conv21, i64 1, %struct._IO_FILE* %26)
  %cmp23 = icmp eq i64 %call22, 1
  br i1 %cmp23, label %while.body.25, label %while.end.34

while.body.25:                                    ; preds = %while.cond.20
  %27 = load i32 (...)*, i32 (...)** %enc_routine, align 8
  %28 = load i32, i32* %in_size, align 4
  %cmp26 = icmp eq i32 %28, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.25
  %29 = load i16, i16* %sample_short, align 2
  %conv28 = sext i16 %29 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body.25
  %30 = load i8, i8* %sample_char, align 1
  %conv29 = zext i8 %30 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv28, %cond.true ], [ %conv29, %cond.false ]
  %31 = load i32, i32* %in_coding, align 4
  %callee.knr.cast = bitcast i32 (...)* %27 to i32 (i32, i32, %struct.g72x_state*, ...)*
  %call30 = call i32 (i32, i32, %struct.g72x_state*, ...) %callee.knr.cast(i32 %cond, i32 %31, %struct.g72x_state* %state)
  %conv31 = trunc i32 %call30 to i8
  store i8 %conv31, i8* %code, align 1
  %32 = load i8, i8* %code, align 1
  %conv32 = zext i8 %32 to i32
  %33 = load i32, i32* %enc_bits, align 4
  %call33 = call i32 @pack_output(i32 %conv32, i32 %33)
  store i32 %call33, i32* %resid, align 4
  br label %while.cond.20

while.end.34:                                     ; preds = %while.cond.20
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.36, %while.end.34
  %34 = load i32, i32* %resid, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %while.cond.35
  %35 = load i32, i32* %enc_bits, align 4
  %call37 = call i32 @pack_output(i32 0, i32 %35)
  store i32 %call37, i32* %resid, align 4
  br label %while.cond.35

while.end.38:                                     ; preds = %while.cond.35
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %36)
  ret i32 0
}

declare void @g72x_init_state(%struct.g72x_state*) #1

declare i32 @g721_encoder(i32, i32, %struct.g72x_state*) #1

declare i32 @g723_24_encoder(i32, i32, %struct.g72x_state*) #1

declare i32 @g723_40_encoder(i32, i32, %struct.g72x_state*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
