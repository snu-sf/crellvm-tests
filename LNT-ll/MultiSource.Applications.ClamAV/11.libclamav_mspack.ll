; ModuleID = './MultiSource.Applications.ClamAV/11.libclamav_mspack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mszip_stream = type { i32, i32, i8, i32, i32 (%struct.mszip_stream*, i32)*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, [288 x i8], [32 x i8], [1152 x i16], [128 x i16], [32768 x i8], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.cab_file = type { i32, i16, i64, i8*, i32, i32, i32, %struct.cab_folder*, %struct.cab_file*, %struct.cab_archive*, %struct.cab_state* }
%struct.cab_folder = type { i16, i16, %struct.cab_archive*, i64, %struct.cab_folder* }
%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, %struct.cab_folder*, %struct.cab_file* }
%struct.cab_state = type { i8*, i8*, [38912 x i8], i16, i16, i8*, i16 }
%struct.lzx_stream = type { i32, i32, i8, i64, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, [84 x i8], [720 x i8], [314 x i8], [72 x i8], [104 x i16], [5408 x i16], [4596 x i16], [144 x i16], [51 x i32], [51 x i8], [32768 x i8], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.qtm_stream = type { i32, i32, i8, i8*, i32, i32, i32, i16, i16, i16, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8, [42 x i32], [42 x i8], [27 x i8], [27 x i8], %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [25 x %struct.qtm_modelsym], [37 x %struct.qtm_modelsym], [43 x %struct.qtm_modelsym], [28 x %struct.qtm_modelsym], [8 x %struct.qtm_modelsym], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.qtm_model = type { i32, i32, %struct.qtm_modelsym* }
%struct.qtm_modelsym = type { i16, i16 }

@.str = private unnamed_addr constant [36 x i8] c"mszip_decompress: inflate error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"mszip_decompress: MSZIP error, %u bytes of data lost\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mszip_decompress: bytes left to output\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"lzx_decompress: %d bytes remaining at reset interval\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"lzx: failed to build %s table\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"MAINTREE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"LENGTH\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"lzx_decompress: bad block type (0x%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"lzx: out of bits in huffman decode\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"lzx: index out of table\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"lzx_decompress: match ran over window wrap\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"lzx_decompress: match offset beyond window boundaries\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"lzx_decompress: overrun went past end of block by %d (%d remaining)\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"lzx_decompress: decode beyond output frame limits! %d != %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"lzx_decompress: %d avail bytes, new %d frame\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"lzx_decompress: bytes left to output\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"qtm_decompress: match offset beyond window boundaries\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"qtm_decompress: overshot frame alignment\0A\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"mszip_flush_window: overflow: %u bytes flushed, total is now %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"mszip_read_input: out of input bytes\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"zip_inflate: out of bits in huffman decode\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"zip_inflate: index out of table\0A\00", align 1
@mszip_lit_extrabits = internal constant [29 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00", align 16
@mszip_bit_mask_tab = internal constant [17 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767, i16 -1], align 16
@mszip_lit_lengths = internal constant [29 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258], align 16
@mszip_dist_extrabits = internal constant [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D", align 16
@mszip_dist_offsets = internal constant [30 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577], align 16
@mszip_bitlen_order = internal constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@.str.23 = private unnamed_addr constant [30 x i8] c"zip_read_lens: bad code!: %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"lzx_read_input: out of input bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"PRETREE\00", align 1

; Function Attrs: nounwind uwtable
define %struct.mszip_stream* @mszip_init(i32 %fd, i32 %ofd, i32 %input_buffer_size, i32 %repair_mode, %struct.cab_file* %file, i32 (%struct.cab_file*, i8*, i32)* %read) #0 {
entry:
  %retval = alloca %struct.mszip_stream*, align 8
  %fd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %input_buffer_size.addr = alloca i32, align 4
  %repair_mode.addr = alloca i32, align 4
  %file.addr = alloca %struct.cab_file*, align 8
  %read.addr = alloca i32 (%struct.cab_file*, i8*, i32)*, align 8
  %zip = alloca %struct.mszip_stream*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i32 %input_buffer_size, i32* %input_buffer_size.addr, align 4
  store i32 %repair_mode, i32* %repair_mode.addr, align 4
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i32 (%struct.cab_file*, i8*, i32)* %read, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %0 = load i32, i32* %input_buffer_size.addr, align 4
  %add = add nsw i32 %0, 1
  %and = and i32 %add, -2
  store i32 %and, i32* %input_buffer_size.addr, align 4
  %1 = load i32, i32* %input_buffer_size.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.mszip_stream* null, %struct.mszip_stream** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @cli_malloc(i64 35760)
  %2 = bitcast i8* %call to %struct.mszip_stream*
  store %struct.mszip_stream* %2, %struct.mszip_stream** %zip, align 8
  %tobool1 = icmp ne %struct.mszip_stream* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.mszip_stream* null, %struct.mszip_stream** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %input_buffer_size.addr, align 4
  %conv = sext i32 %3 to i64
  %call4 = call i8* @cli_malloc(i64 %conv)
  %4 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %inbuf = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %4, i32 0, i32 9
  store i8* %call4, i8** %inbuf, align 8
  %5 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %inbuf5 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %5, i32 0, i32 9
  %6 = load i8*, i8** %inbuf5, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %7 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %8 = bitcast %struct.mszip_stream* %7 to i8*
  call void @free(i8* %8) #3
  store %struct.mszip_stream* null, %struct.mszip_stream** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %fd9 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %10, i32 0, i32 0
  store i32 %9, i32* %fd9, align 4
  %11 = load i32, i32* %ofd.addr, align 4
  %12 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %ofd10 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %12, i32 0, i32 1
  store i32 %11, i32* %ofd10, align 4
  %13 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %wflag = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %13, i32 0, i32 2
  store i8 1, i8* %wflag, align 1
  %14 = load i32, i32* %input_buffer_size.addr, align 4
  %15 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %inbuf_size = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %15, i32 0, i32 16
  store i32 %14, i32* %inbuf_size, align 4
  %16 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %error = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %16, i32 0, i32 5
  store i32 0, i32* %error, align 4
  %17 = load i32, i32* %repair_mode.addr, align 4
  %18 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %repair_mode11 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %18, i32 0, i32 6
  store i32 %17, i32* %repair_mode11, align 4
  %19 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %flush_window = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %19, i32 0, i32 4
  store i32 (%struct.mszip_stream*, i32)* @mszip_flush_window, i32 (%struct.mszip_stream*, i32)** %flush_window, align 8
  %20 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %input_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %20, i32 0, i32 8
  store i32 0, i32* %input_end, align 4
  %21 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %inbuf12 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %21, i32 0, i32 9
  %22 = load i8*, i8** %inbuf12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %i_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %23, i32 0, i32 11
  store i8* %arrayidx, i8** %i_end, align 8
  %24 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %i_ptr = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %24, i32 0, i32 10
  store i8* %arrayidx, i8** %i_ptr, align 8
  %25 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %o_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %25, i32 0, i32 13
  store i8* null, i8** %o_end, align 8
  %26 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %o_ptr = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %26, i32 0, i32 12
  store i8* null, i8** %o_ptr, align 8
  %27 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %bit_buffer = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %27, i32 0, i32 14
  store i32 0, i32* %bit_buffer, align 4
  %28 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %bits_left = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %28, i32 0, i32 15
  store i32 0, i32* %bits_left, align 4
  %29 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %30 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %file13 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %30, i32 0, i32 22
  store %struct.cab_file* %29, %struct.cab_file** %file13, align 8
  %31 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %32 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  %read14 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %32, i32 0, i32 23
  store i32 (%struct.cab_file*, i8*, i32)* %31, i32 (%struct.cab_file*, i8*, i32)** %read14, align 8
  %33 = load %struct.mszip_stream*, %struct.mszip_stream** %zip, align 8
  store %struct.mszip_stream* %33, %struct.mszip_stream** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.2, %if.then
  %34 = load %struct.mszip_stream*, %struct.mszip_stream** %retval
  ret %struct.mszip_stream* %34
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mszip_flush_window(%struct.mszip_stream* %zip, i32 %data_flushed) #0 {
entry:
  %retval = alloca i32, align 4
  %zip.addr = alloca %struct.mszip_stream*, align 8
  %data_flushed.addr = alloca i32, align 4
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  store i32 %data_flushed, i32* %data_flushed.addr, align 4
  %0 = load i32, i32* %data_flushed.addr, align 4
  %1 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %1, i32 0, i32 7
  %2 = load i32, i32* %bytes_output, align 4
  %add = add i32 %2, %0
  store i32 %add, i32* %bytes_output, align 4
  %3 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output1 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %3, i32 0, i32 7
  %4 = load i32, i32* %bytes_output1, align 4
  %cmp = icmp sgt i32 %4, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %data_flushed.addr, align 4
  %6 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output2 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %6, i32 0, i32 7
  %7 = load i32, i32* %bytes_output2, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i32 %5, i32 %7)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @mszip_decompress(%struct.mszip_stream* %zip, i64 %out_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %zip.addr = alloca %struct.mszip_stream*, align 8
  %out_bytes.addr = alloca i64, align 8
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %i = alloca i32, align 4
  %state = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  store i64 %out_bytes, i64* %out_bytes.addr, align 8
  %0 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %tobool = icmp ne %struct.mszip_stream* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %out_bytes.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error1 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %2, i32 0, i32 5
  %3 = load i32, i32* %error1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error4 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %4, i32 0, i32 5
  %5 = load i32, i32* %error4, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %6, i32 0, i32 13
  %7 = load i8*, i8** %o_end, align 8
  %8 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %8, i32 0, i32 12
  %9 = load i8*, i8** %o_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load i64, i64* %out_bytes.addr, align 8
  %cmp7 = icmp sgt i64 %conv6, %11
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %12 = load i64, i64* %out_bytes.addr, align 8
  %conv10 = trunc i64 %12 to i32
  store i32 %conv10, i32* %i, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.5
  %13 = load i32, i32* %i, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.end.11
  %14 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %wflag = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %14, i32 0, i32 2
  %15 = load i8, i8* %wflag, align 1
  %conv14 = zext i8 %15 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.13
  %16 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %ofd = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %16, i32 0, i32 1
  %17 = load i32, i32* %ofd, align 4
  %18 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr16 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %18, i32 0, i32 12
  %19 = load i8*, i8** %o_ptr16, align 8
  %20 = load i32, i32* %i, align 4
  %call = call i32 @cli_writen(i32 %17, i8* %19, i32 %20)
  %21 = load i32, i32* %i, align 4
  %cmp17 = icmp ne i32 %call, %21
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  %22 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error20 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %22, i32 0, i32 5
  store i32 -123, i32* %error20, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.then.13
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr22 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %24, i32 0, i32 12
  %25 = load i8*, i8** %o_ptr22, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %o_ptr22, align 8
  %26 = load i32, i32* %i, align 4
  %conv23 = sext i32 %26 to i64
  %27 = load i64, i64* %out_bytes.addr, align 8
  %sub = sub nsw i64 %27, %conv23
  store i64 %sub, i64* %out_bytes.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.end.11
  %28 = load i64, i64* %out_bytes.addr, align 8
  %cmp25 = icmp eq i64 %28, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  br label %while.cond

while.cond:                                       ; preds = %if.end.135, %if.end.28
  %29 = load i64, i64* %out_bytes.addr, align 8
  %cmp29 = icmp sgt i64 %29, 0
  br i1 %cmp29, label %while.body, label %while.end.141

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %30 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr31 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %30, i32 0, i32 10
  %31 = load i8*, i8** %i_ptr31, align 8
  store i8* %31, i8** %i_ptr, align 8
  %32 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end32 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %32, i32 0, i32 11
  %33 = load i8*, i8** %i_end32, align 8
  store i8* %33, i8** %i_end, align 8
  %34 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer33 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %34, i32 0, i32 14
  %35 = load i32, i32* %bit_buffer33, align 4
  store i32 %35, i32* %bit_buffer, align 4
  %36 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left34 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %36, i32 0, i32 15
  %37 = load i32, i32* %bits_left34, align 4
  store i32 %37, i32* %bits_left, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %38 = load i32, i32* %bits_left, align 4
  %and = and i32 %38, 7
  store i32 %and, i32* %i, align 4
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %bit_buffer, align 4
  %shr = lshr i32 %40, %39
  store i32 %shr, i32* %bit_buffer, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %bits_left, align 4
  %sub35 = sub nsw i32 %42, %41
  store i32 %sub35, i32* %bits_left, align 4
  store i32 0, i32* %state, align 4
  br label %do.body.36

do.body.36:                                       ; preds = %do.cond, %do.end
  br label %do.body.37

do.body.37:                                       ; preds = %do.body.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.37
  br label %while.cond.39

while.cond.39:                                    ; preds = %if.end.53, %do.body.38
  %43 = load i32, i32* %bits_left, align 4
  %cmp40 = icmp slt i32 %43, 8
  br i1 %cmp40, label %while.body.42, label %while.end

while.body.42:                                    ; preds = %while.cond.39
  %44 = load i8*, i8** %i_ptr, align 8
  %45 = load i8*, i8** %i_end, align 8
  %cmp43 = icmp uge i8* %44, %45
  br i1 %cmp43, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %while.body.42
  %46 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call46 = call i32 @mszip_read_input(%struct.mszip_stream* %46)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.45
  %47 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error49 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %47, i32 0, i32 5
  %48 = load i32, i32* %error49, align 4
  store i32 %48, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.45
  %49 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr51 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %49, i32 0, i32 10
  %50 = load i8*, i8** %i_ptr51, align 8
  store i8* %50, i8** %i_ptr, align 8
  %51 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end52 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %51, i32 0, i32 11
  %52 = load i8*, i8** %i_end52, align 8
  store i8* %52, i8** %i_end, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.50, %while.body.42
  %53 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %i_ptr, align 8
  %54 = load i8, i8* %53, align 1
  %conv54 = zext i8 %54 to i32
  %55 = load i32, i32* %bits_left, align 4
  %shl = shl i32 %conv54, %55
  %56 = load i32, i32* %bit_buffer, align 4
  %or = or i32 %56, %shl
  store i32 %or, i32* %bit_buffer, align 4
  %57 = load i32, i32* %bits_left, align 4
  %add = add nsw i32 %57, 8
  store i32 %add, i32* %bits_left, align 4
  br label %while.cond.39

while.end:                                        ; preds = %while.cond.39
  br label %do.end.55

do.end.55:                                        ; preds = %while.end
  %58 = load i32, i32* %bit_buffer, align 4
  %and56 = and i32 %58, 255
  store i32 %and56, i32* %i, align 4
  %59 = load i32, i32* %bit_buffer, align 4
  %shr57 = lshr i32 %59, 8
  store i32 %shr57, i32* %bit_buffer, align 4
  %60 = load i32, i32* %bits_left, align 4
  %sub58 = sub nsw i32 %60, 8
  store i32 %sub58, i32* %bits_left, align 4
  br label %do.end.59

do.end.59:                                        ; preds = %do.end.55
  %61 = load i32, i32* %i, align 4
  %cmp60 = icmp eq i32 %61, 67
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %do.end.59
  store i32 1, i32* %state, align 4
  br label %if.end.71

if.else:                                          ; preds = %do.end.59
  %62 = load i32, i32* %state, align 4
  %cmp63 = icmp eq i32 %62, 1
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.69

land.lhs.true.65:                                 ; preds = %if.else
  %63 = load i32, i32* %i, align 4
  %cmp66 = icmp eq i32 %63, 75
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.65
  store i32 2, i32* %state, align 4
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true.65, %if.else
  store i32 0, i32* %state, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.62
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  %64 = load i32, i32* %state, align 4
  %cmp72 = icmp ne i32 %64, 2
  br i1 %cmp72, label %do.body.36, label %do.end.74

do.end.74:                                        ; preds = %do.cond
  %65 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %65, i32 0, i32 3
  store i32 0, i32* %window_posn, align 4
  %66 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %66, i32 0, i32 7
  store i32 0, i32* %bytes_output, align 4
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %67 = load i8*, i8** %i_ptr, align 8
  %68 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr76 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %68, i32 0, i32 10
  store i8* %67, i8** %i_ptr76, align 8
  %69 = load i8*, i8** %i_end, align 8
  %70 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end77 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %70, i32 0, i32 11
  store i8* %69, i8** %i_end77, align 8
  %71 = load i32, i32* %bit_buffer, align 4
  %72 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer78 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %72, i32 0, i32 14
  store i32 %71, i32* %bit_buffer78, align 4
  %73 = load i32, i32* %bits_left, align 4
  %74 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left79 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %74, i32 0, i32 15
  store i32 %73, i32* %bits_left79, align 4
  br label %do.end.81

do.end.81:                                        ; preds = %do.body.75
  %75 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call82 = call i32 @mszip_inflate(%struct.mszip_stream* %75)
  store i32 %call82, i32* %error, align 4
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.98

if.then.84:                                       ; preds = %do.end.81
  %76 = load i32, i32* %error, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %76)
  %77 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %repair_mode = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %77, i32 0, i32 6
  %78 = load i32, i32* %repair_mode, align 4
  %tobool85 = icmp ne i32 %78, 0
  br i1 %tobool85, label %if.then.86, label %if.else.93

if.then.86:                                       ; preds = %if.then.84
  %79 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output87 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %79, i32 0, i32 7
  %80 = load i32, i32* %bytes_output87, align 4
  %sub88 = sub nsw i32 32768, %80
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 %sub88)
  %81 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output89 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %81, i32 0, i32 7
  %82 = load i32, i32* %bytes_output89, align 4
  store i32 %82, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.86
  %83 = load i32, i32* %i, align 4
  %cmp90 = icmp slt i32 %83, 32768
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %85, i32 0, i32 21
  %arrayidx = getelementptr inbounds [32768 x i8], [32768 x i8]* %window, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output92 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %87, i32 0, i32 7
  store i32 32768, i32* %bytes_output92, align 4
  br label %if.end.97

if.else.93:                                       ; preds = %if.then.84
  %88 = load i32, i32* %error, align 4
  %cmp94 = icmp sgt i32 %88, 0
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.93
  %89 = load i32, i32* %error, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %89, %cond.true ], [ -124, %cond.false ]
  %90 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error96 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %90, i32 0, i32 5
  store i32 %cond, i32* %error96, align 4
  store i32 %cond, i32* %retval
  br label %return

if.end.97:                                        ; preds = %for.end
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %do.end.81
  %91 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window99 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %91, i32 0, i32 21
  %arrayidx100 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window99, i32 0, i64 0
  %92 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr101 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %92, i32 0, i32 12
  store i8* %arrayidx100, i8** %o_ptr101, align 8
  %93 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output102 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %93, i32 0, i32 7
  %94 = load i32, i32* %bytes_output102, align 4
  %idxprom103 = sext i32 %94 to i64
  %95 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr104 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %95, i32 0, i32 12
  %96 = load i8*, i8** %o_ptr104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %96, i64 %idxprom103
  %97 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_end106 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %97, i32 0, i32 13
  store i8* %arrayidx105, i8** %o_end106, align 8
  %98 = load i64, i64* %out_bytes.addr, align 8
  %99 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output107 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %99, i32 0, i32 7
  %100 = load i32, i32* %bytes_output107, align 4
  %conv108 = sext i32 %100 to i64
  %cmp109 = icmp slt i64 %98, %conv108
  br i1 %cmp109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %if.end.98
  %101 = load i64, i64* %out_bytes.addr, align 8
  %conv112 = trunc i64 %101 to i32
  br label %cond.end.115

cond.false.113:                                   ; preds = %if.end.98
  %102 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bytes_output114 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %102, i32 0, i32 7
  %103 = load i32, i32* %bytes_output114, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.111
  %cond116 = phi i32 [ %conv112, %cond.true.111 ], [ %103, %cond.false.113 ]
  store i32 %cond116, i32* %i, align 4
  %104 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %wflag117 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %104, i32 0, i32 2
  %105 = load i8, i8* %wflag117, align 1
  %conv118 = zext i8 %105 to i32
  %tobool119 = icmp ne i32 %conv118, 0
  br i1 %tobool119, label %land.lhs.true.120, label %if.end.128

land.lhs.true.120:                                ; preds = %cond.end.115
  %106 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %ofd121 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %106, i32 0, i32 1
  %107 = load i32, i32* %ofd121, align 4
  %108 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr122 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %108, i32 0, i32 12
  %109 = load i8*, i8** %o_ptr122, align 8
  %110 = load i32, i32* %i, align 4
  %call123 = call i32 @cli_writen(i32 %107, i8* %109, i32 %110)
  %111 = load i32, i32* %i, align 4
  %cmp124 = icmp ne i32 %call123, %111
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %land.lhs.true.120
  %112 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error127 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %112, i32 0, i32 5
  store i32 -123, i32* %error127, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.128:                                       ; preds = %land.lhs.true.120, %cond.end.115
  %113 = load i32, i32* %error, align 4
  %cmp129 = icmp sgt i32 %113, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.135

land.lhs.true.131:                                ; preds = %if.end.128
  %114 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %repair_mode132 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %114, i32 0, i32 6
  %115 = load i32, i32* %repair_mode132, align 4
  %tobool133 = icmp ne i32 %115, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %land.lhs.true.131
  %116 = load i32, i32* %error, align 4
  store i32 %116, i32* %retval
  br label %return

if.end.135:                                       ; preds = %land.lhs.true.131, %if.end.128
  %117 = load i32, i32* %i, align 4
  %118 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %o_ptr136 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %118, i32 0, i32 12
  %119 = load i8*, i8** %o_ptr136, align 8
  %idx.ext137 = sext i32 %117 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %119, i64 %idx.ext137
  store i8* %add.ptr138, i8** %o_ptr136, align 8
  %120 = load i32, i32* %i, align 4
  %conv139 = sext i32 %120 to i64
  %121 = load i64, i64* %out_bytes.addr, align 8
  %sub140 = sub nsw i64 %121, %conv139
  store i64 %sub140, i64* %out_bytes.addr, align 8
  br label %while.cond

while.end.141:                                    ; preds = %while.cond
  %122 = load i64, i64* %out_bytes.addr, align 8
  %tobool142 = icmp ne i64 %122, 0
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %while.end.141
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  %123 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error144 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %123, i32 0, i32 5
  store i32 -124, i32* %error144, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.145:                                       ; preds = %while.end.141
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.145, %if.then.143, %if.then.134, %if.then.126, %cond.end, %if.then.48, %if.then.27, %if.then.19, %if.then.3, %if.then
  %124 = load i32, i32* %retval
  ret i32 %124
}

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @mszip_read_input(%struct.mszip_stream* %zip) #0 {
entry:
  %retval = alloca i32, align 4
  %zip.addr = alloca %struct.mszip_stream*, align 8
  %read = alloca i32, align 4
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  %0 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %read1 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %0, i32 0, i32 23
  %1 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read1, align 8
  %tobool = icmp ne i32 (%struct.cab_file*, i8*, i32)* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %read2 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %2, i32 0, i32 23
  %3 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read2, align 8
  %4 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %file = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %4, i32 0, i32 22
  %5 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %6 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %6, i32 0, i32 9
  %7 = load i8*, i8** %inbuf, align 8
  %8 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf_size = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %8, i32 0, i32 16
  %9 = load i32, i32* %inbuf_size, align 4
  %call = call i32 %3(%struct.cab_file* %5, i8* %7, i32 %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %fd = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %10, i32 0, i32 0
  %11 = load i32, i32* %fd, align 4
  %12 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf3 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %12, i32 0, i32 9
  %13 = load i8*, i8** %inbuf3, align 8
  %14 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf_size4 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %14, i32 0, i32 16
  %15 = load i32, i32* %inbuf_size4, align 4
  %call5 = call i32 @cli_readn(i32 %11, i8* %13, i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %read, align 4
  %16 = load i32, i32* %read, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %17 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %17, i32 0, i32 5
  store i32 -123, i32* %error, align 4
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %18 = load i32, i32* %read, align 4
  %cmp6 = icmp eq i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %input_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %19, i32 0, i32 8
  %20 = load i32, i32* %input_end, align 4
  %tobool8 = icmp ne i32 %20, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0))
  %21 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error10 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %21, i32 0, i32 5
  store i32 -123, i32* %error10, align 4
  store i32 -123, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  store i32 1, i32* %read, align 4
  %22 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf11 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %22, i32 0, i32 9
  %23 = load i8*, i8** %inbuf11, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %arrayidx, align 1
  %24 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %input_end12 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %24, i32 0, i32 8
  store i32 1, i32* %input_end12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %25 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf15 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %25, i32 0, i32 9
  %26 = load i8*, i8** %inbuf15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %27, i32 0, i32 10
  store i8* %arrayidx16, i8** %i_ptr, align 8
  %28 = load i32, i32* %read, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf17 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %29, i32 0, i32 9
  %30 = load i8*, i8** %inbuf17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 %idxprom
  %31 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %31, i32 0, i32 11
  store i8* %arrayidx18, i8** %i_end, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.9, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @mszip_inflate(%struct.mszip_stream* %zip) #0 {
entry:
  %retval = alloca i32, align 4
  %zip.addr = alloca %struct.mszip_stream*, align 8
  %last_block = alloca i32, align 4
  %block_type = alloca i32, align 4
  %distance = alloca i32, align 4
  %length = alloca i32, align 4
  %this_run = alloca i32, align 4
  %i = alloca i32, align 4
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %sym = alloca i16, align 2
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %lens_buf = alloca [4 x i8], align 1
  %window_posn154 = alloca i32, align 4
  %match_posn = alloca i32, align 4
  %code = alloca i32, align 4
  %runsrc = alloca i8*, align 8
  %rundest = alloca i8*, align 8
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr1 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %0, i32 0, i32 10
  %1 = load i8*, i8** %i_ptr1, align 8
  store i8* %1, i8** %i_ptr, align 8
  %2 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end2 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %2, i32 0, i32 11
  %3 = load i8*, i8** %i_end2, align 8
  store i8* %3, i8** %i_end, align 8
  %4 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer3 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %4, i32 0, i32 14
  %5 = load i32, i32* %bit_buffer3, align 4
  store i32 %5, i32* %bit_buffer, align 4
  %6 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left4 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %6, i32 0, i32 15
  %7 = load i32, i32* %bits_left4, align 4
  store i32 %7, i32* %bits_left, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %do.cond.582, %do.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %do.body.7
  %8 = load i32, i32* %bits_left, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %i_ptr, align 8
  %10 = load i8*, i8** %i_end, align 8
  %cmp8 = icmp uge i8* %9, %10
  br i1 %cmp8, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %11 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call = call i32 @mszip_read_input(%struct.mszip_stream* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %12, i32 0, i32 5
  %13 = load i32, i32* %error, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr10 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %14, i32 0, i32 10
  %15 = load i8*, i8** %i_ptr10, align 8
  store i8* %15, i8** %i_ptr, align 8
  %16 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end11 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %16, i32 0, i32 11
  %17 = load i8*, i8** %i_end11, align 8
  store i8* %17, i8** %i_end, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %while.body
  %18 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %i_ptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* %bits_left, align 4
  %shl = shl i32 %conv, %20
  %21 = load i32, i32* %bit_buffer, align 4
  %or = or i32 %21, %shl
  store i32 %or, i32* %bit_buffer, align 4
  %22 = load i32, i32* %bits_left, align 4
  %add = add nsw i32 %22, 8
  store i32 %add, i32* %bits_left, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end.13

do.end.13:                                        ; preds = %while.end
  %23 = load i32, i32* %bit_buffer, align 4
  %and = and i32 %23, 1
  store i32 %and, i32* %last_block, align 4
  %24 = load i32, i32* %bit_buffer, align 4
  %shr = lshr i32 %24, 1
  store i32 %shr, i32* %bit_buffer, align 4
  %25 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %25, 1
  store i32 %sub, i32* %bits_left, align 4
  br label %do.end.14

do.end.14:                                        ; preds = %do.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.31, %do.body.16
  %26 = load i32, i32* %bits_left, align 4
  %cmp18 = icmp slt i32 %26, 2
  br i1 %cmp18, label %while.body.20, label %while.end.37

while.body.20:                                    ; preds = %while.cond.17
  %27 = load i8*, i8** %i_ptr, align 8
  %28 = load i8*, i8** %i_end, align 8
  %cmp21 = icmp uge i8* %27, %28
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %while.body.20
  %29 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call24 = call i32 @mszip_read_input(%struct.mszip_stream* %29)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %30 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error27 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %30, i32 0, i32 5
  %31 = load i32, i32* %error27, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.23
  %32 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr29 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %32, i32 0, i32 10
  %33 = load i8*, i8** %i_ptr29, align 8
  store i8* %33, i8** %i_ptr, align 8
  %34 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end30 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %34, i32 0, i32 11
  %35 = load i8*, i8** %i_end30, align 8
  store i8* %35, i8** %i_end, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %while.body.20
  %36 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr32, i8** %i_ptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv33 = zext i8 %37 to i32
  %38 = load i32, i32* %bits_left, align 4
  %shl34 = shl i32 %conv33, %38
  %39 = load i32, i32* %bit_buffer, align 4
  %or35 = or i32 %39, %shl34
  store i32 %or35, i32* %bit_buffer, align 4
  %40 = load i32, i32* %bits_left, align 4
  %add36 = add nsw i32 %40, 8
  store i32 %add36, i32* %bits_left, align 4
  br label %while.cond.17

while.end.37:                                     ; preds = %while.cond.17
  br label %do.end.38

do.end.38:                                        ; preds = %while.end.37
  %41 = load i32, i32* %bit_buffer, align 4
  %and39 = and i32 %41, 3
  store i32 %and39, i32* %block_type, align 4
  %42 = load i32, i32* %bit_buffer, align 4
  %shr40 = lshr i32 %42, 2
  store i32 %shr40, i32* %bit_buffer, align 4
  %43 = load i32, i32* %bits_left, align 4
  %sub41 = sub nsw i32 %43, 2
  store i32 %sub41, i32* %bits_left, align 4
  br label %do.end.42

do.end.42:                                        ; preds = %do.end.38
  %44 = load i32, i32* %block_type, align 4
  %cmp43 = icmp eq i32 %44, 0
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %do.end.42
  %45 = load i32, i32* %bits_left, align 4
  %and46 = and i32 %45, 7
  store i32 %and46, i32* %i, align 4
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %bit_buffer, align 4
  %shr47 = lshr i32 %47, %46
  store i32 %shr47, i32* %bit_buffer, align 4
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %bits_left, align 4
  %sub48 = sub i32 %49, %48
  store i32 %sub48, i32* %bits_left, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.45
  %50 = load i32, i32* %bits_left, align 4
  %cmp49 = icmp sge i32 %50, 8
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %cmp51 = icmp eq i32 %51, 4
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body
  store i32 -4, i32* %retval
  br label %return

if.end.54:                                        ; preds = %for.body
  %52 = load i32, i32* %bit_buffer, align 4
  %and55 = and i32 %52, 255
  %conv56 = trunc i32 %and55 to i8
  %53 = load i32, i32* %i, align 4
  %idxprom = zext i32 %53 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 %idxprom
  store i8 %conv56, i8* %arrayidx, align 1
  %54 = load i32, i32* %bit_buffer, align 4
  %shr57 = lshr i32 %54, 8
  store i32 %shr57, i32* %bit_buffer, align 4
  %55 = load i32, i32* %bits_left, align 4
  %sub58 = sub nsw i32 %55, 8
  store i32 %sub58, i32* %bits_left, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %56 = load i32, i32* %i, align 4
  %inc = add i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %bits_left, align 4
  %cmp59 = icmp ne i32 %57, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.end
  store i32 -4, i32* %retval
  br label %return

if.end.62:                                        ; preds = %for.end
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.77, %if.end.62
  %58 = load i32, i32* %i, align 4
  %cmp64 = icmp ult i32 %58, 4
  br i1 %cmp64, label %while.body.66, label %while.end.82

while.body.66:                                    ; preds = %while.cond.63
  %59 = load i8*, i8** %i_ptr, align 8
  %60 = load i8*, i8** %i_end, align 8
  %cmp67 = icmp uge i8* %59, %60
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %while.body.66
  %61 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call70 = call i32 @mszip_read_input(%struct.mszip_stream* %61)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.69
  %62 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error73 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %62, i32 0, i32 5
  %63 = load i32, i32* %error73, align 4
  store i32 %63, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.69
  %64 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr75 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %64, i32 0, i32 10
  %65 = load i8*, i8** %i_ptr75, align 8
  store i8* %65, i8** %i_ptr, align 8
  %66 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end76 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %66, i32 0, i32 11
  %67 = load i8*, i8** %i_end76, align 8
  store i8* %67, i8** %i_end, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.74, %while.body.66
  %68 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr78, i8** %i_ptr, align 8
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %i, align 4
  %inc79 = add i32 %70, 1
  store i32 %inc79, i32* %i, align 4
  %idxprom80 = zext i32 %70 to i64
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 %idxprom80
  store i8 %69, i8* %arrayidx81, align 1
  br label %while.cond.63

while.end.82:                                     ; preds = %while.cond.63
  %arrayidx83 = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 0
  %71 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %71 to i32
  %arrayidx85 = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 1
  %72 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %shl87 = shl i32 %conv86, 8
  %or88 = or i32 %conv84, %shl87
  store i32 %or88, i32* %length, align 4
  %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 2
  %73 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %73 to i32
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %lens_buf, i32 0, i64 3
  %74 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %74 to i32
  %shl93 = shl i32 %conv92, 8
  %or94 = or i32 %conv90, %shl93
  store i32 %or94, i32* %i, align 4
  %75 = load i32, i32* %length, align 4
  %76 = load i32, i32* %i, align 4
  %neg = xor i32 %76, -1
  %and95 = and i32 %neg, 65535
  %cmp96 = icmp ne i32 %75, %and95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %while.end.82
  store i32 -2, i32* %retval
  br label %return

if.end.99:                                        ; preds = %while.end.82
  br label %while.cond.100

while.cond.100:                                   ; preds = %if.end.147, %if.end.99
  %77 = load i32, i32* %length, align 4
  %cmp101 = icmp ugt i32 %77, 0
  br i1 %cmp101, label %while.body.103, label %while.end.148

while.body.103:                                   ; preds = %while.cond.100
  %78 = load i8*, i8** %i_ptr, align 8
  %79 = load i8*, i8** %i_end, align 8
  %cmp104 = icmp uge i8* %78, %79
  br i1 %cmp104, label %if.then.106, label %if.end.114

if.then.106:                                      ; preds = %while.body.103
  %80 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call107 = call i32 @mszip_read_input(%struct.mszip_stream* %80)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.then.106
  %81 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error110 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %81, i32 0, i32 5
  %82 = load i32, i32* %error110, align 4
  store i32 %82, i32* %retval
  br label %return

if.end.111:                                       ; preds = %if.then.106
  %83 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr112 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %83, i32 0, i32 10
  %84 = load i8*, i8** %i_ptr112, align 8
  store i8* %84, i8** %i_ptr, align 8
  %85 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end113 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %85, i32 0, i32 11
  %86 = load i8*, i8** %i_end113, align 8
  store i8* %86, i8** %i_end, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.111, %while.body.103
  %87 = load i32, i32* %length, align 4
  store i32 %87, i32* %this_run, align 4
  %88 = load i32, i32* %this_run, align 4
  %89 = load i8*, i8** %i_end, align 8
  %90 = load i8*, i8** %i_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv115 = trunc i64 %sub.ptr.sub to i32
  %cmp116 = icmp ugt i32 %88, %conv115
  br i1 %cmp116, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %if.end.114
  %91 = load i8*, i8** %i_end, align 8
  %92 = load i8*, i8** %i_ptr, align 8
  %sub.ptr.lhs.cast119 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %92 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %conv122 = trunc i64 %sub.ptr.sub121 to i32
  store i32 %conv122, i32* %this_run, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.118, %if.end.114
  %93 = load i32, i32* %this_run, align 4
  %94 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %94, i32 0, i32 3
  %95 = load i32, i32* %window_posn, align 4
  %sub124 = sub i32 32768, %95
  %cmp125 = icmp ugt i32 %93, %sub124
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.end.123
  %96 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn128 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %96, i32 0, i32 3
  %97 = load i32, i32* %window_posn128, align 4
  %sub129 = sub i32 32768, %97
  store i32 %sub129, i32* %this_run, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.end.123
  %98 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn131 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %98, i32 0, i32 3
  %99 = load i32, i32* %window_posn131, align 4
  %idxprom132 = zext i32 %99 to i64
  %100 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %100, i32 0, i32 21
  %arrayidx133 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window, i32 0, i64 %idxprom132
  %101 = load i8*, i8** %i_ptr, align 8
  %102 = load i32, i32* %this_run, align 4
  %conv134 = zext i32 %102 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx133, i8* %101, i64 %conv134, i32 1, i1 false)
  %103 = load i32, i32* %this_run, align 4
  %104 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn135 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %104, i32 0, i32 3
  %105 = load i32, i32* %window_posn135, align 4
  %add136 = add i32 %105, %103
  store i32 %add136, i32* %window_posn135, align 4
  %106 = load i32, i32* %this_run, align 4
  %107 = load i8*, i8** %i_ptr, align 8
  %idx.ext = zext i32 %106 to i64
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 %idx.ext
  store i8* %add.ptr, i8** %i_ptr, align 8
  %108 = load i32, i32* %this_run, align 4
  %109 = load i32, i32* %length, align 4
  %sub137 = sub i32 %109, %108
  store i32 %sub137, i32* %length, align 4
  %110 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn138 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %110, i32 0, i32 3
  %111 = load i32, i32* %window_posn138, align 4
  %cmp139 = icmp eq i32 %111, 32768
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.130
  %112 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %flush_window = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %112, i32 0, i32 4
  %113 = load i32 (%struct.mszip_stream*, i32)*, i32 (%struct.mszip_stream*, i32)** %flush_window, align 8
  %114 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call142 = call i32 %113(%struct.mszip_stream* %114, i32 32768)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.then.141
  store i32 -3, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.141
  %115 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn146 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %115, i32 0, i32 3
  store i32 0, i32* %window_posn146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.145, %if.end.130
  br label %while.cond.100

while.end.148:                                    ; preds = %while.cond.100
  br label %if.end.581

if.else:                                          ; preds = %do.end.42
  %116 = load i32, i32* %block_type, align 4
  %cmp149 = icmp eq i32 %116, 1
  br i1 %cmp149, label %if.then.153, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %117 = load i32, i32* %block_type, align 4
  %cmp151 = icmp eq i32 %117, 2
  br i1 %cmp151, label %if.then.153, label %if.else.579

if.then.153:                                      ; preds = %lor.lhs.false, %if.else
  %118 = load i32, i32* %block_type, align 4
  %cmp155 = icmp eq i32 %118, 1
  br i1 %cmp155, label %if.then.157, label %if.else.202

if.then.157:                                      ; preds = %if.then.153
  store i32 0, i32* %i, align 4
  br label %while.cond.158

while.cond.158:                                   ; preds = %while.body.161, %if.then.157
  %119 = load i32, i32* %i, align 4
  %cmp159 = icmp ult i32 %119, 144
  br i1 %cmp159, label %while.body.161, label %while.end.165

while.body.161:                                   ; preds = %while.cond.158
  %120 = load i32, i32* %i, align 4
  %inc162 = add i32 %120, 1
  store i32 %inc162, i32* %i, align 4
  %idxprom163 = zext i32 %120 to i64
  %121 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %121, i32 0, i32 17
  %arrayidx164 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len, i32 0, i64 %idxprom163
  store i8 8, i8* %arrayidx164, align 1
  br label %while.cond.158

while.end.165:                                    ; preds = %while.cond.158
  br label %while.cond.166

while.cond.166:                                   ; preds = %while.body.169, %while.end.165
  %122 = load i32, i32* %i, align 4
  %cmp167 = icmp ult i32 %122, 256
  br i1 %cmp167, label %while.body.169, label %while.end.174

while.body.169:                                   ; preds = %while.cond.166
  %123 = load i32, i32* %i, align 4
  %inc170 = add i32 %123, 1
  store i32 %inc170, i32* %i, align 4
  %idxprom171 = zext i32 %123 to i64
  %124 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len172 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %124, i32 0, i32 17
  %arrayidx173 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len172, i32 0, i64 %idxprom171
  store i8 9, i8* %arrayidx173, align 1
  br label %while.cond.166

while.end.174:                                    ; preds = %while.cond.166
  br label %while.cond.175

while.cond.175:                                   ; preds = %while.body.178, %while.end.174
  %125 = load i32, i32* %i, align 4
  %cmp176 = icmp ult i32 %125, 280
  br i1 %cmp176, label %while.body.178, label %while.end.183

while.body.178:                                   ; preds = %while.cond.175
  %126 = load i32, i32* %i, align 4
  %inc179 = add i32 %126, 1
  store i32 %inc179, i32* %i, align 4
  %idxprom180 = zext i32 %126 to i64
  %127 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len181 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %127, i32 0, i32 17
  %arrayidx182 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len181, i32 0, i64 %idxprom180
  store i8 7, i8* %arrayidx182, align 1
  br label %while.cond.175

while.end.183:                                    ; preds = %while.cond.175
  br label %while.cond.184

while.cond.184:                                   ; preds = %while.body.187, %while.end.183
  %128 = load i32, i32* %i, align 4
  %cmp185 = icmp ult i32 %128, 288
  br i1 %cmp185, label %while.body.187, label %while.end.192

while.body.187:                                   ; preds = %while.cond.184
  %129 = load i32, i32* %i, align 4
  %inc188 = add i32 %129, 1
  store i32 %inc188, i32* %i, align 4
  %idxprom189 = zext i32 %129 to i64
  %130 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len190 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %130, i32 0, i32 17
  %arrayidx191 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len190, i32 0, i64 %idxprom189
  store i8 8, i8* %arrayidx191, align 1
  br label %while.cond.184

while.end.192:                                    ; preds = %while.cond.184
  store i32 0, i32* %i, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.199, %while.end.192
  %131 = load i32, i32* %i, align 4
  %cmp194 = icmp ult i32 %131, 32
  br i1 %cmp194, label %for.body.196, label %for.end.201

for.body.196:                                     ; preds = %for.cond.193
  %132 = load i32, i32* %i, align 4
  %idxprom197 = zext i32 %132 to i64
  %133 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_len = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %133, i32 0, i32 18
  %arrayidx198 = getelementptr inbounds [32 x i8], [32 x i8]* %DISTANCE_len, i32 0, i64 %idxprom197
  store i8 5, i8* %arrayidx198, align 1
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.196
  %134 = load i32, i32* %i, align 4
  %inc200 = add i32 %134, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.193

for.end.201:                                      ; preds = %for.cond.193
  br label %if.end.219

if.else.202:                                      ; preds = %if.then.153
  br label %do.body.203

do.body.203:                                      ; preds = %if.else.202
  %135 = load i8*, i8** %i_ptr, align 8
  %136 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr204 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %136, i32 0, i32 10
  store i8* %135, i8** %i_ptr204, align 8
  %137 = load i8*, i8** %i_end, align 8
  %138 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end205 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %138, i32 0, i32 11
  store i8* %137, i8** %i_end205, align 8
  %139 = load i32, i32* %bit_buffer, align 4
  %140 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer206 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %140, i32 0, i32 14
  store i32 %139, i32* %bit_buffer206, align 4
  %141 = load i32, i32* %bits_left, align 4
  %142 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left207 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %142, i32 0, i32 15
  store i32 %141, i32* %bits_left207, align 4
  br label %do.end.208

do.end.208:                                       ; preds = %do.body.203
  %143 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call209 = call i32 @mszip_read_lens(%struct.mszip_stream* %143)
  store i32 %call209, i32* %i, align 4
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %do.end.208
  %144 = load i32, i32* %i, align 4
  store i32 %144, i32* %retval
  br label %return

if.end.212:                                       ; preds = %do.end.208
  br label %do.body.213

do.body.213:                                      ; preds = %if.end.212
  %145 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr214 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %145, i32 0, i32 10
  %146 = load i8*, i8** %i_ptr214, align 8
  store i8* %146, i8** %i_ptr, align 8
  %147 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end215 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %147, i32 0, i32 11
  %148 = load i8*, i8** %i_end215, align 8
  store i8* %148, i8** %i_end, align 8
  %149 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer216 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %149, i32 0, i32 14
  %150 = load i32, i32* %bit_buffer216, align 4
  store i32 %150, i32* %bit_buffer, align 4
  %151 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left217 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %151, i32 0, i32 15
  %152 = load i32, i32* %bits_left217, align 4
  store i32 %152, i32* %bits_left, align 4
  br label %do.end.218

do.end.218:                                       ; preds = %do.body.213
  br label %if.end.219

if.end.219:                                       ; preds = %do.end.218, %for.end.201
  %153 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len220 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %153, i32 0, i32 17
  %arrayidx221 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len220, i32 0, i64 0
  %154 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_table = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %154, i32 0, i32 19
  %arrayidx222 = getelementptr inbounds [1152 x i16], [1152 x i16]* %LITERAL_table, i32 0, i64 0
  %call223 = call i32 @mszip_make_decode_table(i32 288, i32 9, i8* %arrayidx221, i16* %arrayidx222)
  %tobool224 = icmp ne i32 %call223, 0
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.219
  store i32 -7, i32* %retval
  br label %return

if.end.226:                                       ; preds = %if.end.219
  %155 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_len227 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %155, i32 0, i32 18
  %arrayidx228 = getelementptr inbounds [32 x i8], [32 x i8]* %DISTANCE_len227, i32 0, i64 0
  %156 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_table = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %156, i32 0, i32 20
  %arrayidx229 = getelementptr inbounds [128 x i16], [128 x i16]* %DISTANCE_table, i32 0, i64 0
  %call230 = call i32 @mszip_make_decode_table(i32 32, i32 6, i8* %arrayidx228, i16* %arrayidx229)
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.226
  store i32 -8, i32* %retval
  br label %return

if.end.233:                                       ; preds = %if.end.226
  %157 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn234 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %157, i32 0, i32 3
  %158 = load i32, i32* %window_posn234, align 4
  store i32 %158, i32* %window_posn154, align 4
  br label %while.body.236

while.body.236:                                   ; preds = %if.end.233, %if.end.576
  br label %do.body.237

do.body.237:                                      ; preds = %while.body.236
  br label %do.body.238

do.body.238:                                      ; preds = %do.body.237
  br label %while.cond.239

while.cond.239:                                   ; preds = %if.end.253, %do.body.238
  %159 = load i32, i32* %bits_left, align 4
  %cmp240 = icmp slt i32 %159, 16
  br i1 %cmp240, label %while.body.242, label %while.end.259

while.body.242:                                   ; preds = %while.cond.239
  %160 = load i8*, i8** %i_ptr, align 8
  %161 = load i8*, i8** %i_end, align 8
  %cmp243 = icmp uge i8* %160, %161
  br i1 %cmp243, label %if.then.245, label %if.end.253

if.then.245:                                      ; preds = %while.body.242
  %162 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call246 = call i32 @mszip_read_input(%struct.mszip_stream* %162)
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %if.then.245
  %163 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error249 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %163, i32 0, i32 5
  %164 = load i32, i32* %error249, align 4
  store i32 %164, i32* %retval
  br label %return

if.end.250:                                       ; preds = %if.then.245
  %165 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr251 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %165, i32 0, i32 10
  %166 = load i8*, i8** %i_ptr251, align 8
  store i8* %166, i8** %i_ptr, align 8
  %167 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end252 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %167, i32 0, i32 11
  %168 = load i8*, i8** %i_end252, align 8
  store i8* %168, i8** %i_end, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.250, %while.body.242
  %169 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr254 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr254, i8** %i_ptr, align 8
  %170 = load i8, i8* %169, align 1
  %conv255 = zext i8 %170 to i32
  %171 = load i32, i32* %bits_left, align 4
  %shl256 = shl i32 %conv255, %171
  %172 = load i32, i32* %bit_buffer, align 4
  %or257 = or i32 %172, %shl256
  store i32 %or257, i32* %bit_buffer, align 4
  %173 = load i32, i32* %bits_left, align 4
  %add258 = add nsw i32 %173, 8
  store i32 %add258, i32* %bits_left, align 4
  br label %while.cond.239

while.end.259:                                    ; preds = %while.cond.239
  br label %do.end.260

do.end.260:                                       ; preds = %while.end.259
  %174 = load i32, i32* %bit_buffer, align 4
  %and261 = and i32 %174, 511
  %idxprom262 = zext i32 %and261 to i64
  %175 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_table263 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %175, i32 0, i32 19
  %arrayidx264 = getelementptr inbounds [1152 x i16], [1152 x i16]* %LITERAL_table263, i32 0, i64 %idxprom262
  %176 = load i16, i16* %arrayidx264, align 2
  store i16 %176, i16* %sym, align 2
  %177 = load i16, i16* %sym, align 2
  %conv265 = zext i16 %177 to i32
  %cmp266 = icmp sge i32 %conv265, 288
  br i1 %cmp266, label %if.then.268, label %if.end.293

if.then.268:                                      ; preds = %do.end.260
  store i32 8, i32* %i, align 4
  br label %do.body.269

do.body.269:                                      ; preds = %do.cond, %if.then.268
  %178 = load i32, i32* %i, align 4
  %inc270 = add i32 %178, 1
  store i32 %inc270, i32* %i, align 4
  %cmp271 = icmp ugt i32 %178, 16
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %do.body.269
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0))
  store i32 -14, i32* %retval
  br label %return

if.end.274:                                       ; preds = %do.body.269
  %179 = load i16, i16* %sym, align 2
  %conv275 = zext i16 %179 to i32
  %shl276 = shl i32 %conv275, 1
  %180 = load i32, i32* %bit_buffer, align 4
  %181 = load i32, i32* %i, align 4
  %shr277 = lshr i32 %180, %181
  %and278 = and i32 %shr277, 1
  %or279 = or i32 %shl276, %and278
  %conv280 = trunc i32 %or279 to i16
  store i16 %conv280, i16* %sym, align 2
  %182 = load i16, i16* %sym, align 2
  %conv281 = zext i16 %182 to i32
  %cmp282 = icmp sge i32 %conv281, 1152
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.274
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0))
  store i32 -14, i32* %retval
  br label %return

if.end.285:                                       ; preds = %if.end.274
  %183 = load i16, i16* %sym, align 2
  %idxprom286 = zext i16 %183 to i64
  %184 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_table287 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %184, i32 0, i32 19
  %arrayidx288 = getelementptr inbounds [1152 x i16], [1152 x i16]* %LITERAL_table287, i32 0, i64 %idxprom286
  %185 = load i16, i16* %arrayidx288, align 2
  store i16 %185, i16* %sym, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.285
  %186 = load i16, i16* %sym, align 2
  %conv289 = zext i16 %186 to i32
  %cmp290 = icmp sge i32 %conv289, 288
  br i1 %cmp290, label %do.body.269, label %do.end.292

do.end.292:                                       ; preds = %do.cond
  br label %if.end.293

if.end.293:                                       ; preds = %do.end.292, %do.end.260
  %187 = load i16, i16* %sym, align 2
  %conv294 = zext i16 %187 to i32
  store i32 %conv294, i32* %code, align 4
  %188 = load i16, i16* %sym, align 2
  %idxprom295 = zext i16 %188 to i64
  %189 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len296 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %189, i32 0, i32 17
  %arrayidx297 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len296, i32 0, i64 %idxprom295
  %190 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %190 to i32
  store i32 %conv298, i32* %i, align 4
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %bit_buffer, align 4
  %shr299 = lshr i32 %192, %191
  store i32 %shr299, i32* %bit_buffer, align 4
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %bits_left, align 4
  %sub300 = sub i32 %194, %193
  store i32 %sub300, i32* %bits_left, align 4
  br label %do.end.302

do.end.302:                                       ; preds = %if.end.293
  %195 = load i32, i32* %code, align 4
  %cmp303 = icmp ult i32 %195, 256
  br i1 %cmp303, label %if.then.305, label %if.else.320

if.then.305:                                      ; preds = %do.end.302
  %196 = load i32, i32* %code, align 4
  %conv306 = trunc i32 %196 to i8
  %197 = load i32, i32* %window_posn154, align 4
  %inc307 = add i32 %197, 1
  store i32 %inc307, i32* %window_posn154, align 4
  %idxprom308 = zext i32 %197 to i64
  %198 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window309 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %198, i32 0, i32 21
  %arrayidx310 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window309, i32 0, i64 %idxprom308
  store i8 %conv306, i8* %arrayidx310, align 1
  %199 = load i32, i32* %window_posn154, align 4
  %cmp311 = icmp eq i32 %199, 32768
  br i1 %cmp311, label %if.then.313, label %if.end.319

if.then.313:                                      ; preds = %if.then.305
  %200 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %flush_window314 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %200, i32 0, i32 4
  %201 = load i32 (%struct.mszip_stream*, i32)*, i32 (%struct.mszip_stream*, i32)** %flush_window314, align 8
  %202 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call315 = call i32 %201(%struct.mszip_stream* %202, i32 32768)
  %tobool316 = icmp ne i32 %call315, 0
  br i1 %tobool316, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.then.313
  store i32 -3, i32* %retval
  br label %return

if.end.318:                                       ; preds = %if.then.313
  store i32 0, i32* %window_posn154, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.305
  br label %if.end.576

if.else.320:                                      ; preds = %do.end.302
  %203 = load i32, i32* %code, align 4
  %cmp321 = icmp eq i32 %203, 256
  br i1 %cmp321, label %if.then.323, label %if.else.324

if.then.323:                                      ; preds = %if.else.320
  br label %while.end.577

if.else.324:                                      ; preds = %if.else.320
  %204 = load i32, i32* %code, align 4
  %sub325 = sub i32 %204, 257
  store i32 %sub325, i32* %code, align 4
  %205 = load i32, i32* %code, align 4
  %cmp326 = icmp ugt i32 %205, 29
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.else.324
  store i32 -11, i32* %retval
  br label %return

if.end.329:                                       ; preds = %if.else.324
  br label %do.body.330

do.body.330:                                      ; preds = %if.end.329
  br label %do.body.331

do.body.331:                                      ; preds = %do.body.330
  br label %while.cond.332

while.cond.332:                                   ; preds = %if.end.349, %do.body.331
  %206 = load i32, i32* %bits_left, align 4
  %207 = load i32, i32* %code, align 4
  %idxprom333 = zext i32 %207 to i64
  %arrayidx334 = getelementptr inbounds [29 x i8], [29 x i8]* @mszip_lit_extrabits, i32 0, i64 %idxprom333
  %208 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %208 to i32
  %cmp336 = icmp slt i32 %206, %conv335
  br i1 %cmp336, label %while.body.338, label %while.end.355

while.body.338:                                   ; preds = %while.cond.332
  %209 = load i8*, i8** %i_ptr, align 8
  %210 = load i8*, i8** %i_end, align 8
  %cmp339 = icmp uge i8* %209, %210
  br i1 %cmp339, label %if.then.341, label %if.end.349

if.then.341:                                      ; preds = %while.body.338
  %211 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call342 = call i32 @mszip_read_input(%struct.mszip_stream* %211)
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.then.344, label %if.end.346

if.then.344:                                      ; preds = %if.then.341
  %212 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error345 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %212, i32 0, i32 5
  %213 = load i32, i32* %error345, align 4
  store i32 %213, i32* %retval
  br label %return

if.end.346:                                       ; preds = %if.then.341
  %214 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr347 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %214, i32 0, i32 10
  %215 = load i8*, i8** %i_ptr347, align 8
  store i8* %215, i8** %i_ptr, align 8
  %216 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end348 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %216, i32 0, i32 11
  %217 = load i8*, i8** %i_end348, align 8
  store i8* %217, i8** %i_end, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.346, %while.body.338
  %218 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr350, i8** %i_ptr, align 8
  %219 = load i8, i8* %218, align 1
  %conv351 = zext i8 %219 to i32
  %220 = load i32, i32* %bits_left, align 4
  %shl352 = shl i32 %conv351, %220
  %221 = load i32, i32* %bit_buffer, align 4
  %or353 = or i32 %221, %shl352
  store i32 %or353, i32* %bit_buffer, align 4
  %222 = load i32, i32* %bits_left, align 4
  %add354 = add nsw i32 %222, 8
  store i32 %add354, i32* %bits_left, align 4
  br label %while.cond.332

while.end.355:                                    ; preds = %while.cond.332
  br label %do.end.357

do.end.357:                                       ; preds = %while.end.355
  %223 = load i32, i32* %bit_buffer, align 4
  %224 = load i32, i32* %code, align 4
  %idxprom358 = zext i32 %224 to i64
  %arrayidx359 = getelementptr inbounds [29 x i8], [29 x i8]* @mszip_lit_extrabits, i32 0, i64 %idxprom358
  %225 = load i8, i8* %arrayidx359, align 1
  %idxprom360 = zext i8 %225 to i64
  %arrayidx361 = getelementptr inbounds [17 x i16], [17 x i16]* @mszip_bit_mask_tab, i32 0, i64 %idxprom360
  %226 = load i16, i16* %arrayidx361, align 2
  %conv362 = zext i16 %226 to i32
  %and363 = and i32 %223, %conv362
  store i32 %and363, i32* %length, align 4
  %227 = load i32, i32* %code, align 4
  %idxprom364 = zext i32 %227 to i64
  %arrayidx365 = getelementptr inbounds [29 x i8], [29 x i8]* @mszip_lit_extrabits, i32 0, i64 %idxprom364
  %228 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %228 to i32
  %229 = load i32, i32* %bit_buffer, align 4
  %shr367 = lshr i32 %229, %conv366
  store i32 %shr367, i32* %bit_buffer, align 4
  %230 = load i32, i32* %code, align 4
  %idxprom368 = zext i32 %230 to i64
  %arrayidx369 = getelementptr inbounds [29 x i8], [29 x i8]* @mszip_lit_extrabits, i32 0, i64 %idxprom368
  %231 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %231 to i32
  %232 = load i32, i32* %bits_left, align 4
  %sub371 = sub nsw i32 %232, %conv370
  store i32 %sub371, i32* %bits_left, align 4
  br label %do.end.373

do.end.373:                                       ; preds = %do.end.357
  %233 = load i32, i32* %code, align 4
  %idxprom374 = zext i32 %233 to i64
  %arrayidx375 = getelementptr inbounds [29 x i16], [29 x i16]* @mszip_lit_lengths, i32 0, i64 %idxprom374
  %234 = load i16, i16* %arrayidx375, align 2
  %conv376 = zext i16 %234 to i32
  %235 = load i32, i32* %length, align 4
  %add377 = add i32 %235, %conv376
  store i32 %add377, i32* %length, align 4
  br label %do.body.378

do.body.378:                                      ; preds = %do.end.373
  br label %do.body.379

do.body.379:                                      ; preds = %do.body.378
  br label %while.cond.380

while.cond.380:                                   ; preds = %if.end.394, %do.body.379
  %236 = load i32, i32* %bits_left, align 4
  %cmp381 = icmp slt i32 %236, 16
  br i1 %cmp381, label %while.body.383, label %while.end.400

while.body.383:                                   ; preds = %while.cond.380
  %237 = load i8*, i8** %i_ptr, align 8
  %238 = load i8*, i8** %i_end, align 8
  %cmp384 = icmp uge i8* %237, %238
  br i1 %cmp384, label %if.then.386, label %if.end.394

if.then.386:                                      ; preds = %while.body.383
  %239 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call387 = call i32 @mszip_read_input(%struct.mszip_stream* %239)
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %if.then.389, label %if.end.391

if.then.389:                                      ; preds = %if.then.386
  %240 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error390 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %240, i32 0, i32 5
  %241 = load i32, i32* %error390, align 4
  store i32 %241, i32* %retval
  br label %return

if.end.391:                                       ; preds = %if.then.386
  %242 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr392 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %242, i32 0, i32 10
  %243 = load i8*, i8** %i_ptr392, align 8
  store i8* %243, i8** %i_ptr, align 8
  %244 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end393 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %244, i32 0, i32 11
  %245 = load i8*, i8** %i_end393, align 8
  store i8* %245, i8** %i_end, align 8
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.391, %while.body.383
  %246 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr395 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr395, i8** %i_ptr, align 8
  %247 = load i8, i8* %246, align 1
  %conv396 = zext i8 %247 to i32
  %248 = load i32, i32* %bits_left, align 4
  %shl397 = shl i32 %conv396, %248
  %249 = load i32, i32* %bit_buffer, align 4
  %or398 = or i32 %249, %shl397
  store i32 %or398, i32* %bit_buffer, align 4
  %250 = load i32, i32* %bits_left, align 4
  %add399 = add nsw i32 %250, 8
  store i32 %add399, i32* %bits_left, align 4
  br label %while.cond.380

while.end.400:                                    ; preds = %while.cond.380
  br label %do.end.402

do.end.402:                                       ; preds = %while.end.400
  %251 = load i32, i32* %bit_buffer, align 4
  %and403 = and i32 %251, 63
  %idxprom404 = zext i32 %and403 to i64
  %252 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_table405 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %252, i32 0, i32 20
  %arrayidx406 = getelementptr inbounds [128 x i16], [128 x i16]* %DISTANCE_table405, i32 0, i64 %idxprom404
  %253 = load i16, i16* %arrayidx406, align 2
  store i16 %253, i16* %sym, align 2
  %254 = load i16, i16* %sym, align 2
  %conv407 = zext i16 %254 to i32
  %cmp408 = icmp sge i32 %conv407, 32
  br i1 %cmp408, label %if.then.410, label %if.end.436

if.then.410:                                      ; preds = %do.end.402
  store i32 5, i32* %i, align 4
  br label %do.body.411

do.body.411:                                      ; preds = %do.cond.431, %if.then.410
  %255 = load i32, i32* %i, align 4
  %inc412 = add i32 %255, 1
  store i32 %inc412, i32* %i, align 4
  %cmp413 = icmp ugt i32 %255, 16
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %do.body.411
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0))
  store i32 -14, i32* %retval
  br label %return

if.end.416:                                       ; preds = %do.body.411
  %256 = load i16, i16* %sym, align 2
  %conv417 = zext i16 %256 to i32
  %shl418 = shl i32 %conv417, 1
  %257 = load i32, i32* %bit_buffer, align 4
  %258 = load i32, i32* %i, align 4
  %shr419 = lshr i32 %257, %258
  %and420 = and i32 %shr419, 1
  %or421 = or i32 %shl418, %and420
  %conv422 = trunc i32 %or421 to i16
  store i16 %conv422, i16* %sym, align 2
  %259 = load i16, i16* %sym, align 2
  %conv423 = zext i16 %259 to i32
  %cmp424 = icmp sge i32 %conv423, 128
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.416
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0))
  store i32 -14, i32* %retval
  br label %return

if.end.427:                                       ; preds = %if.end.416
  %260 = load i16, i16* %sym, align 2
  %idxprom428 = zext i16 %260 to i64
  %261 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_table429 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %261, i32 0, i32 20
  %arrayidx430 = getelementptr inbounds [128 x i16], [128 x i16]* %DISTANCE_table429, i32 0, i64 %idxprom428
  %262 = load i16, i16* %arrayidx430, align 2
  store i16 %262, i16* %sym, align 2
  br label %do.cond.431

do.cond.431:                                      ; preds = %if.end.427
  %263 = load i16, i16* %sym, align 2
  %conv432 = zext i16 %263 to i32
  %cmp433 = icmp sge i32 %conv432, 32
  br i1 %cmp433, label %do.body.411, label %do.end.435

do.end.435:                                       ; preds = %do.cond.431
  br label %if.end.436

if.end.436:                                       ; preds = %do.end.435, %do.end.402
  %264 = load i16, i16* %sym, align 2
  %conv437 = zext i16 %264 to i32
  store i32 %conv437, i32* %code, align 4
  %265 = load i16, i16* %sym, align 2
  %idxprom438 = zext i16 %265 to i64
  %266 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_len439 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %266, i32 0, i32 18
  %arrayidx440 = getelementptr inbounds [32 x i8], [32 x i8]* %DISTANCE_len439, i32 0, i64 %idxprom438
  %267 = load i8, i8* %arrayidx440, align 1
  %conv441 = zext i8 %267 to i32
  store i32 %conv441, i32* %i, align 4
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* %bit_buffer, align 4
  %shr442 = lshr i32 %269, %268
  store i32 %shr442, i32* %bit_buffer, align 4
  %270 = load i32, i32* %i, align 4
  %271 = load i32, i32* %bits_left, align 4
  %sub443 = sub i32 %271, %270
  store i32 %sub443, i32* %bits_left, align 4
  br label %do.end.445

do.end.445:                                       ; preds = %if.end.436
  %272 = load i32, i32* %code, align 4
  %cmp446 = icmp ugt i32 %272, 30
  br i1 %cmp446, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %do.end.445
  store i32 -12, i32* %retval
  br label %return

if.end.449:                                       ; preds = %do.end.445
  br label %do.body.450

do.body.450:                                      ; preds = %if.end.449
  br label %do.body.451

do.body.451:                                      ; preds = %do.body.450
  br label %while.cond.452

while.cond.452:                                   ; preds = %if.end.469, %do.body.451
  %273 = load i32, i32* %bits_left, align 4
  %274 = load i32, i32* %code, align 4
  %idxprom453 = zext i32 %274 to i64
  %arrayidx454 = getelementptr inbounds [30 x i8], [30 x i8]* @mszip_dist_extrabits, i32 0, i64 %idxprom453
  %275 = load i8, i8* %arrayidx454, align 1
  %conv455 = zext i8 %275 to i32
  %cmp456 = icmp slt i32 %273, %conv455
  br i1 %cmp456, label %while.body.458, label %while.end.475

while.body.458:                                   ; preds = %while.cond.452
  %276 = load i8*, i8** %i_ptr, align 8
  %277 = load i8*, i8** %i_end, align 8
  %cmp459 = icmp uge i8* %276, %277
  br i1 %cmp459, label %if.then.461, label %if.end.469

if.then.461:                                      ; preds = %while.body.458
  %278 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call462 = call i32 @mszip_read_input(%struct.mszip_stream* %278)
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.then.464, label %if.end.466

if.then.464:                                      ; preds = %if.then.461
  %279 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error465 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %279, i32 0, i32 5
  %280 = load i32, i32* %error465, align 4
  store i32 %280, i32* %retval
  br label %return

if.end.466:                                       ; preds = %if.then.461
  %281 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr467 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %281, i32 0, i32 10
  %282 = load i8*, i8** %i_ptr467, align 8
  store i8* %282, i8** %i_ptr, align 8
  %283 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end468 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %283, i32 0, i32 11
  %284 = load i8*, i8** %i_end468, align 8
  store i8* %284, i8** %i_end, align 8
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.466, %while.body.458
  %285 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr470 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %incdec.ptr470, i8** %i_ptr, align 8
  %286 = load i8, i8* %285, align 1
  %conv471 = zext i8 %286 to i32
  %287 = load i32, i32* %bits_left, align 4
  %shl472 = shl i32 %conv471, %287
  %288 = load i32, i32* %bit_buffer, align 4
  %or473 = or i32 %288, %shl472
  store i32 %or473, i32* %bit_buffer, align 4
  %289 = load i32, i32* %bits_left, align 4
  %add474 = add nsw i32 %289, 8
  store i32 %add474, i32* %bits_left, align 4
  br label %while.cond.452

while.end.475:                                    ; preds = %while.cond.452
  br label %do.end.477

do.end.477:                                       ; preds = %while.end.475
  %290 = load i32, i32* %bit_buffer, align 4
  %291 = load i32, i32* %code, align 4
  %idxprom478 = zext i32 %291 to i64
  %arrayidx479 = getelementptr inbounds [30 x i8], [30 x i8]* @mszip_dist_extrabits, i32 0, i64 %idxprom478
  %292 = load i8, i8* %arrayidx479, align 1
  %idxprom480 = zext i8 %292 to i64
  %arrayidx481 = getelementptr inbounds [17 x i16], [17 x i16]* @mszip_bit_mask_tab, i32 0, i64 %idxprom480
  %293 = load i16, i16* %arrayidx481, align 2
  %conv482 = zext i16 %293 to i32
  %and483 = and i32 %290, %conv482
  store i32 %and483, i32* %distance, align 4
  %294 = load i32, i32* %code, align 4
  %idxprom484 = zext i32 %294 to i64
  %arrayidx485 = getelementptr inbounds [30 x i8], [30 x i8]* @mszip_dist_extrabits, i32 0, i64 %idxprom484
  %295 = load i8, i8* %arrayidx485, align 1
  %conv486 = zext i8 %295 to i32
  %296 = load i32, i32* %bit_buffer, align 4
  %shr487 = lshr i32 %296, %conv486
  store i32 %shr487, i32* %bit_buffer, align 4
  %297 = load i32, i32* %code, align 4
  %idxprom488 = zext i32 %297 to i64
  %arrayidx489 = getelementptr inbounds [30 x i8], [30 x i8]* @mszip_dist_extrabits, i32 0, i64 %idxprom488
  %298 = load i8, i8* %arrayidx489, align 1
  %conv490 = zext i8 %298 to i32
  %299 = load i32, i32* %bits_left, align 4
  %sub491 = sub nsw i32 %299, %conv490
  store i32 %sub491, i32* %bits_left, align 4
  br label %do.end.493

do.end.493:                                       ; preds = %do.end.477
  %300 = load i32, i32* %code, align 4
  %idxprom494 = zext i32 %300 to i64
  %arrayidx495 = getelementptr inbounds [30 x i16], [30 x i16]* @mszip_dist_offsets, i32 0, i64 %idxprom494
  %301 = load i16, i16* %arrayidx495, align 2
  %conv496 = zext i16 %301 to i32
  %302 = load i32, i32* %distance, align 4
  %add497 = add i32 %302, %conv496
  store i32 %add497, i32* %distance, align 4
  %303 = load i32, i32* %distance, align 4
  %304 = load i32, i32* %window_posn154, align 4
  %cmp498 = icmp ugt i32 %303, %304
  %cond = select i1 %cmp498, i32 32768, i32 0
  %305 = load i32, i32* %window_posn154, align 4
  %add500 = add i32 %cond, %305
  %306 = load i32, i32* %distance, align 4
  %sub501 = sub i32 %add500, %306
  store i32 %sub501, i32* %match_posn, align 4
  %307 = load i32, i32* %length, align 4
  %cmp502 = icmp ult i32 %307, 12
  br i1 %cmp502, label %if.then.504, label %if.else.527

if.then.504:                                      ; preds = %do.end.493
  br label %while.cond.505

while.cond.505:                                   ; preds = %if.end.525, %if.then.504
  %308 = load i32, i32* %length, align 4
  %dec = add i32 %308, -1
  store i32 %dec, i32* %length, align 4
  %tobool506 = icmp ne i32 %308, 0
  br i1 %tobool506, label %while.body.507, label %while.end.526

while.body.507:                                   ; preds = %while.cond.505
  %309 = load i32, i32* %match_posn, align 4
  %inc508 = add i32 %309, 1
  store i32 %inc508, i32* %match_posn, align 4
  %idxprom509 = zext i32 %309 to i64
  %310 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window510 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %310, i32 0, i32 21
  %arrayidx511 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window510, i32 0, i64 %idxprom509
  %311 = load i8, i8* %arrayidx511, align 1
  %312 = load i32, i32* %window_posn154, align 4
  %inc512 = add i32 %312, 1
  store i32 %inc512, i32* %window_posn154, align 4
  %idxprom513 = zext i32 %312 to i64
  %313 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window514 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %313, i32 0, i32 21
  %arrayidx515 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window514, i32 0, i64 %idxprom513
  store i8 %311, i8* %arrayidx515, align 1
  %314 = load i32, i32* %match_posn, align 4
  %and516 = and i32 %314, 32767
  store i32 %and516, i32* %match_posn, align 4
  %315 = load i32, i32* %window_posn154, align 4
  %cmp517 = icmp eq i32 %315, 32768
  br i1 %cmp517, label %if.then.519, label %if.end.525

if.then.519:                                      ; preds = %while.body.507
  %316 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %flush_window520 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %316, i32 0, i32 4
  %317 = load i32 (%struct.mszip_stream*, i32)*, i32 (%struct.mszip_stream*, i32)** %flush_window520, align 8
  %318 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call521 = call i32 %317(%struct.mszip_stream* %318, i32 32768)
  %tobool522 = icmp ne i32 %call521, 0
  br i1 %tobool522, label %if.then.523, label %if.end.524

if.then.523:                                      ; preds = %if.then.519
  store i32 -3, i32* %retval
  br label %return

if.end.524:                                       ; preds = %if.then.519
  store i32 0, i32* %window_posn154, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.end.524, %while.body.507
  br label %while.cond.505

while.end.526:                                    ; preds = %while.cond.505
  br label %if.end.574

if.else.527:                                      ; preds = %do.end.493
  br label %do.body.528

do.body.528:                                      ; preds = %do.cond.570, %if.else.527
  %319 = load i32, i32* %length, align 4
  store i32 %319, i32* %this_run, align 4
  %320 = load i32, i32* %match_posn, align 4
  %321 = load i32, i32* %this_run, align 4
  %add529 = add i32 %320, %321
  %cmp530 = icmp ugt i32 %add529, 32768
  br i1 %cmp530, label %if.then.532, label %if.end.534

if.then.532:                                      ; preds = %do.body.528
  %322 = load i32, i32* %match_posn, align 4
  %sub533 = sub i32 32768, %322
  store i32 %sub533, i32* %this_run, align 4
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.532, %do.body.528
  %323 = load i32, i32* %window_posn154, align 4
  %324 = load i32, i32* %this_run, align 4
  %add535 = add i32 %323, %324
  %cmp536 = icmp ugt i32 %add535, 32768
  br i1 %cmp536, label %if.then.538, label %if.end.540

if.then.538:                                      ; preds = %if.end.534
  %325 = load i32, i32* %window_posn154, align 4
  %sub539 = sub i32 32768, %325
  store i32 %sub539, i32* %this_run, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.538, %if.end.534
  %326 = load i32, i32* %window_posn154, align 4
  %idxprom541 = zext i32 %326 to i64
  %327 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window542 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %327, i32 0, i32 21
  %arrayidx543 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window542, i32 0, i64 %idxprom541
  store i8* %arrayidx543, i8** %rundest, align 8
  %328 = load i32, i32* %this_run, align 4
  %329 = load i32, i32* %window_posn154, align 4
  %add544 = add i32 %329, %328
  store i32 %add544, i32* %window_posn154, align 4
  %330 = load i32, i32* %match_posn, align 4
  %idxprom545 = zext i32 %330 to i64
  %331 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window546 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %331, i32 0, i32 21
  %arrayidx547 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window546, i32 0, i64 %idxprom545
  store i8* %arrayidx547, i8** %runsrc, align 8
  %332 = load i32, i32* %this_run, align 4
  %333 = load i32, i32* %match_posn, align 4
  %add548 = add i32 %333, %332
  store i32 %add548, i32* %match_posn, align 4
  %334 = load i32, i32* %this_run, align 4
  %335 = load i32, i32* %length, align 4
  %sub549 = sub i32 %335, %334
  store i32 %sub549, i32* %length, align 4
  br label %while.cond.550

while.cond.550:                                   ; preds = %while.body.553, %if.end.540
  %336 = load i32, i32* %this_run, align 4
  %dec551 = add i32 %336, -1
  store i32 %dec551, i32* %this_run, align 4
  %tobool552 = icmp ne i32 %336, 0
  br i1 %tobool552, label %while.body.553, label %while.end.556

while.body.553:                                   ; preds = %while.cond.550
  %337 = load i8*, i8** %runsrc, align 8
  %incdec.ptr554 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr554, i8** %runsrc, align 8
  %338 = load i8, i8* %337, align 1
  %339 = load i8*, i8** %rundest, align 8
  %incdec.ptr555 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %incdec.ptr555, i8** %rundest, align 8
  store i8 %338, i8* %339, align 1
  br label %while.cond.550

while.end.556:                                    ; preds = %while.cond.550
  %340 = load i32, i32* %window_posn154, align 4
  %cmp557 = icmp eq i32 %340, 32768
  br i1 %cmp557, label %if.then.559, label %if.end.565

if.then.559:                                      ; preds = %while.end.556
  %341 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %flush_window560 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %341, i32 0, i32 4
  %342 = load i32 (%struct.mszip_stream*, i32)*, i32 (%struct.mszip_stream*, i32)** %flush_window560, align 8
  %343 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call561 = call i32 %342(%struct.mszip_stream* %343, i32 32768)
  %tobool562 = icmp ne i32 %call561, 0
  br i1 %tobool562, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %if.then.559
  store i32 -3, i32* %retval
  br label %return

if.end.564:                                       ; preds = %if.then.559
  store i32 0, i32* %window_posn154, align 4
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %while.end.556
  %344 = load i32, i32* %match_posn, align 4
  %cmp566 = icmp eq i32 %344, 32768
  br i1 %cmp566, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.end.565
  store i32 0, i32* %match_posn, align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.then.568, %if.end.565
  br label %do.cond.570

do.cond.570:                                      ; preds = %if.end.569
  %345 = load i32, i32* %length, align 4
  %cmp571 = icmp ugt i32 %345, 0
  br i1 %cmp571, label %do.body.528, label %do.end.573

do.end.573:                                       ; preds = %do.cond.570
  br label %if.end.574

if.end.574:                                       ; preds = %do.end.573, %while.end.526
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.end.319
  br label %while.body.236

while.end.577:                                    ; preds = %if.then.323
  %346 = load i32, i32* %window_posn154, align 4
  %347 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn578 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %347, i32 0, i32 3
  store i32 %346, i32* %window_posn578, align 4
  br label %if.end.580

if.else.579:                                      ; preds = %lor.lhs.false
  store i32 -1, i32* %retval
  br label %return

if.end.580:                                       ; preds = %while.end.577
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %while.end.148
  br label %do.cond.582

do.cond.582:                                      ; preds = %if.end.581
  %348 = load i32, i32* %last_block, align 4
  %tobool583 = icmp ne i32 %348, 0
  %lnot = xor i1 %tobool583, true
  br i1 %lnot, label %do.body.5, label %do.end.584

do.end.584:                                       ; preds = %do.cond.582
  %349 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn585 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %349, i32 0, i32 3
  %350 = load i32, i32* %window_posn585, align 4
  %tobool586 = icmp ne i32 %350, 0
  br i1 %tobool586, label %if.then.587, label %if.end.594

if.then.587:                                      ; preds = %do.end.584
  %351 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %flush_window588 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %351, i32 0, i32 4
  %352 = load i32 (%struct.mszip_stream*, i32)*, i32 (%struct.mszip_stream*, i32)** %flush_window588, align 8
  %353 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %354 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %window_posn589 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %354, i32 0, i32 3
  %355 = load i32, i32* %window_posn589, align 4
  %call590 = call i32 %352(%struct.mszip_stream* %353, i32 %355)
  %tobool591 = icmp ne i32 %call590, 0
  br i1 %tobool591, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %if.then.587
  store i32 -3, i32* %retval
  br label %return

if.end.593:                                       ; preds = %if.then.587
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %do.end.584
  br label %do.body.595

do.body.595:                                      ; preds = %if.end.594
  %356 = load i8*, i8** %i_ptr, align 8
  %357 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr596 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %357, i32 0, i32 10
  store i8* %356, i8** %i_ptr596, align 8
  %358 = load i8*, i8** %i_end, align 8
  %359 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end597 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %359, i32 0, i32 11
  store i8* %358, i8** %i_end597, align 8
  %360 = load i32, i32* %bit_buffer, align 4
  %361 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer598 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %361, i32 0, i32 14
  store i32 %360, i32* %bit_buffer598, align 4
  %362 = load i32, i32* %bits_left, align 4
  %363 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left599 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %363, i32 0, i32 15
  store i32 %362, i32* %bits_left599, align 4
  br label %do.end.601

do.end.601:                                       ; preds = %do.body.595
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.601, %if.then.592, %if.else.579, %if.then.563, %if.then.523, %if.then.464, %if.then.448, %if.then.426, %if.then.415, %if.then.389, %if.then.344, %if.then.328, %if.then.317, %if.then.284, %if.then.273, %if.then.248, %if.then.232, %if.then.225, %if.then.211, %if.then.144, %if.then.109, %if.then.98, %if.then.72, %if.then.61, %if.then.53, %if.then.26, %if.then.9
  %364 = load i32, i32* %retval
  ret i32 %364
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @mszip_free(%struct.mszip_stream* %zip) #0 {
entry:
  %zip.addr = alloca %struct.mszip_stream*, align 8
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  %0 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %tobool = icmp ne %struct.mszip_stream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %inbuf = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %1, i32 0, i32 9
  %2 = load i8*, i8** %inbuf, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %4 = bitcast %struct.mszip_stream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.lzx_stream* @lzx_init(i32 %fd, i32 %ofd, i32 %window_bits, i32 %reset_interval, i32 %input_buffer_size, i64 %output_length, %struct.cab_file* %file, i32 (%struct.cab_file*, i8*, i32)* %read) #0 {
entry:
  %retval = alloca %struct.lzx_stream*, align 8
  %fd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %window_bits.addr = alloca i32, align 4
  %reset_interval.addr = alloca i32, align 4
  %input_buffer_size.addr = alloca i32, align 4
  %output_length.addr = alloca i64, align 8
  %file.addr = alloca %struct.cab_file*, align 8
  %read.addr = alloca i32 (%struct.cab_file*, i8*, i32)*, align 8
  %window_size = alloca i32, align 4
  %lzx = alloca %struct.lzx_stream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i32 %window_bits, i32* %window_bits.addr, align 4
  store i32 %reset_interval, i32* %reset_interval.addr, align 4
  store i32 %input_buffer_size, i32* %input_buffer_size.addr, align 4
  store i64 %output_length, i64* %output_length.addr, align 8
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i32 (%struct.cab_file*, i8*, i32)* %read, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %0 = load i32, i32* %window_bits.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %window_size, align 4
  %1 = load i32, i32* %window_bits.addr, align 4
  %cmp = icmp slt i32 %1, 15
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %window_bits.addr, align 4
  %cmp1 = icmp sgt i32 %2, 21
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.lzx_stream* null, %struct.lzx_stream** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %input_buffer_size.addr, align 4
  %add = add nsw i32 %3, 1
  %and = and i32 %add, -2
  store i32 %and, i32* %input_buffer_size.addr, align 4
  %4 = load i32, i32* %input_buffer_size.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.lzx_stream* null, %struct.lzx_stream** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call i8* @cli_calloc(i64 1, i64 54896)
  %5 = bitcast i8* %call to %struct.lzx_stream*
  store %struct.lzx_stream* %5, %struct.lzx_stream** %lzx, align 8
  %tobool4 = icmp ne %struct.lzx_stream* %5, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct.lzx_stream* null, %struct.lzx_stream** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %6, 51
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %extra_bits = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %9, i32 0, i32 41
  %arrayidx = getelementptr inbounds [51 x i8], [51 x i8]* %extra_bits, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %10, 50
  br i1 %cmp8, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %conv11 = trunc i32 %11 to i8
  %12 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %extra_bits14 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %13, i32 0, i32 41
  %arrayidx15 = getelementptr inbounds [51 x i8], [51 x i8]* %extra_bits14, i32 0, i64 %idxprom13
  store i8 %conv11, i8* %arrayidx15, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %for.body
  %14 = load i32, i32* %i, align 4
  %cmp17 = icmp ne i32 %14, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.16
  %15 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %15, 17
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %17 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %17, 2
  store i32 %add23, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.36, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %18, 51
  br i1 %cmp25, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.24
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %position_base = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %21, i32 0, i32 40
  %arrayidx29 = getelementptr inbounds [51 x i32], [51 x i32]* %position_base, i32 0, i64 %idxprom28
  store i32 %19, i32* %arrayidx29, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %extra_bits31 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %23, i32 0, i32 41
  %arrayidx32 = getelementptr inbounds [51 x i8], [51 x i8]* %extra_bits31, i32 0, i64 %idxprom30
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %shl34 = shl i32 1, %conv33
  %25 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %25, %shl34
  store i32 %add35, i32* %j, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.27
  %26 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.24

for.end.38:                                       ; preds = %for.cond.24
  %27 = load i32, i32* %window_size, align 4
  %conv39 = zext i32 %27 to i64
  %call40 = call i8* @cli_calloc(i64 1, i64 %conv39)
  %28 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %window = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %28, i32 0, i32 5
  store i8* %call40, i8** %window, align 8
  %29 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %window41 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %29, i32 0, i32 5
  %30 = load i8*, i8** %window41, align 8
  %tobool42 = icmp ne i8* %30, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %for.end.38
  %31 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %32 = bitcast %struct.lzx_stream* %31 to i8*
  call void @free(i8* %32) #3
  store %struct.lzx_stream* null, %struct.lzx_stream** %retval
  br label %return

if.end.44:                                        ; preds = %for.end.38
  %33 = load i32, i32* %input_buffer_size.addr, align 4
  %conv45 = sext i32 %33 to i64
  %call46 = call i8* @cli_calloc(i64 1, i64 %conv45)
  %34 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %inbuf = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %34, i32 0, i32 24
  store i8* %call46, i8** %inbuf, align 8
  %35 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %inbuf47 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %35, i32 0, i32 24
  %36 = load i8*, i8** %inbuf47, align 8
  %tobool48 = icmp ne i8* %36, null
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.end.44
  %37 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %window50 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %37, i32 0, i32 5
  %38 = load i8*, i8** %window50, align 8
  call void @free(i8* %38) #3
  %39 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %40 = bitcast %struct.lzx_stream* %39 to i8*
  call void @free(i8* %40) #3
  store %struct.lzx_stream* null, %struct.lzx_stream** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.44
  %41 = load i32, i32* %fd.addr, align 4
  %42 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %fd52 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %42, i32 0, i32 0
  store i32 %41, i32* %fd52, align 4
  %43 = load i32, i32* %ofd.addr, align 4
  %44 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %ofd53 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %44, i32 0, i32 1
  store i32 %43, i32* %ofd53, align 4
  %45 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %wflag = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %45, i32 0, i32 2
  store i8 1, i8* %wflag, align 1
  %46 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %offset = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %46, i32 0, i32 3
  store i64 0, i64* %offset, align 8
  %47 = load i64, i64* %output_length.addr, align 8
  %48 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %length = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %48, i32 0, i32 4
  store i64 %47, i64* %length, align 8
  %49 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %50 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %file54 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %50, i32 0, i32 43
  store %struct.cab_file* %49, %struct.cab_file** %file54, align 8
  %51 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %52 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %read55 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %52, i32 0, i32 44
  store i32 (%struct.cab_file*, i8*, i32)* %51, i32 (%struct.cab_file*, i8*, i32)** %read55, align 8
  %53 = load i32, i32* %input_buffer_size.addr, align 4
  %54 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %inbuf_size = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %54, i32 0, i32 31
  store i32 %53, i32* %inbuf_size, align 4
  %55 = load i32, i32* %window_bits.addr, align 4
  %shl56 = shl i32 1, %55
  %56 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %window_size57 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %56, i32 0, i32 6
  store i32 %shl56, i32* %window_size57, align 4
  %57 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %window_posn = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %57, i32 0, i32 7
  store i32 0, i32* %window_posn, align 4
  %58 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %frame_posn = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %58, i32 0, i32 8
  store i32 0, i32* %frame_posn, align 4
  %59 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %frame = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %59, i32 0, i32 9
  store i32 0, i32* %frame, align 4
  %60 = load i32, i32* %reset_interval.addr, align 4
  %61 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %reset_interval58 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %61, i32 0, i32 10
  store i32 %60, i32* %reset_interval58, align 4
  %62 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %intel_filesize = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %62, i32 0, i32 16
  store i32 0, i32* %intel_filesize, align 4
  %63 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %intel_curpos = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %63, i32 0, i32 17
  store i32 0, i32* %intel_curpos, align 4
  %64 = load i32, i32* %window_bits.addr, align 4
  %cmp59 = icmp eq i32 %64, 21
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.51
  br label %cond.end.66

cond.false:                                       ; preds = %if.end.51
  %65 = load i32, i32* %window_bits.addr, align 4
  %cmp61 = icmp eq i32 %65, 20
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false
  br label %cond.end

cond.false.64:                                    ; preds = %cond.false
  %66 = load i32, i32* %window_bits.addr, align 4
  %shl65 = shl i32 %66, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.64, %cond.true.63
  %cond = phi i32 [ 42, %cond.true.63 ], [ %shl65, %cond.false.64 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end, %cond.true
  %cond67 = phi i32 [ 50, %cond.true ], [ %cond, %cond.end ]
  %conv68 = trunc i32 %cond67 to i8
  %67 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %posn_slots = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %67, i32 0, i32 21
  store i8 %conv68, i8* %posn_slots, align 1
  %68 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %intel_started = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %68, i32 0, i32 18
  store i8 0, i8* %intel_started, align 1
  %69 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %input_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %69, i32 0, i32 22
  store i8 0, i8* %input_end, align 1
  %70 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %error = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %70, i32 0, i32 23
  store i32 0, i32* %error, align 4
  %71 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %inbuf69 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %71, i32 0, i32 24
  %72 = load i8*, i8** %inbuf69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %i_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %73, i32 0, i32 26
  store i8* %arrayidx70, i8** %i_end, align 8
  %74 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %i_ptr = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %74, i32 0, i32 25
  store i8* %arrayidx70, i8** %i_ptr, align 8
  %75 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %e8_buf = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %75, i32 0, i32 42
  %arrayidx71 = getelementptr inbounds [32768 x i8], [32768 x i8]* %e8_buf, i32 0, i64 0
  %76 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %o_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %76, i32 0, i32 28
  store i8* %arrayidx71, i8** %o_end, align 8
  %77 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %o_ptr = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %77, i32 0, i32 27
  store i8* %arrayidx71, i8** %o_ptr, align 8
  %78 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %bits_left = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %78, i32 0, i32 30
  store i32 0, i32* %bits_left, align 4
  %79 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  %bit_buffer = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %79, i32 0, i32 29
  store i32 0, i32* %bit_buffer, align 4
  %80 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  call void @lzx_reset_state(%struct.lzx_stream* %80)
  %81 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx, align 8
  store %struct.lzx_stream* %81, %struct.lzx_stream** %retval
  br label %return

return:                                           ; preds = %cond.end.66, %if.then.49, %if.then.43, %if.then.5, %if.then.2, %if.then
  %82 = load %struct.lzx_stream*, %struct.lzx_stream** %retval
  ret %struct.lzx_stream* %82
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @lzx_reset_state(%struct.lzx_stream* %lzx) #0 {
entry:
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  %i = alloca i32, align 4
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R0 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %0, i32 0, i32 11
  store i32 1, i32* %R0, align 4
  %1 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R1 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1, i32 0, i32 12
  store i32 1, i32* %R1, align 4
  %2 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R2 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %2, i32 0, i32 13
  store i32 1, i32* %R2, align 4
  %3 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %header_read = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %3, i32 0, i32 20
  store i8 0, i8* %header_read, align 1
  %4 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %4, i32 0, i32 15
  store i32 0, i32* %block_remaining, align 4
  %5 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %5, i32 0, i32 19
  store i8 0, i8* %block_type, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 656
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %8, i32 0, i32 33
  %arrayidx = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %10, 250
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %12, i32 0, i32 34
  %arrayidx5 = getelementptr inbounds [314 x i8], [314 x i8]* %LENGTH_len, i32 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %13 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @lzx_set_output_length(%struct.lzx_stream* %lzx, i64 %out_bytes) #0 {
entry:
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  %out_bytes.addr = alloca i64, align 8
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  store i64 %out_bytes, i64* %out_bytes.addr, align 8
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %tobool = icmp ne %struct.lzx_stream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %out_bytes.addr, align 8
  %2 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %length = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %2, i32 0, i32 4
  store i64 %1, i64* %length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lzx_decompress(%struct.lzx_stream* %lzx, i64 %out_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  %out_bytes.addr = alloca i64, align 8
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %i = alloca i32, align 4
  %sym = alloca i16, align 2
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %match_length = alloca i32, align 4
  %length_footer = alloca i32, align 4
  %extra = alloca i32, align 4
  %verbatim_bits = alloca i32, align 4
  %bytes_todo = alloca i32, align 4
  %this_run = alloca i32, align 4
  %main_element = alloca i32, align 4
  %aligned_bits = alloca i32, align 4
  %j = alloca i32, align 4
  %window = alloca i8*, align 8
  %runsrc = alloca i8*, align 8
  %rundest = alloca i8*, align 8
  %buf = alloca [12 x i8], align 1
  %frame_size = alloca i32, align 4
  %end_frame = alloca i32, align 4
  %match_offset = alloca i32, align 4
  %window_posn = alloca i32, align 4
  %R0 = alloca i32, align 4
  %R1 = alloca i32, align 4
  %R2 = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataend = alloca i8*, align 8
  %curpos = alloca i32, align 4
  %filesize = alloca i32, align 4
  %abs_off = alloca i32, align 4
  %rel_off = alloca i32, align 4
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  store i64 %out_bytes, i64* %out_bytes.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %frame_size, align 4
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %tobool = icmp ne %struct.lzx_stream* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %out_bytes.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %2, i32 0, i32 23
  %3 = load i32, i32* %error, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error3 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %4, i32 0, i32 23
  %5 = load i32, i32* %error3, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %6, i32 0, i32 28
  %7 = load i8*, i8** %o_end, align 8
  %8 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %8, i32 0, i32 27
  %9 = load i8*, i8** %o_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %conv5 = sext i32 %10 to i64
  %11 = load i64, i64* %out_bytes.addr, align 8
  %cmp6 = icmp sgt i64 %conv5, %11
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %12 = load i64, i64* %out_bytes.addr, align 8
  %conv9 = trunc i64 %12 to i32
  store i32 %conv9, i32* %i, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %13 = load i32, i32* %i, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %wflag = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %14, i32 0, i32 2
  %15 = load i8, i8* %wflag, align 1
  %conv13 = zext i8 %15 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.12
  %16 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ofd = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %16, i32 0, i32 1
  %17 = load i32, i32* %ofd, align 4
  %18 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr15 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %18, i32 0, i32 27
  %19 = load i8*, i8** %o_ptr15, align 8
  %20 = load i32, i32* %i, align 4
  %call = call i32 @cli_writen(i32 %17, i8* %19, i32 %20)
  %21 = load i32, i32* %i, align 4
  %cmp16 = icmp ne i32 %call, %21
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %22 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error19 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %22, i32 0, i32 23
  store i32 -123, i32* %error19, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.then.12
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr21 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %24, i32 0, i32 27
  %25 = load i8*, i8** %o_ptr21, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %o_ptr21, align 8
  %26 = load i32, i32* %i, align 4
  %conv22 = sext i32 %26 to i64
  %27 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %offset = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %27, i32 0, i32 3
  %28 = load i64, i64* %offset, align 8
  %add = add nsw i64 %28, %conv22
  store i64 %add, i64* %offset, align 8
  %29 = load i32, i32* %i, align 4
  %conv23 = sext i32 %29 to i64
  %30 = load i64, i64* %out_bytes.addr, align 8
  %sub = sub nsw i64 %30, %conv23
  store i64 %sub, i64* %out_bytes.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.20, %if.end.10
  %31 = load i64, i64* %out_bytes.addr, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %32 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr29 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %32, i32 0, i32 25
  %33 = load i8*, i8** %i_ptr29, align 8
  store i8* %33, i8** %i_ptr, align 8
  %34 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end30 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %34, i32 0, i32 26
  %35 = load i8*, i8** %i_end30, align 8
  store i8* %35, i8** %i_end, align 8
  %36 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer31 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %36, i32 0, i32 29
  %37 = load i32, i32* %bit_buffer31, align 4
  store i32 %37, i32* %bit_buffer, align 4
  %38 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left32 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %38, i32 0, i32 30
  %39 = load i32, i32* %bits_left32, align 4
  store i32 %39, i32* %bits_left, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %40 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window33 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %40, i32 0, i32 5
  %41 = load i8*, i8** %window33, align 8
  store i8* %41, i8** %window, align 8
  %42 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_posn34 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %42, i32 0, i32 7
  %43 = load i32, i32* %window_posn34, align 4
  store i32 %43, i32* %window_posn, align 4
  %44 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R035 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %44, i32 0, i32 11
  %45 = load i32, i32* %R035, align 4
  store i32 %45, i32* %R0, align 4
  %46 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R136 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %46, i32 0, i32 12
  %47 = load i32, i32* %R136, align 4
  store i32 %47, i32* %R1, align 4
  %48 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R237 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %48, i32 0, i32 13
  %49 = load i32, i32* %R237, align 4
  store i32 %49, i32* %R2, align 4
  %50 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %offset38 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %50, i32 0, i32 3
  %51 = load i64, i64* %offset38, align 8
  %52 = load i64, i64* %out_bytes.addr, align 8
  %add39 = add nsw i64 %51, %52
  %div = sdiv i64 %add39, 32768
  %conv40 = trunc i64 %div to i32
  %add41 = add i32 %conv40, 1
  store i32 %add41, i32* %end_frame, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.1626, %do.end
  %53 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %53, i32 0, i32 9
  %54 = load i32, i32* %frame, align 4
  %55 = load i32, i32* %end_frame, align 4
  %cmp42 = icmp ult i32 %54, %55
  br i1 %cmp42, label %while.body, label %while.end.1627

while.body:                                       ; preds = %while.cond
  %56 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %reset_interval = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %56, i32 0, i32 10
  %57 = load i32, i32* %reset_interval, align 4
  %tobool44 = icmp ne i32 %57, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.56

land.lhs.true.45:                                 ; preds = %while.body
  %58 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame46 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %58, i32 0, i32 9
  %59 = load i32, i32* %frame46, align 4
  %60 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %reset_interval47 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %60, i32 0, i32 10
  %61 = load i32, i32* %reset_interval47, align 4
  %rem = urem i32 %59, %61
  %cmp48 = icmp eq i32 %rem, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %land.lhs.true.45
  %62 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %62, i32 0, i32 15
  %63 = load i32, i32* %block_remaining, align 4
  %tobool51 = icmp ne i32 %63, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.then.50
  %64 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining53 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %64, i32 0, i32 15
  %65 = load i32, i32* %block_remaining53, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 %65)
  %66 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error54 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %66, i32 0, i32 23
  store i32 -124, i32* %error54, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.50
  %67 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  call void @lzx_reset_state(%struct.lzx_stream* %67)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.45, %while.body
  %68 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %header_read = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %68, i32 0, i32 20
  %69 = load i8, i8* %header_read, align 1
  %tobool57 = icmp ne i8 %69, 0
  br i1 %tobool57, label %if.end.164, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  store i32 0, i32* %j, align 4
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.75, %do.body.59
  %70 = load i32, i32* %bits_left, align 4
  %cmp61 = icmp slt i32 %70, 1
  br i1 %cmp61, label %while.body.63, label %while.end

while.body.63:                                    ; preds = %while.cond.60
  %71 = load i8*, i8** %i_ptr, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8*, i8** %i_end, align 8
  %cmp65 = icmp uge i8* %add.ptr64, %72
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %while.body.63
  %73 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call68 = call i32 @lzx_read_input(%struct.lzx_stream* %73)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.67
  %74 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error71 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %74, i32 0, i32 23
  %75 = load i32, i32* %error71, align 4
  store i32 %75, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.67
  %76 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr73 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %76, i32 0, i32 25
  %77 = load i8*, i8** %i_ptr73, align 8
  store i8* %77, i8** %i_ptr, align 8
  %78 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end74 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %78, i32 0, i32 26
  %79 = load i8*, i8** %i_end74, align 8
  store i8* %79, i8** %i_end, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %while.body.63
  %80 = load i8*, i8** %i_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx, align 1
  %conv76 = zext i8 %81 to i32
  %shl = shl i32 %conv76, 8
  %82 = load i8*, i8** %i_ptr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %83 to i32
  %or = or i32 %shl, %conv78
  %84 = load i32, i32* %bits_left, align 4
  %conv79 = sext i32 %84 to i64
  %sub80 = sub i64 16, %conv79
  %sh_prom = trunc i64 %sub80 to i32
  %shl81 = shl i32 %or, %sh_prom
  %85 = load i32, i32* %bit_buffer, align 4
  %or82 = or i32 %85, %shl81
  store i32 %or82, i32* %bit_buffer, align 4
  %86 = load i32, i32* %bits_left, align 4
  %add83 = add nsw i32 %86, 16
  store i32 %add83, i32* %bits_left, align 4
  %87 = load i8*, i8** %i_ptr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %add.ptr84, i8** %i_ptr, align 8
  br label %while.cond.60

while.end:                                        ; preds = %while.cond.60
  %88 = load i32, i32* %bit_buffer, align 4
  %shr = lshr i32 %88, 31
  store i32 %shr, i32* %i, align 4
  %89 = load i32, i32* %bit_buffer, align 4
  %shl85 = shl i32 %89, 1
  store i32 %shl85, i32* %bit_buffer, align 4
  %90 = load i32, i32* %bits_left, align 4
  %sub86 = sub nsw i32 %90, 1
  store i32 %sub86, i32* %bits_left, align 4
  br label %do.end.87

do.end.87:                                        ; preds = %while.end
  %91 = load i32, i32* %i, align 4
  %tobool88 = icmp ne i32 %91, 0
  br i1 %tobool88, label %if.then.89, label %if.end.160

if.then.89:                                       ; preds = %do.end.87
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %while.cond.91

while.cond.91:                                    ; preds = %if.end.106, %do.body.90
  %92 = load i32, i32* %bits_left, align 4
  %cmp92 = icmp slt i32 %92, 16
  br i1 %cmp92, label %while.body.94, label %while.end.120

while.body.94:                                    ; preds = %while.cond.91
  %93 = load i8*, i8** %i_ptr, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8*, i8** %i_end, align 8
  %cmp96 = icmp uge i8* %add.ptr95, %94
  br i1 %cmp96, label %if.then.98, label %if.end.106

if.then.98:                                       ; preds = %while.body.94
  %95 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call99 = call i32 @lzx_read_input(%struct.lzx_stream* %95)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.98
  %96 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error102 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %96, i32 0, i32 23
  %97 = load i32, i32* %error102, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.98
  %98 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr104 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %98, i32 0, i32 25
  %99 = load i8*, i8** %i_ptr104, align 8
  store i8* %99, i8** %i_ptr, align 8
  %100 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end105 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %100, i32 0, i32 26
  %101 = load i8*, i8** %i_end105, align 8
  store i8* %101, i8** %i_end, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.103, %while.body.94
  %102 = load i8*, i8** %i_ptr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %103 to i32
  %shl109 = shl i32 %conv108, 8
  %104 = load i8*, i8** %i_ptr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %105 to i32
  %or112 = or i32 %shl109, %conv111
  %106 = load i32, i32* %bits_left, align 4
  %conv113 = sext i32 %106 to i64
  %sub114 = sub i64 16, %conv113
  %sh_prom115 = trunc i64 %sub114 to i32
  %shl116 = shl i32 %or112, %sh_prom115
  %107 = load i32, i32* %bit_buffer, align 4
  %or117 = or i32 %107, %shl116
  store i32 %or117, i32* %bit_buffer, align 4
  %108 = load i32, i32* %bits_left, align 4
  %add118 = add nsw i32 %108, 16
  store i32 %add118, i32* %bits_left, align 4
  %109 = load i8*, i8** %i_ptr, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %add.ptr119, i8** %i_ptr, align 8
  br label %while.cond.91

while.end.120:                                    ; preds = %while.cond.91
  %110 = load i32, i32* %bit_buffer, align 4
  %shr121 = lshr i32 %110, 16
  store i32 %shr121, i32* %i, align 4
  %111 = load i32, i32* %bit_buffer, align 4
  %shl122 = shl i32 %111, 16
  store i32 %shl122, i32* %bit_buffer, align 4
  %112 = load i32, i32* %bits_left, align 4
  %sub123 = sub nsw i32 %112, 16
  store i32 %sub123, i32* %bits_left, align 4
  br label %do.end.124

do.end.124:                                       ; preds = %while.end.120
  br label %do.body.125

do.body.125:                                      ; preds = %do.end.124
  br label %while.cond.126

while.cond.126:                                   ; preds = %if.end.141, %do.body.125
  %113 = load i32, i32* %bits_left, align 4
  %cmp127 = icmp slt i32 %113, 16
  br i1 %cmp127, label %while.body.129, label %while.end.155

while.body.129:                                   ; preds = %while.cond.126
  %114 = load i8*, i8** %i_ptr, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8*, i8** %i_end, align 8
  %cmp131 = icmp uge i8* %add.ptr130, %115
  br i1 %cmp131, label %if.then.133, label %if.end.141

if.then.133:                                      ; preds = %while.body.129
  %116 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call134 = call i32 @lzx_read_input(%struct.lzx_stream* %116)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.then.133
  %117 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error137 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %117, i32 0, i32 23
  %118 = load i32, i32* %error137, align 4
  store i32 %118, i32* %retval
  br label %return

if.end.138:                                       ; preds = %if.then.133
  %119 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr139 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %119, i32 0, i32 25
  %120 = load i8*, i8** %i_ptr139, align 8
  store i8* %120, i8** %i_ptr, align 8
  %121 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end140 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %121, i32 0, i32 26
  %122 = load i8*, i8** %i_end140, align 8
  store i8* %122, i8** %i_end, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.138, %while.body.129
  %123 = load i8*, i8** %i_ptr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %124 to i32
  %shl144 = shl i32 %conv143, 8
  %125 = load i8*, i8** %i_ptr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %125, i64 0
  %126 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %126 to i32
  %or147 = or i32 %shl144, %conv146
  %127 = load i32, i32* %bits_left, align 4
  %conv148 = sext i32 %127 to i64
  %sub149 = sub i64 16, %conv148
  %sh_prom150 = trunc i64 %sub149 to i32
  %shl151 = shl i32 %or147, %sh_prom150
  %128 = load i32, i32* %bit_buffer, align 4
  %or152 = or i32 %128, %shl151
  store i32 %or152, i32* %bit_buffer, align 4
  %129 = load i32, i32* %bits_left, align 4
  %add153 = add nsw i32 %129, 16
  store i32 %add153, i32* %bits_left, align 4
  %130 = load i8*, i8** %i_ptr, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %add.ptr154, i8** %i_ptr, align 8
  br label %while.cond.126

while.end.155:                                    ; preds = %while.cond.126
  %131 = load i32, i32* %bit_buffer, align 4
  %shr156 = lshr i32 %131, 16
  store i32 %shr156, i32* %j, align 4
  %132 = load i32, i32* %bit_buffer, align 4
  %shl157 = shl i32 %132, 16
  store i32 %shl157, i32* %bit_buffer, align 4
  %133 = load i32, i32* %bits_left, align 4
  %sub158 = sub nsw i32 %133, 16
  store i32 %sub158, i32* %bits_left, align 4
  br label %do.end.159

do.end.159:                                       ; preds = %while.end.155
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.end.87
  %134 = load i32, i32* %i, align 4
  %shl161 = shl i32 %134, 16
  %135 = load i32, i32* %j, align 4
  %or162 = or i32 %shl161, %135
  %136 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_filesize = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %136, i32 0, i32 16
  store i32 %or162, i32* %intel_filesize, align 4
  %137 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %header_read163 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %137, i32 0, i32 20
  store i8 1, i8* %header_read163, align 1
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.160, %if.end.56
  store i32 32768, i32* %frame_size, align 4
  %138 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %length = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %138, i32 0, i32 4
  %139 = load i64, i64* %length, align 8
  %tobool165 = icmp ne i64 %139, 0
  br i1 %tobool165, label %land.lhs.true.166, label %if.end.178

land.lhs.true.166:                                ; preds = %if.end.164
  %140 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %length167 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %140, i32 0, i32 4
  %141 = load i64, i64* %length167, align 8
  %142 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %offset168 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %142, i32 0, i32 3
  %143 = load i64, i64* %offset168, align 8
  %sub169 = sub nsw i64 %141, %143
  %144 = load i32, i32* %frame_size, align 4
  %conv170 = zext i32 %144 to i64
  %cmp171 = icmp slt i64 %sub169, %conv170
  br i1 %cmp171, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %land.lhs.true.166
  %145 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %length174 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %145, i32 0, i32 4
  %146 = load i64, i64* %length174, align 8
  %147 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %offset175 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %147, i32 0, i32 3
  %148 = load i64, i64* %offset175, align 8
  %sub176 = sub nsw i64 %146, %148
  %conv177 = trunc i64 %sub176 to i32
  store i32 %conv177, i32* %frame_size, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.173, %land.lhs.true.166, %if.end.164
  %149 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %149, i32 0, i32 8
  %150 = load i32, i32* %frame_posn, align 4
  %151 = load i32, i32* %frame_size, align 4
  %add179 = add i32 %150, %151
  %152 = load i32, i32* %window_posn, align 4
  %sub180 = sub i32 %add179, %152
  store i32 %sub180, i32* %bytes_todo, align 4
  br label %while.cond.181

while.cond.181:                                   ; preds = %if.end.1421, %if.end.178
  %153 = load i32, i32* %bytes_todo, align 4
  %cmp182 = icmp sgt i32 %153, 0
  br i1 %cmp182, label %while.body.184, label %while.end.1422

while.body.184:                                   ; preds = %while.cond.181
  %154 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining185 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %154, i32 0, i32 15
  %155 = load i32, i32* %block_remaining185, align 4
  %cmp186 = icmp eq i32 %155, 0
  br i1 %cmp186, label %if.then.188, label %if.end.558

if.then.188:                                      ; preds = %while.body.184
  %156 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %156, i32 0, i32 19
  %157 = load i8, i8* %block_type, align 1
  %conv189 = zext i8 %157 to i32
  %cmp190 = icmp eq i32 %conv189, 3
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.206

land.lhs.true.192:                                ; preds = %if.then.188
  %158 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_length = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %158, i32 0, i32 14
  %159 = load i32, i32* %block_length, align 4
  %and = and i32 %159, 1
  %tobool193 = icmp ne i32 %and, 0
  br i1 %tobool193, label %if.then.194, label %if.end.206

if.then.194:                                      ; preds = %land.lhs.true.192
  %160 = load i8*, i8** %i_ptr, align 8
  %161 = load i8*, i8** %i_end, align 8
  %cmp195 = icmp eq i8* %160, %161
  br i1 %cmp195, label %if.then.197, label %if.end.205

if.then.197:                                      ; preds = %if.then.194
  %162 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call198 = call i32 @lzx_read_input(%struct.lzx_stream* %162)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.then.197
  %163 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error201 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %163, i32 0, i32 23
  %164 = load i32, i32* %error201, align 4
  store i32 %164, i32* %retval
  br label %return

if.end.202:                                       ; preds = %if.then.197
  %165 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr203 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %165, i32 0, i32 25
  %166 = load i8*, i8** %i_ptr203, align 8
  store i8* %166, i8** %i_ptr, align 8
  %167 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end204 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %167, i32 0, i32 26
  %168 = load i8*, i8** %i_end204, align 8
  store i8* %168, i8** %i_end, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.202, %if.then.194
  %169 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr, i8** %i_ptr, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %land.lhs.true.192, %if.then.188
  br label %do.body.207

do.body.207:                                      ; preds = %if.end.206
  br label %while.cond.208

while.cond.208:                                   ; preds = %if.end.223, %do.body.207
  %170 = load i32, i32* %bits_left, align 4
  %cmp209 = icmp slt i32 %170, 3
  br i1 %cmp209, label %while.body.211, label %while.end.237

while.body.211:                                   ; preds = %while.cond.208
  %171 = load i8*, i8** %i_ptr, align 8
  %add.ptr212 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8*, i8** %i_end, align 8
  %cmp213 = icmp uge i8* %add.ptr212, %172
  br i1 %cmp213, label %if.then.215, label %if.end.223

if.then.215:                                      ; preds = %while.body.211
  %173 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call216 = call i32 @lzx_read_input(%struct.lzx_stream* %173)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %if.then.215
  %174 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error219 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %174, i32 0, i32 23
  %175 = load i32, i32* %error219, align 4
  store i32 %175, i32* %retval
  br label %return

if.end.220:                                       ; preds = %if.then.215
  %176 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr221 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %176, i32 0, i32 25
  %177 = load i8*, i8** %i_ptr221, align 8
  store i8* %177, i8** %i_ptr, align 8
  %178 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end222 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %178, i32 0, i32 26
  %179 = load i8*, i8** %i_end222, align 8
  store i8* %179, i8** %i_end, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.220, %while.body.211
  %180 = load i8*, i8** %i_ptr, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %180, i64 1
  %181 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %181 to i32
  %shl226 = shl i32 %conv225, 8
  %182 = load i8*, i8** %i_ptr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %183 to i32
  %or229 = or i32 %shl226, %conv228
  %184 = load i32, i32* %bits_left, align 4
  %conv230 = sext i32 %184 to i64
  %sub231 = sub i64 16, %conv230
  %sh_prom232 = trunc i64 %sub231 to i32
  %shl233 = shl i32 %or229, %sh_prom232
  %185 = load i32, i32* %bit_buffer, align 4
  %or234 = or i32 %185, %shl233
  store i32 %or234, i32* %bit_buffer, align 4
  %186 = load i32, i32* %bits_left, align 4
  %add235 = add nsw i32 %186, 16
  store i32 %add235, i32* %bits_left, align 4
  %187 = load i8*, i8** %i_ptr, align 8
  %add.ptr236 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %add.ptr236, i8** %i_ptr, align 8
  br label %while.cond.208

while.end.237:                                    ; preds = %while.cond.208
  %188 = load i32, i32* %bit_buffer, align 4
  %shr238 = lshr i32 %188, 29
  %conv239 = trunc i32 %shr238 to i8
  %189 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type240 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %189, i32 0, i32 19
  store i8 %conv239, i8* %block_type240, align 1
  %190 = load i32, i32* %bit_buffer, align 4
  %shl241 = shl i32 %190, 3
  store i32 %shl241, i32* %bit_buffer, align 4
  %191 = load i32, i32* %bits_left, align 4
  %sub242 = sub nsw i32 %191, 3
  store i32 %sub242, i32* %bits_left, align 4
  br label %do.end.243

do.end.243:                                       ; preds = %while.end.237
  br label %do.body.244

do.body.244:                                      ; preds = %do.end.243
  br label %while.cond.245

while.cond.245:                                   ; preds = %if.end.260, %do.body.244
  %192 = load i32, i32* %bits_left, align 4
  %cmp246 = icmp slt i32 %192, 16
  br i1 %cmp246, label %while.body.248, label %while.end.274

while.body.248:                                   ; preds = %while.cond.245
  %193 = load i8*, i8** %i_ptr, align 8
  %add.ptr249 = getelementptr inbounds i8, i8* %193, i64 1
  %194 = load i8*, i8** %i_end, align 8
  %cmp250 = icmp uge i8* %add.ptr249, %194
  br i1 %cmp250, label %if.then.252, label %if.end.260

if.then.252:                                      ; preds = %while.body.248
  %195 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call253 = call i32 @lzx_read_input(%struct.lzx_stream* %195)
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.then.252
  %196 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error256 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %196, i32 0, i32 23
  %197 = load i32, i32* %error256, align 4
  store i32 %197, i32* %retval
  br label %return

if.end.257:                                       ; preds = %if.then.252
  %198 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr258 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %198, i32 0, i32 25
  %199 = load i8*, i8** %i_ptr258, align 8
  store i8* %199, i8** %i_ptr, align 8
  %200 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end259 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %200, i32 0, i32 26
  %201 = load i8*, i8** %i_end259, align 8
  store i8* %201, i8** %i_end, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.257, %while.body.248
  %202 = load i8*, i8** %i_ptr, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %202, i64 1
  %203 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %203 to i32
  %shl263 = shl i32 %conv262, 8
  %204 = load i8*, i8** %i_ptr, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %204, i64 0
  %205 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %205 to i32
  %or266 = or i32 %shl263, %conv265
  %206 = load i32, i32* %bits_left, align 4
  %conv267 = sext i32 %206 to i64
  %sub268 = sub i64 16, %conv267
  %sh_prom269 = trunc i64 %sub268 to i32
  %shl270 = shl i32 %or266, %sh_prom269
  %207 = load i32, i32* %bit_buffer, align 4
  %or271 = or i32 %207, %shl270
  store i32 %or271, i32* %bit_buffer, align 4
  %208 = load i32, i32* %bits_left, align 4
  %add272 = add nsw i32 %208, 16
  store i32 %add272, i32* %bits_left, align 4
  %209 = load i8*, i8** %i_ptr, align 8
  %add.ptr273 = getelementptr inbounds i8, i8* %209, i64 2
  store i8* %add.ptr273, i8** %i_ptr, align 8
  br label %while.cond.245

while.end.274:                                    ; preds = %while.cond.245
  %210 = load i32, i32* %bit_buffer, align 4
  %shr275 = lshr i32 %210, 16
  store i32 %shr275, i32* %i, align 4
  %211 = load i32, i32* %bit_buffer, align 4
  %shl276 = shl i32 %211, 16
  store i32 %shl276, i32* %bit_buffer, align 4
  %212 = load i32, i32* %bits_left, align 4
  %sub277 = sub nsw i32 %212, 16
  store i32 %sub277, i32* %bits_left, align 4
  br label %do.end.278

do.end.278:                                       ; preds = %while.end.274
  br label %do.body.279

do.body.279:                                      ; preds = %do.end.278
  br label %while.cond.280

while.cond.280:                                   ; preds = %if.end.295, %do.body.279
  %213 = load i32, i32* %bits_left, align 4
  %cmp281 = icmp slt i32 %213, 8
  br i1 %cmp281, label %while.body.283, label %while.end.309

while.body.283:                                   ; preds = %while.cond.280
  %214 = load i8*, i8** %i_ptr, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %214, i64 1
  %215 = load i8*, i8** %i_end, align 8
  %cmp285 = icmp uge i8* %add.ptr284, %215
  br i1 %cmp285, label %if.then.287, label %if.end.295

if.then.287:                                      ; preds = %while.body.283
  %216 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call288 = call i32 @lzx_read_input(%struct.lzx_stream* %216)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %if.then.287
  %217 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error291 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %217, i32 0, i32 23
  %218 = load i32, i32* %error291, align 4
  store i32 %218, i32* %retval
  br label %return

if.end.292:                                       ; preds = %if.then.287
  %219 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr293 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %219, i32 0, i32 25
  %220 = load i8*, i8** %i_ptr293, align 8
  store i8* %220, i8** %i_ptr, align 8
  %221 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end294 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %221, i32 0, i32 26
  %222 = load i8*, i8** %i_end294, align 8
  store i8* %222, i8** %i_end, align 8
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.292, %while.body.283
  %223 = load i8*, i8** %i_ptr, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %223, i64 1
  %224 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %224 to i32
  %shl298 = shl i32 %conv297, 8
  %225 = load i8*, i8** %i_ptr, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %225, i64 0
  %226 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %226 to i32
  %or301 = or i32 %shl298, %conv300
  %227 = load i32, i32* %bits_left, align 4
  %conv302 = sext i32 %227 to i64
  %sub303 = sub i64 16, %conv302
  %sh_prom304 = trunc i64 %sub303 to i32
  %shl305 = shl i32 %or301, %sh_prom304
  %228 = load i32, i32* %bit_buffer, align 4
  %or306 = or i32 %228, %shl305
  store i32 %or306, i32* %bit_buffer, align 4
  %229 = load i32, i32* %bits_left, align 4
  %add307 = add nsw i32 %229, 16
  store i32 %add307, i32* %bits_left, align 4
  %230 = load i8*, i8** %i_ptr, align 8
  %add.ptr308 = getelementptr inbounds i8, i8* %230, i64 2
  store i8* %add.ptr308, i8** %i_ptr, align 8
  br label %while.cond.280

while.end.309:                                    ; preds = %while.cond.280
  %231 = load i32, i32* %bit_buffer, align 4
  %shr310 = lshr i32 %231, 24
  store i32 %shr310, i32* %j, align 4
  %232 = load i32, i32* %bit_buffer, align 4
  %shl311 = shl i32 %232, 8
  store i32 %shl311, i32* %bit_buffer, align 4
  %233 = load i32, i32* %bits_left, align 4
  %sub312 = sub nsw i32 %233, 8
  store i32 %sub312, i32* %bits_left, align 4
  br label %do.end.313

do.end.313:                                       ; preds = %while.end.309
  %234 = load i32, i32* %i, align 4
  %shl314 = shl i32 %234, 8
  %235 = load i32, i32* %j, align 4
  %or315 = or i32 %shl314, %235
  %236 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_length316 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %236, i32 0, i32 14
  store i32 %or315, i32* %block_length316, align 4
  %237 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining317 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %237, i32 0, i32 15
  store i32 %or315, i32* %block_remaining317, align 4
  %238 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type318 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %238, i32 0, i32 19
  %239 = load i8, i8* %block_type318, align 1
  %conv319 = zext i8 %239 to i32
  switch i32 %conv319, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.367
    i32 3, label %sw.bb.455
  ]

sw.bb:                                            ; preds = %do.end.313
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %240 = load i32, i32* %i, align 4
  %cmp320 = icmp slt i32 %240, 8
  br i1 %cmp320, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.322

do.body.322:                                      ; preds = %for.body
  br label %while.cond.323

while.cond.323:                                   ; preds = %if.end.338, %do.body.322
  %241 = load i32, i32* %bits_left, align 4
  %cmp324 = icmp slt i32 %241, 3
  br i1 %cmp324, label %while.body.326, label %while.end.352

while.body.326:                                   ; preds = %while.cond.323
  %242 = load i8*, i8** %i_ptr, align 8
  %add.ptr327 = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8*, i8** %i_end, align 8
  %cmp328 = icmp uge i8* %add.ptr327, %243
  br i1 %cmp328, label %if.then.330, label %if.end.338

if.then.330:                                      ; preds = %while.body.326
  %244 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call331 = call i32 @lzx_read_input(%struct.lzx_stream* %244)
  %tobool332 = icmp ne i32 %call331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.then.330
  %245 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error334 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %245, i32 0, i32 23
  %246 = load i32, i32* %error334, align 4
  store i32 %246, i32* %retval
  br label %return

if.end.335:                                       ; preds = %if.then.330
  %247 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr336 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %247, i32 0, i32 25
  %248 = load i8*, i8** %i_ptr336, align 8
  store i8* %248, i8** %i_ptr, align 8
  %249 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end337 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %249, i32 0, i32 26
  %250 = load i8*, i8** %i_end337, align 8
  store i8* %250, i8** %i_end, align 8
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.335, %while.body.326
  %251 = load i8*, i8** %i_ptr, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %251, i64 1
  %252 = load i8, i8* %arrayidx339, align 1
  %conv340 = zext i8 %252 to i32
  %shl341 = shl i32 %conv340, 8
  %253 = load i8*, i8** %i_ptr, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %253, i64 0
  %254 = load i8, i8* %arrayidx342, align 1
  %conv343 = zext i8 %254 to i32
  %or344 = or i32 %shl341, %conv343
  %255 = load i32, i32* %bits_left, align 4
  %conv345 = sext i32 %255 to i64
  %sub346 = sub i64 16, %conv345
  %sh_prom347 = trunc i64 %sub346 to i32
  %shl348 = shl i32 %or344, %sh_prom347
  %256 = load i32, i32* %bit_buffer, align 4
  %or349 = or i32 %256, %shl348
  store i32 %or349, i32* %bit_buffer, align 4
  %257 = load i32, i32* %bits_left, align 4
  %add350 = add nsw i32 %257, 16
  store i32 %add350, i32* %bits_left, align 4
  %258 = load i8*, i8** %i_ptr, align 8
  %add.ptr351 = getelementptr inbounds i8, i8* %258, i64 2
  store i8* %add.ptr351, i8** %i_ptr, align 8
  br label %while.cond.323

while.end.352:                                    ; preds = %while.cond.323
  %259 = load i32, i32* %bit_buffer, align 4
  %shr353 = lshr i32 %259, 29
  store i32 %shr353, i32* %j, align 4
  %260 = load i32, i32* %bit_buffer, align 4
  %shl354 = shl i32 %260, 3
  store i32 %shl354, i32* %bit_buffer, align 4
  %261 = load i32, i32* %bits_left, align 4
  %sub355 = sub nsw i32 %261, 3
  store i32 %sub355, i32* %bits_left, align 4
  br label %do.end.356

do.end.356:                                       ; preds = %while.end.352
  %262 = load i32, i32* %j, align 4
  %conv357 = trunc i32 %262 to i8
  %263 = load i32, i32* %i, align 4
  %idxprom = sext i32 %263 to i64
  %264 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %264, i32 0, i32 35
  %arrayidx358 = getelementptr inbounds [72 x i8], [72 x i8]* %ALIGNED_len, i32 0, i64 %idxprom
  store i8 %conv357, i8* %arrayidx358, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end.356
  %265 = load i32, i32* %i, align 4
  %inc = add nsw i32 %265, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %266 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_len359 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %266, i32 0, i32 35
  %arrayidx360 = getelementptr inbounds [72 x i8], [72 x i8]* %ALIGNED_len359, i32 0, i64 0
  %267 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_table = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %267, i32 0, i32 39
  %arrayidx361 = getelementptr inbounds [144 x i16], [144 x i16]* %ALIGNED_table, i32 0, i64 0
  %call362 = call i32 @lzx_make_decode_table(i32 8, i32 7, i8* %arrayidx360, i16* %arrayidx361)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.then.364, label %if.end.366

if.then.364:                                      ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %268 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error365 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %268, i32 0, i32 23
  store i32 -124, i32* %error365, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.366:                                       ; preds = %for.end
  br label %sw.bb.367

sw.bb.367:                                        ; preds = %do.end.313, %if.end.366
  br label %do.body.368

do.body.368:                                      ; preds = %sw.bb.367
  br label %do.body.369

do.body.369:                                      ; preds = %do.body.368
  %269 = load i8*, i8** %i_ptr, align 8
  %270 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr370 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %270, i32 0, i32 25
  store i8* %269, i8** %i_ptr370, align 8
  %271 = load i8*, i8** %i_end, align 8
  %272 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end371 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %272, i32 0, i32 26
  store i8* %271, i8** %i_end371, align 8
  %273 = load i32, i32* %bit_buffer, align 4
  %274 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer372 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %274, i32 0, i32 29
  store i32 %273, i32* %bit_buffer372, align 4
  %275 = load i32, i32* %bits_left, align 4
  %276 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left373 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %276, i32 0, i32 30
  store i32 %275, i32* %bits_left373, align 4
  br label %do.end.374

do.end.374:                                       ; preds = %do.body.369
  %277 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %278 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %278, i32 0, i32 33
  %arrayidx375 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len, i32 0, i64 0
  %call376 = call i32 @lzx_read_lens(%struct.lzx_stream* %277, i8* %arrayidx375, i32 0, i32 256)
  %tobool377 = icmp ne i32 %call376, 0
  br i1 %tobool377, label %if.then.378, label %if.end.380

if.then.378:                                      ; preds = %do.end.374
  %279 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error379 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %279, i32 0, i32 23
  %280 = load i32, i32* %error379, align 4
  store i32 %280, i32* %retval
  br label %return

if.end.380:                                       ; preds = %do.end.374
  br label %do.body.381

do.body.381:                                      ; preds = %if.end.380
  %281 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr382 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %281, i32 0, i32 25
  %282 = load i8*, i8** %i_ptr382, align 8
  store i8* %282, i8** %i_ptr, align 8
  %283 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end383 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %283, i32 0, i32 26
  %284 = load i8*, i8** %i_end383, align 8
  store i8* %284, i8** %i_end, align 8
  %285 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer384 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %285, i32 0, i32 29
  %286 = load i32, i32* %bit_buffer384, align 4
  store i32 %286, i32* %bit_buffer, align 4
  %287 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left385 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %287, i32 0, i32 30
  %288 = load i32, i32* %bits_left385, align 4
  store i32 %288, i32* %bits_left, align 4
  br label %do.end.386

do.end.386:                                       ; preds = %do.body.381
  br label %do.end.387

do.end.387:                                       ; preds = %do.end.386
  br label %do.body.388

do.body.388:                                      ; preds = %do.end.387
  br label %do.body.389

do.body.389:                                      ; preds = %do.body.388
  %289 = load i8*, i8** %i_ptr, align 8
  %290 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr390 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %290, i32 0, i32 25
  store i8* %289, i8** %i_ptr390, align 8
  %291 = load i8*, i8** %i_end, align 8
  %292 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end391 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %292, i32 0, i32 26
  store i8* %291, i8** %i_end391, align 8
  %293 = load i32, i32* %bit_buffer, align 4
  %294 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer392 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %294, i32 0, i32 29
  store i32 %293, i32* %bit_buffer392, align 4
  %295 = load i32, i32* %bits_left, align 4
  %296 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left393 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %296, i32 0, i32 30
  store i32 %295, i32* %bits_left393, align 4
  br label %do.end.394

do.end.394:                                       ; preds = %do.body.389
  %297 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %298 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len395 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %298, i32 0, i32 33
  %arrayidx396 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len395, i32 0, i64 0
  %299 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %posn_slots = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %299, i32 0, i32 21
  %300 = load i8, i8* %posn_slots, align 1
  %conv397 = zext i8 %300 to i32
  %shl398 = shl i32 %conv397, 3
  %add399 = add nsw i32 256, %shl398
  %call400 = call i32 @lzx_read_lens(%struct.lzx_stream* %297, i8* %arrayidx396, i32 256, i32 %add399)
  %tobool401 = icmp ne i32 %call400, 0
  br i1 %tobool401, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %do.end.394
  %301 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error403 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %301, i32 0, i32 23
  %302 = load i32, i32* %error403, align 4
  store i32 %302, i32* %retval
  br label %return

if.end.404:                                       ; preds = %do.end.394
  br label %do.body.405

do.body.405:                                      ; preds = %if.end.404
  %303 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr406 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %303, i32 0, i32 25
  %304 = load i8*, i8** %i_ptr406, align 8
  store i8* %304, i8** %i_ptr, align 8
  %305 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end407 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %305, i32 0, i32 26
  %306 = load i8*, i8** %i_end407, align 8
  store i8* %306, i8** %i_end, align 8
  %307 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer408 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %307, i32 0, i32 29
  %308 = load i32, i32* %bit_buffer408, align 4
  store i32 %308, i32* %bit_buffer, align 4
  %309 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left409 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %309, i32 0, i32 30
  %310 = load i32, i32* %bits_left409, align 4
  store i32 %310, i32* %bits_left, align 4
  br label %do.end.410

do.end.410:                                       ; preds = %do.body.405
  br label %do.end.411

do.end.411:                                       ; preds = %do.end.410
  %311 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len412 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %311, i32 0, i32 33
  %arrayidx413 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len412, i32 0, i64 0
  %312 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_table = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %312, i32 0, i32 37
  %arrayidx414 = getelementptr inbounds [5408 x i16], [5408 x i16]* %MAINTREE_table, i32 0, i64 0
  %call415 = call i32 @lzx_make_decode_table(i32 656, i32 12, i8* %arrayidx413, i16* %arrayidx414)
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %if.then.417, label %if.end.419

if.then.417:                                      ; preds = %do.end.411
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %313 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error418 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %313, i32 0, i32 23
  store i32 -124, i32* %error418, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.419:                                       ; preds = %do.end.411
  %314 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len420 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %314, i32 0, i32 33
  %arrayidx421 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len420, i32 0, i64 232
  %315 = load i8, i8* %arrayidx421, align 1
  %conv422 = zext i8 %315 to i32
  %cmp423 = icmp ne i32 %conv422, 0
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.end.419
  %316 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_started = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %316, i32 0, i32 18
  store i8 1, i8* %intel_started, align 1
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.end.419
  br label %do.body.427

do.body.427:                                      ; preds = %if.end.426
  br label %do.body.428

do.body.428:                                      ; preds = %do.body.427
  %317 = load i8*, i8** %i_ptr, align 8
  %318 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr429 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %318, i32 0, i32 25
  store i8* %317, i8** %i_ptr429, align 8
  %319 = load i8*, i8** %i_end, align 8
  %320 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end430 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %320, i32 0, i32 26
  store i8* %319, i8** %i_end430, align 8
  %321 = load i32, i32* %bit_buffer, align 4
  %322 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer431 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %322, i32 0, i32 29
  store i32 %321, i32* %bit_buffer431, align 4
  %323 = load i32, i32* %bits_left, align 4
  %324 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left432 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %324, i32 0, i32 30
  store i32 %323, i32* %bits_left432, align 4
  br label %do.end.433

do.end.433:                                       ; preds = %do.body.428
  %325 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %326 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %326, i32 0, i32 34
  %arrayidx434 = getelementptr inbounds [314 x i8], [314 x i8]* %LENGTH_len, i32 0, i64 0
  %call435 = call i32 @lzx_read_lens(%struct.lzx_stream* %325, i8* %arrayidx434, i32 0, i32 249)
  %tobool436 = icmp ne i32 %call435, 0
  br i1 %tobool436, label %if.then.437, label %if.end.439

if.then.437:                                      ; preds = %do.end.433
  %327 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error438 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %327, i32 0, i32 23
  %328 = load i32, i32* %error438, align 4
  store i32 %328, i32* %retval
  br label %return

if.end.439:                                       ; preds = %do.end.433
  br label %do.body.440

do.body.440:                                      ; preds = %if.end.439
  %329 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr441 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %329, i32 0, i32 25
  %330 = load i8*, i8** %i_ptr441, align 8
  store i8* %330, i8** %i_ptr, align 8
  %331 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end442 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %331, i32 0, i32 26
  %332 = load i8*, i8** %i_end442, align 8
  store i8* %332, i8** %i_end, align 8
  %333 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer443 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %333, i32 0, i32 29
  %334 = load i32, i32* %bit_buffer443, align 4
  store i32 %334, i32* %bit_buffer, align 4
  %335 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left444 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %335, i32 0, i32 30
  %336 = load i32, i32* %bits_left444, align 4
  store i32 %336, i32* %bits_left, align 4
  br label %do.end.445

do.end.445:                                       ; preds = %do.body.440
  br label %do.end.446

do.end.446:                                       ; preds = %do.end.445
  %337 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_len447 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %337, i32 0, i32 34
  %arrayidx448 = getelementptr inbounds [314 x i8], [314 x i8]* %LENGTH_len447, i32 0, i64 0
  %338 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_table = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %338, i32 0, i32 38
  %arrayidx449 = getelementptr inbounds [4596 x i16], [4596 x i16]* %LENGTH_table, i32 0, i64 0
  %call450 = call i32 @lzx_make_decode_table(i32 250, i32 12, i8* %arrayidx448, i16* %arrayidx449)
  %tobool451 = icmp ne i32 %call450, 0
  br i1 %tobool451, label %if.then.452, label %if.end.454

if.then.452:                                      ; preds = %do.end.446
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %339 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error453 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %339, i32 0, i32 23
  store i32 -124, i32* %error453, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.454:                                       ; preds = %do.end.446
  br label %sw.epilog

sw.bb.455:                                        ; preds = %do.end.313
  %340 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_started456 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %340, i32 0, i32 18
  store i8 1, i8* %intel_started456, align 1
  br label %while.cond.457

while.cond.457:                                   ; preds = %if.end.472, %sw.bb.455
  %341 = load i32, i32* %bits_left, align 4
  %cmp458 = icmp slt i32 %341, 16
  br i1 %cmp458, label %while.body.460, label %while.end.486

while.body.460:                                   ; preds = %while.cond.457
  %342 = load i8*, i8** %i_ptr, align 8
  %add.ptr461 = getelementptr inbounds i8, i8* %342, i64 1
  %343 = load i8*, i8** %i_end, align 8
  %cmp462 = icmp uge i8* %add.ptr461, %343
  br i1 %cmp462, label %if.then.464, label %if.end.472

if.then.464:                                      ; preds = %while.body.460
  %344 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call465 = call i32 @lzx_read_input(%struct.lzx_stream* %344)
  %tobool466 = icmp ne i32 %call465, 0
  br i1 %tobool466, label %if.then.467, label %if.end.469

if.then.467:                                      ; preds = %if.then.464
  %345 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error468 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %345, i32 0, i32 23
  %346 = load i32, i32* %error468, align 4
  store i32 %346, i32* %retval
  br label %return

if.end.469:                                       ; preds = %if.then.464
  %347 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr470 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %347, i32 0, i32 25
  %348 = load i8*, i8** %i_ptr470, align 8
  store i8* %348, i8** %i_ptr, align 8
  %349 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end471 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %349, i32 0, i32 26
  %350 = load i8*, i8** %i_end471, align 8
  store i8* %350, i8** %i_end, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.469, %while.body.460
  %351 = load i8*, i8** %i_ptr, align 8
  %arrayidx473 = getelementptr inbounds i8, i8* %351, i64 1
  %352 = load i8, i8* %arrayidx473, align 1
  %conv474 = zext i8 %352 to i32
  %shl475 = shl i32 %conv474, 8
  %353 = load i8*, i8** %i_ptr, align 8
  %arrayidx476 = getelementptr inbounds i8, i8* %353, i64 0
  %354 = load i8, i8* %arrayidx476, align 1
  %conv477 = zext i8 %354 to i32
  %or478 = or i32 %shl475, %conv477
  %355 = load i32, i32* %bits_left, align 4
  %conv479 = sext i32 %355 to i64
  %sub480 = sub i64 16, %conv479
  %sh_prom481 = trunc i64 %sub480 to i32
  %shl482 = shl i32 %or478, %sh_prom481
  %356 = load i32, i32* %bit_buffer, align 4
  %or483 = or i32 %356, %shl482
  store i32 %or483, i32* %bit_buffer, align 4
  %357 = load i32, i32* %bits_left, align 4
  %add484 = add nsw i32 %357, 16
  store i32 %add484, i32* %bits_left, align 4
  %358 = load i8*, i8** %i_ptr, align 8
  %add.ptr485 = getelementptr inbounds i8, i8* %358, i64 2
  store i8* %add.ptr485, i8** %i_ptr, align 8
  br label %while.cond.457

while.end.486:                                    ; preds = %while.cond.457
  %359 = load i32, i32* %bits_left, align 4
  %cmp487 = icmp sgt i32 %359, 16
  br i1 %cmp487, label %if.then.489, label %if.end.491

if.then.489:                                      ; preds = %while.end.486
  %360 = load i8*, i8** %i_ptr, align 8
  %add.ptr490 = getelementptr inbounds i8, i8* %360, i64 -2
  store i8* %add.ptr490, i8** %i_ptr, align 8
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.489, %while.end.486
  store i32 0, i32* %bits_left, align 4
  store i32 0, i32* %bit_buffer, align 4
  %arrayidx492 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 0
  store i8* %arrayidx492, i8** %rundest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.493

for.cond.493:                                     ; preds = %for.inc.510, %if.end.491
  %361 = load i32, i32* %i, align 4
  %cmp494 = icmp slt i32 %361, 12
  br i1 %cmp494, label %for.body.496, label %for.end.512

for.body.496:                                     ; preds = %for.cond.493
  %362 = load i8*, i8** %i_ptr, align 8
  %363 = load i8*, i8** %i_end, align 8
  %cmp497 = icmp eq i8* %362, %363
  br i1 %cmp497, label %if.then.499, label %if.end.507

if.then.499:                                      ; preds = %for.body.496
  %364 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call500 = call i32 @lzx_read_input(%struct.lzx_stream* %364)
  %tobool501 = icmp ne i32 %call500, 0
  br i1 %tobool501, label %if.then.502, label %if.end.504

if.then.502:                                      ; preds = %if.then.499
  %365 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error503 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %365, i32 0, i32 23
  %366 = load i32, i32* %error503, align 4
  store i32 %366, i32* %retval
  br label %return

if.end.504:                                       ; preds = %if.then.499
  %367 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr505 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %367, i32 0, i32 25
  %368 = load i8*, i8** %i_ptr505, align 8
  store i8* %368, i8** %i_ptr, align 8
  %369 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end506 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %369, i32 0, i32 26
  %370 = load i8*, i8** %i_end506, align 8
  store i8* %370, i8** %i_end, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.504, %for.body.496
  %371 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr508 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %incdec.ptr508, i8** %i_ptr, align 8
  %372 = load i8, i8* %371, align 1
  %373 = load i8*, i8** %rundest, align 8
  %incdec.ptr509 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %incdec.ptr509, i8** %rundest, align 8
  store i8 %372, i8* %373, align 1
  br label %for.inc.510

for.inc.510:                                      ; preds = %if.end.507
  %374 = load i32, i32* %i, align 4
  %inc511 = add nsw i32 %374, 1
  store i32 %inc511, i32* %i, align 4
  br label %for.cond.493

for.end.512:                                      ; preds = %for.cond.493
  %arrayidx513 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 0
  %375 = load i8, i8* %arrayidx513, align 1
  %conv514 = zext i8 %375 to i32
  %arrayidx515 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 1
  %376 = load i8, i8* %arrayidx515, align 1
  %conv516 = zext i8 %376 to i32
  %shl517 = shl i32 %conv516, 8
  %or518 = or i32 %conv514, %shl517
  %arrayidx519 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 2
  %377 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %377 to i32
  %shl521 = shl i32 %conv520, 16
  %or522 = or i32 %or518, %shl521
  %arrayidx523 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 3
  %378 = load i8, i8* %arrayidx523, align 1
  %conv524 = zext i8 %378 to i32
  %shl525 = shl i32 %conv524, 24
  %or526 = or i32 %or522, %shl525
  store i32 %or526, i32* %R0, align 4
  %arrayidx527 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 4
  %379 = load i8, i8* %arrayidx527, align 1
  %conv528 = zext i8 %379 to i32
  %arrayidx529 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 5
  %380 = load i8, i8* %arrayidx529, align 1
  %conv530 = zext i8 %380 to i32
  %shl531 = shl i32 %conv530, 8
  %or532 = or i32 %conv528, %shl531
  %arrayidx533 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 6
  %381 = load i8, i8* %arrayidx533, align 1
  %conv534 = zext i8 %381 to i32
  %shl535 = shl i32 %conv534, 16
  %or536 = or i32 %or532, %shl535
  %arrayidx537 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 7
  %382 = load i8, i8* %arrayidx537, align 1
  %conv538 = zext i8 %382 to i32
  %shl539 = shl i32 %conv538, 24
  %or540 = or i32 %or536, %shl539
  store i32 %or540, i32* %R1, align 4
  %arrayidx541 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 8
  %383 = load i8, i8* %arrayidx541, align 1
  %conv542 = zext i8 %383 to i32
  %arrayidx543 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 9
  %384 = load i8, i8* %arrayidx543, align 1
  %conv544 = zext i8 %384 to i32
  %shl545 = shl i32 %conv544, 8
  %or546 = or i32 %conv542, %shl545
  %arrayidx547 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 10
  %385 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %385 to i32
  %shl549 = shl i32 %conv548, 16
  %or550 = or i32 %or546, %shl549
  %arrayidx551 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i64 11
  %386 = load i8, i8* %arrayidx551, align 1
  %conv552 = zext i8 %386 to i32
  %shl553 = shl i32 %conv552, 24
  %or554 = or i32 %or550, %shl553
  store i32 %or554, i32* %R2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.313
  %387 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type555 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %387, i32 0, i32 19
  %388 = load i8, i8* %block_type555, align 1
  %conv556 = zext i8 %388 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i32 %conv556)
  %389 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error557 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %389, i32 0, i32 23
  store i32 -124, i32* %error557, align 4
  store i32 -124, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.512, %if.end.454
  br label %if.end.558

if.end.558:                                       ; preds = %sw.epilog, %while.body.184
  %390 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining559 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %390, i32 0, i32 15
  %391 = load i32, i32* %block_remaining559, align 4
  store i32 %391, i32* %this_run, align 4
  %392 = load i32, i32* %this_run, align 4
  %393 = load i32, i32* %bytes_todo, align 4
  %cmp560 = icmp sgt i32 %392, %393
  br i1 %cmp560, label %if.then.562, label %if.end.563

if.then.562:                                      ; preds = %if.end.558
  %394 = load i32, i32* %bytes_todo, align 4
  store i32 %394, i32* %this_run, align 4
  br label %if.end.563

if.end.563:                                       ; preds = %if.then.562, %if.end.558
  %395 = load i32, i32* %this_run, align 4
  %396 = load i32, i32* %bytes_todo, align 4
  %sub564 = sub nsw i32 %396, %395
  store i32 %sub564, i32* %bytes_todo, align 4
  %397 = load i32, i32* %this_run, align 4
  %398 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining565 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %398, i32 0, i32 15
  %399 = load i32, i32* %block_remaining565, align 4
  %sub566 = sub i32 %399, %397
  store i32 %sub566, i32* %block_remaining565, align 4
  %400 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_type567 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %400, i32 0, i32 19
  %401 = load i8, i8* %block_type567, align 1
  %conv568 = zext i8 %401 to i32
  switch i32 %conv568, label %sw.default.1403 [
    i32 1, label %sw.bb.569
    i32 2, label %sw.bb.857
    i32 3, label %sw.bb.1369
  ]

sw.bb.569:                                        ; preds = %if.end.563
  br label %while.cond.570

while.cond.570:                                   ; preds = %if.end.855, %sw.bb.569
  %402 = load i32, i32* %this_run, align 4
  %cmp571 = icmp sgt i32 %402, 0
  br i1 %cmp571, label %while.body.573, label %while.end.856

while.body.573:                                   ; preds = %while.cond.570
  br label %do.body.574

do.body.574:                                      ; preds = %while.body.573
  br label %while.cond.575

while.cond.575:                                   ; preds = %if.end.590, %do.body.574
  %403 = load i32, i32* %bits_left, align 4
  %cmp576 = icmp slt i32 %403, 16
  br i1 %cmp576, label %while.body.578, label %while.end.604

while.body.578:                                   ; preds = %while.cond.575
  %404 = load i8*, i8** %i_ptr, align 8
  %add.ptr579 = getelementptr inbounds i8, i8* %404, i64 1
  %405 = load i8*, i8** %i_end, align 8
  %cmp580 = icmp uge i8* %add.ptr579, %405
  br i1 %cmp580, label %if.then.582, label %if.end.590

if.then.582:                                      ; preds = %while.body.578
  %406 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call583 = call i32 @lzx_read_input(%struct.lzx_stream* %406)
  %tobool584 = icmp ne i32 %call583, 0
  br i1 %tobool584, label %if.then.585, label %if.end.587

if.then.585:                                      ; preds = %if.then.582
  %407 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error586 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %407, i32 0, i32 23
  %408 = load i32, i32* %error586, align 4
  store i32 %408, i32* %retval
  br label %return

if.end.587:                                       ; preds = %if.then.582
  %409 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr588 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %409, i32 0, i32 25
  %410 = load i8*, i8** %i_ptr588, align 8
  store i8* %410, i8** %i_ptr, align 8
  %411 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end589 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %411, i32 0, i32 26
  %412 = load i8*, i8** %i_end589, align 8
  store i8* %412, i8** %i_end, align 8
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.587, %while.body.578
  %413 = load i8*, i8** %i_ptr, align 8
  %arrayidx591 = getelementptr inbounds i8, i8* %413, i64 1
  %414 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %414 to i32
  %shl593 = shl i32 %conv592, 8
  %415 = load i8*, i8** %i_ptr, align 8
  %arrayidx594 = getelementptr inbounds i8, i8* %415, i64 0
  %416 = load i8, i8* %arrayidx594, align 1
  %conv595 = zext i8 %416 to i32
  %or596 = or i32 %shl593, %conv595
  %417 = load i32, i32* %bits_left, align 4
  %conv597 = sext i32 %417 to i64
  %sub598 = sub i64 16, %conv597
  %sh_prom599 = trunc i64 %sub598 to i32
  %shl600 = shl i32 %or596, %sh_prom599
  %418 = load i32, i32* %bit_buffer, align 4
  %or601 = or i32 %418, %shl600
  store i32 %or601, i32* %bit_buffer, align 4
  %419 = load i32, i32* %bits_left, align 4
  %add602 = add nsw i32 %419, 16
  store i32 %add602, i32* %bits_left, align 4
  %420 = load i8*, i8** %i_ptr, align 8
  %add.ptr603 = getelementptr inbounds i8, i8* %420, i64 2
  store i8* %add.ptr603, i8** %i_ptr, align 8
  br label %while.cond.575

while.end.604:                                    ; preds = %while.cond.575
  %421 = load i32, i32* %bit_buffer, align 4
  %shr605 = lshr i32 %421, 20
  %idxprom606 = zext i32 %shr605 to i64
  %422 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_table607 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %422, i32 0, i32 37
  %arrayidx608 = getelementptr inbounds [5408 x i16], [5408 x i16]* %MAINTREE_table607, i32 0, i64 %idxprom606
  %423 = load i16, i16* %arrayidx608, align 2
  store i16 %423, i16* %sym, align 2
  %424 = load i16, i16* %sym, align 2
  %conv609 = zext i16 %424 to i32
  %cmp610 = icmp sge i32 %conv609, 656
  br i1 %cmp610, label %if.then.612, label %if.end.641

if.then.612:                                      ; preds = %while.end.604
  store i32 1048576, i32* %i, align 4
  br label %do.body.613

do.body.613:                                      ; preds = %do.cond, %if.then.612
  %425 = load i32, i32* %i, align 4
  %shr614 = ashr i32 %425, 1
  store i32 %shr614, i32* %i, align 4
  %426 = load i32, i32* %i, align 4
  %cmp615 = icmp eq i32 %426, 0
  br i1 %cmp615, label %if.then.617, label %if.end.619

if.then.617:                                      ; preds = %do.body.613
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %427 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error618 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %427, i32 0, i32 23
  store i32 -124, i32* %error618, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.619:                                       ; preds = %do.body.613
  %428 = load i16, i16* %sym, align 2
  %conv620 = zext i16 %428 to i32
  %shl621 = shl i32 %conv620, 1
  %conv622 = trunc i32 %shl621 to i16
  store i16 %conv622, i16* %sym, align 2
  %429 = load i32, i32* %bit_buffer, align 4
  %430 = load i32, i32* %i, align 4
  %and623 = and i32 %429, %430
  %tobool624 = icmp ne i32 %and623, 0
  %cond = select i1 %tobool624, i32 1, i32 0
  %431 = load i16, i16* %sym, align 2
  %conv625 = zext i16 %431 to i32
  %or626 = or i32 %conv625, %cond
  %conv627 = trunc i32 %or626 to i16
  store i16 %conv627, i16* %sym, align 2
  %432 = load i16, i16* %sym, align 2
  %conv628 = zext i16 %432 to i32
  %cmp629 = icmp sge i32 %conv628, 5408
  br i1 %cmp629, label %if.then.631, label %if.end.633

if.then.631:                                      ; preds = %if.end.619
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %433 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error632 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %433, i32 0, i32 23
  store i32 -124, i32* %error632, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.633:                                       ; preds = %if.end.619
  %434 = load i16, i16* %sym, align 2
  %idxprom634 = zext i16 %434 to i64
  %435 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_table635 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %435, i32 0, i32 37
  %arrayidx636 = getelementptr inbounds [5408 x i16], [5408 x i16]* %MAINTREE_table635, i32 0, i64 %idxprom634
  %436 = load i16, i16* %arrayidx636, align 2
  store i16 %436, i16* %sym, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.633
  %437 = load i16, i16* %sym, align 2
  %conv637 = zext i16 %437 to i32
  %cmp638 = icmp sge i32 %conv637, 656
  br i1 %cmp638, label %do.body.613, label %do.end.640

do.end.640:                                       ; preds = %do.cond
  br label %if.end.641

if.end.641:                                       ; preds = %do.end.640, %while.end.604
  %438 = load i16, i16* %sym, align 2
  %conv642 = zext i16 %438 to i32
  store i32 %conv642, i32* %main_element, align 4
  %439 = load i16, i16* %sym, align 2
  %idxprom643 = zext i16 %439 to i64
  %440 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len644 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %440, i32 0, i32 33
  %arrayidx645 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len644, i32 0, i64 %idxprom643
  %441 = load i8, i8* %arrayidx645, align 1
  %conv646 = zext i8 %441 to i32
  store i32 %conv646, i32* %i, align 4
  %442 = load i32, i32* %i, align 4
  %443 = load i32, i32* %bit_buffer, align 4
  %shl647 = shl i32 %443, %442
  store i32 %shl647, i32* %bit_buffer, align 4
  %444 = load i32, i32* %i, align 4
  %445 = load i32, i32* %bits_left, align 4
  %sub648 = sub nsw i32 %445, %444
  store i32 %sub648, i32* %bits_left, align 4
  br label %do.end.650

do.end.650:                                       ; preds = %if.end.641
  %446 = load i32, i32* %main_element, align 4
  %cmp651 = icmp slt i32 %446, 256
  br i1 %cmp651, label %if.then.653, label %if.else

if.then.653:                                      ; preds = %do.end.650
  %447 = load i32, i32* %main_element, align 4
  %conv654 = trunc i32 %447 to i8
  %448 = load i32, i32* %window_posn, align 4
  %inc655 = add i32 %448, 1
  store i32 %inc655, i32* %window_posn, align 4
  %idxprom656 = zext i32 %448 to i64
  %449 = load i8*, i8** %window, align 8
  %arrayidx657 = getelementptr inbounds i8, i8* %449, i64 %idxprom656
  store i8 %conv654, i8* %arrayidx657, align 1
  %450 = load i32, i32* %this_run, align 4
  %dec = add nsw i32 %450, -1
  store i32 %dec, i32* %this_run, align 4
  br label %if.end.855

if.else:                                          ; preds = %do.end.650
  %451 = load i32, i32* %main_element, align 4
  %sub658 = sub nsw i32 %451, 256
  store i32 %sub658, i32* %main_element, align 4
  %452 = load i32, i32* %main_element, align 4
  %and659 = and i32 %452, 7
  store i32 %and659, i32* %match_length, align 4
  %453 = load i32, i32* %match_length, align 4
  %cmp660 = icmp eq i32 %453, 7
  br i1 %cmp660, label %if.then.662, label %if.end.743

if.then.662:                                      ; preds = %if.else
  br label %do.body.663

do.body.663:                                      ; preds = %if.then.662
  br label %while.cond.664

while.cond.664:                                   ; preds = %if.end.679, %do.body.663
  %454 = load i32, i32* %bits_left, align 4
  %cmp665 = icmp slt i32 %454, 16
  br i1 %cmp665, label %while.body.667, label %while.end.693

while.body.667:                                   ; preds = %while.cond.664
  %455 = load i8*, i8** %i_ptr, align 8
  %add.ptr668 = getelementptr inbounds i8, i8* %455, i64 1
  %456 = load i8*, i8** %i_end, align 8
  %cmp669 = icmp uge i8* %add.ptr668, %456
  br i1 %cmp669, label %if.then.671, label %if.end.679

if.then.671:                                      ; preds = %while.body.667
  %457 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call672 = call i32 @lzx_read_input(%struct.lzx_stream* %457)
  %tobool673 = icmp ne i32 %call672, 0
  br i1 %tobool673, label %if.then.674, label %if.end.676

if.then.674:                                      ; preds = %if.then.671
  %458 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error675 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %458, i32 0, i32 23
  %459 = load i32, i32* %error675, align 4
  store i32 %459, i32* %retval
  br label %return

if.end.676:                                       ; preds = %if.then.671
  %460 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr677 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %460, i32 0, i32 25
  %461 = load i8*, i8** %i_ptr677, align 8
  store i8* %461, i8** %i_ptr, align 8
  %462 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end678 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %462, i32 0, i32 26
  %463 = load i8*, i8** %i_end678, align 8
  store i8* %463, i8** %i_end, align 8
  br label %if.end.679

if.end.679:                                       ; preds = %if.end.676, %while.body.667
  %464 = load i8*, i8** %i_ptr, align 8
  %arrayidx680 = getelementptr inbounds i8, i8* %464, i64 1
  %465 = load i8, i8* %arrayidx680, align 1
  %conv681 = zext i8 %465 to i32
  %shl682 = shl i32 %conv681, 8
  %466 = load i8*, i8** %i_ptr, align 8
  %arrayidx683 = getelementptr inbounds i8, i8* %466, i64 0
  %467 = load i8, i8* %arrayidx683, align 1
  %conv684 = zext i8 %467 to i32
  %or685 = or i32 %shl682, %conv684
  %468 = load i32, i32* %bits_left, align 4
  %conv686 = sext i32 %468 to i64
  %sub687 = sub i64 16, %conv686
  %sh_prom688 = trunc i64 %sub687 to i32
  %shl689 = shl i32 %or685, %sh_prom688
  %469 = load i32, i32* %bit_buffer, align 4
  %or690 = or i32 %469, %shl689
  store i32 %or690, i32* %bit_buffer, align 4
  %470 = load i32, i32* %bits_left, align 4
  %add691 = add nsw i32 %470, 16
  store i32 %add691, i32* %bits_left, align 4
  %471 = load i8*, i8** %i_ptr, align 8
  %add.ptr692 = getelementptr inbounds i8, i8* %471, i64 2
  store i8* %add.ptr692, i8** %i_ptr, align 8
  br label %while.cond.664

while.end.693:                                    ; preds = %while.cond.664
  %472 = load i32, i32* %bit_buffer, align 4
  %shr694 = lshr i32 %472, 20
  %idxprom695 = zext i32 %shr694 to i64
  %473 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_table696 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %473, i32 0, i32 38
  %arrayidx697 = getelementptr inbounds [4596 x i16], [4596 x i16]* %LENGTH_table696, i32 0, i64 %idxprom695
  %474 = load i16, i16* %arrayidx697, align 2
  store i16 %474, i16* %sym, align 2
  %475 = load i16, i16* %sym, align 2
  %conv698 = zext i16 %475 to i32
  %cmp699 = icmp sge i32 %conv698, 250
  br i1 %cmp699, label %if.then.701, label %if.end.732

if.then.701:                                      ; preds = %while.end.693
  store i32 1048576, i32* %i, align 4
  br label %do.body.702

do.body.702:                                      ; preds = %do.cond.727, %if.then.701
  %476 = load i32, i32* %i, align 4
  %shr703 = ashr i32 %476, 1
  store i32 %shr703, i32* %i, align 4
  %477 = load i32, i32* %i, align 4
  %cmp704 = icmp eq i32 %477, 0
  br i1 %cmp704, label %if.then.706, label %if.end.708

if.then.706:                                      ; preds = %do.body.702
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %478 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error707 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %478, i32 0, i32 23
  store i32 -124, i32* %error707, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.708:                                       ; preds = %do.body.702
  %479 = load i16, i16* %sym, align 2
  %conv709 = zext i16 %479 to i32
  %shl710 = shl i32 %conv709, 1
  %conv711 = trunc i32 %shl710 to i16
  store i16 %conv711, i16* %sym, align 2
  %480 = load i32, i32* %bit_buffer, align 4
  %481 = load i32, i32* %i, align 4
  %and712 = and i32 %480, %481
  %tobool713 = icmp ne i32 %and712, 0
  %cond714 = select i1 %tobool713, i32 1, i32 0
  %482 = load i16, i16* %sym, align 2
  %conv715 = zext i16 %482 to i32
  %or716 = or i32 %conv715, %cond714
  %conv717 = trunc i32 %or716 to i16
  store i16 %conv717, i16* %sym, align 2
  %483 = load i16, i16* %sym, align 2
  %conv718 = zext i16 %483 to i32
  %cmp719 = icmp sge i32 %conv718, 4596
  br i1 %cmp719, label %if.then.721, label %if.end.723

if.then.721:                                      ; preds = %if.end.708
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %484 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error722 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %484, i32 0, i32 23
  store i32 -124, i32* %error722, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.723:                                       ; preds = %if.end.708
  %485 = load i16, i16* %sym, align 2
  %idxprom724 = zext i16 %485 to i64
  %486 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_table725 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %486, i32 0, i32 38
  %arrayidx726 = getelementptr inbounds [4596 x i16], [4596 x i16]* %LENGTH_table725, i32 0, i64 %idxprom724
  %487 = load i16, i16* %arrayidx726, align 2
  store i16 %487, i16* %sym, align 2
  br label %do.cond.727

do.cond.727:                                      ; preds = %if.end.723
  %488 = load i16, i16* %sym, align 2
  %conv728 = zext i16 %488 to i32
  %cmp729 = icmp sge i32 %conv728, 250
  br i1 %cmp729, label %do.body.702, label %do.end.731

do.end.731:                                       ; preds = %do.cond.727
  br label %if.end.732

if.end.732:                                       ; preds = %do.end.731, %while.end.693
  %489 = load i16, i16* %sym, align 2
  %conv733 = zext i16 %489 to i32
  store i32 %conv733, i32* %length_footer, align 4
  %490 = load i16, i16* %sym, align 2
  %idxprom734 = zext i16 %490 to i64
  %491 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_len735 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %491, i32 0, i32 34
  %arrayidx736 = getelementptr inbounds [314 x i8], [314 x i8]* %LENGTH_len735, i32 0, i64 %idxprom734
  %492 = load i8, i8* %arrayidx736, align 1
  %conv737 = zext i8 %492 to i32
  store i32 %conv737, i32* %i, align 4
  %493 = load i32, i32* %i, align 4
  %494 = load i32, i32* %bit_buffer, align 4
  %shl738 = shl i32 %494, %493
  store i32 %shl738, i32* %bit_buffer, align 4
  %495 = load i32, i32* %i, align 4
  %496 = load i32, i32* %bits_left, align 4
  %sub739 = sub nsw i32 %496, %495
  store i32 %sub739, i32* %bits_left, align 4
  br label %do.end.741

do.end.741:                                       ; preds = %if.end.732
  %497 = load i32, i32* %length_footer, align 4
  %498 = load i32, i32* %match_length, align 4
  %add742 = add nsw i32 %498, %497
  store i32 %add742, i32* %match_length, align 4
  br label %if.end.743

if.end.743:                                       ; preds = %do.end.741, %if.else
  %499 = load i32, i32* %match_length, align 4
  %add744 = add nsw i32 %499, 2
  store i32 %add744, i32* %match_length, align 4
  %500 = load i32, i32* %main_element, align 4
  %shr745 = ashr i32 %500, 3
  store i32 %shr745, i32* %match_offset, align 4
  switch i32 %shr745, label %sw.default.750 [
    i32 0, label %sw.bb.746
    i32 1, label %sw.bb.747
    i32 2, label %sw.bb.748
    i32 3, label %sw.bb.749
  ]

sw.bb.746:                                        ; preds = %if.end.743
  %501 = load i32, i32* %R0, align 4
  store i32 %501, i32* %match_offset, align 4
  br label %sw.epilog.797

sw.bb.747:                                        ; preds = %if.end.743
  %502 = load i32, i32* %R1, align 4
  store i32 %502, i32* %match_offset, align 4
  %503 = load i32, i32* %R0, align 4
  store i32 %503, i32* %R1, align 4
  %504 = load i32, i32* %match_offset, align 4
  store i32 %504, i32* %R0, align 4
  br label %sw.epilog.797

sw.bb.748:                                        ; preds = %if.end.743
  %505 = load i32, i32* %R2, align 4
  store i32 %505, i32* %match_offset, align 4
  %506 = load i32, i32* %R0, align 4
  store i32 %506, i32* %R2, align 4
  %507 = load i32, i32* %match_offset, align 4
  store i32 %507, i32* %R0, align 4
  br label %sw.epilog.797

sw.bb.749:                                        ; preds = %if.end.743
  store i32 1, i32* %match_offset, align 4
  %508 = load i32, i32* %R1, align 4
  store i32 %508, i32* %R2, align 4
  %509 = load i32, i32* %R0, align 4
  store i32 %509, i32* %R1, align 4
  %510 = load i32, i32* %match_offset, align 4
  store i32 %510, i32* %R0, align 4
  br label %sw.epilog.797

sw.default.750:                                   ; preds = %if.end.743
  %511 = load i32, i32* %match_offset, align 4
  %idxprom751 = zext i32 %511 to i64
  %512 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %extra_bits = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %512, i32 0, i32 41
  %arrayidx752 = getelementptr inbounds [51 x i8], [51 x i8]* %extra_bits, i32 0, i64 %idxprom751
  %513 = load i8, i8* %arrayidx752, align 1
  %conv753 = zext i8 %513 to i32
  store i32 %conv753, i32* %extra, align 4
  br label %do.body.754

do.body.754:                                      ; preds = %sw.default.750
  br label %while.cond.755

while.cond.755:                                   ; preds = %if.end.770, %do.body.754
  %514 = load i32, i32* %bits_left, align 4
  %515 = load i32, i32* %extra, align 4
  %cmp756 = icmp slt i32 %514, %515
  br i1 %cmp756, label %while.body.758, label %while.end.784

while.body.758:                                   ; preds = %while.cond.755
  %516 = load i8*, i8** %i_ptr, align 8
  %add.ptr759 = getelementptr inbounds i8, i8* %516, i64 1
  %517 = load i8*, i8** %i_end, align 8
  %cmp760 = icmp uge i8* %add.ptr759, %517
  br i1 %cmp760, label %if.then.762, label %if.end.770

if.then.762:                                      ; preds = %while.body.758
  %518 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call763 = call i32 @lzx_read_input(%struct.lzx_stream* %518)
  %tobool764 = icmp ne i32 %call763, 0
  br i1 %tobool764, label %if.then.765, label %if.end.767

if.then.765:                                      ; preds = %if.then.762
  %519 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error766 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %519, i32 0, i32 23
  %520 = load i32, i32* %error766, align 4
  store i32 %520, i32* %retval
  br label %return

if.end.767:                                       ; preds = %if.then.762
  %521 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr768 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %521, i32 0, i32 25
  %522 = load i8*, i8** %i_ptr768, align 8
  store i8* %522, i8** %i_ptr, align 8
  %523 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end769 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %523, i32 0, i32 26
  %524 = load i8*, i8** %i_end769, align 8
  store i8* %524, i8** %i_end, align 8
  br label %if.end.770

if.end.770:                                       ; preds = %if.end.767, %while.body.758
  %525 = load i8*, i8** %i_ptr, align 8
  %arrayidx771 = getelementptr inbounds i8, i8* %525, i64 1
  %526 = load i8, i8* %arrayidx771, align 1
  %conv772 = zext i8 %526 to i32
  %shl773 = shl i32 %conv772, 8
  %527 = load i8*, i8** %i_ptr, align 8
  %arrayidx774 = getelementptr inbounds i8, i8* %527, i64 0
  %528 = load i8, i8* %arrayidx774, align 1
  %conv775 = zext i8 %528 to i32
  %or776 = or i32 %shl773, %conv775
  %529 = load i32, i32* %bits_left, align 4
  %conv777 = sext i32 %529 to i64
  %sub778 = sub i64 16, %conv777
  %sh_prom779 = trunc i64 %sub778 to i32
  %shl780 = shl i32 %or776, %sh_prom779
  %530 = load i32, i32* %bit_buffer, align 4
  %or781 = or i32 %530, %shl780
  store i32 %or781, i32* %bit_buffer, align 4
  %531 = load i32, i32* %bits_left, align 4
  %add782 = add nsw i32 %531, 16
  store i32 %add782, i32* %bits_left, align 4
  %532 = load i8*, i8** %i_ptr, align 8
  %add.ptr783 = getelementptr inbounds i8, i8* %532, i64 2
  store i8* %add.ptr783, i8** %i_ptr, align 8
  br label %while.cond.755

while.end.784:                                    ; preds = %while.cond.755
  %533 = load i32, i32* %bit_buffer, align 4
  %534 = load i32, i32* %extra, align 4
  %conv785 = sext i32 %534 to i64
  %sub786 = sub i64 32, %conv785
  %sh_prom787 = trunc i64 %sub786 to i32
  %shr788 = lshr i32 %533, %sh_prom787
  store i32 %shr788, i32* %verbatim_bits, align 4
  %535 = load i32, i32* %extra, align 4
  %536 = load i32, i32* %bit_buffer, align 4
  %shl789 = shl i32 %536, %535
  store i32 %shl789, i32* %bit_buffer, align 4
  %537 = load i32, i32* %extra, align 4
  %538 = load i32, i32* %bits_left, align 4
  %sub790 = sub nsw i32 %538, %537
  store i32 %sub790, i32* %bits_left, align 4
  br label %do.end.792

do.end.792:                                       ; preds = %while.end.784
  %539 = load i32, i32* %match_offset, align 4
  %idxprom793 = zext i32 %539 to i64
  %540 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %position_base = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %540, i32 0, i32 40
  %arrayidx794 = getelementptr inbounds [51 x i32], [51 x i32]* %position_base, i32 0, i64 %idxprom793
  %541 = load i32, i32* %arrayidx794, align 4
  %sub795 = sub i32 %541, 2
  %542 = load i32, i32* %verbatim_bits, align 4
  %add796 = add i32 %sub795, %542
  store i32 %add796, i32* %match_offset, align 4
  %543 = load i32, i32* %R1, align 4
  store i32 %543, i32* %R2, align 4
  %544 = load i32, i32* %R0, align 4
  store i32 %544, i32* %R1, align 4
  %545 = load i32, i32* %match_offset, align 4
  store i32 %545, i32* %R0, align 4
  br label %sw.epilog.797

sw.epilog.797:                                    ; preds = %do.end.792, %sw.bb.749, %sw.bb.748, %sw.bb.747, %sw.bb.746
  %546 = load i32, i32* %window_posn, align 4
  %547 = load i32, i32* %match_length, align 4
  %add798 = add i32 %546, %547
  %548 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %548, i32 0, i32 6
  %549 = load i32, i32* %window_size, align 4
  %cmp799 = icmp ugt i32 %add798, %549
  br i1 %cmp799, label %if.then.801, label %if.end.803

if.then.801:                                      ; preds = %sw.epilog.797
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  %550 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error802 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %550, i32 0, i32 23
  store i32 -124, i32* %error802, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.803:                                       ; preds = %sw.epilog.797
  %551 = load i32, i32* %window_posn, align 4
  %idxprom804 = zext i32 %551 to i64
  %552 = load i8*, i8** %window, align 8
  %arrayidx805 = getelementptr inbounds i8, i8* %552, i64 %idxprom804
  store i8* %arrayidx805, i8** %rundest, align 8
  %553 = load i32, i32* %match_length, align 4
  store i32 %553, i32* %i, align 4
  %554 = load i32, i32* %match_offset, align 4
  %555 = load i32, i32* %window_posn, align 4
  %cmp806 = icmp ugt i32 %554, %555
  br i1 %cmp806, label %if.then.808, label %if.else.841

if.then.808:                                      ; preds = %if.end.803
  %556 = load i32, i32* %match_offset, align 4
  %557 = load i32, i32* %window_posn, align 4
  %sub809 = sub i32 %556, %557
  store i32 %sub809, i32* %j, align 4
  %558 = load i32, i32* %j, align 4
  %559 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size810 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %559, i32 0, i32 6
  %560 = load i32, i32* %window_size810, align 4
  %cmp811 = icmp sgt i32 %558, %560
  br i1 %cmp811, label %if.then.813, label %if.end.815

if.then.813:                                      ; preds = %if.then.808
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  %561 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error814 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %561, i32 0, i32 23
  store i32 -124, i32* %error814, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.815:                                       ; preds = %if.then.808
  %562 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size816 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %562, i32 0, i32 6
  %563 = load i32, i32* %window_size816, align 4
  %564 = load i32, i32* %j, align 4
  %sub817 = sub i32 %563, %564
  %idxprom818 = zext i32 %sub817 to i64
  %565 = load i8*, i8** %window, align 8
  %arrayidx819 = getelementptr inbounds i8, i8* %565, i64 %idxprom818
  store i8* %arrayidx819, i8** %runsrc, align 8
  %566 = load i32, i32* %j, align 4
  %567 = load i32, i32* %i, align 4
  %cmp820 = icmp slt i32 %566, %567
  br i1 %cmp820, label %if.then.822, label %if.end.832

if.then.822:                                      ; preds = %if.end.815
  %568 = load i32, i32* %j, align 4
  %569 = load i32, i32* %i, align 4
  %sub823 = sub nsw i32 %569, %568
  store i32 %sub823, i32* %i, align 4
  br label %while.cond.824

while.cond.824:                                   ; preds = %while.body.828, %if.then.822
  %570 = load i32, i32* %j, align 4
  %dec825 = add nsw i32 %570, -1
  store i32 %dec825, i32* %j, align 4
  %cmp826 = icmp sgt i32 %570, 0
  br i1 %cmp826, label %while.body.828, label %while.end.831

while.body.828:                                   ; preds = %while.cond.824
  %571 = load i8*, i8** %runsrc, align 8
  %incdec.ptr829 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %incdec.ptr829, i8** %runsrc, align 8
  %572 = load i8, i8* %571, align 1
  %573 = load i8*, i8** %rundest, align 8
  %incdec.ptr830 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %incdec.ptr830, i8** %rundest, align 8
  store i8 %572, i8* %573, align 1
  br label %while.cond.824

while.end.831:                                    ; preds = %while.cond.824
  %574 = load i8*, i8** %window, align 8
  store i8* %574, i8** %runsrc, align 8
  br label %if.end.832

if.end.832:                                       ; preds = %while.end.831, %if.end.815
  br label %while.cond.833

while.cond.833:                                   ; preds = %while.body.837, %if.end.832
  %575 = load i32, i32* %i, align 4
  %dec834 = add nsw i32 %575, -1
  store i32 %dec834, i32* %i, align 4
  %cmp835 = icmp sgt i32 %575, 0
  br i1 %cmp835, label %while.body.837, label %while.end.840

while.body.837:                                   ; preds = %while.cond.833
  %576 = load i8*, i8** %runsrc, align 8
  %incdec.ptr838 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %incdec.ptr838, i8** %runsrc, align 8
  %577 = load i8, i8* %576, align 1
  %578 = load i8*, i8** %rundest, align 8
  %incdec.ptr839 = getelementptr inbounds i8, i8* %578, i32 1
  store i8* %incdec.ptr839, i8** %rundest, align 8
  store i8 %577, i8* %578, align 1
  br label %while.cond.833

while.end.840:                                    ; preds = %while.cond.833
  br label %if.end.852

if.else.841:                                      ; preds = %if.end.803
  %579 = load i8*, i8** %rundest, align 8
  %580 = load i32, i32* %match_offset, align 4
  %idx.ext842 = zext i32 %580 to i64
  %idx.neg = sub i64 0, %idx.ext842
  %add.ptr843 = getelementptr inbounds i8, i8* %579, i64 %idx.neg
  store i8* %add.ptr843, i8** %runsrc, align 8
  br label %while.cond.844

while.cond.844:                                   ; preds = %while.body.848, %if.else.841
  %581 = load i32, i32* %i, align 4
  %dec845 = add nsw i32 %581, -1
  store i32 %dec845, i32* %i, align 4
  %cmp846 = icmp sgt i32 %581, 0
  br i1 %cmp846, label %while.body.848, label %while.end.851

while.body.848:                                   ; preds = %while.cond.844
  %582 = load i8*, i8** %runsrc, align 8
  %incdec.ptr849 = getelementptr inbounds i8, i8* %582, i32 1
  store i8* %incdec.ptr849, i8** %runsrc, align 8
  %583 = load i8, i8* %582, align 1
  %584 = load i8*, i8** %rundest, align 8
  %incdec.ptr850 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %incdec.ptr850, i8** %rundest, align 8
  store i8 %583, i8* %584, align 1
  br label %while.cond.844

while.end.851:                                    ; preds = %while.cond.844
  br label %if.end.852

if.end.852:                                       ; preds = %while.end.851, %while.end.840
  %585 = load i32, i32* %match_length, align 4
  %586 = load i32, i32* %this_run, align 4
  %sub853 = sub nsw i32 %586, %585
  store i32 %sub853, i32* %this_run, align 4
  %587 = load i32, i32* %match_length, align 4
  %588 = load i32, i32* %window_posn, align 4
  %add854 = add i32 %588, %587
  store i32 %add854, i32* %window_posn, align 4
  br label %if.end.855

if.end.855:                                       ; preds = %if.end.852, %if.then.653
  br label %while.cond.570

while.end.856:                                    ; preds = %while.cond.570
  br label %sw.epilog.1405

sw.bb.857:                                        ; preds = %if.end.563
  br label %while.cond.858

while.cond.858:                                   ; preds = %if.end.1367, %sw.bb.857
  %589 = load i32, i32* %this_run, align 4
  %cmp859 = icmp sgt i32 %589, 0
  br i1 %cmp859, label %while.body.861, label %while.end.1368

while.body.861:                                   ; preds = %while.cond.858
  br label %do.body.862

do.body.862:                                      ; preds = %while.body.861
  br label %while.cond.863

while.cond.863:                                   ; preds = %if.end.878, %do.body.862
  %590 = load i32, i32* %bits_left, align 4
  %cmp864 = icmp slt i32 %590, 16
  br i1 %cmp864, label %while.body.866, label %while.end.892

while.body.866:                                   ; preds = %while.cond.863
  %591 = load i8*, i8** %i_ptr, align 8
  %add.ptr867 = getelementptr inbounds i8, i8* %591, i64 1
  %592 = load i8*, i8** %i_end, align 8
  %cmp868 = icmp uge i8* %add.ptr867, %592
  br i1 %cmp868, label %if.then.870, label %if.end.878

if.then.870:                                      ; preds = %while.body.866
  %593 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call871 = call i32 @lzx_read_input(%struct.lzx_stream* %593)
  %tobool872 = icmp ne i32 %call871, 0
  br i1 %tobool872, label %if.then.873, label %if.end.875

if.then.873:                                      ; preds = %if.then.870
  %594 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error874 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %594, i32 0, i32 23
  %595 = load i32, i32* %error874, align 4
  store i32 %595, i32* %retval
  br label %return

if.end.875:                                       ; preds = %if.then.870
  %596 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr876 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %596, i32 0, i32 25
  %597 = load i8*, i8** %i_ptr876, align 8
  store i8* %597, i8** %i_ptr, align 8
  %598 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end877 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %598, i32 0, i32 26
  %599 = load i8*, i8** %i_end877, align 8
  store i8* %599, i8** %i_end, align 8
  br label %if.end.878

if.end.878:                                       ; preds = %if.end.875, %while.body.866
  %600 = load i8*, i8** %i_ptr, align 8
  %arrayidx879 = getelementptr inbounds i8, i8* %600, i64 1
  %601 = load i8, i8* %arrayidx879, align 1
  %conv880 = zext i8 %601 to i32
  %shl881 = shl i32 %conv880, 8
  %602 = load i8*, i8** %i_ptr, align 8
  %arrayidx882 = getelementptr inbounds i8, i8* %602, i64 0
  %603 = load i8, i8* %arrayidx882, align 1
  %conv883 = zext i8 %603 to i32
  %or884 = or i32 %shl881, %conv883
  %604 = load i32, i32* %bits_left, align 4
  %conv885 = sext i32 %604 to i64
  %sub886 = sub i64 16, %conv885
  %sh_prom887 = trunc i64 %sub886 to i32
  %shl888 = shl i32 %or884, %sh_prom887
  %605 = load i32, i32* %bit_buffer, align 4
  %or889 = or i32 %605, %shl888
  store i32 %or889, i32* %bit_buffer, align 4
  %606 = load i32, i32* %bits_left, align 4
  %add890 = add nsw i32 %606, 16
  store i32 %add890, i32* %bits_left, align 4
  %607 = load i8*, i8** %i_ptr, align 8
  %add.ptr891 = getelementptr inbounds i8, i8* %607, i64 2
  store i8* %add.ptr891, i8** %i_ptr, align 8
  br label %while.cond.863

while.end.892:                                    ; preds = %while.cond.863
  %608 = load i32, i32* %bit_buffer, align 4
  %shr893 = lshr i32 %608, 20
  %idxprom894 = zext i32 %shr893 to i64
  %609 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_table895 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %609, i32 0, i32 37
  %arrayidx896 = getelementptr inbounds [5408 x i16], [5408 x i16]* %MAINTREE_table895, i32 0, i64 %idxprom894
  %610 = load i16, i16* %arrayidx896, align 2
  store i16 %610, i16* %sym, align 2
  %611 = load i16, i16* %sym, align 2
  %conv897 = zext i16 %611 to i32
  %cmp898 = icmp sge i32 %conv897, 656
  br i1 %cmp898, label %if.then.900, label %if.end.931

if.then.900:                                      ; preds = %while.end.892
  store i32 1048576, i32* %i, align 4
  br label %do.body.901

do.body.901:                                      ; preds = %do.cond.926, %if.then.900
  %612 = load i32, i32* %i, align 4
  %shr902 = ashr i32 %612, 1
  store i32 %shr902, i32* %i, align 4
  %613 = load i32, i32* %i, align 4
  %cmp903 = icmp eq i32 %613, 0
  br i1 %cmp903, label %if.then.905, label %if.end.907

if.then.905:                                      ; preds = %do.body.901
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %614 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error906 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %614, i32 0, i32 23
  store i32 -124, i32* %error906, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.907:                                       ; preds = %do.body.901
  %615 = load i16, i16* %sym, align 2
  %conv908 = zext i16 %615 to i32
  %shl909 = shl i32 %conv908, 1
  %conv910 = trunc i32 %shl909 to i16
  store i16 %conv910, i16* %sym, align 2
  %616 = load i32, i32* %bit_buffer, align 4
  %617 = load i32, i32* %i, align 4
  %and911 = and i32 %616, %617
  %tobool912 = icmp ne i32 %and911, 0
  %cond913 = select i1 %tobool912, i32 1, i32 0
  %618 = load i16, i16* %sym, align 2
  %conv914 = zext i16 %618 to i32
  %or915 = or i32 %conv914, %cond913
  %conv916 = trunc i32 %or915 to i16
  store i16 %conv916, i16* %sym, align 2
  %619 = load i16, i16* %sym, align 2
  %conv917 = zext i16 %619 to i32
  %cmp918 = icmp sge i32 %conv917, 5408
  br i1 %cmp918, label %if.then.920, label %if.end.922

if.then.920:                                      ; preds = %if.end.907
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %620 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error921 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %620, i32 0, i32 23
  store i32 -124, i32* %error921, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.922:                                       ; preds = %if.end.907
  %621 = load i16, i16* %sym, align 2
  %idxprom923 = zext i16 %621 to i64
  %622 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_table924 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %622, i32 0, i32 37
  %arrayidx925 = getelementptr inbounds [5408 x i16], [5408 x i16]* %MAINTREE_table924, i32 0, i64 %idxprom923
  %623 = load i16, i16* %arrayidx925, align 2
  store i16 %623, i16* %sym, align 2
  br label %do.cond.926

do.cond.926:                                      ; preds = %if.end.922
  %624 = load i16, i16* %sym, align 2
  %conv927 = zext i16 %624 to i32
  %cmp928 = icmp sge i32 %conv927, 656
  br i1 %cmp928, label %do.body.901, label %do.end.930

do.end.930:                                       ; preds = %do.cond.926
  br label %if.end.931

if.end.931:                                       ; preds = %do.end.930, %while.end.892
  %625 = load i16, i16* %sym, align 2
  %conv932 = zext i16 %625 to i32
  store i32 %conv932, i32* %main_element, align 4
  %626 = load i16, i16* %sym, align 2
  %idxprom933 = zext i16 %626 to i64
  %627 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %MAINTREE_len934 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %627, i32 0, i32 33
  %arrayidx935 = getelementptr inbounds [720 x i8], [720 x i8]* %MAINTREE_len934, i32 0, i64 %idxprom933
  %628 = load i8, i8* %arrayidx935, align 1
  %conv936 = zext i8 %628 to i32
  store i32 %conv936, i32* %i, align 4
  %629 = load i32, i32* %i, align 4
  %630 = load i32, i32* %bit_buffer, align 4
  %shl937 = shl i32 %630, %629
  store i32 %shl937, i32* %bit_buffer, align 4
  %631 = load i32, i32* %i, align 4
  %632 = load i32, i32* %bits_left, align 4
  %sub938 = sub nsw i32 %632, %631
  store i32 %sub938, i32* %bits_left, align 4
  br label %do.end.940

do.end.940:                                       ; preds = %if.end.931
  %633 = load i32, i32* %main_element, align 4
  %cmp941 = icmp slt i32 %633, 256
  br i1 %cmp941, label %if.then.943, label %if.else.949

if.then.943:                                      ; preds = %do.end.940
  %634 = load i32, i32* %main_element, align 4
  %conv944 = trunc i32 %634 to i8
  %635 = load i32, i32* %window_posn, align 4
  %inc945 = add i32 %635, 1
  store i32 %inc945, i32* %window_posn, align 4
  %idxprom946 = zext i32 %635 to i64
  %636 = load i8*, i8** %window, align 8
  %arrayidx947 = getelementptr inbounds i8, i8* %636, i64 %idxprom946
  store i8 %conv944, i8* %arrayidx947, align 1
  %637 = load i32, i32* %this_run, align 4
  %dec948 = add nsw i32 %637, -1
  store i32 %dec948, i32* %this_run, align 4
  br label %if.end.1367

if.else.949:                                      ; preds = %do.end.940
  %638 = load i32, i32* %main_element, align 4
  %sub950 = sub nsw i32 %638, 256
  store i32 %sub950, i32* %main_element, align 4
  %639 = load i32, i32* %main_element, align 4
  %and951 = and i32 %639, 7
  store i32 %and951, i32* %match_length, align 4
  %640 = load i32, i32* %match_length, align 4
  %cmp952 = icmp eq i32 %640, 7
  br i1 %cmp952, label %if.then.954, label %if.end.1035

if.then.954:                                      ; preds = %if.else.949
  br label %do.body.955

do.body.955:                                      ; preds = %if.then.954
  br label %while.cond.956

while.cond.956:                                   ; preds = %if.end.971, %do.body.955
  %641 = load i32, i32* %bits_left, align 4
  %cmp957 = icmp slt i32 %641, 16
  br i1 %cmp957, label %while.body.959, label %while.end.985

while.body.959:                                   ; preds = %while.cond.956
  %642 = load i8*, i8** %i_ptr, align 8
  %add.ptr960 = getelementptr inbounds i8, i8* %642, i64 1
  %643 = load i8*, i8** %i_end, align 8
  %cmp961 = icmp uge i8* %add.ptr960, %643
  br i1 %cmp961, label %if.then.963, label %if.end.971

if.then.963:                                      ; preds = %while.body.959
  %644 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call964 = call i32 @lzx_read_input(%struct.lzx_stream* %644)
  %tobool965 = icmp ne i32 %call964, 0
  br i1 %tobool965, label %if.then.966, label %if.end.968

if.then.966:                                      ; preds = %if.then.963
  %645 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error967 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %645, i32 0, i32 23
  %646 = load i32, i32* %error967, align 4
  store i32 %646, i32* %retval
  br label %return

if.end.968:                                       ; preds = %if.then.963
  %647 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr969 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %647, i32 0, i32 25
  %648 = load i8*, i8** %i_ptr969, align 8
  store i8* %648, i8** %i_ptr, align 8
  %649 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end970 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %649, i32 0, i32 26
  %650 = load i8*, i8** %i_end970, align 8
  store i8* %650, i8** %i_end, align 8
  br label %if.end.971

if.end.971:                                       ; preds = %if.end.968, %while.body.959
  %651 = load i8*, i8** %i_ptr, align 8
  %arrayidx972 = getelementptr inbounds i8, i8* %651, i64 1
  %652 = load i8, i8* %arrayidx972, align 1
  %conv973 = zext i8 %652 to i32
  %shl974 = shl i32 %conv973, 8
  %653 = load i8*, i8** %i_ptr, align 8
  %arrayidx975 = getelementptr inbounds i8, i8* %653, i64 0
  %654 = load i8, i8* %arrayidx975, align 1
  %conv976 = zext i8 %654 to i32
  %or977 = or i32 %shl974, %conv976
  %655 = load i32, i32* %bits_left, align 4
  %conv978 = sext i32 %655 to i64
  %sub979 = sub i64 16, %conv978
  %sh_prom980 = trunc i64 %sub979 to i32
  %shl981 = shl i32 %or977, %sh_prom980
  %656 = load i32, i32* %bit_buffer, align 4
  %or982 = or i32 %656, %shl981
  store i32 %or982, i32* %bit_buffer, align 4
  %657 = load i32, i32* %bits_left, align 4
  %add983 = add nsw i32 %657, 16
  store i32 %add983, i32* %bits_left, align 4
  %658 = load i8*, i8** %i_ptr, align 8
  %add.ptr984 = getelementptr inbounds i8, i8* %658, i64 2
  store i8* %add.ptr984, i8** %i_ptr, align 8
  br label %while.cond.956

while.end.985:                                    ; preds = %while.cond.956
  %659 = load i32, i32* %bit_buffer, align 4
  %shr986 = lshr i32 %659, 20
  %idxprom987 = zext i32 %shr986 to i64
  %660 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_table988 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %660, i32 0, i32 38
  %arrayidx989 = getelementptr inbounds [4596 x i16], [4596 x i16]* %LENGTH_table988, i32 0, i64 %idxprom987
  %661 = load i16, i16* %arrayidx989, align 2
  store i16 %661, i16* %sym, align 2
  %662 = load i16, i16* %sym, align 2
  %conv990 = zext i16 %662 to i32
  %cmp991 = icmp sge i32 %conv990, 250
  br i1 %cmp991, label %if.then.993, label %if.end.1024

if.then.993:                                      ; preds = %while.end.985
  store i32 1048576, i32* %i, align 4
  br label %do.body.994

do.body.994:                                      ; preds = %do.cond.1019, %if.then.993
  %663 = load i32, i32* %i, align 4
  %shr995 = ashr i32 %663, 1
  store i32 %shr995, i32* %i, align 4
  %664 = load i32, i32* %i, align 4
  %cmp996 = icmp eq i32 %664, 0
  br i1 %cmp996, label %if.then.998, label %if.end.1000

if.then.998:                                      ; preds = %do.body.994
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %665 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error999 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %665, i32 0, i32 23
  store i32 -124, i32* %error999, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1000:                                      ; preds = %do.body.994
  %666 = load i16, i16* %sym, align 2
  %conv1001 = zext i16 %666 to i32
  %shl1002 = shl i32 %conv1001, 1
  %conv1003 = trunc i32 %shl1002 to i16
  store i16 %conv1003, i16* %sym, align 2
  %667 = load i32, i32* %bit_buffer, align 4
  %668 = load i32, i32* %i, align 4
  %and1004 = and i32 %667, %668
  %tobool1005 = icmp ne i32 %and1004, 0
  %cond1006 = select i1 %tobool1005, i32 1, i32 0
  %669 = load i16, i16* %sym, align 2
  %conv1007 = zext i16 %669 to i32
  %or1008 = or i32 %conv1007, %cond1006
  %conv1009 = trunc i32 %or1008 to i16
  store i16 %conv1009, i16* %sym, align 2
  %670 = load i16, i16* %sym, align 2
  %conv1010 = zext i16 %670 to i32
  %cmp1011 = icmp sge i32 %conv1010, 4596
  br i1 %cmp1011, label %if.then.1013, label %if.end.1015

if.then.1013:                                     ; preds = %if.end.1000
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %671 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1014 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %671, i32 0, i32 23
  store i32 -124, i32* %error1014, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1015:                                      ; preds = %if.end.1000
  %672 = load i16, i16* %sym, align 2
  %idxprom1016 = zext i16 %672 to i64
  %673 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_table1017 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %673, i32 0, i32 38
  %arrayidx1018 = getelementptr inbounds [4596 x i16], [4596 x i16]* %LENGTH_table1017, i32 0, i64 %idxprom1016
  %674 = load i16, i16* %arrayidx1018, align 2
  store i16 %674, i16* %sym, align 2
  br label %do.cond.1019

do.cond.1019:                                     ; preds = %if.end.1015
  %675 = load i16, i16* %sym, align 2
  %conv1020 = zext i16 %675 to i32
  %cmp1021 = icmp sge i32 %conv1020, 250
  br i1 %cmp1021, label %do.body.994, label %do.end.1023

do.end.1023:                                      ; preds = %do.cond.1019
  br label %if.end.1024

if.end.1024:                                      ; preds = %do.end.1023, %while.end.985
  %676 = load i16, i16* %sym, align 2
  %conv1025 = zext i16 %676 to i32
  store i32 %conv1025, i32* %length_footer, align 4
  %677 = load i16, i16* %sym, align 2
  %idxprom1026 = zext i16 %677 to i64
  %678 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %LENGTH_len1027 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %678, i32 0, i32 34
  %arrayidx1028 = getelementptr inbounds [314 x i8], [314 x i8]* %LENGTH_len1027, i32 0, i64 %idxprom1026
  %679 = load i8, i8* %arrayidx1028, align 1
  %conv1029 = zext i8 %679 to i32
  store i32 %conv1029, i32* %i, align 4
  %680 = load i32, i32* %i, align 4
  %681 = load i32, i32* %bit_buffer, align 4
  %shl1030 = shl i32 %681, %680
  store i32 %shl1030, i32* %bit_buffer, align 4
  %682 = load i32, i32* %i, align 4
  %683 = load i32, i32* %bits_left, align 4
  %sub1031 = sub nsw i32 %683, %682
  store i32 %sub1031, i32* %bits_left, align 4
  br label %do.end.1033

do.end.1033:                                      ; preds = %if.end.1024
  %684 = load i32, i32* %length_footer, align 4
  %685 = load i32, i32* %match_length, align 4
  %add1034 = add nsw i32 %685, %684
  store i32 %add1034, i32* %match_length, align 4
  br label %if.end.1035

if.end.1035:                                      ; preds = %do.end.1033, %if.else.949
  %686 = load i32, i32* %match_length, align 4
  %add1036 = add nsw i32 %686, 2
  store i32 %add1036, i32* %match_length, align 4
  %687 = load i32, i32* %main_element, align 4
  %shr1037 = ashr i32 %687, 3
  store i32 %shr1037, i32* %match_offset, align 4
  switch i32 %shr1037, label %sw.default.1041 [
    i32 0, label %sw.bb.1038
    i32 1, label %sw.bb.1039
    i32 2, label %sw.bb.1040
  ]

sw.bb.1038:                                       ; preds = %if.end.1035
  %688 = load i32, i32* %R0, align 4
  store i32 %688, i32* %match_offset, align 4
  br label %sw.epilog.1307

sw.bb.1039:                                       ; preds = %if.end.1035
  %689 = load i32, i32* %R1, align 4
  store i32 %689, i32* %match_offset, align 4
  %690 = load i32, i32* %R0, align 4
  store i32 %690, i32* %R1, align 4
  %691 = load i32, i32* %match_offset, align 4
  store i32 %691, i32* %R0, align 4
  br label %sw.epilog.1307

sw.bb.1040:                                       ; preds = %if.end.1035
  %692 = load i32, i32* %R2, align 4
  store i32 %692, i32* %match_offset, align 4
  %693 = load i32, i32* %R0, align 4
  store i32 %693, i32* %R2, align 4
  %694 = load i32, i32* %match_offset, align 4
  store i32 %694, i32* %R0, align 4
  br label %sw.epilog.1307

sw.default.1041:                                  ; preds = %if.end.1035
  %695 = load i32, i32* %match_offset, align 4
  %idxprom1042 = zext i32 %695 to i64
  %696 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %extra_bits1043 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %696, i32 0, i32 41
  %arrayidx1044 = getelementptr inbounds [51 x i8], [51 x i8]* %extra_bits1043, i32 0, i64 %idxprom1042
  %697 = load i8, i8* %arrayidx1044, align 1
  %conv1045 = zext i8 %697 to i32
  store i32 %conv1045, i32* %extra, align 4
  %698 = load i32, i32* %match_offset, align 4
  %idxprom1046 = zext i32 %698 to i64
  %699 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %position_base1047 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %699, i32 0, i32 40
  %arrayidx1048 = getelementptr inbounds [51 x i32], [51 x i32]* %position_base1047, i32 0, i64 %idxprom1046
  %700 = load i32, i32* %arrayidx1048, align 4
  %sub1049 = sub i32 %700, 2
  store i32 %sub1049, i32* %match_offset, align 4
  %701 = load i32, i32* %extra, align 4
  %cmp1050 = icmp sgt i32 %701, 3
  br i1 %cmp1050, label %if.then.1052, label %if.else.1175

if.then.1052:                                     ; preds = %sw.default.1041
  %702 = load i32, i32* %extra, align 4
  %sub1053 = sub nsw i32 %702, 3
  store i32 %sub1053, i32* %extra, align 4
  br label %do.body.1054

do.body.1054:                                     ; preds = %if.then.1052
  br label %while.cond.1055

while.cond.1055:                                  ; preds = %if.end.1070, %do.body.1054
  %703 = load i32, i32* %bits_left, align 4
  %704 = load i32, i32* %extra, align 4
  %cmp1056 = icmp slt i32 %703, %704
  br i1 %cmp1056, label %while.body.1058, label %while.end.1084

while.body.1058:                                  ; preds = %while.cond.1055
  %705 = load i8*, i8** %i_ptr, align 8
  %add.ptr1059 = getelementptr inbounds i8, i8* %705, i64 1
  %706 = load i8*, i8** %i_end, align 8
  %cmp1060 = icmp uge i8* %add.ptr1059, %706
  br i1 %cmp1060, label %if.then.1062, label %if.end.1070

if.then.1062:                                     ; preds = %while.body.1058
  %707 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1063 = call i32 @lzx_read_input(%struct.lzx_stream* %707)
  %tobool1064 = icmp ne i32 %call1063, 0
  br i1 %tobool1064, label %if.then.1065, label %if.end.1067

if.then.1065:                                     ; preds = %if.then.1062
  %708 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1066 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %708, i32 0, i32 23
  %709 = load i32, i32* %error1066, align 4
  store i32 %709, i32* %retval
  br label %return

if.end.1067:                                      ; preds = %if.then.1062
  %710 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1068 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %710, i32 0, i32 25
  %711 = load i8*, i8** %i_ptr1068, align 8
  store i8* %711, i8** %i_ptr, align 8
  %712 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1069 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %712, i32 0, i32 26
  %713 = load i8*, i8** %i_end1069, align 8
  store i8* %713, i8** %i_end, align 8
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.end.1067, %while.body.1058
  %714 = load i8*, i8** %i_ptr, align 8
  %arrayidx1071 = getelementptr inbounds i8, i8* %714, i64 1
  %715 = load i8, i8* %arrayidx1071, align 1
  %conv1072 = zext i8 %715 to i32
  %shl1073 = shl i32 %conv1072, 8
  %716 = load i8*, i8** %i_ptr, align 8
  %arrayidx1074 = getelementptr inbounds i8, i8* %716, i64 0
  %717 = load i8, i8* %arrayidx1074, align 1
  %conv1075 = zext i8 %717 to i32
  %or1076 = or i32 %shl1073, %conv1075
  %718 = load i32, i32* %bits_left, align 4
  %conv1077 = sext i32 %718 to i64
  %sub1078 = sub i64 16, %conv1077
  %sh_prom1079 = trunc i64 %sub1078 to i32
  %shl1080 = shl i32 %or1076, %sh_prom1079
  %719 = load i32, i32* %bit_buffer, align 4
  %or1081 = or i32 %719, %shl1080
  store i32 %or1081, i32* %bit_buffer, align 4
  %720 = load i32, i32* %bits_left, align 4
  %add1082 = add nsw i32 %720, 16
  store i32 %add1082, i32* %bits_left, align 4
  %721 = load i8*, i8** %i_ptr, align 8
  %add.ptr1083 = getelementptr inbounds i8, i8* %721, i64 2
  store i8* %add.ptr1083, i8** %i_ptr, align 8
  br label %while.cond.1055

while.end.1084:                                   ; preds = %while.cond.1055
  %722 = load i32, i32* %bit_buffer, align 4
  %723 = load i32, i32* %extra, align 4
  %conv1085 = sext i32 %723 to i64
  %sub1086 = sub i64 32, %conv1085
  %sh_prom1087 = trunc i64 %sub1086 to i32
  %shr1088 = lshr i32 %722, %sh_prom1087
  store i32 %shr1088, i32* %verbatim_bits, align 4
  %724 = load i32, i32* %extra, align 4
  %725 = load i32, i32* %bit_buffer, align 4
  %shl1089 = shl i32 %725, %724
  store i32 %shl1089, i32* %bit_buffer, align 4
  %726 = load i32, i32* %extra, align 4
  %727 = load i32, i32* %bits_left, align 4
  %sub1090 = sub nsw i32 %727, %726
  store i32 %sub1090, i32* %bits_left, align 4
  br label %do.end.1092

do.end.1092:                                      ; preds = %while.end.1084
  %728 = load i32, i32* %verbatim_bits, align 4
  %shl1093 = shl i32 %728, 3
  %729 = load i32, i32* %match_offset, align 4
  %add1094 = add i32 %729, %shl1093
  store i32 %add1094, i32* %match_offset, align 4
  br label %do.body.1095

do.body.1095:                                     ; preds = %do.end.1092
  br label %while.cond.1096

while.cond.1096:                                  ; preds = %if.end.1111, %do.body.1095
  %730 = load i32, i32* %bits_left, align 4
  %cmp1097 = icmp slt i32 %730, 16
  br i1 %cmp1097, label %while.body.1099, label %while.end.1125

while.body.1099:                                  ; preds = %while.cond.1096
  %731 = load i8*, i8** %i_ptr, align 8
  %add.ptr1100 = getelementptr inbounds i8, i8* %731, i64 1
  %732 = load i8*, i8** %i_end, align 8
  %cmp1101 = icmp uge i8* %add.ptr1100, %732
  br i1 %cmp1101, label %if.then.1103, label %if.end.1111

if.then.1103:                                     ; preds = %while.body.1099
  %733 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1104 = call i32 @lzx_read_input(%struct.lzx_stream* %733)
  %tobool1105 = icmp ne i32 %call1104, 0
  br i1 %tobool1105, label %if.then.1106, label %if.end.1108

if.then.1106:                                     ; preds = %if.then.1103
  %734 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1107 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %734, i32 0, i32 23
  %735 = load i32, i32* %error1107, align 4
  store i32 %735, i32* %retval
  br label %return

if.end.1108:                                      ; preds = %if.then.1103
  %736 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1109 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %736, i32 0, i32 25
  %737 = load i8*, i8** %i_ptr1109, align 8
  store i8* %737, i8** %i_ptr, align 8
  %738 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1110 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %738, i32 0, i32 26
  %739 = load i8*, i8** %i_end1110, align 8
  store i8* %739, i8** %i_end, align 8
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.end.1108, %while.body.1099
  %740 = load i8*, i8** %i_ptr, align 8
  %arrayidx1112 = getelementptr inbounds i8, i8* %740, i64 1
  %741 = load i8, i8* %arrayidx1112, align 1
  %conv1113 = zext i8 %741 to i32
  %shl1114 = shl i32 %conv1113, 8
  %742 = load i8*, i8** %i_ptr, align 8
  %arrayidx1115 = getelementptr inbounds i8, i8* %742, i64 0
  %743 = load i8, i8* %arrayidx1115, align 1
  %conv1116 = zext i8 %743 to i32
  %or1117 = or i32 %shl1114, %conv1116
  %744 = load i32, i32* %bits_left, align 4
  %conv1118 = sext i32 %744 to i64
  %sub1119 = sub i64 16, %conv1118
  %sh_prom1120 = trunc i64 %sub1119 to i32
  %shl1121 = shl i32 %or1117, %sh_prom1120
  %745 = load i32, i32* %bit_buffer, align 4
  %or1122 = or i32 %745, %shl1121
  store i32 %or1122, i32* %bit_buffer, align 4
  %746 = load i32, i32* %bits_left, align 4
  %add1123 = add nsw i32 %746, 16
  store i32 %add1123, i32* %bits_left, align 4
  %747 = load i8*, i8** %i_ptr, align 8
  %add.ptr1124 = getelementptr inbounds i8, i8* %747, i64 2
  store i8* %add.ptr1124, i8** %i_ptr, align 8
  br label %while.cond.1096

while.end.1125:                                   ; preds = %while.cond.1096
  %748 = load i32, i32* %bit_buffer, align 4
  %shr1126 = lshr i32 %748, 25
  %idxprom1127 = zext i32 %shr1126 to i64
  %749 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_table1128 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %749, i32 0, i32 39
  %arrayidx1129 = getelementptr inbounds [144 x i16], [144 x i16]* %ALIGNED_table1128, i32 0, i64 %idxprom1127
  %750 = load i16, i16* %arrayidx1129, align 2
  store i16 %750, i16* %sym, align 2
  %751 = load i16, i16* %sym, align 2
  %conv1130 = zext i16 %751 to i32
  %cmp1131 = icmp sge i32 %conv1130, 8
  br i1 %cmp1131, label %if.then.1133, label %if.end.1164

if.then.1133:                                     ; preds = %while.end.1125
  store i32 33554432, i32* %i, align 4
  br label %do.body.1134

do.body.1134:                                     ; preds = %do.cond.1159, %if.then.1133
  %752 = load i32, i32* %i, align 4
  %shr1135 = ashr i32 %752, 1
  store i32 %shr1135, i32* %i, align 4
  %753 = load i32, i32* %i, align 4
  %cmp1136 = icmp eq i32 %753, 0
  br i1 %cmp1136, label %if.then.1138, label %if.end.1140

if.then.1138:                                     ; preds = %do.body.1134
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %754 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1139 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %754, i32 0, i32 23
  store i32 -124, i32* %error1139, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1140:                                      ; preds = %do.body.1134
  %755 = load i16, i16* %sym, align 2
  %conv1141 = zext i16 %755 to i32
  %shl1142 = shl i32 %conv1141, 1
  %conv1143 = trunc i32 %shl1142 to i16
  store i16 %conv1143, i16* %sym, align 2
  %756 = load i32, i32* %bit_buffer, align 4
  %757 = load i32, i32* %i, align 4
  %and1144 = and i32 %756, %757
  %tobool1145 = icmp ne i32 %and1144, 0
  %cond1146 = select i1 %tobool1145, i32 1, i32 0
  %758 = load i16, i16* %sym, align 2
  %conv1147 = zext i16 %758 to i32
  %or1148 = or i32 %conv1147, %cond1146
  %conv1149 = trunc i32 %or1148 to i16
  store i16 %conv1149, i16* %sym, align 2
  %759 = load i16, i16* %sym, align 2
  %conv1150 = zext i16 %759 to i32
  %cmp1151 = icmp sge i32 %conv1150, 144
  br i1 %cmp1151, label %if.then.1153, label %if.end.1155

if.then.1153:                                     ; preds = %if.end.1140
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %760 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1154 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %760, i32 0, i32 23
  store i32 -124, i32* %error1154, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1155:                                      ; preds = %if.end.1140
  %761 = load i16, i16* %sym, align 2
  %idxprom1156 = zext i16 %761 to i64
  %762 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_table1157 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %762, i32 0, i32 39
  %arrayidx1158 = getelementptr inbounds [144 x i16], [144 x i16]* %ALIGNED_table1157, i32 0, i64 %idxprom1156
  %763 = load i16, i16* %arrayidx1158, align 2
  store i16 %763, i16* %sym, align 2
  br label %do.cond.1159

do.cond.1159:                                     ; preds = %if.end.1155
  %764 = load i16, i16* %sym, align 2
  %conv1160 = zext i16 %764 to i32
  %cmp1161 = icmp sge i32 %conv1160, 8
  br i1 %cmp1161, label %do.body.1134, label %do.end.1163

do.end.1163:                                      ; preds = %do.cond.1159
  br label %if.end.1164

if.end.1164:                                      ; preds = %do.end.1163, %while.end.1125
  %765 = load i16, i16* %sym, align 2
  %conv1165 = zext i16 %765 to i32
  store i32 %conv1165, i32* %aligned_bits, align 4
  %766 = load i16, i16* %sym, align 2
  %idxprom1166 = zext i16 %766 to i64
  %767 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_len1167 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %767, i32 0, i32 35
  %arrayidx1168 = getelementptr inbounds [72 x i8], [72 x i8]* %ALIGNED_len1167, i32 0, i64 %idxprom1166
  %768 = load i8, i8* %arrayidx1168, align 1
  %conv1169 = zext i8 %768 to i32
  store i32 %conv1169, i32* %i, align 4
  %769 = load i32, i32* %i, align 4
  %770 = load i32, i32* %bit_buffer, align 4
  %shl1170 = shl i32 %770, %769
  store i32 %shl1170, i32* %bit_buffer, align 4
  %771 = load i32, i32* %i, align 4
  %772 = load i32, i32* %bits_left, align 4
  %sub1171 = sub nsw i32 %772, %771
  store i32 %sub1171, i32* %bits_left, align 4
  br label %do.end.1173

do.end.1173:                                      ; preds = %if.end.1164
  %773 = load i32, i32* %aligned_bits, align 4
  %774 = load i32, i32* %match_offset, align 4
  %add1174 = add i32 %774, %773
  store i32 %add1174, i32* %match_offset, align 4
  br label %if.end.1306

if.else.1175:                                     ; preds = %sw.default.1041
  %775 = load i32, i32* %extra, align 4
  %cmp1176 = icmp eq i32 %775, 3
  br i1 %cmp1176, label %if.then.1178, label %if.else.1259

if.then.1178:                                     ; preds = %if.else.1175
  br label %do.body.1179

do.body.1179:                                     ; preds = %if.then.1178
  br label %while.cond.1180

while.cond.1180:                                  ; preds = %if.end.1195, %do.body.1179
  %776 = load i32, i32* %bits_left, align 4
  %cmp1181 = icmp slt i32 %776, 16
  br i1 %cmp1181, label %while.body.1183, label %while.end.1209

while.body.1183:                                  ; preds = %while.cond.1180
  %777 = load i8*, i8** %i_ptr, align 8
  %add.ptr1184 = getelementptr inbounds i8, i8* %777, i64 1
  %778 = load i8*, i8** %i_end, align 8
  %cmp1185 = icmp uge i8* %add.ptr1184, %778
  br i1 %cmp1185, label %if.then.1187, label %if.end.1195

if.then.1187:                                     ; preds = %while.body.1183
  %779 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1188 = call i32 @lzx_read_input(%struct.lzx_stream* %779)
  %tobool1189 = icmp ne i32 %call1188, 0
  br i1 %tobool1189, label %if.then.1190, label %if.end.1192

if.then.1190:                                     ; preds = %if.then.1187
  %780 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1191 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %780, i32 0, i32 23
  %781 = load i32, i32* %error1191, align 4
  store i32 %781, i32* %retval
  br label %return

if.end.1192:                                      ; preds = %if.then.1187
  %782 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1193 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %782, i32 0, i32 25
  %783 = load i8*, i8** %i_ptr1193, align 8
  store i8* %783, i8** %i_ptr, align 8
  %784 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1194 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %784, i32 0, i32 26
  %785 = load i8*, i8** %i_end1194, align 8
  store i8* %785, i8** %i_end, align 8
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.end.1192, %while.body.1183
  %786 = load i8*, i8** %i_ptr, align 8
  %arrayidx1196 = getelementptr inbounds i8, i8* %786, i64 1
  %787 = load i8, i8* %arrayidx1196, align 1
  %conv1197 = zext i8 %787 to i32
  %shl1198 = shl i32 %conv1197, 8
  %788 = load i8*, i8** %i_ptr, align 8
  %arrayidx1199 = getelementptr inbounds i8, i8* %788, i64 0
  %789 = load i8, i8* %arrayidx1199, align 1
  %conv1200 = zext i8 %789 to i32
  %or1201 = or i32 %shl1198, %conv1200
  %790 = load i32, i32* %bits_left, align 4
  %conv1202 = sext i32 %790 to i64
  %sub1203 = sub i64 16, %conv1202
  %sh_prom1204 = trunc i64 %sub1203 to i32
  %shl1205 = shl i32 %or1201, %sh_prom1204
  %791 = load i32, i32* %bit_buffer, align 4
  %or1206 = or i32 %791, %shl1205
  store i32 %or1206, i32* %bit_buffer, align 4
  %792 = load i32, i32* %bits_left, align 4
  %add1207 = add nsw i32 %792, 16
  store i32 %add1207, i32* %bits_left, align 4
  %793 = load i8*, i8** %i_ptr, align 8
  %add.ptr1208 = getelementptr inbounds i8, i8* %793, i64 2
  store i8* %add.ptr1208, i8** %i_ptr, align 8
  br label %while.cond.1180

while.end.1209:                                   ; preds = %while.cond.1180
  %794 = load i32, i32* %bit_buffer, align 4
  %shr1210 = lshr i32 %794, 25
  %idxprom1211 = zext i32 %shr1210 to i64
  %795 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_table1212 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %795, i32 0, i32 39
  %arrayidx1213 = getelementptr inbounds [144 x i16], [144 x i16]* %ALIGNED_table1212, i32 0, i64 %idxprom1211
  %796 = load i16, i16* %arrayidx1213, align 2
  store i16 %796, i16* %sym, align 2
  %797 = load i16, i16* %sym, align 2
  %conv1214 = zext i16 %797 to i32
  %cmp1215 = icmp sge i32 %conv1214, 8
  br i1 %cmp1215, label %if.then.1217, label %if.end.1248

if.then.1217:                                     ; preds = %while.end.1209
  store i32 33554432, i32* %i, align 4
  br label %do.body.1218

do.body.1218:                                     ; preds = %do.cond.1243, %if.then.1217
  %798 = load i32, i32* %i, align 4
  %shr1219 = ashr i32 %798, 1
  store i32 %shr1219, i32* %i, align 4
  %799 = load i32, i32* %i, align 4
  %cmp1220 = icmp eq i32 %799, 0
  br i1 %cmp1220, label %if.then.1222, label %if.end.1224

if.then.1222:                                     ; preds = %do.body.1218
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %800 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1223 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %800, i32 0, i32 23
  store i32 -124, i32* %error1223, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1224:                                      ; preds = %do.body.1218
  %801 = load i16, i16* %sym, align 2
  %conv1225 = zext i16 %801 to i32
  %shl1226 = shl i32 %conv1225, 1
  %conv1227 = trunc i32 %shl1226 to i16
  store i16 %conv1227, i16* %sym, align 2
  %802 = load i32, i32* %bit_buffer, align 4
  %803 = load i32, i32* %i, align 4
  %and1228 = and i32 %802, %803
  %tobool1229 = icmp ne i32 %and1228, 0
  %cond1230 = select i1 %tobool1229, i32 1, i32 0
  %804 = load i16, i16* %sym, align 2
  %conv1231 = zext i16 %804 to i32
  %or1232 = or i32 %conv1231, %cond1230
  %conv1233 = trunc i32 %or1232 to i16
  store i16 %conv1233, i16* %sym, align 2
  %805 = load i16, i16* %sym, align 2
  %conv1234 = zext i16 %805 to i32
  %cmp1235 = icmp sge i32 %conv1234, 144
  br i1 %cmp1235, label %if.then.1237, label %if.end.1239

if.then.1237:                                     ; preds = %if.end.1224
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %806 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1238 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %806, i32 0, i32 23
  store i32 -124, i32* %error1238, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1239:                                      ; preds = %if.end.1224
  %807 = load i16, i16* %sym, align 2
  %idxprom1240 = zext i16 %807 to i64
  %808 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_table1241 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %808, i32 0, i32 39
  %arrayidx1242 = getelementptr inbounds [144 x i16], [144 x i16]* %ALIGNED_table1241, i32 0, i64 %idxprom1240
  %809 = load i16, i16* %arrayidx1242, align 2
  store i16 %809, i16* %sym, align 2
  br label %do.cond.1243

do.cond.1243:                                     ; preds = %if.end.1239
  %810 = load i16, i16* %sym, align 2
  %conv1244 = zext i16 %810 to i32
  %cmp1245 = icmp sge i32 %conv1244, 8
  br i1 %cmp1245, label %do.body.1218, label %do.end.1247

do.end.1247:                                      ; preds = %do.cond.1243
  br label %if.end.1248

if.end.1248:                                      ; preds = %do.end.1247, %while.end.1209
  %811 = load i16, i16* %sym, align 2
  %conv1249 = zext i16 %811 to i32
  store i32 %conv1249, i32* %aligned_bits, align 4
  %812 = load i16, i16* %sym, align 2
  %idxprom1250 = zext i16 %812 to i64
  %813 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ALIGNED_len1251 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %813, i32 0, i32 35
  %arrayidx1252 = getelementptr inbounds [72 x i8], [72 x i8]* %ALIGNED_len1251, i32 0, i64 %idxprom1250
  %814 = load i8, i8* %arrayidx1252, align 1
  %conv1253 = zext i8 %814 to i32
  store i32 %conv1253, i32* %i, align 4
  %815 = load i32, i32* %i, align 4
  %816 = load i32, i32* %bit_buffer, align 4
  %shl1254 = shl i32 %816, %815
  store i32 %shl1254, i32* %bit_buffer, align 4
  %817 = load i32, i32* %i, align 4
  %818 = load i32, i32* %bits_left, align 4
  %sub1255 = sub nsw i32 %818, %817
  store i32 %sub1255, i32* %bits_left, align 4
  br label %do.end.1257

do.end.1257:                                      ; preds = %if.end.1248
  %819 = load i32, i32* %aligned_bits, align 4
  %820 = load i32, i32* %match_offset, align 4
  %add1258 = add i32 %820, %819
  store i32 %add1258, i32* %match_offset, align 4
  br label %if.end.1305

if.else.1259:                                     ; preds = %if.else.1175
  %821 = load i32, i32* %extra, align 4
  %cmp1260 = icmp sgt i32 %821, 0
  br i1 %cmp1260, label %if.then.1262, label %if.else.1303

if.then.1262:                                     ; preds = %if.else.1259
  br label %do.body.1263

do.body.1263:                                     ; preds = %if.then.1262
  br label %while.cond.1264

while.cond.1264:                                  ; preds = %if.end.1279, %do.body.1263
  %822 = load i32, i32* %bits_left, align 4
  %823 = load i32, i32* %extra, align 4
  %cmp1265 = icmp slt i32 %822, %823
  br i1 %cmp1265, label %while.body.1267, label %while.end.1293

while.body.1267:                                  ; preds = %while.cond.1264
  %824 = load i8*, i8** %i_ptr, align 8
  %add.ptr1268 = getelementptr inbounds i8, i8* %824, i64 1
  %825 = load i8*, i8** %i_end, align 8
  %cmp1269 = icmp uge i8* %add.ptr1268, %825
  br i1 %cmp1269, label %if.then.1271, label %if.end.1279

if.then.1271:                                     ; preds = %while.body.1267
  %826 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1272 = call i32 @lzx_read_input(%struct.lzx_stream* %826)
  %tobool1273 = icmp ne i32 %call1272, 0
  br i1 %tobool1273, label %if.then.1274, label %if.end.1276

if.then.1274:                                     ; preds = %if.then.1271
  %827 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1275 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %827, i32 0, i32 23
  %828 = load i32, i32* %error1275, align 4
  store i32 %828, i32* %retval
  br label %return

if.end.1276:                                      ; preds = %if.then.1271
  %829 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1277 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %829, i32 0, i32 25
  %830 = load i8*, i8** %i_ptr1277, align 8
  store i8* %830, i8** %i_ptr, align 8
  %831 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1278 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %831, i32 0, i32 26
  %832 = load i8*, i8** %i_end1278, align 8
  store i8* %832, i8** %i_end, align 8
  br label %if.end.1279

if.end.1279:                                      ; preds = %if.end.1276, %while.body.1267
  %833 = load i8*, i8** %i_ptr, align 8
  %arrayidx1280 = getelementptr inbounds i8, i8* %833, i64 1
  %834 = load i8, i8* %arrayidx1280, align 1
  %conv1281 = zext i8 %834 to i32
  %shl1282 = shl i32 %conv1281, 8
  %835 = load i8*, i8** %i_ptr, align 8
  %arrayidx1283 = getelementptr inbounds i8, i8* %835, i64 0
  %836 = load i8, i8* %arrayidx1283, align 1
  %conv1284 = zext i8 %836 to i32
  %or1285 = or i32 %shl1282, %conv1284
  %837 = load i32, i32* %bits_left, align 4
  %conv1286 = sext i32 %837 to i64
  %sub1287 = sub i64 16, %conv1286
  %sh_prom1288 = trunc i64 %sub1287 to i32
  %shl1289 = shl i32 %or1285, %sh_prom1288
  %838 = load i32, i32* %bit_buffer, align 4
  %or1290 = or i32 %838, %shl1289
  store i32 %or1290, i32* %bit_buffer, align 4
  %839 = load i32, i32* %bits_left, align 4
  %add1291 = add nsw i32 %839, 16
  store i32 %add1291, i32* %bits_left, align 4
  %840 = load i8*, i8** %i_ptr, align 8
  %add.ptr1292 = getelementptr inbounds i8, i8* %840, i64 2
  store i8* %add.ptr1292, i8** %i_ptr, align 8
  br label %while.cond.1264

while.end.1293:                                   ; preds = %while.cond.1264
  %841 = load i32, i32* %bit_buffer, align 4
  %842 = load i32, i32* %extra, align 4
  %conv1294 = sext i32 %842 to i64
  %sub1295 = sub i64 32, %conv1294
  %sh_prom1296 = trunc i64 %sub1295 to i32
  %shr1297 = lshr i32 %841, %sh_prom1296
  store i32 %shr1297, i32* %verbatim_bits, align 4
  %843 = load i32, i32* %extra, align 4
  %844 = load i32, i32* %bit_buffer, align 4
  %shl1298 = shl i32 %844, %843
  store i32 %shl1298, i32* %bit_buffer, align 4
  %845 = load i32, i32* %extra, align 4
  %846 = load i32, i32* %bits_left, align 4
  %sub1299 = sub nsw i32 %846, %845
  store i32 %sub1299, i32* %bits_left, align 4
  br label %do.end.1301

do.end.1301:                                      ; preds = %while.end.1293
  %847 = load i32, i32* %verbatim_bits, align 4
  %848 = load i32, i32* %match_offset, align 4
  %add1302 = add i32 %848, %847
  store i32 %add1302, i32* %match_offset, align 4
  br label %if.end.1304

if.else.1303:                                     ; preds = %if.else.1259
  store i32 1, i32* %match_offset, align 4
  br label %if.end.1304

if.end.1304:                                      ; preds = %if.else.1303, %do.end.1301
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.end.1304, %do.end.1257
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.end.1305, %do.end.1173
  %849 = load i32, i32* %R1, align 4
  store i32 %849, i32* %R2, align 4
  %850 = load i32, i32* %R0, align 4
  store i32 %850, i32* %R1, align 4
  %851 = load i32, i32* %match_offset, align 4
  store i32 %851, i32* %R0, align 4
  br label %sw.epilog.1307

sw.epilog.1307:                                   ; preds = %if.end.1306, %sw.bb.1040, %sw.bb.1039, %sw.bb.1038
  %852 = load i32, i32* %window_posn, align 4
  %853 = load i32, i32* %match_length, align 4
  %add1308 = add i32 %852, %853
  %854 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size1309 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %854, i32 0, i32 6
  %855 = load i32, i32* %window_size1309, align 4
  %cmp1310 = icmp ugt i32 %add1308, %855
  br i1 %cmp1310, label %if.then.1312, label %if.end.1314

if.then.1312:                                     ; preds = %sw.epilog.1307
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  %856 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1313 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %856, i32 0, i32 23
  store i32 -124, i32* %error1313, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1314:                                      ; preds = %sw.epilog.1307
  %857 = load i32, i32* %window_posn, align 4
  %idxprom1315 = zext i32 %857 to i64
  %858 = load i8*, i8** %window, align 8
  %arrayidx1316 = getelementptr inbounds i8, i8* %858, i64 %idxprom1315
  store i8* %arrayidx1316, i8** %rundest, align 8
  %859 = load i32, i32* %match_length, align 4
  store i32 %859, i32* %i, align 4
  %860 = load i32, i32* %match_offset, align 4
  %861 = load i32, i32* %window_posn, align 4
  %cmp1317 = icmp ugt i32 %860, %861
  br i1 %cmp1317, label %if.then.1319, label %if.else.1352

if.then.1319:                                     ; preds = %if.end.1314
  %862 = load i32, i32* %match_offset, align 4
  %863 = load i32, i32* %window_posn, align 4
  %sub1320 = sub i32 %862, %863
  store i32 %sub1320, i32* %j, align 4
  %864 = load i32, i32* %j, align 4
  %865 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size1321 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %865, i32 0, i32 6
  %866 = load i32, i32* %window_size1321, align 4
  %cmp1322 = icmp sgt i32 %864, %866
  br i1 %cmp1322, label %if.then.1324, label %if.end.1326

if.then.1324:                                     ; preds = %if.then.1319
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  %867 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1325 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %867, i32 0, i32 23
  store i32 -124, i32* %error1325, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1326:                                      ; preds = %if.then.1319
  %868 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size1327 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %868, i32 0, i32 6
  %869 = load i32, i32* %window_size1327, align 4
  %870 = load i32, i32* %j, align 4
  %sub1328 = sub i32 %869, %870
  %idxprom1329 = zext i32 %sub1328 to i64
  %871 = load i8*, i8** %window, align 8
  %arrayidx1330 = getelementptr inbounds i8, i8* %871, i64 %idxprom1329
  store i8* %arrayidx1330, i8** %runsrc, align 8
  %872 = load i32, i32* %j, align 4
  %873 = load i32, i32* %i, align 4
  %cmp1331 = icmp slt i32 %872, %873
  br i1 %cmp1331, label %if.then.1333, label %if.end.1343

if.then.1333:                                     ; preds = %if.end.1326
  %874 = load i32, i32* %j, align 4
  %875 = load i32, i32* %i, align 4
  %sub1334 = sub nsw i32 %875, %874
  store i32 %sub1334, i32* %i, align 4
  br label %while.cond.1335

while.cond.1335:                                  ; preds = %while.body.1339, %if.then.1333
  %876 = load i32, i32* %j, align 4
  %dec1336 = add nsw i32 %876, -1
  store i32 %dec1336, i32* %j, align 4
  %cmp1337 = icmp sgt i32 %876, 0
  br i1 %cmp1337, label %while.body.1339, label %while.end.1342

while.body.1339:                                  ; preds = %while.cond.1335
  %877 = load i8*, i8** %runsrc, align 8
  %incdec.ptr1340 = getelementptr inbounds i8, i8* %877, i32 1
  store i8* %incdec.ptr1340, i8** %runsrc, align 8
  %878 = load i8, i8* %877, align 1
  %879 = load i8*, i8** %rundest, align 8
  %incdec.ptr1341 = getelementptr inbounds i8, i8* %879, i32 1
  store i8* %incdec.ptr1341, i8** %rundest, align 8
  store i8 %878, i8* %879, align 1
  br label %while.cond.1335

while.end.1342:                                   ; preds = %while.cond.1335
  %880 = load i8*, i8** %window, align 8
  store i8* %880, i8** %runsrc, align 8
  br label %if.end.1343

if.end.1343:                                      ; preds = %while.end.1342, %if.end.1326
  br label %while.cond.1344

while.cond.1344:                                  ; preds = %while.body.1348, %if.end.1343
  %881 = load i32, i32* %i, align 4
  %dec1345 = add nsw i32 %881, -1
  store i32 %dec1345, i32* %i, align 4
  %cmp1346 = icmp sgt i32 %881, 0
  br i1 %cmp1346, label %while.body.1348, label %while.end.1351

while.body.1348:                                  ; preds = %while.cond.1344
  %882 = load i8*, i8** %runsrc, align 8
  %incdec.ptr1349 = getelementptr inbounds i8, i8* %882, i32 1
  store i8* %incdec.ptr1349, i8** %runsrc, align 8
  %883 = load i8, i8* %882, align 1
  %884 = load i8*, i8** %rundest, align 8
  %incdec.ptr1350 = getelementptr inbounds i8, i8* %884, i32 1
  store i8* %incdec.ptr1350, i8** %rundest, align 8
  store i8 %883, i8* %884, align 1
  br label %while.cond.1344

while.end.1351:                                   ; preds = %while.cond.1344
  br label %if.end.1364

if.else.1352:                                     ; preds = %if.end.1314
  %885 = load i8*, i8** %rundest, align 8
  %886 = load i32, i32* %match_offset, align 4
  %idx.ext1353 = zext i32 %886 to i64
  %idx.neg1354 = sub i64 0, %idx.ext1353
  %add.ptr1355 = getelementptr inbounds i8, i8* %885, i64 %idx.neg1354
  store i8* %add.ptr1355, i8** %runsrc, align 8
  br label %while.cond.1356

while.cond.1356:                                  ; preds = %while.body.1360, %if.else.1352
  %887 = load i32, i32* %i, align 4
  %dec1357 = add nsw i32 %887, -1
  store i32 %dec1357, i32* %i, align 4
  %cmp1358 = icmp sgt i32 %887, 0
  br i1 %cmp1358, label %while.body.1360, label %while.end.1363

while.body.1360:                                  ; preds = %while.cond.1356
  %888 = load i8*, i8** %runsrc, align 8
  %incdec.ptr1361 = getelementptr inbounds i8, i8* %888, i32 1
  store i8* %incdec.ptr1361, i8** %runsrc, align 8
  %889 = load i8, i8* %888, align 1
  %890 = load i8*, i8** %rundest, align 8
  %incdec.ptr1362 = getelementptr inbounds i8, i8* %890, i32 1
  store i8* %incdec.ptr1362, i8** %rundest, align 8
  store i8 %889, i8* %890, align 1
  br label %while.cond.1356

while.end.1363:                                   ; preds = %while.cond.1356
  br label %if.end.1364

if.end.1364:                                      ; preds = %while.end.1363, %while.end.1351
  %891 = load i32, i32* %match_length, align 4
  %892 = load i32, i32* %this_run, align 4
  %sub1365 = sub nsw i32 %892, %891
  store i32 %sub1365, i32* %this_run, align 4
  %893 = load i32, i32* %match_length, align 4
  %894 = load i32, i32* %window_posn, align 4
  %add1366 = add i32 %894, %893
  store i32 %add1366, i32* %window_posn, align 4
  br label %if.end.1367

if.end.1367:                                      ; preds = %if.end.1364, %if.then.943
  br label %while.cond.858

while.end.1368:                                   ; preds = %while.cond.858
  br label %sw.epilog.1405

sw.bb.1369:                                       ; preds = %if.end.563
  %895 = load i32, i32* %window_posn, align 4
  %idxprom1370 = zext i32 %895 to i64
  %896 = load i8*, i8** %window, align 8
  %arrayidx1371 = getelementptr inbounds i8, i8* %896, i64 %idxprom1370
  store i8* %arrayidx1371, i8** %rundest, align 8
  %897 = load i32, i32* %this_run, align 4
  %898 = load i32, i32* %window_posn, align 4
  %add1372 = add i32 %898, %897
  store i32 %add1372, i32* %window_posn, align 4
  br label %while.cond.1373

while.cond.1373:                                  ; preds = %if.end.1401, %sw.bb.1369
  %899 = load i32, i32* %this_run, align 4
  %cmp1374 = icmp sgt i32 %899, 0
  br i1 %cmp1374, label %while.body.1376, label %while.end.1402

while.body.1376:                                  ; preds = %while.cond.1373
  %900 = load i8*, i8** %i_end, align 8
  %901 = load i8*, i8** %i_ptr, align 8
  %sub.ptr.lhs.cast1377 = ptrtoint i8* %900 to i64
  %sub.ptr.rhs.cast1378 = ptrtoint i8* %901 to i64
  %sub.ptr.sub1379 = sub i64 %sub.ptr.lhs.cast1377, %sub.ptr.rhs.cast1378
  %conv1380 = trunc i64 %sub.ptr.sub1379 to i32
  store i32 %conv1380, i32* %i, align 4
  %tobool1381 = icmp ne i32 %conv1380, 0
  br i1 %tobool1381, label %if.then.1382, label %if.else.1393

if.then.1382:                                     ; preds = %while.body.1376
  %902 = load i32, i32* %i, align 4
  %903 = load i32, i32* %this_run, align 4
  %cmp1383 = icmp sgt i32 %902, %903
  br i1 %cmp1383, label %if.then.1385, label %if.end.1386

if.then.1385:                                     ; preds = %if.then.1382
  %904 = load i32, i32* %this_run, align 4
  store i32 %904, i32* %i, align 4
  br label %if.end.1386

if.end.1386:                                      ; preds = %if.then.1385, %if.then.1382
  %905 = load i8*, i8** %rundest, align 8
  %906 = load i8*, i8** %i_ptr, align 8
  %907 = load i32, i32* %i, align 4
  %conv1387 = sext i32 %907 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %905, i8* %906, i64 %conv1387, i32 1, i1 false)
  %908 = load i32, i32* %i, align 4
  %909 = load i8*, i8** %rundest, align 8
  %idx.ext1388 = sext i32 %908 to i64
  %add.ptr1389 = getelementptr inbounds i8, i8* %909, i64 %idx.ext1388
  store i8* %add.ptr1389, i8** %rundest, align 8
  %910 = load i32, i32* %i, align 4
  %911 = load i8*, i8** %i_ptr, align 8
  %idx.ext1390 = sext i32 %910 to i64
  %add.ptr1391 = getelementptr inbounds i8, i8* %911, i64 %idx.ext1390
  store i8* %add.ptr1391, i8** %i_ptr, align 8
  %912 = load i32, i32* %i, align 4
  %913 = load i32, i32* %this_run, align 4
  %sub1392 = sub nsw i32 %913, %912
  store i32 %sub1392, i32* %this_run, align 4
  br label %if.end.1401

if.else.1393:                                     ; preds = %while.body.1376
  %914 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1394 = call i32 @lzx_read_input(%struct.lzx_stream* %914)
  %tobool1395 = icmp ne i32 %call1394, 0
  br i1 %tobool1395, label %if.then.1396, label %if.end.1398

if.then.1396:                                     ; preds = %if.else.1393
  %915 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1397 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %915, i32 0, i32 23
  %916 = load i32, i32* %error1397, align 4
  store i32 %916, i32* %retval
  br label %return

if.end.1398:                                      ; preds = %if.else.1393
  %917 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1399 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %917, i32 0, i32 25
  %918 = load i8*, i8** %i_ptr1399, align 8
  store i8* %918, i8** %i_ptr, align 8
  %919 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1400 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %919, i32 0, i32 26
  %920 = load i8*, i8** %i_end1400, align 8
  store i8* %920, i8** %i_end, align 8
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.end.1398, %if.end.1386
  br label %while.cond.1373

while.end.1402:                                   ; preds = %while.cond.1373
  br label %sw.epilog.1405

sw.default.1403:                                  ; preds = %if.end.563
  %921 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1404 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %921, i32 0, i32 23
  store i32 -124, i32* %error1404, align 4
  store i32 -124, i32* %retval
  br label %return

sw.epilog.1405:                                   ; preds = %while.end.1402, %while.end.1368, %while.end.856
  %922 = load i32, i32* %this_run, align 4
  %cmp1406 = icmp slt i32 %922, 0
  br i1 %cmp1406, label %if.then.1408, label %if.end.1421

if.then.1408:                                     ; preds = %sw.epilog.1405
  %923 = load i32, i32* %this_run, align 4
  %sub1409 = sub nsw i32 0, %923
  %924 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining1410 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %924, i32 0, i32 15
  %925 = load i32, i32* %block_remaining1410, align 4
  %cmp1411 = icmp ugt i32 %sub1409, %925
  br i1 %cmp1411, label %if.then.1413, label %if.end.1417

if.then.1413:                                     ; preds = %if.then.1408
  %926 = load i32, i32* %this_run, align 4
  %sub1414 = sub nsw i32 0, %926
  %927 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining1415 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %927, i32 0, i32 15
  %928 = load i32, i32* %block_remaining1415, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0), i32 %sub1414, i32 %928)
  %929 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1416 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %929, i32 0, i32 23
  store i32 -124, i32* %error1416, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1417:                                      ; preds = %if.then.1408
  %930 = load i32, i32* %this_run, align 4
  %sub1418 = sub nsw i32 0, %930
  %931 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %block_remaining1419 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %931, i32 0, i32 15
  %932 = load i32, i32* %block_remaining1419, align 4
  %sub1420 = sub i32 %932, %sub1418
  store i32 %sub1420, i32* %block_remaining1419, align 4
  br label %if.end.1421

if.end.1421:                                      ; preds = %if.end.1417, %sw.epilog.1405
  br label %while.cond.181

while.end.1422:                                   ; preds = %while.cond.181
  %933 = load i32, i32* %window_posn, align 4
  %934 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1423 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %934, i32 0, i32 8
  %935 = load i32, i32* %frame_posn1423, align 4
  %sub1424 = sub i32 %933, %935
  %936 = load i32, i32* %frame_size, align 4
  %cmp1425 = icmp ne i32 %sub1424, %936
  br i1 %cmp1425, label %if.then.1427, label %if.end.1431

if.then.1427:                                     ; preds = %while.end.1422
  %937 = load i32, i32* %window_posn, align 4
  %938 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1428 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %938, i32 0, i32 8
  %939 = load i32, i32* %frame_posn1428, align 4
  %sub1429 = sub i32 %937, %939
  %940 = load i32, i32* %frame_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i32 0, i32 0), i32 %sub1429, i32 %940)
  %941 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1430 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %941, i32 0, i32 23
  store i32 -124, i32* %error1430, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1431:                                      ; preds = %while.end.1422
  %942 = load i32, i32* %bits_left, align 4
  %cmp1432 = icmp sgt i32 %942, 0
  br i1 %cmp1432, label %if.then.1434, label %if.end.1465

if.then.1434:                                     ; preds = %if.end.1431
  br label %while.cond.1435

while.cond.1435:                                  ; preds = %if.end.1450, %if.then.1434
  %943 = load i32, i32* %bits_left, align 4
  %cmp1436 = icmp slt i32 %943, 16
  br i1 %cmp1436, label %while.body.1438, label %while.end.1464

while.body.1438:                                  ; preds = %while.cond.1435
  %944 = load i8*, i8** %i_ptr, align 8
  %add.ptr1439 = getelementptr inbounds i8, i8* %944, i64 1
  %945 = load i8*, i8** %i_end, align 8
  %cmp1440 = icmp uge i8* %add.ptr1439, %945
  br i1 %cmp1440, label %if.then.1442, label %if.end.1450

if.then.1442:                                     ; preds = %while.body.1438
  %946 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call1443 = call i32 @lzx_read_input(%struct.lzx_stream* %946)
  %tobool1444 = icmp ne i32 %call1443, 0
  br i1 %tobool1444, label %if.then.1445, label %if.end.1447

if.then.1445:                                     ; preds = %if.then.1442
  %947 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1446 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %947, i32 0, i32 23
  %948 = load i32, i32* %error1446, align 4
  store i32 %948, i32* %retval
  br label %return

if.end.1447:                                      ; preds = %if.then.1442
  %949 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1448 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %949, i32 0, i32 25
  %950 = load i8*, i8** %i_ptr1448, align 8
  store i8* %950, i8** %i_ptr, align 8
  %951 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1449 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %951, i32 0, i32 26
  %952 = load i8*, i8** %i_end1449, align 8
  store i8* %952, i8** %i_end, align 8
  br label %if.end.1450

if.end.1450:                                      ; preds = %if.end.1447, %while.body.1438
  %953 = load i8*, i8** %i_ptr, align 8
  %arrayidx1451 = getelementptr inbounds i8, i8* %953, i64 1
  %954 = load i8, i8* %arrayidx1451, align 1
  %conv1452 = zext i8 %954 to i32
  %shl1453 = shl i32 %conv1452, 8
  %955 = load i8*, i8** %i_ptr, align 8
  %arrayidx1454 = getelementptr inbounds i8, i8* %955, i64 0
  %956 = load i8, i8* %arrayidx1454, align 1
  %conv1455 = zext i8 %956 to i32
  %or1456 = or i32 %shl1453, %conv1455
  %957 = load i32, i32* %bits_left, align 4
  %conv1457 = sext i32 %957 to i64
  %sub1458 = sub i64 16, %conv1457
  %sh_prom1459 = trunc i64 %sub1458 to i32
  %shl1460 = shl i32 %or1456, %sh_prom1459
  %958 = load i32, i32* %bit_buffer, align 4
  %or1461 = or i32 %958, %shl1460
  store i32 %or1461, i32* %bit_buffer, align 4
  %959 = load i32, i32* %bits_left, align 4
  %add1462 = add nsw i32 %959, 16
  store i32 %add1462, i32* %bits_left, align 4
  %960 = load i8*, i8** %i_ptr, align 8
  %add.ptr1463 = getelementptr inbounds i8, i8* %960, i64 2
  store i8* %add.ptr1463, i8** %i_ptr, align 8
  br label %while.cond.1435

while.end.1464:                                   ; preds = %while.cond.1435
  br label %if.end.1465

if.end.1465:                                      ; preds = %while.end.1464, %if.end.1431
  %961 = load i32, i32* %bits_left, align 4
  %and1466 = and i32 %961, 15
  %tobool1467 = icmp ne i32 %and1466, 0
  br i1 %tobool1467, label %if.then.1468, label %if.end.1473

if.then.1468:                                     ; preds = %if.end.1465
  %962 = load i32, i32* %bits_left, align 4
  %and1469 = and i32 %962, 15
  %963 = load i32, i32* %bit_buffer, align 4
  %shl1470 = shl i32 %963, %and1469
  store i32 %shl1470, i32* %bit_buffer, align 4
  %964 = load i32, i32* %bits_left, align 4
  %and1471 = and i32 %964, 15
  %965 = load i32, i32* %bits_left, align 4
  %sub1472 = sub nsw i32 %965, %and1471
  store i32 %sub1472, i32* %bits_left, align 4
  br label %if.end.1473

if.end.1473:                                      ; preds = %if.then.1468, %if.end.1465
  %966 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1474 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %966, i32 0, i32 27
  %967 = load i8*, i8** %o_ptr1474, align 8
  %968 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_end1475 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %968, i32 0, i32 28
  %969 = load i8*, i8** %o_end1475, align 8
  %cmp1476 = icmp ne i8* %967, %969
  br i1 %cmp1476, label %if.then.1478, label %if.end.1485

if.then.1478:                                     ; preds = %if.end.1473
  %970 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_end1479 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %970, i32 0, i32 28
  %971 = load i8*, i8** %o_end1479, align 8
  %972 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1480 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %972, i32 0, i32 27
  %973 = load i8*, i8** %o_ptr1480, align 8
  %sub.ptr.lhs.cast1481 = ptrtoint i8* %971 to i64
  %sub.ptr.rhs.cast1482 = ptrtoint i8* %973 to i64
  %sub.ptr.sub1483 = sub i64 %sub.ptr.lhs.cast1481, %sub.ptr.rhs.cast1482
  %974 = load i32, i32* %frame_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i64 %sub.ptr.sub1483, i32 %974)
  %975 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1484 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %975, i32 0, i32 23
  store i32 -124, i32* %error1484, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1485:                                      ; preds = %if.end.1473
  %976 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_started1486 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %976, i32 0, i32 18
  %977 = load i8, i8* %intel_started1486, align 1
  %conv1487 = zext i8 %977 to i32
  %tobool1488 = icmp ne i32 %conv1487, 0
  br i1 %tobool1488, label %land.lhs.true.1489, label %if.else.1566

land.lhs.true.1489:                               ; preds = %if.end.1485
  %978 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_filesize1490 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %978, i32 0, i32 16
  %979 = load i32, i32* %intel_filesize1490, align 4
  %tobool1491 = icmp ne i32 %979, 0
  br i1 %tobool1491, label %land.lhs.true.1492, label %if.else.1566

land.lhs.true.1492:                               ; preds = %land.lhs.true.1489
  %980 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame1493 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %980, i32 0, i32 9
  %981 = load i32, i32* %frame1493, align 4
  %cmp1494 = icmp ule i32 %981, 32768
  br i1 %cmp1494, label %land.lhs.true.1496, label %if.else.1566

land.lhs.true.1496:                               ; preds = %land.lhs.true.1492
  %982 = load i32, i32* %frame_size, align 4
  %cmp1497 = icmp ugt i32 %982, 10
  br i1 %cmp1497, label %if.then.1499, label %if.else.1566

if.then.1499:                                     ; preds = %land.lhs.true.1496
  %983 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %e8_buf = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %983, i32 0, i32 42
  %arrayidx1500 = getelementptr inbounds [32768 x i8], [32768 x i8]* %e8_buf, i32 0, i64 0
  store i8* %arrayidx1500, i8** %data, align 8
  %984 = load i32, i32* %frame_size, align 4
  %sub1501 = sub i32 %984, 10
  %idxprom1502 = zext i32 %sub1501 to i64
  %985 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %e8_buf1503 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %985, i32 0, i32 42
  %arrayidx1504 = getelementptr inbounds [32768 x i8], [32768 x i8]* %e8_buf1503, i32 0, i64 %idxprom1502
  store i8* %arrayidx1504, i8** %dataend, align 8
  %986 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_curpos = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %986, i32 0, i32 17
  %987 = load i32, i32* %intel_curpos, align 4
  store i32 %987, i32* %curpos, align 4
  %988 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_filesize1505 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %988, i32 0, i32 16
  %989 = load i32, i32* %intel_filesize1505, align 4
  store i32 %989, i32* %filesize, align 4
  %990 = load i8*, i8** %data, align 8
  %991 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1506 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %991, i32 0, i32 27
  store i8* %990, i8** %o_ptr1506, align 8
  %992 = load i8*, i8** %data, align 8
  %993 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1507 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %993, i32 0, i32 8
  %994 = load i32, i32* %frame_posn1507, align 4
  %idxprom1508 = zext i32 %994 to i64
  %995 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window1509 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %995, i32 0, i32 5
  %996 = load i8*, i8** %window1509, align 8
  %arrayidx1510 = getelementptr inbounds i8, i8* %996, i64 %idxprom1508
  %997 = load i32, i32* %frame_size, align 4
  %conv1511 = zext i32 %997 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %992, i8* %arrayidx1510, i64 %conv1511, i32 1, i1 false)
  br label %while.cond.1512

while.cond.1512:                                  ; preds = %if.end.1560, %if.then.1520, %if.then.1499
  %998 = load i8*, i8** %data, align 8
  %999 = load i8*, i8** %dataend, align 8
  %cmp1513 = icmp ult i8* %998, %999
  br i1 %cmp1513, label %while.body.1515, label %while.end.1563

while.body.1515:                                  ; preds = %while.cond.1512
  %1000 = load i8*, i8** %data, align 8
  %incdec.ptr1516 = getelementptr inbounds i8, i8* %1000, i32 1
  store i8* %incdec.ptr1516, i8** %data, align 8
  %1001 = load i8, i8* %1000, align 1
  %conv1517 = zext i8 %1001 to i32
  %cmp1518 = icmp ne i32 %conv1517, 232
  br i1 %cmp1518, label %if.then.1520, label %if.end.1522

if.then.1520:                                     ; preds = %while.body.1515
  %1002 = load i32, i32* %curpos, align 4
  %inc1521 = add nsw i32 %1002, 1
  store i32 %inc1521, i32* %curpos, align 4
  br label %while.cond.1512

if.end.1522:                                      ; preds = %while.body.1515
  %1003 = load i8*, i8** %data, align 8
  %arrayidx1523 = getelementptr inbounds i8, i8* %1003, i64 0
  %1004 = load i8, i8* %arrayidx1523, align 1
  %conv1524 = zext i8 %1004 to i32
  %1005 = load i8*, i8** %data, align 8
  %arrayidx1525 = getelementptr inbounds i8, i8* %1005, i64 1
  %1006 = load i8, i8* %arrayidx1525, align 1
  %conv1526 = zext i8 %1006 to i32
  %shl1527 = shl i32 %conv1526, 8
  %or1528 = or i32 %conv1524, %shl1527
  %1007 = load i8*, i8** %data, align 8
  %arrayidx1529 = getelementptr inbounds i8, i8* %1007, i64 2
  %1008 = load i8, i8* %arrayidx1529, align 1
  %conv1530 = zext i8 %1008 to i32
  %shl1531 = shl i32 %conv1530, 16
  %or1532 = or i32 %or1528, %shl1531
  %1009 = load i8*, i8** %data, align 8
  %arrayidx1533 = getelementptr inbounds i8, i8* %1009, i64 3
  %1010 = load i8, i8* %arrayidx1533, align 1
  %conv1534 = zext i8 %1010 to i32
  %shl1535 = shl i32 %conv1534, 24
  %or1536 = or i32 %or1532, %shl1535
  store i32 %or1536, i32* %abs_off, align 4
  %1011 = load i32, i32* %abs_off, align 4
  %1012 = load i32, i32* %curpos, align 4
  %sub1537 = sub nsw i32 0, %1012
  %cmp1538 = icmp sge i32 %1011, %sub1537
  br i1 %cmp1538, label %land.lhs.true.1540, label %if.end.1560

land.lhs.true.1540:                               ; preds = %if.end.1522
  %1013 = load i32, i32* %abs_off, align 4
  %1014 = load i32, i32* %filesize, align 4
  %cmp1541 = icmp slt i32 %1013, %1014
  br i1 %cmp1541, label %if.then.1543, label %if.end.1560

if.then.1543:                                     ; preds = %land.lhs.true.1540
  %1015 = load i32, i32* %abs_off, align 4
  %cmp1544 = icmp sge i32 %1015, 0
  br i1 %cmp1544, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1543
  %1016 = load i32, i32* %abs_off, align 4
  %1017 = load i32, i32* %curpos, align 4
  %sub1546 = sub nsw i32 %1016, %1017
  br label %cond.end

cond.false:                                       ; preds = %if.then.1543
  %1018 = load i32, i32* %abs_off, align 4
  %1019 = load i32, i32* %filesize, align 4
  %add1547 = add nsw i32 %1018, %1019
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1548 = phi i32 [ %sub1546, %cond.true ], [ %add1547, %cond.false ]
  store i32 %cond1548, i32* %rel_off, align 4
  %1020 = load i32, i32* %rel_off, align 4
  %conv1549 = trunc i32 %1020 to i8
  %1021 = load i8*, i8** %data, align 8
  %arrayidx1550 = getelementptr inbounds i8, i8* %1021, i64 0
  store i8 %conv1549, i8* %arrayidx1550, align 1
  %1022 = load i32, i32* %rel_off, align 4
  %shr1551 = ashr i32 %1022, 8
  %conv1552 = trunc i32 %shr1551 to i8
  %1023 = load i8*, i8** %data, align 8
  %arrayidx1553 = getelementptr inbounds i8, i8* %1023, i64 1
  store i8 %conv1552, i8* %arrayidx1553, align 1
  %1024 = load i32, i32* %rel_off, align 4
  %shr1554 = ashr i32 %1024, 16
  %conv1555 = trunc i32 %shr1554 to i8
  %1025 = load i8*, i8** %data, align 8
  %arrayidx1556 = getelementptr inbounds i8, i8* %1025, i64 2
  store i8 %conv1555, i8* %arrayidx1556, align 1
  %1026 = load i32, i32* %rel_off, align 4
  %shr1557 = ashr i32 %1026, 24
  %conv1558 = trunc i32 %shr1557 to i8
  %1027 = load i8*, i8** %data, align 8
  %arrayidx1559 = getelementptr inbounds i8, i8* %1027, i64 3
  store i8 %conv1558, i8* %arrayidx1559, align 1
  br label %if.end.1560

if.end.1560:                                      ; preds = %cond.end, %land.lhs.true.1540, %if.end.1522
  %1028 = load i8*, i8** %data, align 8
  %add.ptr1561 = getelementptr inbounds i8, i8* %1028, i64 4
  store i8* %add.ptr1561, i8** %data, align 8
  %1029 = load i32, i32* %curpos, align 4
  %add1562 = add nsw i32 %1029, 5
  store i32 %add1562, i32* %curpos, align 4
  br label %while.cond.1512

while.end.1563:                                   ; preds = %while.cond.1512
  %1030 = load i32, i32* %frame_size, align 4
  %1031 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_curpos1564 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1031, i32 0, i32 17
  %1032 = load i32, i32* %intel_curpos1564, align 4
  %add1565 = add i32 %1032, %1030
  store i32 %add1565, i32* %intel_curpos1564, align 4
  br label %if.end.1578

if.else.1566:                                     ; preds = %land.lhs.true.1496, %land.lhs.true.1492, %land.lhs.true.1489, %if.end.1485
  %1033 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1567 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1033, i32 0, i32 8
  %1034 = load i32, i32* %frame_posn1567, align 4
  %idxprom1568 = zext i32 %1034 to i64
  %1035 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window1569 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1035, i32 0, i32 5
  %1036 = load i8*, i8** %window1569, align 8
  %arrayidx1570 = getelementptr inbounds i8, i8* %1036, i64 %idxprom1568
  %1037 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1571 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1037, i32 0, i32 27
  store i8* %arrayidx1570, i8** %o_ptr1571, align 8
  %1038 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_filesize1572 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1038, i32 0, i32 16
  %1039 = load i32, i32* %intel_filesize1572, align 4
  %tobool1573 = icmp ne i32 %1039, 0
  br i1 %tobool1573, label %if.then.1574, label %if.end.1577

if.then.1574:                                     ; preds = %if.else.1566
  %1040 = load i32, i32* %frame_size, align 4
  %1041 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %intel_curpos1575 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1041, i32 0, i32 17
  %1042 = load i32, i32* %intel_curpos1575, align 4
  %add1576 = add i32 %1042, %1040
  store i32 %add1576, i32* %intel_curpos1575, align 4
  br label %if.end.1577

if.end.1577:                                      ; preds = %if.then.1574, %if.else.1566
  br label %if.end.1578

if.end.1578:                                      ; preds = %if.end.1577, %while.end.1563
  %1043 = load i32, i32* %frame_size, align 4
  %idxprom1579 = zext i32 %1043 to i64
  %1044 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1580 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1044, i32 0, i32 27
  %1045 = load i8*, i8** %o_ptr1580, align 8
  %arrayidx1581 = getelementptr inbounds i8, i8* %1045, i64 %idxprom1579
  %1046 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_end1582 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1046, i32 0, i32 28
  store i8* %arrayidx1581, i8** %o_end1582, align 8
  %1047 = load i64, i64* %out_bytes.addr, align 8
  %1048 = load i32, i32* %frame_size, align 4
  %conv1583 = zext i32 %1048 to i64
  %cmp1584 = icmp slt i64 %1047, %conv1583
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1588

cond.true.1586:                                   ; preds = %if.end.1578
  %1049 = load i64, i64* %out_bytes.addr, align 8
  %conv1587 = trunc i64 %1049 to i32
  br label %cond.end.1589

cond.false.1588:                                  ; preds = %if.end.1578
  %1050 = load i32, i32* %frame_size, align 4
  br label %cond.end.1589

cond.end.1589:                                    ; preds = %cond.false.1588, %cond.true.1586
  %cond1590 = phi i32 [ %conv1587, %cond.true.1586 ], [ %1050, %cond.false.1588 ]
  store i32 %cond1590, i32* %i, align 4
  %1051 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %wflag1591 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1051, i32 0, i32 2
  %1052 = load i8, i8* %wflag1591, align 1
  %conv1592 = zext i8 %1052 to i32
  %tobool1593 = icmp ne i32 %conv1592, 0
  br i1 %tobool1593, label %land.lhs.true.1594, label %if.end.1602

land.lhs.true.1594:                               ; preds = %cond.end.1589
  %1053 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %ofd1595 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1053, i32 0, i32 1
  %1054 = load i32, i32* %ofd1595, align 4
  %1055 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1596 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1055, i32 0, i32 27
  %1056 = load i8*, i8** %o_ptr1596, align 8
  %1057 = load i32, i32* %i, align 4
  %call1597 = call i32 @cli_writen(i32 %1054, i8* %1056, i32 %1057)
  %1058 = load i32, i32* %i, align 4
  %cmp1598 = icmp ne i32 %call1597, %1058
  br i1 %cmp1598, label %if.then.1600, label %if.end.1602

if.then.1600:                                     ; preds = %land.lhs.true.1594
  %1059 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1601 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1059, i32 0, i32 23
  store i32 -123, i32* %error1601, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.1602:                                      ; preds = %land.lhs.true.1594, %cond.end.1589
  %1060 = load i32, i32* %i, align 4
  %1061 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %o_ptr1603 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1061, i32 0, i32 27
  %1062 = load i8*, i8** %o_ptr1603, align 8
  %idx.ext1604 = sext i32 %1060 to i64
  %add.ptr1605 = getelementptr inbounds i8, i8* %1062, i64 %idx.ext1604
  store i8* %add.ptr1605, i8** %o_ptr1603, align 8
  %1063 = load i32, i32* %i, align 4
  %conv1606 = sext i32 %1063 to i64
  %1064 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %offset1607 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1064, i32 0, i32 3
  %1065 = load i64, i64* %offset1607, align 8
  %add1608 = add nsw i64 %1065, %conv1606
  store i64 %add1608, i64* %offset1607, align 8
  %1066 = load i32, i32* %i, align 4
  %conv1609 = sext i32 %1066 to i64
  %1067 = load i64, i64* %out_bytes.addr, align 8
  %sub1610 = sub nsw i64 %1067, %conv1609
  store i64 %sub1610, i64* %out_bytes.addr, align 8
  %1068 = load i32, i32* %frame_size, align 4
  %1069 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1611 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1069, i32 0, i32 8
  %1070 = load i32, i32* %frame_posn1611, align 4
  %add1612 = add i32 %1070, %1068
  store i32 %add1612, i32* %frame_posn1611, align 4
  %1071 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame1613 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1071, i32 0, i32 9
  %1072 = load i32, i32* %frame1613, align 4
  %inc1614 = add i32 %1072, 1
  store i32 %inc1614, i32* %frame1613, align 4
  %1073 = load i32, i32* %window_posn, align 4
  %1074 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size1615 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1074, i32 0, i32 6
  %1075 = load i32, i32* %window_size1615, align 4
  %cmp1616 = icmp eq i32 %1073, %1075
  br i1 %cmp1616, label %if.then.1618, label %if.end.1619

if.then.1618:                                     ; preds = %if.end.1602
  store i32 0, i32* %window_posn, align 4
  br label %if.end.1619

if.end.1619:                                      ; preds = %if.then.1618, %if.end.1602
  %1076 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1620 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1076, i32 0, i32 8
  %1077 = load i32, i32* %frame_posn1620, align 4
  %1078 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_size1621 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1078, i32 0, i32 6
  %1079 = load i32, i32* %window_size1621, align 4
  %cmp1622 = icmp eq i32 %1077, %1079
  br i1 %cmp1622, label %if.then.1624, label %if.end.1626

if.then.1624:                                     ; preds = %if.end.1619
  %1080 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %frame_posn1625 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1080, i32 0, i32 8
  store i32 0, i32* %frame_posn1625, align 4
  br label %if.end.1626

if.end.1626:                                      ; preds = %if.then.1624, %if.end.1619
  br label %while.cond

while.end.1627:                                   ; preds = %while.cond
  %1081 = load i64, i64* %out_bytes.addr, align 8
  %tobool1628 = icmp ne i64 %1081, 0
  br i1 %tobool1628, label %if.then.1629, label %if.end.1631

if.then.1629:                                     ; preds = %while.end.1627
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0))
  %1082 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error1630 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1082, i32 0, i32 23
  store i32 -124, i32* %error1630, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1631:                                      ; preds = %while.end.1627
  br label %do.body.1632

do.body.1632:                                     ; preds = %if.end.1631
  %1083 = load i8*, i8** %i_ptr, align 8
  %1084 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1633 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1084, i32 0, i32 25
  store i8* %1083, i8** %i_ptr1633, align 8
  %1085 = load i8*, i8** %i_end, align 8
  %1086 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end1634 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1086, i32 0, i32 26
  store i8* %1085, i8** %i_end1634, align 8
  %1087 = load i32, i32* %bit_buffer, align 4
  %1088 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer1635 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1088, i32 0, i32 29
  store i32 %1087, i32* %bit_buffer1635, align 4
  %1089 = load i32, i32* %bits_left, align 4
  %1090 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left1636 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1090, i32 0, i32 30
  store i32 %1089, i32* %bits_left1636, align 4
  br label %do.end.1638

do.end.1638:                                      ; preds = %do.body.1632
  %1091 = load i32, i32* %window_posn, align 4
  %1092 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window_posn1639 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1092, i32 0, i32 7
  store i32 %1091, i32* %window_posn1639, align 4
  %1093 = load i32, i32* %R0, align 4
  %1094 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R01640 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1094, i32 0, i32 11
  store i32 %1093, i32* %R01640, align 4
  %1095 = load i32, i32* %R1, align 4
  %1096 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R11641 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1096, i32 0, i32 12
  store i32 %1095, i32* %R11641, align 4
  %1097 = load i32, i32* %R2, align 4
  %1098 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %R21642 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1098, i32 0, i32 13
  store i32 %1097, i32* %R21642, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.1638, %if.then.1629, %if.then.1600, %if.then.1478, %if.then.1445, %if.then.1427, %if.then.1413, %sw.default.1403, %if.then.1396, %if.then.1324, %if.then.1312, %if.then.1274, %if.then.1237, %if.then.1222, %if.then.1190, %if.then.1153, %if.then.1138, %if.then.1106, %if.then.1065, %if.then.1013, %if.then.998, %if.then.966, %if.then.920, %if.then.905, %if.then.873, %if.then.813, %if.then.801, %if.then.765, %if.then.721, %if.then.706, %if.then.674, %if.then.631, %if.then.617, %if.then.585, %sw.default, %if.then.502, %if.then.467, %if.then.452, %if.then.437, %if.then.417, %if.then.402, %if.then.378, %if.then.364, %if.then.333, %if.then.290, %if.then.255, %if.then.218, %if.then.200, %if.then.136, %if.then.101, %if.then.70, %if.then.52, %if.then.27, %if.then.18, %if.then.2, %if.then
  %1099 = load i32, i32* %retval
  ret i32 %1099
}

; Function Attrs: nounwind uwtable
define internal i32 @lzx_read_input(%struct.lzx_stream* %lzx) #0 {
entry:
  %retval = alloca i32, align 4
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  %bread = alloca i32, align 4
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %read = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %0, i32 0, i32 44
  %1 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read, align 8
  %tobool = icmp ne i32 (%struct.cab_file*, i8*, i32)* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %read1 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %2, i32 0, i32 44
  %3 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read1, align 8
  %4 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %file = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %4, i32 0, i32 43
  %5 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %6 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %6, i32 0, i32 24
  %7 = load i8*, i8** %inbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf_size = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %8, i32 0, i32 31
  %9 = load i32, i32* %inbuf_size, align 4
  %call = call i32 %3(%struct.cab_file* %5, i8* %arrayidx, i32 %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %fd = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %10, i32 0, i32 0
  %11 = load i32, i32* %fd, align 4
  %12 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf2 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %12, i32 0, i32 24
  %13 = load i8*, i8** %inbuf2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf_size4 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %14, i32 0, i32 31
  %15 = load i32, i32* %inbuf_size4, align 4
  %call5 = call i32 @cli_readn(i32 %11, i8* %arrayidx3, i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %bread, align 4
  %16 = load i32, i32* %bread, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %17 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %17, i32 0, i32 23
  store i32 -123, i32* %error, align 4
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %18 = load i32, i32* %bread, align 4
  %cmp6 = icmp eq i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %input_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %19, i32 0, i32 22
  %20 = load i8, i8* %input_end, align 1
  %tobool8 = icmp ne i8 %20, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0))
  %21 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error10 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %21, i32 0, i32 23
  store i32 -123, i32* %error10, align 4
  store i32 -123, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  store i32 2, i32* %bread, align 4
  %22 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf11 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %22, i32 0, i32 24
  %23 = load i8*, i8** %inbuf11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %arrayidx12, align 1
  %24 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf13 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %24, i32 0, i32 24
  %25 = load i8*, i8** %inbuf13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %arrayidx14, align 1
  %26 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %input_end15 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %26, i32 0, i32 22
  store i8 1, i8* %input_end15, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %27 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf18 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %27, i32 0, i32 24
  %28 = load i8*, i8** %inbuf18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %29, i32 0, i32 25
  store i8* %arrayidx19, i8** %i_ptr, align 8
  %30 = load i32, i32* %bread, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf20 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %31, i32 0, i32 24
  %32 = load i8*, i8** %inbuf20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 %idxprom
  %33 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %33, i32 0, i32 26
  store i8* %arrayidx21, i8** %i_end, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.9, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @lzx_make_decode_table(i32 %nsyms, i32 %nbits, i8* %length, i16* %table) #0 {
entry:
  %retval = alloca i32, align 4
  %nsyms.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %length.addr = alloca i8*, align 8
  %table.addr = alloca i16*, align 8
  %sym = alloca i16, align 2
  %leaf = alloca i32, align 4
  %fill = alloca i32, align 4
  %bit_num = alloca i8, align 1
  %pos = alloca i32, align 4
  %table_mask = alloca i32, align 4
  %bit_mask = alloca i32, align 4
  %next_symbol = alloca i32, align 4
  store i32 %nsyms, i32* %nsyms.addr, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  store i8* %length, i8** %length.addr, align 8
  store i16* %table, i16** %table.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %table_mask, align 4
  %1 = load i32, i32* %table_mask, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %bit_mask, align 4
  %2 = load i32, i32* %bit_mask, align 4
  store i32 %2, i32* %next_symbol, align 4
  store i8 1, i8* %bit_num, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %3 = load i8, i8* %bit_num, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %nbits.addr, align 4
  %cmp = icmp ule i32 %conv, %4
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %sym, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i16, i16* %sym, align 2
  %conv3 = zext i16 %5 to i32
  %6 = load i32, i32* %nsyms.addr, align 4
  %cmp4 = icmp ult i32 %conv3, %6
  br i1 %cmp4, label %for.body.6, label %for.end.22

for.body.6:                                       ; preds = %for.cond.2
  %7 = load i16, i16* %sym, align 2
  %idxprom = zext i16 %7 to i64
  %8 = load i8*, i8** %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i8, i8* %bit_num, align 1
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.inc

if.end:                                           ; preds = %for.body.6
  %11 = load i32, i32* %pos, align 4
  store i32 %11, i32* %leaf, align 4
  %12 = load i32, i32* %bit_mask, align 4
  %13 = load i32, i32* %pos, align 4
  %add = add i32 %13, %12
  store i32 %add, i32* %pos, align 4
  %14 = load i32, i32* %table_mask, align 4
  %cmp11 = icmp ugt i32 %add, %14
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %15 = load i32, i32* %bit_mask, align 4
  store i32 %15, i32* %fill, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.body.18, %if.end.14
  %16 = load i32, i32* %fill, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %fill, align 4
  %cmp16 = icmp ugt i32 %16, 0
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %17 = load i16, i16* %sym, align 2
  %18 = load i32, i32* %leaf, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %leaf, align 4
  %idxprom19 = zext i32 %18 to i64
  %19 = load i16*, i16** %table.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %19, i64 %idxprom19
  store i16 %17, i16* %arrayidx20, align 2
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc

for.inc:                                          ; preds = %for.end, %if.then
  %20 = load i16, i16* %sym, align 2
  %inc21 = add i16 %20, 1
  store i16 %inc21, i16* %sym, align 2
  br label %for.cond.2

for.end.22:                                       ; preds = %for.cond.2
  %21 = load i32, i32* %bit_mask, align 4
  %shr23 = lshr i32 %21, 1
  store i32 %shr23, i32* %bit_mask, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.22
  %22 = load i8, i8* %bit_num, align 1
  %inc25 = add i8 %22, 1
  store i8 %inc25, i8* %bit_num, align 1
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* %table_mask, align 4
  %cmp27 = icmp eq i32 %23, %24
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %for.end.26
  %25 = load i32, i32* %pos, align 4
  %conv31 = trunc i32 %25 to i16
  store i16 %conv31, i16* %sym, align 2
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.39, %if.end.30
  %26 = load i16, i16* %sym, align 2
  %conv33 = zext i16 %26 to i32
  %27 = load i32, i32* %table_mask, align 4
  %cmp34 = icmp ult i32 %conv33, %27
  br i1 %cmp34, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.32
  %28 = load i16, i16* %sym, align 2
  %idxprom37 = zext i16 %28 to i64
  %29 = load i16*, i16** %table.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %29, i64 %idxprom37
  store i16 -1, i16* %arrayidx38, align 2
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %30 = load i16, i16* %sym, align 2
  %inc40 = add i16 %30, 1
  store i16 %inc40, i16* %sym, align 2
  br label %for.cond.32

for.end.41:                                       ; preds = %for.cond.32
  %31 = load i32, i32* %pos, align 4
  %shl42 = shl i32 %31, 16
  store i32 %shl42, i32* %pos, align 4
  %32 = load i32, i32* %table_mask, align 4
  %shl43 = shl i32 %32, 16
  store i32 %shl43, i32* %table_mask, align 4
  store i32 32768, i32* %bit_mask, align 4
  %33 = load i32, i32* %nbits.addr, align 4
  %add44 = add i32 %33, 1
  %conv45 = trunc i32 %add44 to i8
  store i8 %conv45, i8* %bit_num, align 1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.111, %for.end.41
  %34 = load i8, i8* %bit_num, align 1
  %conv47 = zext i8 %34 to i32
  %cmp48 = icmp sle i32 %conv47, 16
  br i1 %cmp48, label %for.body.50, label %for.end.113

for.body.50:                                      ; preds = %for.cond.46
  store i16 0, i16* %sym, align 2
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.107, %for.body.50
  %35 = load i16, i16* %sym, align 2
  %conv52 = zext i16 %35 to i32
  %36 = load i32, i32* %nsyms.addr, align 4
  %cmp53 = icmp ult i32 %conv52, %36
  br i1 %cmp53, label %for.body.55, label %for.end.109

for.body.55:                                      ; preds = %for.cond.51
  %37 = load i16, i16* %sym, align 2
  %idxprom56 = zext i16 %37 to i64
  %38 = load i8*, i8** %length.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %38, i64 %idxprom56
  %39 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %39 to i32
  %40 = load i8, i8* %bit_num, align 1
  %conv59 = zext i8 %40 to i32
  %cmp60 = icmp ne i32 %conv58, %conv59
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.55
  br label %for.inc.107

if.end.63:                                        ; preds = %for.body.55
  %41 = load i32, i32* %pos, align 4
  %shr64 = lshr i32 %41, 16
  store i32 %shr64, i32* %leaf, align 4
  store i32 0, i32* %fill, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.97, %if.end.63
  %42 = load i32, i32* %fill, align 4
  %43 = load i8, i8* %bit_num, align 1
  %conv66 = zext i8 %43 to i32
  %44 = load i32, i32* %nbits.addr, align 4
  %sub = sub i32 %conv66, %44
  %cmp67 = icmp ult i32 %42, %sub
  br i1 %cmp67, label %for.body.69, label %for.end.99

for.body.69:                                      ; preds = %for.cond.65
  %45 = load i32, i32* %leaf, align 4
  %idxprom70 = zext i32 %45 to i64
  %46 = load i16*, i16** %table.addr, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %46, i64 %idxprom70
  %47 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %47 to i32
  %cmp73 = icmp eq i32 %conv72, 65535
  br i1 %cmp73, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %for.body.69
  %48 = load i32, i32* %next_symbol, align 4
  %shl76 = shl i32 %48, 1
  %idxprom77 = zext i32 %shl76 to i64
  %49 = load i16*, i16** %table.addr, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %49, i64 %idxprom77
  store i16 -1, i16* %arrayidx78, align 2
  %50 = load i32, i32* %next_symbol, align 4
  %shl79 = shl i32 %50, 1
  %add80 = add i32 %shl79, 1
  %idxprom81 = zext i32 %add80 to i64
  %51 = load i16*, i16** %table.addr, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %51, i64 %idxprom81
  store i16 -1, i16* %arrayidx82, align 2
  %52 = load i32, i32* %next_symbol, align 4
  %inc83 = add i32 %52, 1
  store i32 %inc83, i32* %next_symbol, align 4
  %conv84 = trunc i32 %52 to i16
  %53 = load i32, i32* %leaf, align 4
  %idxprom85 = zext i32 %53 to i64
  %54 = load i16*, i16** %table.addr, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %54, i64 %idxprom85
  store i16 %conv84, i16* %arrayidx86, align 2
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.75, %for.body.69
  %55 = load i32, i32* %leaf, align 4
  %idxprom88 = zext i32 %55 to i64
  %56 = load i16*, i16** %table.addr, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %56, i64 %idxprom88
  %57 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %57 to i32
  %shl91 = shl i32 %conv90, 1
  store i32 %shl91, i32* %leaf, align 4
  %58 = load i32, i32* %pos, align 4
  %59 = load i32, i32* %fill, align 4
  %sub92 = sub i32 15, %59
  %shr93 = lshr i32 %58, %sub92
  %and = and i32 %shr93, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.87
  %60 = load i32, i32* %leaf, align 4
  %inc95 = add i32 %60, 1
  store i32 %inc95, i32* %leaf, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.87
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %61 = load i32, i32* %fill, align 4
  %inc98 = add i32 %61, 1
  store i32 %inc98, i32* %fill, align 4
  br label %for.cond.65

for.end.99:                                       ; preds = %for.cond.65
  %62 = load i16, i16* %sym, align 2
  %63 = load i32, i32* %leaf, align 4
  %idxprom100 = zext i32 %63 to i64
  %64 = load i16*, i16** %table.addr, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %64, i64 %idxprom100
  store i16 %62, i16* %arrayidx101, align 2
  %65 = load i32, i32* %bit_mask, align 4
  %66 = load i32, i32* %pos, align 4
  %add102 = add i32 %66, %65
  store i32 %add102, i32* %pos, align 4
  %67 = load i32, i32* %table_mask, align 4
  %cmp103 = icmp ugt i32 %add102, %67
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.end.99
  store i32 1, i32* %retval
  br label %return

if.end.106:                                       ; preds = %for.end.99
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106, %if.then.62
  %68 = load i16, i16* %sym, align 2
  %inc108 = add i16 %68, 1
  store i16 %inc108, i16* %sym, align 2
  br label %for.cond.51

for.end.109:                                      ; preds = %for.cond.51
  %69 = load i32, i32* %bit_mask, align 4
  %shr110 = lshr i32 %69, 1
  store i32 %shr110, i32* %bit_mask, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.109
  %70 = load i8, i8* %bit_num, align 1
  %inc112 = add i8 %70, 1
  store i8 %inc112, i8* %bit_num, align 1
  br label %for.cond.46

for.end.113:                                      ; preds = %for.cond.46
  %71 = load i32, i32* %pos, align 4
  %72 = load i32, i32* %table_mask, align 4
  %cmp114 = icmp eq i32 %71, %72
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.end.113
  store i32 0, i32* %retval
  br label %return

if.end.117:                                       ; preds = %for.end.113
  store i16 0, i16* %sym, align 2
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.128, %if.end.117
  %73 = load i16, i16* %sym, align 2
  %conv119 = zext i16 %73 to i32
  %74 = load i32, i32* %nsyms.addr, align 4
  %cmp120 = icmp ult i32 %conv119, %74
  br i1 %cmp120, label %for.body.122, label %for.end.130

for.body.122:                                     ; preds = %for.cond.118
  %75 = load i16, i16* %sym, align 2
  %idxprom123 = zext i16 %75 to i64
  %76 = load i8*, i8** %length.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %76, i64 %idxprom123
  %77 = load i8, i8* %arrayidx124, align 1
  %tobool125 = icmp ne i8 %77, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.body.122
  store i32 1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %for.body.122
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %78 = load i16, i16* %sym, align 2
  %inc129 = add i16 %78, 1
  store i16 %inc129, i16* %sym, align 2
  br label %for.cond.118

for.end.130:                                      ; preds = %for.cond.118
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.130, %if.then.126, %if.then.116, %if.then.105, %if.then.29, %if.then.13
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @lzx_read_lens(%struct.lzx_stream* %lzx, i8* %lens, i32 %first, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  %lens.addr = alloca i8*, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %i = alloca i32, align 4
  %sym = alloca i16, align 2
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  store i8* %lens, i8** %lens.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr1 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %0, i32 0, i32 25
  %1 = load i8*, i8** %i_ptr1, align 8
  store i8* %1, i8** %i_ptr, align 8
  %2 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end2 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %2, i32 0, i32 26
  %3 = load i8*, i8** %i_end2, align 8
  store i8* %3, i8** %i_end, align 8
  %4 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer3 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %4, i32 0, i32 29
  %5 = load i32, i32* %bit_buffer3, align 4
  store i32 %5, i32* %bit_buffer, align 4
  %6 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left4 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %6, i32 0, i32 30
  %7 = load i32, i32* %bits_left4, align 4
  store i32 %7, i32* %bits_left, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, i32* %x, align 4
  %cmp = icmp ult i32 %8, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.5

do.body.5:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %do.body.5
  %9 = load i32, i32* %bits_left, align 4
  %cmp6 = icmp slt i32 %9, 4
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %i_ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8*, i8** %i_end, align 8
  %cmp7 = icmp uge i8* %add.ptr, %11
  br i1 %cmp7, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %12 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call = call i32 @lzx_read_input(%struct.lzx_stream* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %13 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %13, i32 0, i32 23
  %14 = load i32, i32* %error, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr9 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %15, i32 0, i32 25
  %16 = load i8*, i8** %i_ptr9, align 8
  store i8* %16, i8** %i_ptr, align 8
  %17 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end10 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %17, i32 0, i32 26
  %18 = load i8*, i8** %i_end10, align 8
  store i8* %18, i8** %i_end, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  %19 = load i8*, i8** %i_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 8
  %21 = load i8*, i8** %i_ptr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %22 to i32
  %or = or i32 %shl, %conv13
  %23 = load i32, i32* %bits_left, align 4
  %conv14 = sext i32 %23 to i64
  %sub = sub i64 16, %conv14
  %sh_prom = trunc i64 %sub to i32
  %shl15 = shl i32 %or, %sh_prom
  %24 = load i32, i32* %bit_buffer, align 4
  %or16 = or i32 %24, %shl15
  store i32 %or16, i32* %bit_buffer, align 4
  %25 = load i32, i32* %bits_left, align 4
  %add = add nsw i32 %25, 16
  store i32 %add, i32* %bits_left, align 4
  %26 = load i8*, i8** %i_ptr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %add.ptr17, i8** %i_ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load i32, i32* %bit_buffer, align 4
  %shr = lshr i32 %27, 28
  store i32 %shr, i32* %y, align 4
  %28 = load i32, i32* %bit_buffer, align 4
  %shl18 = shl i32 %28, 4
  store i32 %shl18, i32* %bit_buffer, align 4
  %29 = load i32, i32* %bits_left, align 4
  %sub19 = sub nsw i32 %29, 4
  store i32 %sub19, i32* %bits_left, align 4
  br label %do.end.20

do.end.20:                                        ; preds = %while.end
  %30 = load i32, i32* %y, align 4
  %conv21 = trunc i32 %30 to i8
  %31 = load i32, i32* %x, align 4
  %idxprom = zext i32 %31 to i64
  %32 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_len = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %32, i32 0, i32 32
  %arrayidx22 = getelementptr inbounds [84 x i8], [84 x i8]* %PRETREE_len, i32 0, i64 %idxprom
  store i8 %conv21, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end.20
  %33 = load i32, i32* %x, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_len23 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %34, i32 0, i32 32
  %arrayidx24 = getelementptr inbounds [84 x i8], [84 x i8]* %PRETREE_len23, i32 0, i64 0
  %35 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_table = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %35, i32 0, i32 36
  %arrayidx25 = getelementptr inbounds [104 x i16], [104 x i16]* %PRETREE_table, i32 0, i64 0
  %call26 = call i32 @lzx_make_decode_table(i32 20, i32 6, i8* %arrayidx24, i16* %arrayidx25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  %36 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error29 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %36, i32 0, i32 23
  store i32 -124, i32* %error29, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.30:                                        ; preds = %for.end
  %37 = load i32, i32* %first.addr, align 4
  store i32 %37, i32* %x, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %if.end.360, %if.end.30
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %last.addr, align 4
  %cmp32 = icmp ult i32 %38, %39
  br i1 %cmp32, label %for.body.34, label %for.end.361

for.body.34:                                      ; preds = %for.cond.31
  br label %do.body.35

do.body.35:                                       ; preds = %for.body.34
  br label %while.cond.36

while.cond.36:                                    ; preds = %if.end.51, %do.body.35
  %40 = load i32, i32* %bits_left, align 4
  %cmp37 = icmp slt i32 %40, 16
  br i1 %cmp37, label %while.body.39, label %while.end.65

while.body.39:                                    ; preds = %while.cond.36
  %41 = load i8*, i8** %i_ptr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8*, i8** %i_end, align 8
  %cmp41 = icmp uge i8* %add.ptr40, %42
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %while.body.39
  %43 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call44 = call i32 @lzx_read_input(%struct.lzx_stream* %43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.43
  %44 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error47 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %44, i32 0, i32 23
  %45 = load i32, i32* %error47, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.43
  %46 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr49 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %46, i32 0, i32 25
  %47 = load i8*, i8** %i_ptr49, align 8
  store i8* %47, i8** %i_ptr, align 8
  %48 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end50 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %48, i32 0, i32 26
  %49 = load i8*, i8** %i_end50, align 8
  store i8* %49, i8** %i_end, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %while.body.39
  %50 = load i8*, i8** %i_ptr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %51 to i32
  %shl54 = shl i32 %conv53, 8
  %52 = load i8*, i8** %i_ptr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %53 to i32
  %or57 = or i32 %shl54, %conv56
  %54 = load i32, i32* %bits_left, align 4
  %conv58 = sext i32 %54 to i64
  %sub59 = sub i64 16, %conv58
  %sh_prom60 = trunc i64 %sub59 to i32
  %shl61 = shl i32 %or57, %sh_prom60
  %55 = load i32, i32* %bit_buffer, align 4
  %or62 = or i32 %55, %shl61
  store i32 %or62, i32* %bit_buffer, align 4
  %56 = load i32, i32* %bits_left, align 4
  %add63 = add nsw i32 %56, 16
  store i32 %add63, i32* %bits_left, align 4
  %57 = load i8*, i8** %i_ptr, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %add.ptr64, i8** %i_ptr, align 8
  br label %while.cond.36

while.end.65:                                     ; preds = %while.cond.36
  %58 = load i32, i32* %bit_buffer, align 4
  %shr66 = lshr i32 %58, 26
  %idxprom67 = zext i32 %shr66 to i64
  %59 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_table68 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %59, i32 0, i32 36
  %arrayidx69 = getelementptr inbounds [104 x i16], [104 x i16]* %PRETREE_table68, i32 0, i64 %idxprom67
  %60 = load i16, i16* %arrayidx69, align 2
  store i16 %60, i16* %sym, align 2
  %61 = load i16, i16* %sym, align 2
  %conv70 = zext i16 %61 to i32
  %cmp71 = icmp sge i32 %conv70, 20
  br i1 %cmp71, label %if.then.73, label %if.end.101

if.then.73:                                       ; preds = %while.end.65
  store i32 67108864, i32* %i, align 4
  br label %do.body.74

do.body.74:                                       ; preds = %do.cond, %if.then.73
  %62 = load i32, i32* %i, align 4
  %shr75 = ashr i32 %62, 1
  store i32 %shr75, i32* %i, align 4
  %63 = load i32, i32* %i, align 4
  %cmp76 = icmp eq i32 %63, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %do.body.74
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %64 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error79 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %64, i32 0, i32 23
  store i32 -124, i32* %error79, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.80:                                        ; preds = %do.body.74
  %65 = load i16, i16* %sym, align 2
  %conv81 = zext i16 %65 to i32
  %shl82 = shl i32 %conv81, 1
  %conv83 = trunc i32 %shl82 to i16
  store i16 %conv83, i16* %sym, align 2
  %66 = load i32, i32* %bit_buffer, align 4
  %67 = load i32, i32* %i, align 4
  %and = and i32 %66, %67
  %tobool84 = icmp ne i32 %and, 0
  %cond = select i1 %tobool84, i32 1, i32 0
  %68 = load i16, i16* %sym, align 2
  %conv85 = zext i16 %68 to i32
  %or86 = or i32 %conv85, %cond
  %conv87 = trunc i32 %or86 to i16
  store i16 %conv87, i16* %sym, align 2
  %69 = load i16, i16* %sym, align 2
  %conv88 = zext i16 %69 to i32
  %cmp89 = icmp sge i32 %conv88, 104
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.80
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %70 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error92 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %70, i32 0, i32 23
  store i32 -124, i32* %error92, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.80
  %71 = load i16, i16* %sym, align 2
  %idxprom94 = zext i16 %71 to i64
  %72 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_table95 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %72, i32 0, i32 36
  %arrayidx96 = getelementptr inbounds [104 x i16], [104 x i16]* %PRETREE_table95, i32 0, i64 %idxprom94
  %73 = load i16, i16* %arrayidx96, align 2
  store i16 %73, i16* %sym, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.93
  %74 = load i16, i16* %sym, align 2
  %conv97 = zext i16 %74 to i32
  %cmp98 = icmp sge i32 %conv97, 20
  br i1 %cmp98, label %do.body.74, label %do.end.100

do.end.100:                                       ; preds = %do.cond
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %while.end.65
  %75 = load i16, i16* %sym, align 2
  %conv102 = zext i16 %75 to i32
  store i32 %conv102, i32* %z, align 4
  %76 = load i16, i16* %sym, align 2
  %idxprom103 = zext i16 %76 to i64
  %77 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_len104 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %77, i32 0, i32 32
  %arrayidx105 = getelementptr inbounds [84 x i8], [84 x i8]* %PRETREE_len104, i32 0, i64 %idxprom103
  %78 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %78 to i32
  store i32 %conv106, i32* %i, align 4
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %bit_buffer, align 4
  %shl107 = shl i32 %80, %79
  store i32 %shl107, i32* %bit_buffer, align 4
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %bits_left, align 4
  %sub108 = sub nsw i32 %82, %81
  store i32 %sub108, i32* %bits_left, align 4
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.101
  %83 = load i32, i32* %z, align 4
  %cmp111 = icmp eq i32 %83, 17
  br i1 %cmp111, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %do.end.110
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  br label %while.cond.115

while.cond.115:                                   ; preds = %if.end.130, %do.body.114
  %84 = load i32, i32* %bits_left, align 4
  %cmp116 = icmp slt i32 %84, 4
  br i1 %cmp116, label %while.body.118, label %while.end.144

while.body.118:                                   ; preds = %while.cond.115
  %85 = load i8*, i8** %i_ptr, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8*, i8** %i_end, align 8
  %cmp120 = icmp uge i8* %add.ptr119, %86
  br i1 %cmp120, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %while.body.118
  %87 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call123 = call i32 @lzx_read_input(%struct.lzx_stream* %87)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.122
  %88 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error126 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %88, i32 0, i32 23
  %89 = load i32, i32* %error126, align 4
  store i32 %89, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.122
  %90 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr128 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %90, i32 0, i32 25
  %91 = load i8*, i8** %i_ptr128, align 8
  store i8* %91, i8** %i_ptr, align 8
  %92 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end129 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %92, i32 0, i32 26
  %93 = load i8*, i8** %i_end129, align 8
  store i8* %93, i8** %i_end, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.127, %while.body.118
  %94 = load i8*, i8** %i_ptr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %95 to i32
  %shl133 = shl i32 %conv132, 8
  %96 = load i8*, i8** %i_ptr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %97 to i32
  %or136 = or i32 %shl133, %conv135
  %98 = load i32, i32* %bits_left, align 4
  %conv137 = sext i32 %98 to i64
  %sub138 = sub i64 16, %conv137
  %sh_prom139 = trunc i64 %sub138 to i32
  %shl140 = shl i32 %or136, %sh_prom139
  %99 = load i32, i32* %bit_buffer, align 4
  %or141 = or i32 %99, %shl140
  store i32 %or141, i32* %bit_buffer, align 4
  %100 = load i32, i32* %bits_left, align 4
  %add142 = add nsw i32 %100, 16
  store i32 %add142, i32* %bits_left, align 4
  %101 = load i8*, i8** %i_ptr, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %add.ptr143, i8** %i_ptr, align 8
  br label %while.cond.115

while.end.144:                                    ; preds = %while.cond.115
  %102 = load i32, i32* %bit_buffer, align 4
  %shr145 = lshr i32 %102, 28
  store i32 %shr145, i32* %y, align 4
  %103 = load i32, i32* %bit_buffer, align 4
  %shl146 = shl i32 %103, 4
  store i32 %shl146, i32* %bit_buffer, align 4
  %104 = load i32, i32* %bits_left, align 4
  %sub147 = sub nsw i32 %104, 4
  store i32 %sub147, i32* %bits_left, align 4
  br label %do.end.149

do.end.149:                                       ; preds = %while.end.144
  %105 = load i32, i32* %y, align 4
  %add150 = add i32 %105, 4
  store i32 %add150, i32* %y, align 4
  br label %while.cond.151

while.cond.151:                                   ; preds = %while.body.153, %do.end.149
  %106 = load i32, i32* %y, align 4
  %dec = add i32 %106, -1
  store i32 %dec, i32* %y, align 4
  %tobool152 = icmp ne i32 %106, 0
  br i1 %tobool152, label %while.body.153, label %while.end.157

while.body.153:                                   ; preds = %while.cond.151
  %107 = load i32, i32* %x, align 4
  %inc154 = add i32 %107, 1
  store i32 %inc154, i32* %x, align 4
  %idxprom155 = zext i32 %107 to i64
  %108 = load i8*, i8** %lens.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %108, i64 %idxprom155
  store i8 0, i8* %arrayidx156, align 1
  br label %while.cond.151

while.end.157:                                    ; preds = %while.cond.151
  br label %if.end.360

if.else:                                          ; preds = %do.end.110
  %109 = load i32, i32* %z, align 4
  %cmp158 = icmp eq i32 %109, 18
  br i1 %cmp158, label %if.then.160, label %if.else.206

if.then.160:                                      ; preds = %if.else
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  br label %while.cond.162

while.cond.162:                                   ; preds = %if.end.177, %do.body.161
  %110 = load i32, i32* %bits_left, align 4
  %cmp163 = icmp slt i32 %110, 5
  br i1 %cmp163, label %while.body.165, label %while.end.191

while.body.165:                                   ; preds = %while.cond.162
  %111 = load i8*, i8** %i_ptr, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i8*, i8** %i_end, align 8
  %cmp167 = icmp uge i8* %add.ptr166, %112
  br i1 %cmp167, label %if.then.169, label %if.end.177

if.then.169:                                      ; preds = %while.body.165
  %113 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call170 = call i32 @lzx_read_input(%struct.lzx_stream* %113)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.then.169
  %114 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error173 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %114, i32 0, i32 23
  %115 = load i32, i32* %error173, align 4
  store i32 %115, i32* %retval
  br label %return

if.end.174:                                       ; preds = %if.then.169
  %116 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr175 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %116, i32 0, i32 25
  %117 = load i8*, i8** %i_ptr175, align 8
  store i8* %117, i8** %i_ptr, align 8
  %118 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end176 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %118, i32 0, i32 26
  %119 = load i8*, i8** %i_end176, align 8
  store i8* %119, i8** %i_end, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.174, %while.body.165
  %120 = load i8*, i8** %i_ptr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %121 to i32
  %shl180 = shl i32 %conv179, 8
  %122 = load i8*, i8** %i_ptr, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %122, i64 0
  %123 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %123 to i32
  %or183 = or i32 %shl180, %conv182
  %124 = load i32, i32* %bits_left, align 4
  %conv184 = sext i32 %124 to i64
  %sub185 = sub i64 16, %conv184
  %sh_prom186 = trunc i64 %sub185 to i32
  %shl187 = shl i32 %or183, %sh_prom186
  %125 = load i32, i32* %bit_buffer, align 4
  %or188 = or i32 %125, %shl187
  store i32 %or188, i32* %bit_buffer, align 4
  %126 = load i32, i32* %bits_left, align 4
  %add189 = add nsw i32 %126, 16
  store i32 %add189, i32* %bits_left, align 4
  %127 = load i8*, i8** %i_ptr, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %127, i64 2
  store i8* %add.ptr190, i8** %i_ptr, align 8
  br label %while.cond.162

while.end.191:                                    ; preds = %while.cond.162
  %128 = load i32, i32* %bit_buffer, align 4
  %shr192 = lshr i32 %128, 27
  store i32 %shr192, i32* %y, align 4
  %129 = load i32, i32* %bit_buffer, align 4
  %shl193 = shl i32 %129, 5
  store i32 %shl193, i32* %bit_buffer, align 4
  %130 = load i32, i32* %bits_left, align 4
  %sub194 = sub nsw i32 %130, 5
  store i32 %sub194, i32* %bits_left, align 4
  br label %do.end.196

do.end.196:                                       ; preds = %while.end.191
  %131 = load i32, i32* %y, align 4
  %add197 = add i32 %131, 20
  store i32 %add197, i32* %y, align 4
  br label %while.cond.198

while.cond.198:                                   ; preds = %while.body.201, %do.end.196
  %132 = load i32, i32* %y, align 4
  %dec199 = add i32 %132, -1
  store i32 %dec199, i32* %y, align 4
  %tobool200 = icmp ne i32 %132, 0
  br i1 %tobool200, label %while.body.201, label %while.end.205

while.body.201:                                   ; preds = %while.cond.198
  %133 = load i32, i32* %x, align 4
  %inc202 = add i32 %133, 1
  store i32 %inc202, i32* %x, align 4
  %idxprom203 = zext i32 %133 to i64
  %134 = load i8*, i8** %lens.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %134, i64 %idxprom203
  store i8 0, i8* %arrayidx204, align 1
  br label %while.cond.198

while.end.205:                                    ; preds = %while.cond.198
  br label %if.end.359

if.else.206:                                      ; preds = %if.else
  %135 = load i32, i32* %z, align 4
  %cmp207 = icmp eq i32 %135, 19
  br i1 %cmp207, label %if.then.209, label %if.else.344

if.then.209:                                      ; preds = %if.else.206
  br label %do.body.210

do.body.210:                                      ; preds = %if.then.209
  br label %while.cond.211

while.cond.211:                                   ; preds = %if.end.226, %do.body.210
  %136 = load i32, i32* %bits_left, align 4
  %cmp212 = icmp slt i32 %136, 1
  br i1 %cmp212, label %while.body.214, label %while.end.240

while.body.214:                                   ; preds = %while.cond.211
  %137 = load i8*, i8** %i_ptr, align 8
  %add.ptr215 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8*, i8** %i_end, align 8
  %cmp216 = icmp uge i8* %add.ptr215, %138
  br i1 %cmp216, label %if.then.218, label %if.end.226

if.then.218:                                      ; preds = %while.body.214
  %139 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call219 = call i32 @lzx_read_input(%struct.lzx_stream* %139)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %if.then.218
  %140 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error222 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %140, i32 0, i32 23
  %141 = load i32, i32* %error222, align 4
  store i32 %141, i32* %retval
  br label %return

if.end.223:                                       ; preds = %if.then.218
  %142 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr224 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %142, i32 0, i32 25
  %143 = load i8*, i8** %i_ptr224, align 8
  store i8* %143, i8** %i_ptr, align 8
  %144 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end225 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %144, i32 0, i32 26
  %145 = load i8*, i8** %i_end225, align 8
  store i8* %145, i8** %i_end, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.223, %while.body.214
  %146 = load i8*, i8** %i_ptr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %147 to i32
  %shl229 = shl i32 %conv228, 8
  %148 = load i8*, i8** %i_ptr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %148, i64 0
  %149 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %149 to i32
  %or232 = or i32 %shl229, %conv231
  %150 = load i32, i32* %bits_left, align 4
  %conv233 = sext i32 %150 to i64
  %sub234 = sub i64 16, %conv233
  %sh_prom235 = trunc i64 %sub234 to i32
  %shl236 = shl i32 %or232, %sh_prom235
  %151 = load i32, i32* %bit_buffer, align 4
  %or237 = or i32 %151, %shl236
  store i32 %or237, i32* %bit_buffer, align 4
  %152 = load i32, i32* %bits_left, align 4
  %add238 = add nsw i32 %152, 16
  store i32 %add238, i32* %bits_left, align 4
  %153 = load i8*, i8** %i_ptr, align 8
  %add.ptr239 = getelementptr inbounds i8, i8* %153, i64 2
  store i8* %add.ptr239, i8** %i_ptr, align 8
  br label %while.cond.211

while.end.240:                                    ; preds = %while.cond.211
  %154 = load i32, i32* %bit_buffer, align 4
  %shr241 = lshr i32 %154, 31
  store i32 %shr241, i32* %y, align 4
  %155 = load i32, i32* %bit_buffer, align 4
  %shl242 = shl i32 %155, 1
  store i32 %shl242, i32* %bit_buffer, align 4
  %156 = load i32, i32* %bits_left, align 4
  %sub243 = sub nsw i32 %156, 1
  store i32 %sub243, i32* %bits_left, align 4
  br label %do.end.245

do.end.245:                                       ; preds = %while.end.240
  %157 = load i32, i32* %y, align 4
  %add246 = add i32 %157, 4
  store i32 %add246, i32* %y, align 4
  br label %do.body.247

do.body.247:                                      ; preds = %do.end.245
  br label %while.cond.248

while.cond.248:                                   ; preds = %if.end.263, %do.body.247
  %158 = load i32, i32* %bits_left, align 4
  %cmp249 = icmp slt i32 %158, 16
  br i1 %cmp249, label %while.body.251, label %while.end.277

while.body.251:                                   ; preds = %while.cond.248
  %159 = load i8*, i8** %i_ptr, align 8
  %add.ptr252 = getelementptr inbounds i8, i8* %159, i64 1
  %160 = load i8*, i8** %i_end, align 8
  %cmp253 = icmp uge i8* %add.ptr252, %160
  br i1 %cmp253, label %if.then.255, label %if.end.263

if.then.255:                                      ; preds = %while.body.251
  %161 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %call256 = call i32 @lzx_read_input(%struct.lzx_stream* %161)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %if.then.255
  %162 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error259 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %162, i32 0, i32 23
  %163 = load i32, i32* %error259, align 4
  store i32 %163, i32* %retval
  br label %return

if.end.260:                                       ; preds = %if.then.255
  %164 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr261 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %164, i32 0, i32 25
  %165 = load i8*, i8** %i_ptr261, align 8
  store i8* %165, i8** %i_ptr, align 8
  %166 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end262 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %166, i32 0, i32 26
  %167 = load i8*, i8** %i_end262, align 8
  store i8* %167, i8** %i_end, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.260, %while.body.251
  %168 = load i8*, i8** %i_ptr, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %169 to i32
  %shl266 = shl i32 %conv265, 8
  %170 = load i8*, i8** %i_ptr, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %170, i64 0
  %171 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %171 to i32
  %or269 = or i32 %shl266, %conv268
  %172 = load i32, i32* %bits_left, align 4
  %conv270 = sext i32 %172 to i64
  %sub271 = sub i64 16, %conv270
  %sh_prom272 = trunc i64 %sub271 to i32
  %shl273 = shl i32 %or269, %sh_prom272
  %173 = load i32, i32* %bit_buffer, align 4
  %or274 = or i32 %173, %shl273
  store i32 %or274, i32* %bit_buffer, align 4
  %174 = load i32, i32* %bits_left, align 4
  %add275 = add nsw i32 %174, 16
  store i32 %add275, i32* %bits_left, align 4
  %175 = load i8*, i8** %i_ptr, align 8
  %add.ptr276 = getelementptr inbounds i8, i8* %175, i64 2
  store i8* %add.ptr276, i8** %i_ptr, align 8
  br label %while.cond.248

while.end.277:                                    ; preds = %while.cond.248
  %176 = load i32, i32* %bit_buffer, align 4
  %shr278 = lshr i32 %176, 26
  %idxprom279 = zext i32 %shr278 to i64
  %177 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_table280 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %177, i32 0, i32 36
  %arrayidx281 = getelementptr inbounds [104 x i16], [104 x i16]* %PRETREE_table280, i32 0, i64 %idxprom279
  %178 = load i16, i16* %arrayidx281, align 2
  store i16 %178, i16* %sym, align 2
  %179 = load i16, i16* %sym, align 2
  %conv282 = zext i16 %179 to i32
  %cmp283 = icmp sge i32 %conv282, 20
  br i1 %cmp283, label %if.then.285, label %if.end.316

if.then.285:                                      ; preds = %while.end.277
  store i32 67108864, i32* %i, align 4
  br label %do.body.286

do.body.286:                                      ; preds = %do.cond.311, %if.then.285
  %180 = load i32, i32* %i, align 4
  %shr287 = ashr i32 %180, 1
  store i32 %shr287, i32* %i, align 4
  %181 = load i32, i32* %i, align 4
  %cmp288 = icmp eq i32 %181, 0
  br i1 %cmp288, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %do.body.286
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  %182 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error291 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %182, i32 0, i32 23
  store i32 -124, i32* %error291, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.292:                                       ; preds = %do.body.286
  %183 = load i16, i16* %sym, align 2
  %conv293 = zext i16 %183 to i32
  %shl294 = shl i32 %conv293, 1
  %conv295 = trunc i32 %shl294 to i16
  store i16 %conv295, i16* %sym, align 2
  %184 = load i32, i32* %bit_buffer, align 4
  %185 = load i32, i32* %i, align 4
  %and296 = and i32 %184, %185
  %tobool297 = icmp ne i32 %and296, 0
  %cond298 = select i1 %tobool297, i32 1, i32 0
  %186 = load i16, i16* %sym, align 2
  %conv299 = zext i16 %186 to i32
  %or300 = or i32 %conv299, %cond298
  %conv301 = trunc i32 %or300 to i16
  store i16 %conv301, i16* %sym, align 2
  %187 = load i16, i16* %sym, align 2
  %conv302 = zext i16 %187 to i32
  %cmp303 = icmp sge i32 %conv302, 104
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.292
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  %188 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %error306 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %188, i32 0, i32 23
  store i32 -124, i32* %error306, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.307:                                       ; preds = %if.end.292
  %189 = load i16, i16* %sym, align 2
  %idxprom308 = zext i16 %189 to i64
  %190 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_table309 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %190, i32 0, i32 36
  %arrayidx310 = getelementptr inbounds [104 x i16], [104 x i16]* %PRETREE_table309, i32 0, i64 %idxprom308
  %191 = load i16, i16* %arrayidx310, align 2
  store i16 %191, i16* %sym, align 2
  br label %do.cond.311

do.cond.311:                                      ; preds = %if.end.307
  %192 = load i16, i16* %sym, align 2
  %conv312 = zext i16 %192 to i32
  %cmp313 = icmp sge i32 %conv312, 20
  br i1 %cmp313, label %do.body.286, label %do.end.315

do.end.315:                                       ; preds = %do.cond.311
  br label %if.end.316

if.end.316:                                       ; preds = %do.end.315, %while.end.277
  %193 = load i16, i16* %sym, align 2
  %conv317 = zext i16 %193 to i32
  store i32 %conv317, i32* %z, align 4
  %194 = load i16, i16* %sym, align 2
  %idxprom318 = zext i16 %194 to i64
  %195 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %PRETREE_len319 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %195, i32 0, i32 32
  %arrayidx320 = getelementptr inbounds [84 x i8], [84 x i8]* %PRETREE_len319, i32 0, i64 %idxprom318
  %196 = load i8, i8* %arrayidx320, align 1
  %conv321 = zext i8 %196 to i32
  store i32 %conv321, i32* %i, align 4
  %197 = load i32, i32* %i, align 4
  %198 = load i32, i32* %bit_buffer, align 4
  %shl322 = shl i32 %198, %197
  store i32 %shl322, i32* %bit_buffer, align 4
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %bits_left, align 4
  %sub323 = sub nsw i32 %200, %199
  store i32 %sub323, i32* %bits_left, align 4
  br label %do.end.325

do.end.325:                                       ; preds = %if.end.316
  %201 = load i32, i32* %x, align 4
  %idxprom326 = zext i32 %201 to i64
  %202 = load i8*, i8** %lens.addr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %202, i64 %idxprom326
  %203 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %203 to i32
  %204 = load i32, i32* %z, align 4
  %sub329 = sub nsw i32 %conv328, %204
  store i32 %sub329, i32* %z, align 4
  %205 = load i32, i32* %z, align 4
  %cmp330 = icmp slt i32 %205, 0
  br i1 %cmp330, label %if.then.332, label %if.end.334

if.then.332:                                      ; preds = %do.end.325
  %206 = load i32, i32* %z, align 4
  %add333 = add nsw i32 %206, 17
  store i32 %add333, i32* %z, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %do.end.325
  br label %while.cond.335

while.cond.335:                                   ; preds = %while.body.338, %if.end.334
  %207 = load i32, i32* %y, align 4
  %dec336 = add i32 %207, -1
  store i32 %dec336, i32* %y, align 4
  %tobool337 = icmp ne i32 %207, 0
  br i1 %tobool337, label %while.body.338, label %while.end.343

while.body.338:                                   ; preds = %while.cond.335
  %208 = load i32, i32* %z, align 4
  %conv339 = trunc i32 %208 to i8
  %209 = load i32, i32* %x, align 4
  %inc340 = add i32 %209, 1
  store i32 %inc340, i32* %x, align 4
  %idxprom341 = zext i32 %209 to i64
  %210 = load i8*, i8** %lens.addr, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %210, i64 %idxprom341
  store i8 %conv339, i8* %arrayidx342, align 1
  br label %while.cond.335

while.end.343:                                    ; preds = %while.cond.335
  br label %if.end.358

if.else.344:                                      ; preds = %if.else.206
  %211 = load i32, i32* %x, align 4
  %idxprom345 = zext i32 %211 to i64
  %212 = load i8*, i8** %lens.addr, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %212, i64 %idxprom345
  %213 = load i8, i8* %arrayidx346, align 1
  %conv347 = zext i8 %213 to i32
  %214 = load i32, i32* %z, align 4
  %sub348 = sub nsw i32 %conv347, %214
  store i32 %sub348, i32* %z, align 4
  %215 = load i32, i32* %z, align 4
  %cmp349 = icmp slt i32 %215, 0
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %if.else.344
  %216 = load i32, i32* %z, align 4
  %add352 = add nsw i32 %216, 17
  store i32 %add352, i32* %z, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.351, %if.else.344
  %217 = load i32, i32* %z, align 4
  %conv354 = trunc i32 %217 to i8
  %218 = load i32, i32* %x, align 4
  %inc355 = add i32 %218, 1
  store i32 %inc355, i32* %x, align 4
  %idxprom356 = zext i32 %218 to i64
  %219 = load i8*, i8** %lens.addr, align 8
  %arrayidx357 = getelementptr inbounds i8, i8* %219, i64 %idxprom356
  store i8 %conv354, i8* %arrayidx357, align 1
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.353, %while.end.343
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %while.end.205
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %while.end.157
  br label %for.cond.31

for.end.361:                                      ; preds = %for.cond.31
  br label %do.body.362

do.body.362:                                      ; preds = %for.end.361
  %220 = load i8*, i8** %i_ptr, align 8
  %221 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_ptr363 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %221, i32 0, i32 25
  store i8* %220, i8** %i_ptr363, align 8
  %222 = load i8*, i8** %i_end, align 8
  %223 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %i_end364 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %223, i32 0, i32 26
  store i8* %222, i8** %i_end364, align 8
  %224 = load i32, i32* %bit_buffer, align 4
  %225 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bit_buffer365 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %225, i32 0, i32 29
  store i32 %224, i32* %bit_buffer365, align 4
  %226 = load i32, i32* %bits_left, align 4
  %227 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %bits_left366 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %227, i32 0, i32 30
  store i32 %226, i32* %bits_left366, align 4
  br label %do.end.368

do.end.368:                                       ; preds = %do.body.362
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.368, %if.then.305, %if.then.290, %if.then.258, %if.then.221, %if.then.172, %if.then.125, %if.then.91, %if.then.78, %if.then.46, %if.then.28, %if.then.8
  %228 = load i32, i32* %retval
  ret i32 %228
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @lzx_free(%struct.lzx_stream* %lzx) #0 {
entry:
  %lzx.addr = alloca %struct.lzx_stream*, align 8
  store %struct.lzx_stream* %lzx, %struct.lzx_stream** %lzx.addr, align 8
  %0 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %tobool = icmp ne %struct.lzx_stream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %inbuf = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %1, i32 0, i32 24
  %2 = load i8*, i8** %inbuf, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %window = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %3, i32 0, i32 5
  %4 = load i8*, i8** %window, align 8
  call void @free(i8* %4) #3
  %5 = load %struct.lzx_stream*, %struct.lzx_stream** %lzx.addr, align 8
  %6 = bitcast %struct.lzx_stream* %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.qtm_stream* @qtm_init(i32 %fd, i32 %ofd, i32 %window_bits, i32 %input_buffer_size, %struct.cab_file* %file, i32 (%struct.cab_file*, i8*, i32)* %read) #0 {
entry:
  %retval = alloca %struct.qtm_stream*, align 8
  %fd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %window_bits.addr = alloca i32, align 4
  %input_buffer_size.addr = alloca i32, align 4
  %file.addr = alloca %struct.cab_file*, align 8
  %read.addr = alloca i32 (%struct.cab_file*, i8*, i32)*, align 8
  %window_size = alloca i32, align 4
  %qtm = alloca %struct.qtm_stream*, align 8
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i32 %window_bits, i32* %window_bits.addr, align 4
  store i32 %input_buffer_size, i32* %input_buffer_size.addr, align 4
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i32 (%struct.cab_file*, i8*, i32)* %read, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %0 = load i32, i32* %window_bits.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %window_size, align 4
  %1 = load i32, i32* %window_bits.addr, align 4
  %cmp = icmp slt i32 %1, 15
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %window_bits.addr, align 4
  %cmp1 = icmp sgt i32 %2, 21
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.qtm_stream* null, %struct.qtm_stream** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %input_buffer_size.addr, align 4
  %add = add nsw i32 %3, 1
  %and = and i32 %add, -2
  store i32 %and, i32* %input_buffer_size.addr, align 4
  %4 = load i32, i32* %input_buffer_size.addr, align 4
  %cmp2 = icmp slt i32 %4, 2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.qtm_stream* null, %struct.qtm_stream** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call = call i8* @cli_malloc(i64 2136)
  %5 = bitcast i8* %call to %struct.qtm_stream*
  store %struct.qtm_stream* %5, %struct.qtm_stream** %qtm, align 8
  %tobool = icmp ne %struct.qtm_stream* %5, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  store %struct.qtm_stream* null, %struct.qtm_stream** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %6, 42
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %offset, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %position_base = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %9, i32 0, i32 20
  %arrayidx = getelementptr inbounds [42 x i32], [42 x i32]* %position_base, i32 0, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %10, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  %shr = ashr i32 %cond, 1
  %conv = trunc i32 %shr to i8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %extra_bits = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %13, i32 0, i32 21
  %arrayidx10 = getelementptr inbounds [42 x i8], [42 x i8]* %extra_bits, i32 0, i64 %idxprom9
  store i8 %conv, i8* %arrayidx10, align 1
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %extra_bits12 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %15, i32 0, i32 21
  %arrayidx13 = getelementptr inbounds [42 x i8], [42 x i8]* %extra_bits12, i32 0, i64 %idxprom11
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %shl15 = shl i32 1, %conv14
  %17 = load i32, i32* %offset, align 4
  %add16 = add i32 %17, %shl15
  store i32 %add16, i32* %offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.41, %for.end
  %19 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %19, 26
  br i1 %cmp18, label %for.body.20, label %for.end.43

for.body.20:                                      ; preds = %for.cond.17
  %20 = load i32, i32* %offset, align 4
  %conv21 = trunc i32 %20 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %length_base = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %22, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [27 x i8], [27 x i8]* %length_base, i32 0, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1
  %23 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %23, 2
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.body.20
  br label %cond.end.29

cond.false.27:                                    ; preds = %for.body.20
  %24 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %24, 2
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i32 [ 0, %cond.true.26 ], [ %sub28, %cond.false.27 ]
  %shr31 = ashr i32 %cond30, 2
  %conv32 = trunc i32 %shr31 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %length_extra = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %26, i32 0, i32 23
  %arrayidx34 = getelementptr inbounds [27 x i8], [27 x i8]* %length_extra, i32 0, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx34, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %length_extra36 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %28, i32 0, i32 23
  %arrayidx37 = getelementptr inbounds [27 x i8], [27 x i8]* %length_extra36, i32 0, i64 %idxprom35
  %29 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %29 to i32
  %shl39 = shl i32 1, %conv38
  %30 = load i32, i32* %offset, align 4
  %add40 = add i32 %30, %shl39
  store i32 %add40, i32* %offset, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %cond.end.29
  %31 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %31, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.17

for.end.43:                                       ; preds = %for.cond.17
  %32 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %length_base44 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %32, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [27 x i8], [27 x i8]* %length_base44, i32 0, i64 26
  store i8 -2, i8* %arrayidx45, align 1
  %33 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %length_extra46 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %33, i32 0, i32 23
  %arrayidx47 = getelementptr inbounds [27 x i8], [27 x i8]* %length_extra46, i32 0, i64 26
  store i8 0, i8* %arrayidx47, align 1
  %34 = load i32, i32* %window_size, align 4
  %conv48 = zext i32 %34 to i64
  %call49 = call i8* @cli_malloc(i64 %conv48)
  %35 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %35, i32 0, i32 3
  store i8* %call49, i8** %window, align 8
  %36 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window50 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %36, i32 0, i32 3
  %37 = load i8*, i8** %window50, align 8
  %tobool51 = icmp ne i8* %37, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %for.end.43
  %38 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %39 = bitcast %struct.qtm_stream* %38 to i8*
  call void @free(i8* %39) #3
  store %struct.qtm_stream* null, %struct.qtm_stream** %retval
  br label %return

if.end.53:                                        ; preds = %for.end.43
  %40 = load i32, i32* %input_buffer_size.addr, align 4
  %conv54 = sext i32 %40 to i64
  %call55 = call i8* @cli_malloc(i64 %conv54)
  %41 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %inbuf = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %41, i32 0, i32 12
  store i8* %call55, i8** %inbuf, align 8
  %42 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %inbuf56 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %42, i32 0, i32 12
  %43 = load i8*, i8** %inbuf56, align 8
  %tobool57 = icmp ne i8* %43, null
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.end.53
  %44 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window59 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %44, i32 0, i32 3
  %45 = load i8*, i8** %window59, align 8
  call void @free(i8* %45) #3
  %46 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %47 = bitcast %struct.qtm_stream* %46 to i8*
  call void @free(i8* %47) #3
  store %struct.qtm_stream* null, %struct.qtm_stream** %retval
  br label %return

if.end.60:                                        ; preds = %if.end.53
  %48 = load i32, i32* %fd.addr, align 4
  %49 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %fd61 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %49, i32 0, i32 0
  store i32 %48, i32* %fd61, align 4
  %50 = load i32, i32* %ofd.addr, align 4
  %51 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %ofd62 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %51, i32 0, i32 1
  store i32 %50, i32* %ofd62, align 4
  %52 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %wflag = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %52, i32 0, i32 2
  store i8 1, i8* %wflag, align 1
  %53 = load i32, i32* %input_buffer_size.addr, align 4
  %54 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %inbuf_size = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %54, i32 0, i32 18
  store i32 %53, i32* %inbuf_size, align 4
  %55 = load i32, i32* %window_size, align 4
  %56 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window_size63 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %56, i32 0, i32 4
  store i32 %55, i32* %window_size63, align 4
  %57 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window_posn = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %57, i32 0, i32 5
  store i32 0, i32* %window_posn, align 4
  %58 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %frame_start = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %58, i32 0, i32 6
  store i32 0, i32* %frame_start, align 4
  %59 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %header_read = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %59, i32 0, i32 10
  store i8 0, i8* %header_read, align 1
  %60 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %error = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %60, i32 0, i32 11
  store i32 0, i32* %error, align 4
  %61 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %inbuf64 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %61, i32 0, i32 12
  %62 = load i8*, i8** %inbuf64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %i_end = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %63, i32 0, i32 14
  store i8* %arrayidx65, i8** %i_end, align 8
  %64 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %i_ptr = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %64, i32 0, i32 13
  store i8* %arrayidx65, i8** %i_ptr, align 8
  %65 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %window66 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %65, i32 0, i32 3
  %66 = load i8*, i8** %window66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %o_end = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %67, i32 0, i32 16
  store i8* %arrayidx67, i8** %o_end, align 8
  %68 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %o_ptr = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %68, i32 0, i32 15
  store i8* %arrayidx67, i8** %o_ptr, align 8
  %69 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %bits_left = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %69, i32 0, i32 19
  store i8 0, i8* %bits_left, align 1
  %70 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %bit_buffer = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %70, i32 0, i32 17
  store i32 0, i32* %bit_buffer, align 4
  %71 = load i32, i32* %window_bits.addr, align 4
  %mul = mul nsw i32 %71, 2
  store i32 %mul, i32* %i, align 4
  %72 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model0 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %72, i32 0, i32 24
  %73 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m0sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %73, i32 0, i32 33
  %arrayidx68 = getelementptr inbounds [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym]* %m0sym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model0, %struct.qtm_modelsym* %arrayidx68, i32 0, i32 64)
  %74 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model1 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %74, i32 0, i32 25
  %75 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m1sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %75, i32 0, i32 34
  %arrayidx69 = getelementptr inbounds [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym]* %m1sym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model1, %struct.qtm_modelsym* %arrayidx69, i32 64, i32 64)
  %76 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model2 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %76, i32 0, i32 26
  %77 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m2sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %77, i32 0, i32 35
  %arrayidx70 = getelementptr inbounds [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym]* %m2sym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model2, %struct.qtm_modelsym* %arrayidx70, i32 128, i32 64)
  %78 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model3 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %78, i32 0, i32 27
  %79 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m3sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %79, i32 0, i32 36
  %arrayidx71 = getelementptr inbounds [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym]* %m3sym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model3, %struct.qtm_modelsym* %arrayidx71, i32 192, i32 64)
  %80 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model4 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %80, i32 0, i32 28
  %81 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m4sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %81, i32 0, i32 37
  %arrayidx72 = getelementptr inbounds [25 x %struct.qtm_modelsym], [25 x %struct.qtm_modelsym]* %m4sym, i32 0, i64 0
  %82 = load i32, i32* %i, align 4
  %cmp73 = icmp sgt i32 %82, 24
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %if.end.60
  br label %cond.end.77

cond.false.76:                                    ; preds = %if.end.60
  %83 = load i32, i32* %i, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ 24, %cond.true.75 ], [ %83, %cond.false.76 ]
  call void @qtm_init_model(%struct.qtm_model* %model4, %struct.qtm_modelsym* %arrayidx72, i32 0, i32 %cond78)
  %84 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model5 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %84, i32 0, i32 29
  %85 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m5sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %85, i32 0, i32 38
  %arrayidx79 = getelementptr inbounds [37 x %struct.qtm_modelsym], [37 x %struct.qtm_modelsym]* %m5sym, i32 0, i64 0
  %86 = load i32, i32* %i, align 4
  %cmp80 = icmp sgt i32 %86, 36
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.77
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.77
  %87 = load i32, i32* %i, align 4
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi i32 [ 36, %cond.true.82 ], [ %87, %cond.false.83 ]
  call void @qtm_init_model(%struct.qtm_model* %model5, %struct.qtm_modelsym* %arrayidx79, i32 0, i32 %cond85)
  %88 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model6 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %88, i32 0, i32 30
  %89 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m6sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %89, i32 0, i32 39
  %arrayidx86 = getelementptr inbounds [43 x %struct.qtm_modelsym], [43 x %struct.qtm_modelsym]* %m6sym, i32 0, i64 0
  %90 = load i32, i32* %i, align 4
  call void @qtm_init_model(%struct.qtm_model* %model6, %struct.qtm_modelsym* %arrayidx86, i32 0, i32 %90)
  %91 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model6len = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %91, i32 0, i32 31
  %92 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m6lsym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %92, i32 0, i32 40
  %arrayidx87 = getelementptr inbounds [28 x %struct.qtm_modelsym], [28 x %struct.qtm_modelsym]* %m6lsym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model6len, %struct.qtm_modelsym* %arrayidx87, i32 0, i32 27)
  %93 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %model7 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %93, i32 0, i32 32
  %94 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %m7sym = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %94, i32 0, i32 41
  %arrayidx88 = getelementptr inbounds [8 x %struct.qtm_modelsym], [8 x %struct.qtm_modelsym]* %m7sym, i32 0, i64 0
  call void @qtm_init_model(%struct.qtm_model* %model7, %struct.qtm_modelsym* %arrayidx88, i32 0, i32 7)
  %95 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %96 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %file89 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %96, i32 0, i32 42
  store %struct.cab_file* %95, %struct.cab_file** %file89, align 8
  %97 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read.addr, align 8
  %98 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  %read90 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %98, i32 0, i32 43
  store i32 (%struct.cab_file*, i8*, i32)* %97, i32 (%struct.cab_file*, i8*, i32)** %read90, align 8
  %99 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm, align 8
  store %struct.qtm_stream* %99, %struct.qtm_stream** %retval
  br label %return

return:                                           ; preds = %cond.end.84, %if.then.58, %if.then.52, %if.then.5, %if.then.3, %if.then
  %100 = load %struct.qtm_stream*, %struct.qtm_stream** %retval
  ret %struct.qtm_stream* %100
}

; Function Attrs: nounwind uwtable
define internal void @qtm_init_model(%struct.qtm_model* %model, %struct.qtm_modelsym* %syms, i32 %start, i32 %len) #0 {
entry:
  %model.addr = alloca %struct.qtm_model*, align 8
  %syms.addr = alloca %struct.qtm_modelsym*, align 8
  %start.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.qtm_model* %model, %struct.qtm_model** %model.addr, align 8
  store %struct.qtm_modelsym* %syms, %struct.qtm_modelsym** %syms.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %shiftsleft = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %0, i32 0, i32 0
  store i32 4, i32* %shiftsleft, align 4
  %1 = load i32, i32* %len.addr, align 4
  %2 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %2, i32 0, i32 1
  store i32 %1, i32* %entries, align 4
  %3 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms.addr, align 8
  %4 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms1 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %4, i32 0, i32 2
  store %struct.qtm_modelsym* %3, %struct.qtm_modelsym** %syms1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %start.addr, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, %8
  %conv = trunc i32 %add to i16
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms.addr, align 8
  %arrayidx = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %10, i64 %idxprom
  %sym = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx, i32 0, i32 0
  store i16 %conv, i16* %sym, align 2
  %11 = load i32, i32* %len.addr, align 4
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, %12
  %conv2 = trunc i32 %sub to i16
  %13 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %14, i64 %idxprom3
  %cumfreq = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx4, i32 0, i32 1
  store i16 %conv2, i16* %cumfreq, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @qtm_decompress(%struct.qtm_stream* %qtm, i64 %out_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %qtm.addr = alloca %struct.qtm_stream*, align 8
  %out_bytes.addr = alloca i64, align 8
  %frame_start = alloca i32, align 4
  %frame_end = alloca i32, align 4
  %window_posn = alloca i32, align 4
  %match_offset = alloca i32, align 4
  %range = alloca i32, align 4
  %window = alloca i8*, align 8
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %runsrc = alloca i8*, align 8
  %rundest = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %selector = alloca i32, align 4
  %extra = alloca i32, align 4
  %sym = alloca i32, align 4
  %match_length = alloca i32, align 4
  %H = alloca i16, align 2
  %L = alloca i16, align 2
  %C = alloca i16, align 2
  %symf = alloca i16, align 2
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i8, align 1
  %bits_needed = alloca i8, align 1
  %bit_run = alloca i8, align 1
  %mdl = alloca %struct.qtm_model*, align 8
  store %struct.qtm_stream* %qtm, %struct.qtm_stream** %qtm.addr, align 8
  store i64 %out_bytes, i64* %out_bytes.addr, align 8
  %0 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %tobool = icmp ne %struct.qtm_stream* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %out_bytes.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %2, i32 0, i32 11
  %3 = load i32, i32* %error, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error3 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %4, i32 0, i32 11
  %5 = load i32, i32* %error3, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %6, i32 0, i32 16
  %7 = load i8*, i8** %o_end, align 8
  %8 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %8, i32 0, i32 15
  %9 = load i8*, i8** %o_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %conv5 = sext i32 %10 to i64
  %11 = load i64, i64* %out_bytes.addr, align 8
  %cmp6 = icmp sgt i64 %conv5, %11
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %12 = load i64, i64* %out_bytes.addr, align 8
  %conv9 = trunc i64 %12 to i32
  store i32 %conv9, i32* %i, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %13 = load i32, i32* %i, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %wflag = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %14, i32 0, i32 2
  %15 = load i8, i8* %wflag, align 1
  %conv13 = zext i8 %15 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.12
  %16 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %ofd = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %16, i32 0, i32 1
  %17 = load i32, i32* %ofd, align 4
  %18 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr15 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %18, i32 0, i32 15
  %19 = load i8*, i8** %o_ptr15, align 8
  %20 = load i32, i32* %i, align 4
  %call = call i32 @cli_writen(i32 %17, i8* %19, i32 %20)
  %21 = load i32, i32* %i, align 4
  %cmp16 = icmp ne i32 %call, %21
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %22 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error19 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %22, i32 0, i32 11
  store i32 -123, i32* %error19, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.then.12
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr21 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %24, i32 0, i32 15
  %25 = load i8*, i8** %o_ptr21, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %o_ptr21, align 8
  %26 = load i32, i32* %i, align 4
  %conv22 = sext i32 %26 to i64
  %27 = load i64, i64* %out_bytes.addr, align 8
  %sub = sub nsw i64 %27, %conv22
  store i64 %sub, i64* %out_bytes.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %if.end.10
  %28 = load i64, i64* %out_bytes.addr, align 8
  %cmp24 = icmp eq i64 %28, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %29 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr28 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %29, i32 0, i32 13
  %30 = load i8*, i8** %i_ptr28, align 8
  store i8* %30, i8** %i_ptr, align 8
  %31 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end29 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %31, i32 0, i32 14
  %32 = load i8*, i8** %i_end29, align 8
  store i8* %32, i8** %i_end, align 8
  %33 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %bit_buffer30 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %33, i32 0, i32 17
  %34 = load i32, i32* %bit_buffer30, align 4
  store i32 %34, i32* %bit_buffer, align 4
  %35 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %bits_left31 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %35, i32 0, i32 19
  %36 = load i8, i8* %bits_left31, align 1
  store i8 %36, i8* %bits_left, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %37 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window32 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %37, i32 0, i32 3
  %38 = load i8*, i8** %window32, align 8
  store i8* %38, i8** %window, align 8
  %39 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window_posn33 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %39, i32 0, i32 5
  %40 = load i32, i32* %window_posn33, align 4
  store i32 %40, i32* %window_posn, align 4
  %41 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %frame_start34 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %41, i32 0, i32 6
  %42 = load i32, i32* %frame_start34, align 4
  store i32 %42, i32* %frame_start, align 4
  %43 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %H35 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %43, i32 0, i32 7
  %44 = load i16, i16* %H35, align 2
  store i16 %44, i16* %H, align 2
  %45 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %L36 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %45, i32 0, i32 8
  %46 = load i16, i16* %L36, align 2
  store i16 %46, i16* %L, align 2
  %47 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %C37 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %47, i32 0, i32 9
  %48 = load i16, i16* %C37, align 2
  store i16 %48, i16* %C, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.1749, %do.end
  %49 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end38 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %49, i32 0, i32 16
  %50 = load i8*, i8** %o_end38, align 8
  %51 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr39 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %51, i32 0, i32 15
  %52 = load i8*, i8** %o_ptr39, align 8
  %sub.ptr.lhs.cast40 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %52 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %53 = load i64, i64* %out_bytes.addr, align 8
  %cmp43 = icmp slt i64 %sub.ptr.sub42, %53
  br i1 %cmp43, label %while.body, label %while.end.1750

while.body:                                       ; preds = %while.cond
  %54 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %header_read = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %54, i32 0, i32 10
  %55 = load i8, i8* %header_read, align 1
  %tobool45 = icmp ne i8 %55, 0
  br i1 %tobool45, label %if.end.106, label %if.then.46

if.then.46:                                       ; preds = %while.body
  store i16 -1, i16* %H, align 2
  store i16 0, i16* %L, align 2
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  store i16 0, i16* %C, align 2
  store i8 16, i8* %bits_needed, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body.47
  %56 = load i8, i8* %bits_needed, align 1
  %conv48 = zext i8 %56 to i32
  %cmp49 = icmp sgt i32 %conv48, 0
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.51

do.body.51:                                       ; preds = %for.body
  %57 = load i8, i8* %bits_left, align 1
  %conv52 = zext i8 %57 to i64
  %cmp53 = icmp ule i64 %conv52, 16
  br i1 %cmp53, label %if.then.55, label %if.end.77

if.then.55:                                       ; preds = %do.body.51
  %58 = load i8*, i8** %i_ptr, align 8
  %59 = load i8*, i8** %i_end, align 8
  %cmp56 = icmp uge i8* %58, %59
  br i1 %cmp56, label %if.then.58, label %if.end.66

if.then.58:                                       ; preds = %if.then.55
  %60 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call59 = call i32 @qtm_read_input(%struct.qtm_stream* %60)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.58
  %61 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error62 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %61, i32 0, i32 11
  %62 = load i32, i32* %error62, align 4
  store i32 %62, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.58
  %63 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr64 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %63, i32 0, i32 13
  %64 = load i8*, i8** %i_ptr64, align 8
  store i8* %64, i8** %i_ptr, align 8
  %65 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end65 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %65, i32 0, i32 14
  %66 = load i8*, i8** %i_end65, align 8
  store i8* %66, i8** %i_end, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.then.55
  %67 = load i8*, i8** %i_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx, align 1
  %conv67 = zext i8 %68 to i32
  %shl = shl i32 %conv67, 8
  %69 = load i8*, i8** %i_ptr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %70 to i32
  %or = or i32 %shl, %conv69
  %71 = load i8, i8* %bits_left, align 1
  %conv70 = zext i8 %71 to i64
  %sub71 = sub i64 16, %conv70
  %sh_prom = trunc i64 %sub71 to i32
  %shl72 = shl i32 %or, %sh_prom
  %72 = load i32, i32* %bit_buffer, align 4
  %or73 = or i32 %72, %shl72
  store i32 %or73, i32* %bit_buffer, align 4
  %73 = load i8, i8* %bits_left, align 1
  %conv74 = zext i8 %73 to i32
  %add = add nsw i32 %conv74, 16
  %conv75 = trunc i32 %add to i8
  store i8 %conv75, i8* %bits_left, align 1
  %74 = load i8*, i8** %i_ptr, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %add.ptr76, i8** %i_ptr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.66, %do.body.51
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %75 = load i8, i8* %bits_left, align 1
  %conv79 = zext i8 %75 to i32
  %76 = load i8, i8* %bits_needed, align 1
  %conv80 = zext i8 %76 to i32
  %cmp81 = icmp slt i32 %conv79, %conv80
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.78
  %77 = load i8, i8* %bits_left, align 1
  %conv83 = zext i8 %77 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end.78
  %78 = load i8, i8* %bits_needed, align 1
  %conv84 = zext i8 %78 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv83, %cond.true ], [ %conv84, %cond.false ]
  %conv85 = trunc i32 %cond to i8
  store i8 %conv85, i8* %bit_run, align 1
  %79 = load i16, i16* %C, align 2
  %conv86 = zext i16 %79 to i32
  %80 = load i8, i8* %bit_run, align 1
  %conv87 = zext i8 %80 to i32
  %shl88 = shl i32 %conv86, %conv87
  %81 = load i32, i32* %bit_buffer, align 4
  %82 = load i8, i8* %bit_run, align 1
  %conv89 = zext i8 %82 to i64
  %sub90 = sub i64 32, %conv89
  %sh_prom91 = trunc i64 %sub90 to i32
  %shr = lshr i32 %81, %sh_prom91
  %or92 = or i32 %shl88, %shr
  %conv93 = trunc i32 %or92 to i16
  store i16 %conv93, i16* %C, align 2
  %83 = load i8, i8* %bit_run, align 1
  %conv94 = zext i8 %83 to i32
  %84 = load i32, i32* %bit_buffer, align 4
  %shl95 = shl i32 %84, %conv94
  store i32 %shl95, i32* %bit_buffer, align 4
  %85 = load i8, i8* %bit_run, align 1
  %conv96 = zext i8 %85 to i32
  %86 = load i8, i8* %bits_left, align 1
  %conv97 = zext i8 %86 to i32
  %sub98 = sub nsw i32 %conv97, %conv96
  %conv99 = trunc i32 %sub98 to i8
  store i8 %conv99, i8* %bits_left, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %87 = load i8, i8* %bit_run, align 1
  %conv100 = zext i8 %87 to i32
  %88 = load i8, i8* %bits_needed, align 1
  %conv101 = zext i8 %88 to i32
  %sub102 = sub nsw i32 %conv101, %conv100
  %conv103 = trunc i32 %sub102 to i8
  store i8 %conv103, i8* %bits_needed, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.end.104

do.end.104:                                       ; preds = %for.end
  %89 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %header_read105 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %89, i32 0, i32 10
  store i8 1, i8* %header_read105, align 1
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.104, %while.body
  %90 = load i32, i32* %window_posn, align 4
  %conv107 = zext i32 %90 to i64
  %91 = load i64, i64* %out_bytes.addr, align 8
  %92 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end108 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %92, i32 0, i32 16
  %93 = load i8*, i8** %o_end108, align 8
  %94 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr109 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %94, i32 0, i32 15
  %95 = load i8*, i8** %o_ptr109, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %95 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %sub113 = sub nsw i64 %91, %sub.ptr.sub112
  %add114 = add nsw i64 %conv107, %sub113
  %conv115 = trunc i64 %add114 to i32
  store i32 %conv115, i32* %frame_end, align 4
  %96 = load i32, i32* %frame_start, align 4
  %add116 = add i32 %96, 32768
  %97 = load i32, i32* %frame_end, align 4
  %cmp117 = icmp ult i32 %add116, %97
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.106
  %98 = load i32, i32* %frame_start, align 4
  %add120 = add i32 %98, 32768
  store i32 %add120, i32* %frame_end, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.106
  br label %while.cond.122

while.cond.122:                                   ; preds = %if.end.1614, %if.end.121
  %99 = load i32, i32* %window_posn, align 4
  %100 = load i32, i32* %frame_end, align 4
  %cmp123 = icmp ult i32 %99, %100
  br i1 %cmp123, label %while.body.125, label %while.end.1615

while.body.125:                                   ; preds = %while.cond.122
  br label %do.body.126

do.body.126:                                      ; preds = %while.body.125
  %101 = load i16, i16* %H, align 2
  %conv127 = zext i16 %101 to i32
  %102 = load i16, i16* %L, align 2
  %conv128 = zext i16 %102 to i32
  %sub129 = sub nsw i32 %conv127, %conv128
  %and = and i32 %sub129, 65535
  %add130 = add nsw i32 %and, 1
  store i32 %add130, i32* %range, align 4
  %103 = load i16, i16* %C, align 2
  %conv131 = zext i16 %103 to i32
  %104 = load i16, i16* %L, align 2
  %conv132 = zext i16 %104 to i32
  %sub133 = sub nsw i32 %conv131, %conv132
  %add134 = add nsw i32 %sub133, 1
  %105 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %105, i32 0, i32 32
  %syms = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7, i32 0, i32 2
  %106 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms, align 8
  %arrayidx135 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %106, i64 0
  %cumfreq = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx135, i32 0, i32 1
  %107 = load i16, i16* %cumfreq, align 2
  %conv136 = zext i16 %107 to i32
  %mul = mul nsw i32 %add134, %conv136
  %sub137 = sub nsw i32 %mul, 1
  %108 = load i32, i32* %range, align 4
  %div = udiv i32 %sub137, %108
  %and138 = and i32 %div, 65535
  %conv139 = trunc i32 %and138 to i16
  store i16 %conv139, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.155, %do.body.126
  %109 = load i32, i32* %i, align 4
  %110 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7141 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %110, i32 0, i32 32
  %entries = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7141, i32 0, i32 1
  %111 = load i32, i32* %entries, align 4
  %cmp142 = icmp slt i32 %109, %111
  br i1 %cmp142, label %for.body.144, label %for.end.156

for.body.144:                                     ; preds = %for.cond.140
  %112 = load i32, i32* %i, align 4
  %idxprom = sext i32 %112 to i64
  %113 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7145 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %113, i32 0, i32 32
  %syms146 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7145, i32 0, i32 2
  %114 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms146, align 8
  %arrayidx147 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %114, i64 %idxprom
  %cumfreq148 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx147, i32 0, i32 1
  %115 = load i16, i16* %cumfreq148, align 2
  %conv149 = zext i16 %115 to i32
  %116 = load i16, i16* %symf, align 2
  %conv150 = zext i16 %116 to i32
  %cmp151 = icmp sle i32 %conv149, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %for.body.144
  br label %for.end.156

if.end.154:                                       ; preds = %for.body.144
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %117 = load i32, i32* %i, align 4
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.140

for.end.156:                                      ; preds = %if.then.153, %for.cond.140
  %118 = load i32, i32* %i, align 4
  %sub157 = sub nsw i32 %118, 1
  %idxprom158 = sext i32 %sub157 to i64
  %119 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7159 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %119, i32 0, i32 32
  %syms160 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7159, i32 0, i32 2
  %120 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms160, align 8
  %arrayidx161 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %120, i64 %idxprom158
  %sym162 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx161, i32 0, i32 0
  %121 = load i16, i16* %sym162, align 2
  %conv163 = zext i16 %121 to i32
  store i32 %conv163, i32* %selector, align 4
  %122 = load i16, i16* %H, align 2
  %conv164 = zext i16 %122 to i32
  %123 = load i16, i16* %L, align 2
  %conv165 = zext i16 %123 to i32
  %sub166 = sub nsw i32 %conv164, %conv165
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, i32* %range, align 4
  %124 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7168 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %124, i32 0, i32 32
  %syms169 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7168, i32 0, i32 2
  %125 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms169, align 8
  %arrayidx170 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %125, i64 0
  %cumfreq171 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx170, i32 0, i32 1
  %126 = load i16, i16* %cumfreq171, align 2
  store i16 %126, i16* %symf, align 2
  %127 = load i16, i16* %L, align 2
  %conv172 = zext i16 %127 to i32
  %128 = load i32, i32* %i, align 4
  %sub173 = sub nsw i32 %128, 1
  %idxprom174 = sext i32 %sub173 to i64
  %129 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7175 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %129, i32 0, i32 32
  %syms176 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7175, i32 0, i32 2
  %130 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms176, align 8
  %arrayidx177 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %130, i64 %idxprom174
  %cumfreq178 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx177, i32 0, i32 1
  %131 = load i16, i16* %cumfreq178, align 2
  %conv179 = zext i16 %131 to i32
  %132 = load i32, i32* %range, align 4
  %mul180 = mul i32 %conv179, %132
  %133 = load i16, i16* %symf, align 2
  %conv181 = zext i16 %133 to i32
  %div182 = udiv i32 %mul180, %conv181
  %add183 = add i32 %conv172, %div182
  %sub184 = sub i32 %add183, 1
  %conv185 = trunc i32 %sub184 to i16
  store i16 %conv185, i16* %H, align 2
  %134 = load i16, i16* %L, align 2
  %conv186 = zext i16 %134 to i32
  %135 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %135 to i64
  %136 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7188 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %136, i32 0, i32 32
  %syms189 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7188, i32 0, i32 2
  %137 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms189, align 8
  %arrayidx190 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %137, i64 %idxprom187
  %cumfreq191 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx190, i32 0, i32 1
  %138 = load i16, i16* %cumfreq191, align 2
  %conv192 = zext i16 %138 to i32
  %139 = load i32, i32* %range, align 4
  %mul193 = mul i32 %conv192, %139
  %140 = load i16, i16* %symf, align 2
  %conv194 = zext i16 %140 to i32
  %div195 = udiv i32 %mul193, %conv194
  %add196 = add i32 %conv186, %div195
  %conv197 = trunc i32 %add196 to i16
  store i16 %conv197, i16* %L, align 2
  br label %do.body.198

do.body.198:                                      ; preds = %do.cond, %for.end.156
  %141 = load i32, i32* %i, align 4
  %dec = add nsw i32 %141, -1
  store i32 %dec, i32* %i, align 4
  %idxprom199 = sext i32 %dec to i64
  %142 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7200 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %142, i32 0, i32 32
  %syms201 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7200, i32 0, i32 2
  %143 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms201, align 8
  %arrayidx202 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %143, i64 %idxprom199
  %cumfreq203 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx202, i32 0, i32 1
  %144 = load i16, i16* %cumfreq203, align 2
  %conv204 = zext i16 %144 to i32
  %add205 = add nsw i32 %conv204, 8
  %conv206 = trunc i32 %add205 to i16
  store i16 %conv206, i16* %cumfreq203, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body.198
  %145 = load i32, i32* %i, align 4
  %cmp207 = icmp sgt i32 %145, 0
  br i1 %cmp207, label %do.body.198, label %do.end.209

do.end.209:                                       ; preds = %do.cond
  %146 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7210 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %146, i32 0, i32 32
  %syms211 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model7210, i32 0, i32 2
  %147 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms211, align 8
  %arrayidx212 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %147, i64 0
  %cumfreq213 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx212, i32 0, i32 1
  %148 = load i16, i16* %cumfreq213, align 2
  %conv214 = zext i16 %148 to i32
  %cmp215 = icmp sgt i32 %conv214, 3800
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %do.end.209
  %149 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model7218 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %149, i32 0, i32 32
  call void @qtm_update_model(%struct.qtm_model* %model7218)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %do.end.209
  br label %while.body.221

while.body.221:                                   ; preds = %if.end.219, %do.end.287
  %150 = load i16, i16* %L, align 2
  %conv222 = zext i16 %150 to i32
  %and223 = and i32 %conv222, 32768
  %151 = load i16, i16* %H, align 2
  %conv224 = zext i16 %151 to i32
  %and225 = and i32 %conv224, 32768
  %cmp226 = icmp ne i32 %and223, %and225
  br i1 %cmp226, label %if.then.228, label %if.end.246

if.then.228:                                      ; preds = %while.body.221
  %152 = load i16, i16* %L, align 2
  %conv229 = zext i16 %152 to i32
  %and230 = and i32 %conv229, 16384
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %land.lhs.true.232, label %if.else

land.lhs.true.232:                                ; preds = %if.then.228
  %153 = load i16, i16* %H, align 2
  %conv233 = zext i16 %153 to i32
  %and234 = and i32 %conv233, 16384
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.else, label %if.then.236

if.then.236:                                      ; preds = %land.lhs.true.232
  %154 = load i16, i16* %C, align 2
  %conv237 = zext i16 %154 to i32
  %xor = xor i32 %conv237, 16384
  %conv238 = trunc i32 %xor to i16
  store i16 %conv238, i16* %C, align 2
  %155 = load i16, i16* %L, align 2
  %conv239 = zext i16 %155 to i32
  %and240 = and i32 %conv239, 16383
  %conv241 = trunc i32 %and240 to i16
  store i16 %conv241, i16* %L, align 2
  %156 = load i16, i16* %H, align 2
  %conv242 = zext i16 %156 to i32
  %or243 = or i32 %conv242, 16384
  %conv244 = trunc i32 %or243 to i16
  store i16 %conv244, i16* %H, align 2
  br label %if.end.245

if.else:                                          ; preds = %land.lhs.true.232, %if.then.228
  br label %while.end

if.end.245:                                       ; preds = %if.then.236
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %while.body.221
  %157 = load i16, i16* %L, align 2
  %conv247 = zext i16 %157 to i32
  %shl248 = shl i32 %conv247, 1
  %conv249 = trunc i32 %shl248 to i16
  store i16 %conv249, i16* %L, align 2
  %158 = load i16, i16* %H, align 2
  %conv250 = zext i16 %158 to i32
  %shl251 = shl i32 %conv250, 1
  %or252 = or i32 %shl251, 1
  %conv253 = trunc i32 %or252 to i16
  store i16 %conv253, i16* %H, align 2
  br label %do.body.254

do.body.254:                                      ; preds = %if.end.246
  %159 = load i8, i8* %bits_left, align 1
  %conv255 = zext i8 %159 to i64
  %cmp256 = icmp ule i64 %conv255, 16
  br i1 %cmp256, label %if.then.258, label %if.end.285

if.then.258:                                      ; preds = %do.body.254
  %160 = load i8*, i8** %i_ptr, align 8
  %161 = load i8*, i8** %i_end, align 8
  %cmp259 = icmp uge i8* %160, %161
  br i1 %cmp259, label %if.then.261, label %if.end.269

if.then.261:                                      ; preds = %if.then.258
  %162 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call262 = call i32 @qtm_read_input(%struct.qtm_stream* %162)
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.then.261
  %163 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error265 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %163, i32 0, i32 11
  %164 = load i32, i32* %error265, align 4
  store i32 %164, i32* %retval
  br label %return

if.end.266:                                       ; preds = %if.then.261
  %165 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr267 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %165, i32 0, i32 13
  %166 = load i8*, i8** %i_ptr267, align 8
  store i8* %166, i8** %i_ptr, align 8
  %167 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end268 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %167, i32 0, i32 14
  %168 = load i8*, i8** %i_end268, align 8
  store i8* %168, i8** %i_end, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.266, %if.then.258
  %169 = load i8*, i8** %i_ptr, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %169, i64 0
  %170 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %170 to i32
  %shl272 = shl i32 %conv271, 8
  %171 = load i8*, i8** %i_ptr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %172 to i32
  %or275 = or i32 %shl272, %conv274
  %173 = load i8, i8* %bits_left, align 1
  %conv276 = zext i8 %173 to i64
  %sub277 = sub i64 16, %conv276
  %sh_prom278 = trunc i64 %sub277 to i32
  %shl279 = shl i32 %or275, %sh_prom278
  %174 = load i32, i32* %bit_buffer, align 4
  %or280 = or i32 %174, %shl279
  store i32 %or280, i32* %bit_buffer, align 4
  %175 = load i8, i8* %bits_left, align 1
  %conv281 = zext i8 %175 to i32
  %add282 = add nsw i32 %conv281, 16
  %conv283 = trunc i32 %add282 to i8
  store i8 %conv283, i8* %bits_left, align 1
  %176 = load i8*, i8** %i_ptr, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %176, i64 2
  store i8* %add.ptr284, i8** %i_ptr, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.269, %do.body.254
  br label %do.end.287

do.end.287:                                       ; preds = %if.end.285
  %177 = load i16, i16* %C, align 2
  %conv288 = zext i16 %177 to i32
  %shl289 = shl i32 %conv288, 1
  %178 = load i32, i32* %bit_buffer, align 4
  %shr290 = lshr i32 %178, 31
  %or291 = or i32 %shl289, %shr290
  %conv292 = trunc i32 %or291 to i16
  store i16 %conv292, i16* %C, align 2
  %179 = load i32, i32* %bit_buffer, align 4
  %shl293 = shl i32 %179, 1
  store i32 %shl293, i32* %bit_buffer, align 4
  %180 = load i8, i8* %bits_left, align 1
  %conv294 = zext i8 %180 to i32
  %sub295 = sub nsw i32 %conv294, 1
  %conv296 = trunc i32 %sub295 to i8
  store i8 %conv296, i8* %bits_left, align 1
  br label %while.body.221

while.end:                                        ; preds = %if.else
  br label %do.end.298

do.end.298:                                       ; preds = %while.end
  %181 = load i32, i32* %selector, align 4
  %cmp299 = icmp slt i32 %181, 4
  br i1 %cmp299, label %if.then.301, label %if.else.501

if.then.301:                                      ; preds = %do.end.298
  %182 = load i32, i32* %selector, align 4
  %cmp302 = icmp eq i32 %182, 0
  br i1 %cmp302, label %cond.true.304, label %cond.false.305

cond.true.304:                                    ; preds = %if.then.301
  %183 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model0 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %183, i32 0, i32 24
  br label %cond.end.318

cond.false.305:                                   ; preds = %if.then.301
  %184 = load i32, i32* %selector, align 4
  %cmp306 = icmp eq i32 %184, 1
  br i1 %cmp306, label %cond.true.308, label %cond.false.309

cond.true.308:                                    ; preds = %cond.false.305
  %185 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model1 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %185, i32 0, i32 25
  br label %cond.end.316

cond.false.309:                                   ; preds = %cond.false.305
  %186 = load i32, i32* %selector, align 4
  %cmp310 = icmp eq i32 %186, 2
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %cond.false.309
  %187 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model2 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %187, i32 0, i32 26
  br label %cond.end.314

cond.false.313:                                   ; preds = %cond.false.309
  %188 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model3 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %188, i32 0, i32 27
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.312
  %cond315 = phi %struct.qtm_model* [ %model2, %cond.true.312 ], [ %model3, %cond.false.313 ]
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.end.314, %cond.true.308
  %cond317 = phi %struct.qtm_model* [ %model1, %cond.true.308 ], [ %cond315, %cond.end.314 ]
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.end.316, %cond.true.304
  %cond319 = phi %struct.qtm_model* [ %model0, %cond.true.304 ], [ %cond317, %cond.end.316 ]
  store %struct.qtm_model* %cond319, %struct.qtm_model** %mdl, align 8
  br label %do.body.320

do.body.320:                                      ; preds = %cond.end.318
  %189 = load i16, i16* %H, align 2
  %conv321 = zext i16 %189 to i32
  %190 = load i16, i16* %L, align 2
  %conv322 = zext i16 %190 to i32
  %sub323 = sub nsw i32 %conv321, %conv322
  %and324 = and i32 %sub323, 65535
  %add325 = add nsw i32 %and324, 1
  store i32 %add325, i32* %range, align 4
  %191 = load i16, i16* %C, align 2
  %conv326 = zext i16 %191 to i32
  %192 = load i16, i16* %L, align 2
  %conv327 = zext i16 %192 to i32
  %sub328 = sub nsw i32 %conv326, %conv327
  %add329 = add nsw i32 %sub328, 1
  %193 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms330 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %193, i32 0, i32 2
  %194 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms330, align 8
  %arrayidx331 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %194, i64 0
  %cumfreq332 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx331, i32 0, i32 1
  %195 = load i16, i16* %cumfreq332, align 2
  %conv333 = zext i16 %195 to i32
  %mul334 = mul nsw i32 %add329, %conv333
  %sub335 = sub nsw i32 %mul334, 1
  %196 = load i32, i32* %range, align 4
  %div336 = udiv i32 %sub335, %196
  %and337 = and i32 %div336, 65535
  %conv338 = trunc i32 %and337 to i16
  store i16 %conv338, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.354, %do.body.320
  %197 = load i32, i32* %i, align 4
  %198 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %entries340 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %198, i32 0, i32 1
  %199 = load i32, i32* %entries340, align 4
  %cmp341 = icmp slt i32 %197, %199
  br i1 %cmp341, label %for.body.343, label %for.end.356

for.body.343:                                     ; preds = %for.cond.339
  %200 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %200 to i64
  %201 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms345 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %201, i32 0, i32 2
  %202 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms345, align 8
  %arrayidx346 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %202, i64 %idxprom344
  %cumfreq347 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx346, i32 0, i32 1
  %203 = load i16, i16* %cumfreq347, align 2
  %conv348 = zext i16 %203 to i32
  %204 = load i16, i16* %symf, align 2
  %conv349 = zext i16 %204 to i32
  %cmp350 = icmp sle i32 %conv348, %conv349
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %for.body.343
  br label %for.end.356

if.end.353:                                       ; preds = %for.body.343
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %205 = load i32, i32* %i, align 4
  %inc355 = add nsw i32 %205, 1
  store i32 %inc355, i32* %i, align 4
  br label %for.cond.339

for.end.356:                                      ; preds = %if.then.352, %for.cond.339
  %206 = load i32, i32* %i, align 4
  %sub357 = sub nsw i32 %206, 1
  %idxprom358 = sext i32 %sub357 to i64
  %207 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms359 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %207, i32 0, i32 2
  %208 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms359, align 8
  %arrayidx360 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %208, i64 %idxprom358
  %sym361 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx360, i32 0, i32 0
  %209 = load i16, i16* %sym361, align 2
  %conv362 = zext i16 %209 to i32
  store i32 %conv362, i32* %sym, align 4
  %210 = load i16, i16* %H, align 2
  %conv363 = zext i16 %210 to i32
  %211 = load i16, i16* %L, align 2
  %conv364 = zext i16 %211 to i32
  %sub365 = sub nsw i32 %conv363, %conv364
  %add366 = add nsw i32 %sub365, 1
  store i32 %add366, i32* %range, align 4
  %212 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms367 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %212, i32 0, i32 2
  %213 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms367, align 8
  %arrayidx368 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %213, i64 0
  %cumfreq369 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx368, i32 0, i32 1
  %214 = load i16, i16* %cumfreq369, align 2
  store i16 %214, i16* %symf, align 2
  %215 = load i16, i16* %L, align 2
  %conv370 = zext i16 %215 to i32
  %216 = load i32, i32* %i, align 4
  %sub371 = sub nsw i32 %216, 1
  %idxprom372 = sext i32 %sub371 to i64
  %217 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms373 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %217, i32 0, i32 2
  %218 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms373, align 8
  %arrayidx374 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %218, i64 %idxprom372
  %cumfreq375 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx374, i32 0, i32 1
  %219 = load i16, i16* %cumfreq375, align 2
  %conv376 = zext i16 %219 to i32
  %220 = load i32, i32* %range, align 4
  %mul377 = mul i32 %conv376, %220
  %221 = load i16, i16* %symf, align 2
  %conv378 = zext i16 %221 to i32
  %div379 = udiv i32 %mul377, %conv378
  %add380 = add i32 %conv370, %div379
  %sub381 = sub i32 %add380, 1
  %conv382 = trunc i32 %sub381 to i16
  store i16 %conv382, i16* %H, align 2
  %222 = load i16, i16* %L, align 2
  %conv383 = zext i16 %222 to i32
  %223 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %223 to i64
  %224 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms385 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %224, i32 0, i32 2
  %225 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms385, align 8
  %arrayidx386 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %225, i64 %idxprom384
  %cumfreq387 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx386, i32 0, i32 1
  %226 = load i16, i16* %cumfreq387, align 2
  %conv388 = zext i16 %226 to i32
  %227 = load i32, i32* %range, align 4
  %mul389 = mul i32 %conv388, %227
  %228 = load i16, i16* %symf, align 2
  %conv390 = zext i16 %228 to i32
  %div391 = udiv i32 %mul389, %conv390
  %add392 = add i32 %conv383, %div391
  %conv393 = trunc i32 %add392 to i16
  store i16 %conv393, i16* %L, align 2
  br label %do.body.394

do.body.394:                                      ; preds = %do.cond.403, %for.end.356
  %229 = load i32, i32* %i, align 4
  %dec395 = add nsw i32 %229, -1
  store i32 %dec395, i32* %i, align 4
  %idxprom396 = sext i32 %dec395 to i64
  %230 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms397 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %230, i32 0, i32 2
  %231 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms397, align 8
  %arrayidx398 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %231, i64 %idxprom396
  %cumfreq399 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx398, i32 0, i32 1
  %232 = load i16, i16* %cumfreq399, align 2
  %conv400 = zext i16 %232 to i32
  %add401 = add nsw i32 %conv400, 8
  %conv402 = trunc i32 %add401 to i16
  store i16 %conv402, i16* %cumfreq399, align 2
  br label %do.cond.403

do.cond.403:                                      ; preds = %do.body.394
  %233 = load i32, i32* %i, align 4
  %cmp404 = icmp sgt i32 %233, 0
  br i1 %cmp404, label %do.body.394, label %do.end.406

do.end.406:                                       ; preds = %do.cond.403
  %234 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  %syms407 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %234, i32 0, i32 2
  %235 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms407, align 8
  %arrayidx408 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %235, i64 0
  %cumfreq409 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx408, i32 0, i32 1
  %236 = load i16, i16* %cumfreq409, align 2
  %conv410 = zext i16 %236 to i32
  %cmp411 = icmp sgt i32 %conv410, 3800
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %do.end.406
  %237 = load %struct.qtm_model*, %struct.qtm_model** %mdl, align 8
  call void @qtm_update_model(%struct.qtm_model* %237)
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %do.end.406
  br label %while.body.416

while.body.416:                                   ; preds = %if.end.414, %do.end.484
  %238 = load i16, i16* %L, align 2
  %conv417 = zext i16 %238 to i32
  %and418 = and i32 %conv417, 32768
  %239 = load i16, i16* %H, align 2
  %conv419 = zext i16 %239 to i32
  %and420 = and i32 %conv419, 32768
  %cmp421 = icmp ne i32 %and418, %and420
  br i1 %cmp421, label %if.then.423, label %if.end.443

if.then.423:                                      ; preds = %while.body.416
  %240 = load i16, i16* %L, align 2
  %conv424 = zext i16 %240 to i32
  %and425 = and i32 %conv424, 16384
  %tobool426 = icmp ne i32 %and425, 0
  br i1 %tobool426, label %land.lhs.true.427, label %if.else.441

land.lhs.true.427:                                ; preds = %if.then.423
  %241 = load i16, i16* %H, align 2
  %conv428 = zext i16 %241 to i32
  %and429 = and i32 %conv428, 16384
  %tobool430 = icmp ne i32 %and429, 0
  br i1 %tobool430, label %if.else.441, label %if.then.431

if.then.431:                                      ; preds = %land.lhs.true.427
  %242 = load i16, i16* %C, align 2
  %conv432 = zext i16 %242 to i32
  %xor433 = xor i32 %conv432, 16384
  %conv434 = trunc i32 %xor433 to i16
  store i16 %conv434, i16* %C, align 2
  %243 = load i16, i16* %L, align 2
  %conv435 = zext i16 %243 to i32
  %and436 = and i32 %conv435, 16383
  %conv437 = trunc i32 %and436 to i16
  store i16 %conv437, i16* %L, align 2
  %244 = load i16, i16* %H, align 2
  %conv438 = zext i16 %244 to i32
  %or439 = or i32 %conv438, 16384
  %conv440 = trunc i32 %or439 to i16
  store i16 %conv440, i16* %H, align 2
  br label %if.end.442

if.else.441:                                      ; preds = %land.lhs.true.427, %if.then.423
  br label %while.end.494

if.end.442:                                       ; preds = %if.then.431
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %while.body.416
  %245 = load i16, i16* %L, align 2
  %conv444 = zext i16 %245 to i32
  %shl445 = shl i32 %conv444, 1
  %conv446 = trunc i32 %shl445 to i16
  store i16 %conv446, i16* %L, align 2
  %246 = load i16, i16* %H, align 2
  %conv447 = zext i16 %246 to i32
  %shl448 = shl i32 %conv447, 1
  %or449 = or i32 %shl448, 1
  %conv450 = trunc i32 %or449 to i16
  store i16 %conv450, i16* %H, align 2
  br label %do.body.451

do.body.451:                                      ; preds = %if.end.443
  %247 = load i8, i8* %bits_left, align 1
  %conv452 = zext i8 %247 to i64
  %cmp453 = icmp ule i64 %conv452, 16
  br i1 %cmp453, label %if.then.455, label %if.end.482

if.then.455:                                      ; preds = %do.body.451
  %248 = load i8*, i8** %i_ptr, align 8
  %249 = load i8*, i8** %i_end, align 8
  %cmp456 = icmp uge i8* %248, %249
  br i1 %cmp456, label %if.then.458, label %if.end.466

if.then.458:                                      ; preds = %if.then.455
  %250 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call459 = call i32 @qtm_read_input(%struct.qtm_stream* %250)
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.then.461, label %if.end.463

if.then.461:                                      ; preds = %if.then.458
  %251 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error462 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %251, i32 0, i32 11
  %252 = load i32, i32* %error462, align 4
  store i32 %252, i32* %retval
  br label %return

if.end.463:                                       ; preds = %if.then.458
  %253 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr464 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %253, i32 0, i32 13
  %254 = load i8*, i8** %i_ptr464, align 8
  store i8* %254, i8** %i_ptr, align 8
  %255 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end465 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %255, i32 0, i32 14
  %256 = load i8*, i8** %i_end465, align 8
  store i8* %256, i8** %i_end, align 8
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.463, %if.then.455
  %257 = load i8*, i8** %i_ptr, align 8
  %arrayidx467 = getelementptr inbounds i8, i8* %257, i64 0
  %258 = load i8, i8* %arrayidx467, align 1
  %conv468 = zext i8 %258 to i32
  %shl469 = shl i32 %conv468, 8
  %259 = load i8*, i8** %i_ptr, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %259, i64 1
  %260 = load i8, i8* %arrayidx470, align 1
  %conv471 = zext i8 %260 to i32
  %or472 = or i32 %shl469, %conv471
  %261 = load i8, i8* %bits_left, align 1
  %conv473 = zext i8 %261 to i64
  %sub474 = sub i64 16, %conv473
  %sh_prom475 = trunc i64 %sub474 to i32
  %shl476 = shl i32 %or472, %sh_prom475
  %262 = load i32, i32* %bit_buffer, align 4
  %or477 = or i32 %262, %shl476
  store i32 %or477, i32* %bit_buffer, align 4
  %263 = load i8, i8* %bits_left, align 1
  %conv478 = zext i8 %263 to i32
  %add479 = add nsw i32 %conv478, 16
  %conv480 = trunc i32 %add479 to i8
  store i8 %conv480, i8* %bits_left, align 1
  %264 = load i8*, i8** %i_ptr, align 8
  %add.ptr481 = getelementptr inbounds i8, i8* %264, i64 2
  store i8* %add.ptr481, i8** %i_ptr, align 8
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.466, %do.body.451
  br label %do.end.484

do.end.484:                                       ; preds = %if.end.482
  %265 = load i16, i16* %C, align 2
  %conv485 = zext i16 %265 to i32
  %shl486 = shl i32 %conv485, 1
  %266 = load i32, i32* %bit_buffer, align 4
  %shr487 = lshr i32 %266, 31
  %or488 = or i32 %shl486, %shr487
  %conv489 = trunc i32 %or488 to i16
  store i16 %conv489, i16* %C, align 2
  %267 = load i32, i32* %bit_buffer, align 4
  %shl490 = shl i32 %267, 1
  store i32 %shl490, i32* %bit_buffer, align 4
  %268 = load i8, i8* %bits_left, align 1
  %conv491 = zext i8 %268 to i32
  %sub492 = sub nsw i32 %conv491, 1
  %conv493 = trunc i32 %sub492 to i8
  store i8 %conv493, i8* %bits_left, align 1
  br label %while.body.416

while.end.494:                                    ; preds = %if.else.441
  br label %do.end.496

do.end.496:                                       ; preds = %while.end.494
  %269 = load i32, i32* %sym, align 4
  %conv497 = trunc i32 %269 to i8
  %270 = load i32, i32* %window_posn, align 4
  %inc498 = add i32 %270, 1
  store i32 %inc498, i32* %window_posn, align 4
  %idxprom499 = zext i32 %270 to i64
  %271 = load i8*, i8** %window, align 8
  %arrayidx500 = getelementptr inbounds i8, i8* %271, i64 %idxprom499
  store i8 %conv497, i8* %arrayidx500, align 1
  br label %if.end.1614

if.else.501:                                      ; preds = %do.end.298
  %272 = load i32, i32* %selector, align 4
  switch i32 %272, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.766
    i32 6, label %sw.bb.1033
  ]

sw.bb:                                            ; preds = %if.else.501
  br label %do.body.502

do.body.502:                                      ; preds = %sw.bb
  %273 = load i16, i16* %H, align 2
  %conv503 = zext i16 %273 to i32
  %274 = load i16, i16* %L, align 2
  %conv504 = zext i16 %274 to i32
  %sub505 = sub nsw i32 %conv503, %conv504
  %and506 = and i32 %sub505, 65535
  %add507 = add nsw i32 %and506, 1
  store i32 %add507, i32* %range, align 4
  %275 = load i16, i16* %C, align 2
  %conv508 = zext i16 %275 to i32
  %276 = load i16, i16* %L, align 2
  %conv509 = zext i16 %276 to i32
  %sub510 = sub nsw i32 %conv508, %conv509
  %add511 = add nsw i32 %sub510, 1
  %277 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %277, i32 0, i32 28
  %syms512 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4, i32 0, i32 2
  %278 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms512, align 8
  %arrayidx513 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %278, i64 0
  %cumfreq514 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx513, i32 0, i32 1
  %279 = load i16, i16* %cumfreq514, align 2
  %conv515 = zext i16 %279 to i32
  %mul516 = mul nsw i32 %add511, %conv515
  %sub517 = sub nsw i32 %mul516, 1
  %280 = load i32, i32* %range, align 4
  %div518 = udiv i32 %sub517, %280
  %and519 = and i32 %div518, 65535
  %conv520 = trunc i32 %and519 to i16
  store i16 %conv520, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.538, %do.body.502
  %281 = load i32, i32* %i, align 4
  %282 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4522 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %282, i32 0, i32 28
  %entries523 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4522, i32 0, i32 1
  %283 = load i32, i32* %entries523, align 4
  %cmp524 = icmp slt i32 %281, %283
  br i1 %cmp524, label %for.body.526, label %for.end.540

for.body.526:                                     ; preds = %for.cond.521
  %284 = load i32, i32* %i, align 4
  %idxprom527 = sext i32 %284 to i64
  %285 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4528 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %285, i32 0, i32 28
  %syms529 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4528, i32 0, i32 2
  %286 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms529, align 8
  %arrayidx530 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %286, i64 %idxprom527
  %cumfreq531 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx530, i32 0, i32 1
  %287 = load i16, i16* %cumfreq531, align 2
  %conv532 = zext i16 %287 to i32
  %288 = load i16, i16* %symf, align 2
  %conv533 = zext i16 %288 to i32
  %cmp534 = icmp sle i32 %conv532, %conv533
  br i1 %cmp534, label %if.then.536, label %if.end.537

if.then.536:                                      ; preds = %for.body.526
  br label %for.end.540

if.end.537:                                       ; preds = %for.body.526
  br label %for.inc.538

for.inc.538:                                      ; preds = %if.end.537
  %289 = load i32, i32* %i, align 4
  %inc539 = add nsw i32 %289, 1
  store i32 %inc539, i32* %i, align 4
  br label %for.cond.521

for.end.540:                                      ; preds = %if.then.536, %for.cond.521
  %290 = load i32, i32* %i, align 4
  %sub541 = sub nsw i32 %290, 1
  %idxprom542 = sext i32 %sub541 to i64
  %291 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4543 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %291, i32 0, i32 28
  %syms544 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4543, i32 0, i32 2
  %292 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms544, align 8
  %arrayidx545 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %292, i64 %idxprom542
  %sym546 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx545, i32 0, i32 0
  %293 = load i16, i16* %sym546, align 2
  %conv547 = zext i16 %293 to i32
  store i32 %conv547, i32* %sym, align 4
  %294 = load i16, i16* %H, align 2
  %conv548 = zext i16 %294 to i32
  %295 = load i16, i16* %L, align 2
  %conv549 = zext i16 %295 to i32
  %sub550 = sub nsw i32 %conv548, %conv549
  %add551 = add nsw i32 %sub550, 1
  store i32 %add551, i32* %range, align 4
  %296 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4552 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %296, i32 0, i32 28
  %syms553 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4552, i32 0, i32 2
  %297 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms553, align 8
  %arrayidx554 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %297, i64 0
  %cumfreq555 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx554, i32 0, i32 1
  %298 = load i16, i16* %cumfreq555, align 2
  store i16 %298, i16* %symf, align 2
  %299 = load i16, i16* %L, align 2
  %conv556 = zext i16 %299 to i32
  %300 = load i32, i32* %i, align 4
  %sub557 = sub nsw i32 %300, 1
  %idxprom558 = sext i32 %sub557 to i64
  %301 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4559 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %301, i32 0, i32 28
  %syms560 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4559, i32 0, i32 2
  %302 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms560, align 8
  %arrayidx561 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %302, i64 %idxprom558
  %cumfreq562 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx561, i32 0, i32 1
  %303 = load i16, i16* %cumfreq562, align 2
  %conv563 = zext i16 %303 to i32
  %304 = load i32, i32* %range, align 4
  %mul564 = mul i32 %conv563, %304
  %305 = load i16, i16* %symf, align 2
  %conv565 = zext i16 %305 to i32
  %div566 = udiv i32 %mul564, %conv565
  %add567 = add i32 %conv556, %div566
  %sub568 = sub i32 %add567, 1
  %conv569 = trunc i32 %sub568 to i16
  store i16 %conv569, i16* %H, align 2
  %306 = load i16, i16* %L, align 2
  %conv570 = zext i16 %306 to i32
  %307 = load i32, i32* %i, align 4
  %idxprom571 = sext i32 %307 to i64
  %308 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4572 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %308, i32 0, i32 28
  %syms573 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4572, i32 0, i32 2
  %309 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms573, align 8
  %arrayidx574 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %309, i64 %idxprom571
  %cumfreq575 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx574, i32 0, i32 1
  %310 = load i16, i16* %cumfreq575, align 2
  %conv576 = zext i16 %310 to i32
  %311 = load i32, i32* %range, align 4
  %mul577 = mul i32 %conv576, %311
  %312 = load i16, i16* %symf, align 2
  %conv578 = zext i16 %312 to i32
  %div579 = udiv i32 %mul577, %conv578
  %add580 = add i32 %conv570, %div579
  %conv581 = trunc i32 %add580 to i16
  store i16 %conv581, i16* %L, align 2
  br label %do.body.582

do.body.582:                                      ; preds = %do.cond.592, %for.end.540
  %313 = load i32, i32* %i, align 4
  %dec583 = add nsw i32 %313, -1
  store i32 %dec583, i32* %i, align 4
  %idxprom584 = sext i32 %dec583 to i64
  %314 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4585 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %314, i32 0, i32 28
  %syms586 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4585, i32 0, i32 2
  %315 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms586, align 8
  %arrayidx587 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %315, i64 %idxprom584
  %cumfreq588 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx587, i32 0, i32 1
  %316 = load i16, i16* %cumfreq588, align 2
  %conv589 = zext i16 %316 to i32
  %add590 = add nsw i32 %conv589, 8
  %conv591 = trunc i32 %add590 to i16
  store i16 %conv591, i16* %cumfreq588, align 2
  br label %do.cond.592

do.cond.592:                                      ; preds = %do.body.582
  %317 = load i32, i32* %i, align 4
  %cmp593 = icmp sgt i32 %317, 0
  br i1 %cmp593, label %do.body.582, label %do.end.595

do.end.595:                                       ; preds = %do.cond.592
  %318 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4596 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %318, i32 0, i32 28
  %syms597 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model4596, i32 0, i32 2
  %319 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms597, align 8
  %arrayidx598 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %319, i64 0
  %cumfreq599 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx598, i32 0, i32 1
  %320 = load i16, i16* %cumfreq599, align 2
  %conv600 = zext i16 %320 to i32
  %cmp601 = icmp sgt i32 %conv600, 3800
  br i1 %cmp601, label %if.then.603, label %if.end.605

if.then.603:                                      ; preds = %do.end.595
  %321 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model4604 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %321, i32 0, i32 28
  call void @qtm_update_model(%struct.qtm_model* %model4604)
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.603, %do.end.595
  br label %while.body.607

while.body.607:                                   ; preds = %if.end.605, %do.end.675
  %322 = load i16, i16* %L, align 2
  %conv608 = zext i16 %322 to i32
  %and609 = and i32 %conv608, 32768
  %323 = load i16, i16* %H, align 2
  %conv610 = zext i16 %323 to i32
  %and611 = and i32 %conv610, 32768
  %cmp612 = icmp ne i32 %and609, %and611
  br i1 %cmp612, label %if.then.614, label %if.end.634

if.then.614:                                      ; preds = %while.body.607
  %324 = load i16, i16* %L, align 2
  %conv615 = zext i16 %324 to i32
  %and616 = and i32 %conv615, 16384
  %tobool617 = icmp ne i32 %and616, 0
  br i1 %tobool617, label %land.lhs.true.618, label %if.else.632

land.lhs.true.618:                                ; preds = %if.then.614
  %325 = load i16, i16* %H, align 2
  %conv619 = zext i16 %325 to i32
  %and620 = and i32 %conv619, 16384
  %tobool621 = icmp ne i32 %and620, 0
  br i1 %tobool621, label %if.else.632, label %if.then.622

if.then.622:                                      ; preds = %land.lhs.true.618
  %326 = load i16, i16* %C, align 2
  %conv623 = zext i16 %326 to i32
  %xor624 = xor i32 %conv623, 16384
  %conv625 = trunc i32 %xor624 to i16
  store i16 %conv625, i16* %C, align 2
  %327 = load i16, i16* %L, align 2
  %conv626 = zext i16 %327 to i32
  %and627 = and i32 %conv626, 16383
  %conv628 = trunc i32 %and627 to i16
  store i16 %conv628, i16* %L, align 2
  %328 = load i16, i16* %H, align 2
  %conv629 = zext i16 %328 to i32
  %or630 = or i32 %conv629, 16384
  %conv631 = trunc i32 %or630 to i16
  store i16 %conv631, i16* %H, align 2
  br label %if.end.633

if.else.632:                                      ; preds = %land.lhs.true.618, %if.then.614
  br label %while.end.685

if.end.633:                                       ; preds = %if.then.622
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %while.body.607
  %329 = load i16, i16* %L, align 2
  %conv635 = zext i16 %329 to i32
  %shl636 = shl i32 %conv635, 1
  %conv637 = trunc i32 %shl636 to i16
  store i16 %conv637, i16* %L, align 2
  %330 = load i16, i16* %H, align 2
  %conv638 = zext i16 %330 to i32
  %shl639 = shl i32 %conv638, 1
  %or640 = or i32 %shl639, 1
  %conv641 = trunc i32 %or640 to i16
  store i16 %conv641, i16* %H, align 2
  br label %do.body.642

do.body.642:                                      ; preds = %if.end.634
  %331 = load i8, i8* %bits_left, align 1
  %conv643 = zext i8 %331 to i64
  %cmp644 = icmp ule i64 %conv643, 16
  br i1 %cmp644, label %if.then.646, label %if.end.673

if.then.646:                                      ; preds = %do.body.642
  %332 = load i8*, i8** %i_ptr, align 8
  %333 = load i8*, i8** %i_end, align 8
  %cmp647 = icmp uge i8* %332, %333
  br i1 %cmp647, label %if.then.649, label %if.end.657

if.then.649:                                      ; preds = %if.then.646
  %334 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call650 = call i32 @qtm_read_input(%struct.qtm_stream* %334)
  %tobool651 = icmp ne i32 %call650, 0
  br i1 %tobool651, label %if.then.652, label %if.end.654

if.then.652:                                      ; preds = %if.then.649
  %335 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error653 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %335, i32 0, i32 11
  %336 = load i32, i32* %error653, align 4
  store i32 %336, i32* %retval
  br label %return

if.end.654:                                       ; preds = %if.then.649
  %337 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr655 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %337, i32 0, i32 13
  %338 = load i8*, i8** %i_ptr655, align 8
  store i8* %338, i8** %i_ptr, align 8
  %339 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end656 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %339, i32 0, i32 14
  %340 = load i8*, i8** %i_end656, align 8
  store i8* %340, i8** %i_end, align 8
  br label %if.end.657

if.end.657:                                       ; preds = %if.end.654, %if.then.646
  %341 = load i8*, i8** %i_ptr, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %341, i64 0
  %342 = load i8, i8* %arrayidx658, align 1
  %conv659 = zext i8 %342 to i32
  %shl660 = shl i32 %conv659, 8
  %343 = load i8*, i8** %i_ptr, align 8
  %arrayidx661 = getelementptr inbounds i8, i8* %343, i64 1
  %344 = load i8, i8* %arrayidx661, align 1
  %conv662 = zext i8 %344 to i32
  %or663 = or i32 %shl660, %conv662
  %345 = load i8, i8* %bits_left, align 1
  %conv664 = zext i8 %345 to i64
  %sub665 = sub i64 16, %conv664
  %sh_prom666 = trunc i64 %sub665 to i32
  %shl667 = shl i32 %or663, %sh_prom666
  %346 = load i32, i32* %bit_buffer, align 4
  %or668 = or i32 %346, %shl667
  store i32 %or668, i32* %bit_buffer, align 4
  %347 = load i8, i8* %bits_left, align 1
  %conv669 = zext i8 %347 to i32
  %add670 = add nsw i32 %conv669, 16
  %conv671 = trunc i32 %add670 to i8
  store i8 %conv671, i8* %bits_left, align 1
  %348 = load i8*, i8** %i_ptr, align 8
  %add.ptr672 = getelementptr inbounds i8, i8* %348, i64 2
  store i8* %add.ptr672, i8** %i_ptr, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.657, %do.body.642
  br label %do.end.675

do.end.675:                                       ; preds = %if.end.673
  %349 = load i16, i16* %C, align 2
  %conv676 = zext i16 %349 to i32
  %shl677 = shl i32 %conv676, 1
  %350 = load i32, i32* %bit_buffer, align 4
  %shr678 = lshr i32 %350, 31
  %or679 = or i32 %shl677, %shr678
  %conv680 = trunc i32 %or679 to i16
  store i16 %conv680, i16* %C, align 2
  %351 = load i32, i32* %bit_buffer, align 4
  %shl681 = shl i32 %351, 1
  store i32 %shl681, i32* %bit_buffer, align 4
  %352 = load i8, i8* %bits_left, align 1
  %conv682 = zext i8 %352 to i32
  %sub683 = sub nsw i32 %conv682, 1
  %conv684 = trunc i32 %sub683 to i8
  store i8 %conv684, i8* %bits_left, align 1
  br label %while.body.607

while.end.685:                                    ; preds = %if.else.632
  br label %do.end.687

do.end.687:                                       ; preds = %while.end.685
  br label %do.body.688

do.body.688:                                      ; preds = %do.end.687
  store i32 0, i32* %extra, align 4
  %353 = load i32, i32* %sym, align 4
  %idxprom689 = sext i32 %353 to i64
  %354 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %extra_bits = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %354, i32 0, i32 21
  %arrayidx690 = getelementptr inbounds [42 x i8], [42 x i8]* %extra_bits, i32 0, i64 %idxprom689
  %355 = load i8, i8* %arrayidx690, align 1
  store i8 %355, i8* %bits_needed, align 1
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.754, %do.body.688
  %356 = load i8, i8* %bits_needed, align 1
  %conv692 = zext i8 %356 to i32
  %cmp693 = icmp sgt i32 %conv692, 0
  br i1 %cmp693, label %for.body.695, label %for.end.759

for.body.695:                                     ; preds = %for.cond.691
  br label %do.body.696

do.body.696:                                      ; preds = %for.body.695
  %357 = load i8, i8* %bits_left, align 1
  %conv697 = zext i8 %357 to i64
  %cmp698 = icmp ule i64 %conv697, 16
  br i1 %cmp698, label %if.then.700, label %if.end.727

if.then.700:                                      ; preds = %do.body.696
  %358 = load i8*, i8** %i_ptr, align 8
  %359 = load i8*, i8** %i_end, align 8
  %cmp701 = icmp uge i8* %358, %359
  br i1 %cmp701, label %if.then.703, label %if.end.711

if.then.703:                                      ; preds = %if.then.700
  %360 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call704 = call i32 @qtm_read_input(%struct.qtm_stream* %360)
  %tobool705 = icmp ne i32 %call704, 0
  br i1 %tobool705, label %if.then.706, label %if.end.708

if.then.706:                                      ; preds = %if.then.703
  %361 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error707 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %361, i32 0, i32 11
  %362 = load i32, i32* %error707, align 4
  store i32 %362, i32* %retval
  br label %return

if.end.708:                                       ; preds = %if.then.703
  %363 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr709 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %363, i32 0, i32 13
  %364 = load i8*, i8** %i_ptr709, align 8
  store i8* %364, i8** %i_ptr, align 8
  %365 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end710 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %365, i32 0, i32 14
  %366 = load i8*, i8** %i_end710, align 8
  store i8* %366, i8** %i_end, align 8
  br label %if.end.711

if.end.711:                                       ; preds = %if.end.708, %if.then.700
  %367 = load i8*, i8** %i_ptr, align 8
  %arrayidx712 = getelementptr inbounds i8, i8* %367, i64 0
  %368 = load i8, i8* %arrayidx712, align 1
  %conv713 = zext i8 %368 to i32
  %shl714 = shl i32 %conv713, 8
  %369 = load i8*, i8** %i_ptr, align 8
  %arrayidx715 = getelementptr inbounds i8, i8* %369, i64 1
  %370 = load i8, i8* %arrayidx715, align 1
  %conv716 = zext i8 %370 to i32
  %or717 = or i32 %shl714, %conv716
  %371 = load i8, i8* %bits_left, align 1
  %conv718 = zext i8 %371 to i64
  %sub719 = sub i64 16, %conv718
  %sh_prom720 = trunc i64 %sub719 to i32
  %shl721 = shl i32 %or717, %sh_prom720
  %372 = load i32, i32* %bit_buffer, align 4
  %or722 = or i32 %372, %shl721
  store i32 %or722, i32* %bit_buffer, align 4
  %373 = load i8, i8* %bits_left, align 1
  %conv723 = zext i8 %373 to i32
  %add724 = add nsw i32 %conv723, 16
  %conv725 = trunc i32 %add724 to i8
  store i8 %conv725, i8* %bits_left, align 1
  %374 = load i8*, i8** %i_ptr, align 8
  %add.ptr726 = getelementptr inbounds i8, i8* %374, i64 2
  store i8* %add.ptr726, i8** %i_ptr, align 8
  br label %if.end.727

if.end.727:                                       ; preds = %if.end.711, %do.body.696
  br label %do.end.729

do.end.729:                                       ; preds = %if.end.727
  %375 = load i8, i8* %bits_left, align 1
  %conv730 = zext i8 %375 to i32
  %376 = load i8, i8* %bits_needed, align 1
  %conv731 = zext i8 %376 to i32
  %cmp732 = icmp slt i32 %conv730, %conv731
  br i1 %cmp732, label %cond.true.734, label %cond.false.736

cond.true.734:                                    ; preds = %do.end.729
  %377 = load i8, i8* %bits_left, align 1
  %conv735 = zext i8 %377 to i32
  br label %cond.end.738

cond.false.736:                                   ; preds = %do.end.729
  %378 = load i8, i8* %bits_needed, align 1
  %conv737 = zext i8 %378 to i32
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.736, %cond.true.734
  %cond739 = phi i32 [ %conv735, %cond.true.734 ], [ %conv737, %cond.false.736 ]
  %conv740 = trunc i32 %cond739 to i8
  store i8 %conv740, i8* %bit_run, align 1
  %379 = load i32, i32* %extra, align 4
  %380 = load i8, i8* %bit_run, align 1
  %conv741 = zext i8 %380 to i32
  %shl742 = shl i32 %379, %conv741
  %381 = load i32, i32* %bit_buffer, align 4
  %382 = load i8, i8* %bit_run, align 1
  %conv743 = zext i8 %382 to i64
  %sub744 = sub i64 32, %conv743
  %sh_prom745 = trunc i64 %sub744 to i32
  %shr746 = lshr i32 %381, %sh_prom745
  %or747 = or i32 %shl742, %shr746
  store i32 %or747, i32* %extra, align 4
  %383 = load i8, i8* %bit_run, align 1
  %conv748 = zext i8 %383 to i32
  %384 = load i32, i32* %bit_buffer, align 4
  %shl749 = shl i32 %384, %conv748
  store i32 %shl749, i32* %bit_buffer, align 4
  %385 = load i8, i8* %bit_run, align 1
  %conv750 = zext i8 %385 to i32
  %386 = load i8, i8* %bits_left, align 1
  %conv751 = zext i8 %386 to i32
  %sub752 = sub nsw i32 %conv751, %conv750
  %conv753 = trunc i32 %sub752 to i8
  store i8 %conv753, i8* %bits_left, align 1
  br label %for.inc.754

for.inc.754:                                      ; preds = %cond.end.738
  %387 = load i8, i8* %bit_run, align 1
  %conv755 = zext i8 %387 to i32
  %388 = load i8, i8* %bits_needed, align 1
  %conv756 = zext i8 %388 to i32
  %sub757 = sub nsw i32 %conv756, %conv755
  %conv758 = trunc i32 %sub757 to i8
  store i8 %conv758, i8* %bits_needed, align 1
  br label %for.cond.691

for.end.759:                                      ; preds = %for.cond.691
  br label %do.end.761

do.end.761:                                       ; preds = %for.end.759
  %389 = load i32, i32* %sym, align 4
  %idxprom762 = sext i32 %389 to i64
  %390 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %position_base = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %390, i32 0, i32 20
  %arrayidx763 = getelementptr inbounds [42 x i32], [42 x i32]* %position_base, i32 0, i64 %idxprom762
  %391 = load i32, i32* %arrayidx763, align 4
  %392 = load i32, i32* %extra, align 4
  %add764 = add i32 %391, %392
  %add765 = add i32 %add764, 1
  store i32 %add765, i32* %match_offset, align 4
  store i32 3, i32* %match_length, align 4
  br label %sw.epilog

sw.bb.766:                                        ; preds = %if.else.501
  br label %do.body.767

do.body.767:                                      ; preds = %sw.bb.766
  %393 = load i16, i16* %H, align 2
  %conv768 = zext i16 %393 to i32
  %394 = load i16, i16* %L, align 2
  %conv769 = zext i16 %394 to i32
  %sub770 = sub nsw i32 %conv768, %conv769
  %and771 = and i32 %sub770, 65535
  %add772 = add nsw i32 %and771, 1
  store i32 %add772, i32* %range, align 4
  %395 = load i16, i16* %C, align 2
  %conv773 = zext i16 %395 to i32
  %396 = load i16, i16* %L, align 2
  %conv774 = zext i16 %396 to i32
  %sub775 = sub nsw i32 %conv773, %conv774
  %add776 = add nsw i32 %sub775, 1
  %397 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %397, i32 0, i32 29
  %syms777 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5, i32 0, i32 2
  %398 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms777, align 8
  %arrayidx778 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %398, i64 0
  %cumfreq779 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx778, i32 0, i32 1
  %399 = load i16, i16* %cumfreq779, align 2
  %conv780 = zext i16 %399 to i32
  %mul781 = mul nsw i32 %add776, %conv780
  %sub782 = sub nsw i32 %mul781, 1
  %400 = load i32, i32* %range, align 4
  %div783 = udiv i32 %sub782, %400
  %and784 = and i32 %div783, 65535
  %conv785 = trunc i32 %and784 to i16
  store i16 %conv785, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.786

for.cond.786:                                     ; preds = %for.inc.803, %do.body.767
  %401 = load i32, i32* %i, align 4
  %402 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5787 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %402, i32 0, i32 29
  %entries788 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5787, i32 0, i32 1
  %403 = load i32, i32* %entries788, align 4
  %cmp789 = icmp slt i32 %401, %403
  br i1 %cmp789, label %for.body.791, label %for.end.805

for.body.791:                                     ; preds = %for.cond.786
  %404 = load i32, i32* %i, align 4
  %idxprom792 = sext i32 %404 to i64
  %405 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5793 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %405, i32 0, i32 29
  %syms794 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5793, i32 0, i32 2
  %406 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms794, align 8
  %arrayidx795 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %406, i64 %idxprom792
  %cumfreq796 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx795, i32 0, i32 1
  %407 = load i16, i16* %cumfreq796, align 2
  %conv797 = zext i16 %407 to i32
  %408 = load i16, i16* %symf, align 2
  %conv798 = zext i16 %408 to i32
  %cmp799 = icmp sle i32 %conv797, %conv798
  br i1 %cmp799, label %if.then.801, label %if.end.802

if.then.801:                                      ; preds = %for.body.791
  br label %for.end.805

if.end.802:                                       ; preds = %for.body.791
  br label %for.inc.803

for.inc.803:                                      ; preds = %if.end.802
  %409 = load i32, i32* %i, align 4
  %inc804 = add nsw i32 %409, 1
  store i32 %inc804, i32* %i, align 4
  br label %for.cond.786

for.end.805:                                      ; preds = %if.then.801, %for.cond.786
  %410 = load i32, i32* %i, align 4
  %sub806 = sub nsw i32 %410, 1
  %idxprom807 = sext i32 %sub806 to i64
  %411 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5808 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %411, i32 0, i32 29
  %syms809 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5808, i32 0, i32 2
  %412 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms809, align 8
  %arrayidx810 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %412, i64 %idxprom807
  %sym811 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx810, i32 0, i32 0
  %413 = load i16, i16* %sym811, align 2
  %conv812 = zext i16 %413 to i32
  store i32 %conv812, i32* %sym, align 4
  %414 = load i16, i16* %H, align 2
  %conv813 = zext i16 %414 to i32
  %415 = load i16, i16* %L, align 2
  %conv814 = zext i16 %415 to i32
  %sub815 = sub nsw i32 %conv813, %conv814
  %add816 = add nsw i32 %sub815, 1
  store i32 %add816, i32* %range, align 4
  %416 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5817 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %416, i32 0, i32 29
  %syms818 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5817, i32 0, i32 2
  %417 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms818, align 8
  %arrayidx819 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %417, i64 0
  %cumfreq820 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx819, i32 0, i32 1
  %418 = load i16, i16* %cumfreq820, align 2
  store i16 %418, i16* %symf, align 2
  %419 = load i16, i16* %L, align 2
  %conv821 = zext i16 %419 to i32
  %420 = load i32, i32* %i, align 4
  %sub822 = sub nsw i32 %420, 1
  %idxprom823 = sext i32 %sub822 to i64
  %421 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5824 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %421, i32 0, i32 29
  %syms825 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5824, i32 0, i32 2
  %422 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms825, align 8
  %arrayidx826 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %422, i64 %idxprom823
  %cumfreq827 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx826, i32 0, i32 1
  %423 = load i16, i16* %cumfreq827, align 2
  %conv828 = zext i16 %423 to i32
  %424 = load i32, i32* %range, align 4
  %mul829 = mul i32 %conv828, %424
  %425 = load i16, i16* %symf, align 2
  %conv830 = zext i16 %425 to i32
  %div831 = udiv i32 %mul829, %conv830
  %add832 = add i32 %conv821, %div831
  %sub833 = sub i32 %add832, 1
  %conv834 = trunc i32 %sub833 to i16
  store i16 %conv834, i16* %H, align 2
  %426 = load i16, i16* %L, align 2
  %conv835 = zext i16 %426 to i32
  %427 = load i32, i32* %i, align 4
  %idxprom836 = sext i32 %427 to i64
  %428 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5837 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %428, i32 0, i32 29
  %syms838 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5837, i32 0, i32 2
  %429 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms838, align 8
  %arrayidx839 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %429, i64 %idxprom836
  %cumfreq840 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx839, i32 0, i32 1
  %430 = load i16, i16* %cumfreq840, align 2
  %conv841 = zext i16 %430 to i32
  %431 = load i32, i32* %range, align 4
  %mul842 = mul i32 %conv841, %431
  %432 = load i16, i16* %symf, align 2
  %conv843 = zext i16 %432 to i32
  %div844 = udiv i32 %mul842, %conv843
  %add845 = add i32 %conv835, %div844
  %conv846 = trunc i32 %add845 to i16
  store i16 %conv846, i16* %L, align 2
  br label %do.body.847

do.body.847:                                      ; preds = %do.cond.857, %for.end.805
  %433 = load i32, i32* %i, align 4
  %dec848 = add nsw i32 %433, -1
  store i32 %dec848, i32* %i, align 4
  %idxprom849 = sext i32 %dec848 to i64
  %434 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5850 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %434, i32 0, i32 29
  %syms851 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5850, i32 0, i32 2
  %435 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms851, align 8
  %arrayidx852 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %435, i64 %idxprom849
  %cumfreq853 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx852, i32 0, i32 1
  %436 = load i16, i16* %cumfreq853, align 2
  %conv854 = zext i16 %436 to i32
  %add855 = add nsw i32 %conv854, 8
  %conv856 = trunc i32 %add855 to i16
  store i16 %conv856, i16* %cumfreq853, align 2
  br label %do.cond.857

do.cond.857:                                      ; preds = %do.body.847
  %437 = load i32, i32* %i, align 4
  %cmp858 = icmp sgt i32 %437, 0
  br i1 %cmp858, label %do.body.847, label %do.end.860

do.end.860:                                       ; preds = %do.cond.857
  %438 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5861 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %438, i32 0, i32 29
  %syms862 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model5861, i32 0, i32 2
  %439 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms862, align 8
  %arrayidx863 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %439, i64 0
  %cumfreq864 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx863, i32 0, i32 1
  %440 = load i16, i16* %cumfreq864, align 2
  %conv865 = zext i16 %440 to i32
  %cmp866 = icmp sgt i32 %conv865, 3800
  br i1 %cmp866, label %if.then.868, label %if.end.870

if.then.868:                                      ; preds = %do.end.860
  %441 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model5869 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %441, i32 0, i32 29
  call void @qtm_update_model(%struct.qtm_model* %model5869)
  br label %if.end.870

if.end.870:                                       ; preds = %if.then.868, %do.end.860
  br label %while.body.872

while.body.872:                                   ; preds = %if.end.870, %do.end.940
  %442 = load i16, i16* %L, align 2
  %conv873 = zext i16 %442 to i32
  %and874 = and i32 %conv873, 32768
  %443 = load i16, i16* %H, align 2
  %conv875 = zext i16 %443 to i32
  %and876 = and i32 %conv875, 32768
  %cmp877 = icmp ne i32 %and874, %and876
  br i1 %cmp877, label %if.then.879, label %if.end.899

if.then.879:                                      ; preds = %while.body.872
  %444 = load i16, i16* %L, align 2
  %conv880 = zext i16 %444 to i32
  %and881 = and i32 %conv880, 16384
  %tobool882 = icmp ne i32 %and881, 0
  br i1 %tobool882, label %land.lhs.true.883, label %if.else.897

land.lhs.true.883:                                ; preds = %if.then.879
  %445 = load i16, i16* %H, align 2
  %conv884 = zext i16 %445 to i32
  %and885 = and i32 %conv884, 16384
  %tobool886 = icmp ne i32 %and885, 0
  br i1 %tobool886, label %if.else.897, label %if.then.887

if.then.887:                                      ; preds = %land.lhs.true.883
  %446 = load i16, i16* %C, align 2
  %conv888 = zext i16 %446 to i32
  %xor889 = xor i32 %conv888, 16384
  %conv890 = trunc i32 %xor889 to i16
  store i16 %conv890, i16* %C, align 2
  %447 = load i16, i16* %L, align 2
  %conv891 = zext i16 %447 to i32
  %and892 = and i32 %conv891, 16383
  %conv893 = trunc i32 %and892 to i16
  store i16 %conv893, i16* %L, align 2
  %448 = load i16, i16* %H, align 2
  %conv894 = zext i16 %448 to i32
  %or895 = or i32 %conv894, 16384
  %conv896 = trunc i32 %or895 to i16
  store i16 %conv896, i16* %H, align 2
  br label %if.end.898

if.else.897:                                      ; preds = %land.lhs.true.883, %if.then.879
  br label %while.end.950

if.end.898:                                       ; preds = %if.then.887
  br label %if.end.899

if.end.899:                                       ; preds = %if.end.898, %while.body.872
  %449 = load i16, i16* %L, align 2
  %conv900 = zext i16 %449 to i32
  %shl901 = shl i32 %conv900, 1
  %conv902 = trunc i32 %shl901 to i16
  store i16 %conv902, i16* %L, align 2
  %450 = load i16, i16* %H, align 2
  %conv903 = zext i16 %450 to i32
  %shl904 = shl i32 %conv903, 1
  %or905 = or i32 %shl904, 1
  %conv906 = trunc i32 %or905 to i16
  store i16 %conv906, i16* %H, align 2
  br label %do.body.907

do.body.907:                                      ; preds = %if.end.899
  %451 = load i8, i8* %bits_left, align 1
  %conv908 = zext i8 %451 to i64
  %cmp909 = icmp ule i64 %conv908, 16
  br i1 %cmp909, label %if.then.911, label %if.end.938

if.then.911:                                      ; preds = %do.body.907
  %452 = load i8*, i8** %i_ptr, align 8
  %453 = load i8*, i8** %i_end, align 8
  %cmp912 = icmp uge i8* %452, %453
  br i1 %cmp912, label %if.then.914, label %if.end.922

if.then.914:                                      ; preds = %if.then.911
  %454 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call915 = call i32 @qtm_read_input(%struct.qtm_stream* %454)
  %tobool916 = icmp ne i32 %call915, 0
  br i1 %tobool916, label %if.then.917, label %if.end.919

if.then.917:                                      ; preds = %if.then.914
  %455 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error918 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %455, i32 0, i32 11
  %456 = load i32, i32* %error918, align 4
  store i32 %456, i32* %retval
  br label %return

if.end.919:                                       ; preds = %if.then.914
  %457 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr920 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %457, i32 0, i32 13
  %458 = load i8*, i8** %i_ptr920, align 8
  store i8* %458, i8** %i_ptr, align 8
  %459 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end921 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %459, i32 0, i32 14
  %460 = load i8*, i8** %i_end921, align 8
  store i8* %460, i8** %i_end, align 8
  br label %if.end.922

if.end.922:                                       ; preds = %if.end.919, %if.then.911
  %461 = load i8*, i8** %i_ptr, align 8
  %arrayidx923 = getelementptr inbounds i8, i8* %461, i64 0
  %462 = load i8, i8* %arrayidx923, align 1
  %conv924 = zext i8 %462 to i32
  %shl925 = shl i32 %conv924, 8
  %463 = load i8*, i8** %i_ptr, align 8
  %arrayidx926 = getelementptr inbounds i8, i8* %463, i64 1
  %464 = load i8, i8* %arrayidx926, align 1
  %conv927 = zext i8 %464 to i32
  %or928 = or i32 %shl925, %conv927
  %465 = load i8, i8* %bits_left, align 1
  %conv929 = zext i8 %465 to i64
  %sub930 = sub i64 16, %conv929
  %sh_prom931 = trunc i64 %sub930 to i32
  %shl932 = shl i32 %or928, %sh_prom931
  %466 = load i32, i32* %bit_buffer, align 4
  %or933 = or i32 %466, %shl932
  store i32 %or933, i32* %bit_buffer, align 4
  %467 = load i8, i8* %bits_left, align 1
  %conv934 = zext i8 %467 to i32
  %add935 = add nsw i32 %conv934, 16
  %conv936 = trunc i32 %add935 to i8
  store i8 %conv936, i8* %bits_left, align 1
  %468 = load i8*, i8** %i_ptr, align 8
  %add.ptr937 = getelementptr inbounds i8, i8* %468, i64 2
  store i8* %add.ptr937, i8** %i_ptr, align 8
  br label %if.end.938

if.end.938:                                       ; preds = %if.end.922, %do.body.907
  br label %do.end.940

do.end.940:                                       ; preds = %if.end.938
  %469 = load i16, i16* %C, align 2
  %conv941 = zext i16 %469 to i32
  %shl942 = shl i32 %conv941, 1
  %470 = load i32, i32* %bit_buffer, align 4
  %shr943 = lshr i32 %470, 31
  %or944 = or i32 %shl942, %shr943
  %conv945 = trunc i32 %or944 to i16
  store i16 %conv945, i16* %C, align 2
  %471 = load i32, i32* %bit_buffer, align 4
  %shl946 = shl i32 %471, 1
  store i32 %shl946, i32* %bit_buffer, align 4
  %472 = load i8, i8* %bits_left, align 1
  %conv947 = zext i8 %472 to i32
  %sub948 = sub nsw i32 %conv947, 1
  %conv949 = trunc i32 %sub948 to i8
  store i8 %conv949, i8* %bits_left, align 1
  br label %while.body.872

while.end.950:                                    ; preds = %if.else.897
  br label %do.end.952

do.end.952:                                       ; preds = %while.end.950
  br label %do.body.953

do.body.953:                                      ; preds = %do.end.952
  store i32 0, i32* %extra, align 4
  %473 = load i32, i32* %sym, align 4
  %idxprom954 = sext i32 %473 to i64
  %474 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %extra_bits955 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %474, i32 0, i32 21
  %arrayidx956 = getelementptr inbounds [42 x i8], [42 x i8]* %extra_bits955, i32 0, i64 %idxprom954
  %475 = load i8, i8* %arrayidx956, align 1
  store i8 %475, i8* %bits_needed, align 1
  br label %for.cond.957

for.cond.957:                                     ; preds = %for.inc.1020, %do.body.953
  %476 = load i8, i8* %bits_needed, align 1
  %conv958 = zext i8 %476 to i32
  %cmp959 = icmp sgt i32 %conv958, 0
  br i1 %cmp959, label %for.body.961, label %for.end.1025

for.body.961:                                     ; preds = %for.cond.957
  br label %do.body.962

do.body.962:                                      ; preds = %for.body.961
  %477 = load i8, i8* %bits_left, align 1
  %conv963 = zext i8 %477 to i64
  %cmp964 = icmp ule i64 %conv963, 16
  br i1 %cmp964, label %if.then.966, label %if.end.993

if.then.966:                                      ; preds = %do.body.962
  %478 = load i8*, i8** %i_ptr, align 8
  %479 = load i8*, i8** %i_end, align 8
  %cmp967 = icmp uge i8* %478, %479
  br i1 %cmp967, label %if.then.969, label %if.end.977

if.then.969:                                      ; preds = %if.then.966
  %480 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call970 = call i32 @qtm_read_input(%struct.qtm_stream* %480)
  %tobool971 = icmp ne i32 %call970, 0
  br i1 %tobool971, label %if.then.972, label %if.end.974

if.then.972:                                      ; preds = %if.then.969
  %481 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error973 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %481, i32 0, i32 11
  %482 = load i32, i32* %error973, align 4
  store i32 %482, i32* %retval
  br label %return

if.end.974:                                       ; preds = %if.then.969
  %483 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr975 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %483, i32 0, i32 13
  %484 = load i8*, i8** %i_ptr975, align 8
  store i8* %484, i8** %i_ptr, align 8
  %485 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end976 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %485, i32 0, i32 14
  %486 = load i8*, i8** %i_end976, align 8
  store i8* %486, i8** %i_end, align 8
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.974, %if.then.966
  %487 = load i8*, i8** %i_ptr, align 8
  %arrayidx978 = getelementptr inbounds i8, i8* %487, i64 0
  %488 = load i8, i8* %arrayidx978, align 1
  %conv979 = zext i8 %488 to i32
  %shl980 = shl i32 %conv979, 8
  %489 = load i8*, i8** %i_ptr, align 8
  %arrayidx981 = getelementptr inbounds i8, i8* %489, i64 1
  %490 = load i8, i8* %arrayidx981, align 1
  %conv982 = zext i8 %490 to i32
  %or983 = or i32 %shl980, %conv982
  %491 = load i8, i8* %bits_left, align 1
  %conv984 = zext i8 %491 to i64
  %sub985 = sub i64 16, %conv984
  %sh_prom986 = trunc i64 %sub985 to i32
  %shl987 = shl i32 %or983, %sh_prom986
  %492 = load i32, i32* %bit_buffer, align 4
  %or988 = or i32 %492, %shl987
  store i32 %or988, i32* %bit_buffer, align 4
  %493 = load i8, i8* %bits_left, align 1
  %conv989 = zext i8 %493 to i32
  %add990 = add nsw i32 %conv989, 16
  %conv991 = trunc i32 %add990 to i8
  store i8 %conv991, i8* %bits_left, align 1
  %494 = load i8*, i8** %i_ptr, align 8
  %add.ptr992 = getelementptr inbounds i8, i8* %494, i64 2
  store i8* %add.ptr992, i8** %i_ptr, align 8
  br label %if.end.993

if.end.993:                                       ; preds = %if.end.977, %do.body.962
  br label %do.end.995

do.end.995:                                       ; preds = %if.end.993
  %495 = load i8, i8* %bits_left, align 1
  %conv996 = zext i8 %495 to i32
  %496 = load i8, i8* %bits_needed, align 1
  %conv997 = zext i8 %496 to i32
  %cmp998 = icmp slt i32 %conv996, %conv997
  br i1 %cmp998, label %cond.true.1000, label %cond.false.1002

cond.true.1000:                                   ; preds = %do.end.995
  %497 = load i8, i8* %bits_left, align 1
  %conv1001 = zext i8 %497 to i32
  br label %cond.end.1004

cond.false.1002:                                  ; preds = %do.end.995
  %498 = load i8, i8* %bits_needed, align 1
  %conv1003 = zext i8 %498 to i32
  br label %cond.end.1004

cond.end.1004:                                    ; preds = %cond.false.1002, %cond.true.1000
  %cond1005 = phi i32 [ %conv1001, %cond.true.1000 ], [ %conv1003, %cond.false.1002 ]
  %conv1006 = trunc i32 %cond1005 to i8
  store i8 %conv1006, i8* %bit_run, align 1
  %499 = load i32, i32* %extra, align 4
  %500 = load i8, i8* %bit_run, align 1
  %conv1007 = zext i8 %500 to i32
  %shl1008 = shl i32 %499, %conv1007
  %501 = load i32, i32* %bit_buffer, align 4
  %502 = load i8, i8* %bit_run, align 1
  %conv1009 = zext i8 %502 to i64
  %sub1010 = sub i64 32, %conv1009
  %sh_prom1011 = trunc i64 %sub1010 to i32
  %shr1012 = lshr i32 %501, %sh_prom1011
  %or1013 = or i32 %shl1008, %shr1012
  store i32 %or1013, i32* %extra, align 4
  %503 = load i8, i8* %bit_run, align 1
  %conv1014 = zext i8 %503 to i32
  %504 = load i32, i32* %bit_buffer, align 4
  %shl1015 = shl i32 %504, %conv1014
  store i32 %shl1015, i32* %bit_buffer, align 4
  %505 = load i8, i8* %bit_run, align 1
  %conv1016 = zext i8 %505 to i32
  %506 = load i8, i8* %bits_left, align 1
  %conv1017 = zext i8 %506 to i32
  %sub1018 = sub nsw i32 %conv1017, %conv1016
  %conv1019 = trunc i32 %sub1018 to i8
  store i8 %conv1019, i8* %bits_left, align 1
  br label %for.inc.1020

for.inc.1020:                                     ; preds = %cond.end.1004
  %507 = load i8, i8* %bit_run, align 1
  %conv1021 = zext i8 %507 to i32
  %508 = load i8, i8* %bits_needed, align 1
  %conv1022 = zext i8 %508 to i32
  %sub1023 = sub nsw i32 %conv1022, %conv1021
  %conv1024 = trunc i32 %sub1023 to i8
  store i8 %conv1024, i8* %bits_needed, align 1
  br label %for.cond.957

for.end.1025:                                     ; preds = %for.cond.957
  br label %do.end.1027

do.end.1027:                                      ; preds = %for.end.1025
  %509 = load i32, i32* %sym, align 4
  %idxprom1028 = sext i32 %509 to i64
  %510 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %position_base1029 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %510, i32 0, i32 20
  %arrayidx1030 = getelementptr inbounds [42 x i32], [42 x i32]* %position_base1029, i32 0, i64 %idxprom1028
  %511 = load i32, i32* %arrayidx1030, align 4
  %512 = load i32, i32* %extra, align 4
  %add1031 = add i32 %511, %512
  %add1032 = add i32 %add1031, 1
  store i32 %add1032, i32* %match_offset, align 4
  store i32 4, i32* %match_length, align 4
  br label %sw.epilog

sw.bb.1033:                                       ; preds = %if.else.501
  br label %do.body.1034

do.body.1034:                                     ; preds = %sw.bb.1033
  %513 = load i16, i16* %H, align 2
  %conv1035 = zext i16 %513 to i32
  %514 = load i16, i16* %L, align 2
  %conv1036 = zext i16 %514 to i32
  %sub1037 = sub nsw i32 %conv1035, %conv1036
  %and1038 = and i32 %sub1037, 65535
  %add1039 = add nsw i32 %and1038, 1
  store i32 %add1039, i32* %range, align 4
  %515 = load i16, i16* %C, align 2
  %conv1040 = zext i16 %515 to i32
  %516 = load i16, i16* %L, align 2
  %conv1041 = zext i16 %516 to i32
  %sub1042 = sub nsw i32 %conv1040, %conv1041
  %add1043 = add nsw i32 %sub1042, 1
  %517 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %517, i32 0, i32 31
  %syms1044 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len, i32 0, i32 2
  %518 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1044, align 8
  %arrayidx1045 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %518, i64 0
  %cumfreq1046 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1045, i32 0, i32 1
  %519 = load i16, i16* %cumfreq1046, align 2
  %conv1047 = zext i16 %519 to i32
  %mul1048 = mul nsw i32 %add1043, %conv1047
  %sub1049 = sub nsw i32 %mul1048, 1
  %520 = load i32, i32* %range, align 4
  %div1050 = udiv i32 %sub1049, %520
  %and1051 = and i32 %div1050, 65535
  %conv1052 = trunc i32 %and1051 to i16
  store i16 %conv1052, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.1053

for.cond.1053:                                    ; preds = %for.inc.1070, %do.body.1034
  %521 = load i32, i32* %i, align 4
  %522 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1054 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %522, i32 0, i32 31
  %entries1055 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1054, i32 0, i32 1
  %523 = load i32, i32* %entries1055, align 4
  %cmp1056 = icmp slt i32 %521, %523
  br i1 %cmp1056, label %for.body.1058, label %for.end.1072

for.body.1058:                                    ; preds = %for.cond.1053
  %524 = load i32, i32* %i, align 4
  %idxprom1059 = sext i32 %524 to i64
  %525 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1060 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %525, i32 0, i32 31
  %syms1061 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1060, i32 0, i32 2
  %526 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1061, align 8
  %arrayidx1062 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %526, i64 %idxprom1059
  %cumfreq1063 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1062, i32 0, i32 1
  %527 = load i16, i16* %cumfreq1063, align 2
  %conv1064 = zext i16 %527 to i32
  %528 = load i16, i16* %symf, align 2
  %conv1065 = zext i16 %528 to i32
  %cmp1066 = icmp sle i32 %conv1064, %conv1065
  br i1 %cmp1066, label %if.then.1068, label %if.end.1069

if.then.1068:                                     ; preds = %for.body.1058
  br label %for.end.1072

if.end.1069:                                      ; preds = %for.body.1058
  br label %for.inc.1070

for.inc.1070:                                     ; preds = %if.end.1069
  %529 = load i32, i32* %i, align 4
  %inc1071 = add nsw i32 %529, 1
  store i32 %inc1071, i32* %i, align 4
  br label %for.cond.1053

for.end.1072:                                     ; preds = %if.then.1068, %for.cond.1053
  %530 = load i32, i32* %i, align 4
  %sub1073 = sub nsw i32 %530, 1
  %idxprom1074 = sext i32 %sub1073 to i64
  %531 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1075 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %531, i32 0, i32 31
  %syms1076 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1075, i32 0, i32 2
  %532 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1076, align 8
  %arrayidx1077 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %532, i64 %idxprom1074
  %sym1078 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1077, i32 0, i32 0
  %533 = load i16, i16* %sym1078, align 2
  %conv1079 = zext i16 %533 to i32
  store i32 %conv1079, i32* %sym, align 4
  %534 = load i16, i16* %H, align 2
  %conv1080 = zext i16 %534 to i32
  %535 = load i16, i16* %L, align 2
  %conv1081 = zext i16 %535 to i32
  %sub1082 = sub nsw i32 %conv1080, %conv1081
  %add1083 = add nsw i32 %sub1082, 1
  store i32 %add1083, i32* %range, align 4
  %536 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1084 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %536, i32 0, i32 31
  %syms1085 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1084, i32 0, i32 2
  %537 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1085, align 8
  %arrayidx1086 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %537, i64 0
  %cumfreq1087 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1086, i32 0, i32 1
  %538 = load i16, i16* %cumfreq1087, align 2
  store i16 %538, i16* %symf, align 2
  %539 = load i16, i16* %L, align 2
  %conv1088 = zext i16 %539 to i32
  %540 = load i32, i32* %i, align 4
  %sub1089 = sub nsw i32 %540, 1
  %idxprom1090 = sext i32 %sub1089 to i64
  %541 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1091 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %541, i32 0, i32 31
  %syms1092 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1091, i32 0, i32 2
  %542 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1092, align 8
  %arrayidx1093 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %542, i64 %idxprom1090
  %cumfreq1094 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1093, i32 0, i32 1
  %543 = load i16, i16* %cumfreq1094, align 2
  %conv1095 = zext i16 %543 to i32
  %544 = load i32, i32* %range, align 4
  %mul1096 = mul i32 %conv1095, %544
  %545 = load i16, i16* %symf, align 2
  %conv1097 = zext i16 %545 to i32
  %div1098 = udiv i32 %mul1096, %conv1097
  %add1099 = add i32 %conv1088, %div1098
  %sub1100 = sub i32 %add1099, 1
  %conv1101 = trunc i32 %sub1100 to i16
  store i16 %conv1101, i16* %H, align 2
  %546 = load i16, i16* %L, align 2
  %conv1102 = zext i16 %546 to i32
  %547 = load i32, i32* %i, align 4
  %idxprom1103 = sext i32 %547 to i64
  %548 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1104 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %548, i32 0, i32 31
  %syms1105 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1104, i32 0, i32 2
  %549 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1105, align 8
  %arrayidx1106 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %549, i64 %idxprom1103
  %cumfreq1107 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1106, i32 0, i32 1
  %550 = load i16, i16* %cumfreq1107, align 2
  %conv1108 = zext i16 %550 to i32
  %551 = load i32, i32* %range, align 4
  %mul1109 = mul i32 %conv1108, %551
  %552 = load i16, i16* %symf, align 2
  %conv1110 = zext i16 %552 to i32
  %div1111 = udiv i32 %mul1109, %conv1110
  %add1112 = add i32 %conv1102, %div1111
  %conv1113 = trunc i32 %add1112 to i16
  store i16 %conv1113, i16* %L, align 2
  br label %do.body.1114

do.body.1114:                                     ; preds = %do.cond.1124, %for.end.1072
  %553 = load i32, i32* %i, align 4
  %dec1115 = add nsw i32 %553, -1
  store i32 %dec1115, i32* %i, align 4
  %idxprom1116 = sext i32 %dec1115 to i64
  %554 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1117 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %554, i32 0, i32 31
  %syms1118 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1117, i32 0, i32 2
  %555 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1118, align 8
  %arrayidx1119 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %555, i64 %idxprom1116
  %cumfreq1120 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1119, i32 0, i32 1
  %556 = load i16, i16* %cumfreq1120, align 2
  %conv1121 = zext i16 %556 to i32
  %add1122 = add nsw i32 %conv1121, 8
  %conv1123 = trunc i32 %add1122 to i16
  store i16 %conv1123, i16* %cumfreq1120, align 2
  br label %do.cond.1124

do.cond.1124:                                     ; preds = %do.body.1114
  %557 = load i32, i32* %i, align 4
  %cmp1125 = icmp sgt i32 %557, 0
  br i1 %cmp1125, label %do.body.1114, label %do.end.1127

do.end.1127:                                      ; preds = %do.cond.1124
  %558 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1128 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %558, i32 0, i32 31
  %syms1129 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6len1128, i32 0, i32 2
  %559 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1129, align 8
  %arrayidx1130 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %559, i64 0
  %cumfreq1131 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1130, i32 0, i32 1
  %560 = load i16, i16* %cumfreq1131, align 2
  %conv1132 = zext i16 %560 to i32
  %cmp1133 = icmp sgt i32 %conv1132, 3800
  br i1 %cmp1133, label %if.then.1135, label %if.end.1137

if.then.1135:                                     ; preds = %do.end.1127
  %561 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6len1136 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %561, i32 0, i32 31
  call void @qtm_update_model(%struct.qtm_model* %model6len1136)
  br label %if.end.1137

if.end.1137:                                      ; preds = %if.then.1135, %do.end.1127
  br label %while.body.1139

while.body.1139:                                  ; preds = %if.end.1137, %do.end.1207
  %562 = load i16, i16* %L, align 2
  %conv1140 = zext i16 %562 to i32
  %and1141 = and i32 %conv1140, 32768
  %563 = load i16, i16* %H, align 2
  %conv1142 = zext i16 %563 to i32
  %and1143 = and i32 %conv1142, 32768
  %cmp1144 = icmp ne i32 %and1141, %and1143
  br i1 %cmp1144, label %if.then.1146, label %if.end.1166

if.then.1146:                                     ; preds = %while.body.1139
  %564 = load i16, i16* %L, align 2
  %conv1147 = zext i16 %564 to i32
  %and1148 = and i32 %conv1147, 16384
  %tobool1149 = icmp ne i32 %and1148, 0
  br i1 %tobool1149, label %land.lhs.true.1150, label %if.else.1164

land.lhs.true.1150:                               ; preds = %if.then.1146
  %565 = load i16, i16* %H, align 2
  %conv1151 = zext i16 %565 to i32
  %and1152 = and i32 %conv1151, 16384
  %tobool1153 = icmp ne i32 %and1152, 0
  br i1 %tobool1153, label %if.else.1164, label %if.then.1154

if.then.1154:                                     ; preds = %land.lhs.true.1150
  %566 = load i16, i16* %C, align 2
  %conv1155 = zext i16 %566 to i32
  %xor1156 = xor i32 %conv1155, 16384
  %conv1157 = trunc i32 %xor1156 to i16
  store i16 %conv1157, i16* %C, align 2
  %567 = load i16, i16* %L, align 2
  %conv1158 = zext i16 %567 to i32
  %and1159 = and i32 %conv1158, 16383
  %conv1160 = trunc i32 %and1159 to i16
  store i16 %conv1160, i16* %L, align 2
  %568 = load i16, i16* %H, align 2
  %conv1161 = zext i16 %568 to i32
  %or1162 = or i32 %conv1161, 16384
  %conv1163 = trunc i32 %or1162 to i16
  store i16 %conv1163, i16* %H, align 2
  br label %if.end.1165

if.else.1164:                                     ; preds = %land.lhs.true.1150, %if.then.1146
  br label %while.end.1217

if.end.1165:                                      ; preds = %if.then.1154
  br label %if.end.1166

if.end.1166:                                      ; preds = %if.end.1165, %while.body.1139
  %569 = load i16, i16* %L, align 2
  %conv1167 = zext i16 %569 to i32
  %shl1168 = shl i32 %conv1167, 1
  %conv1169 = trunc i32 %shl1168 to i16
  store i16 %conv1169, i16* %L, align 2
  %570 = load i16, i16* %H, align 2
  %conv1170 = zext i16 %570 to i32
  %shl1171 = shl i32 %conv1170, 1
  %or1172 = or i32 %shl1171, 1
  %conv1173 = trunc i32 %or1172 to i16
  store i16 %conv1173, i16* %H, align 2
  br label %do.body.1174

do.body.1174:                                     ; preds = %if.end.1166
  %571 = load i8, i8* %bits_left, align 1
  %conv1175 = zext i8 %571 to i64
  %cmp1176 = icmp ule i64 %conv1175, 16
  br i1 %cmp1176, label %if.then.1178, label %if.end.1205

if.then.1178:                                     ; preds = %do.body.1174
  %572 = load i8*, i8** %i_ptr, align 8
  %573 = load i8*, i8** %i_end, align 8
  %cmp1179 = icmp uge i8* %572, %573
  br i1 %cmp1179, label %if.then.1181, label %if.end.1189

if.then.1181:                                     ; preds = %if.then.1178
  %574 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call1182 = call i32 @qtm_read_input(%struct.qtm_stream* %574)
  %tobool1183 = icmp ne i32 %call1182, 0
  br i1 %tobool1183, label %if.then.1184, label %if.end.1186

if.then.1184:                                     ; preds = %if.then.1181
  %575 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1185 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %575, i32 0, i32 11
  %576 = load i32, i32* %error1185, align 4
  store i32 %576, i32* %retval
  br label %return

if.end.1186:                                      ; preds = %if.then.1181
  %577 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1187 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %577, i32 0, i32 13
  %578 = load i8*, i8** %i_ptr1187, align 8
  store i8* %578, i8** %i_ptr, align 8
  %579 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1188 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %579, i32 0, i32 14
  %580 = load i8*, i8** %i_end1188, align 8
  store i8* %580, i8** %i_end, align 8
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.end.1186, %if.then.1178
  %581 = load i8*, i8** %i_ptr, align 8
  %arrayidx1190 = getelementptr inbounds i8, i8* %581, i64 0
  %582 = load i8, i8* %arrayidx1190, align 1
  %conv1191 = zext i8 %582 to i32
  %shl1192 = shl i32 %conv1191, 8
  %583 = load i8*, i8** %i_ptr, align 8
  %arrayidx1193 = getelementptr inbounds i8, i8* %583, i64 1
  %584 = load i8, i8* %arrayidx1193, align 1
  %conv1194 = zext i8 %584 to i32
  %or1195 = or i32 %shl1192, %conv1194
  %585 = load i8, i8* %bits_left, align 1
  %conv1196 = zext i8 %585 to i64
  %sub1197 = sub i64 16, %conv1196
  %sh_prom1198 = trunc i64 %sub1197 to i32
  %shl1199 = shl i32 %or1195, %sh_prom1198
  %586 = load i32, i32* %bit_buffer, align 4
  %or1200 = or i32 %586, %shl1199
  store i32 %or1200, i32* %bit_buffer, align 4
  %587 = load i8, i8* %bits_left, align 1
  %conv1201 = zext i8 %587 to i32
  %add1202 = add nsw i32 %conv1201, 16
  %conv1203 = trunc i32 %add1202 to i8
  store i8 %conv1203, i8* %bits_left, align 1
  %588 = load i8*, i8** %i_ptr, align 8
  %add.ptr1204 = getelementptr inbounds i8, i8* %588, i64 2
  store i8* %add.ptr1204, i8** %i_ptr, align 8
  br label %if.end.1205

if.end.1205:                                      ; preds = %if.end.1189, %do.body.1174
  br label %do.end.1207

do.end.1207:                                      ; preds = %if.end.1205
  %589 = load i16, i16* %C, align 2
  %conv1208 = zext i16 %589 to i32
  %shl1209 = shl i32 %conv1208, 1
  %590 = load i32, i32* %bit_buffer, align 4
  %shr1210 = lshr i32 %590, 31
  %or1211 = or i32 %shl1209, %shr1210
  %conv1212 = trunc i32 %or1211 to i16
  store i16 %conv1212, i16* %C, align 2
  %591 = load i32, i32* %bit_buffer, align 4
  %shl1213 = shl i32 %591, 1
  store i32 %shl1213, i32* %bit_buffer, align 4
  %592 = load i8, i8* %bits_left, align 1
  %conv1214 = zext i8 %592 to i32
  %sub1215 = sub nsw i32 %conv1214, 1
  %conv1216 = trunc i32 %sub1215 to i8
  store i8 %conv1216, i8* %bits_left, align 1
  br label %while.body.1139

while.end.1217:                                   ; preds = %if.else.1164
  br label %do.end.1219

do.end.1219:                                      ; preds = %while.end.1217
  br label %do.body.1220

do.body.1220:                                     ; preds = %do.end.1219
  store i32 0, i32* %extra, align 4
  %593 = load i32, i32* %sym, align 4
  %idxprom1221 = sext i32 %593 to i64
  %594 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %length_extra = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %594, i32 0, i32 23
  %arrayidx1222 = getelementptr inbounds [27 x i8], [27 x i8]* %length_extra, i32 0, i64 %idxprom1221
  %595 = load i8, i8* %arrayidx1222, align 1
  store i8 %595, i8* %bits_needed, align 1
  br label %for.cond.1223

for.cond.1223:                                    ; preds = %for.inc.1286, %do.body.1220
  %596 = load i8, i8* %bits_needed, align 1
  %conv1224 = zext i8 %596 to i32
  %cmp1225 = icmp sgt i32 %conv1224, 0
  br i1 %cmp1225, label %for.body.1227, label %for.end.1291

for.body.1227:                                    ; preds = %for.cond.1223
  br label %do.body.1228

do.body.1228:                                     ; preds = %for.body.1227
  %597 = load i8, i8* %bits_left, align 1
  %conv1229 = zext i8 %597 to i64
  %cmp1230 = icmp ule i64 %conv1229, 16
  br i1 %cmp1230, label %if.then.1232, label %if.end.1259

if.then.1232:                                     ; preds = %do.body.1228
  %598 = load i8*, i8** %i_ptr, align 8
  %599 = load i8*, i8** %i_end, align 8
  %cmp1233 = icmp uge i8* %598, %599
  br i1 %cmp1233, label %if.then.1235, label %if.end.1243

if.then.1235:                                     ; preds = %if.then.1232
  %600 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call1236 = call i32 @qtm_read_input(%struct.qtm_stream* %600)
  %tobool1237 = icmp ne i32 %call1236, 0
  br i1 %tobool1237, label %if.then.1238, label %if.end.1240

if.then.1238:                                     ; preds = %if.then.1235
  %601 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1239 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %601, i32 0, i32 11
  %602 = load i32, i32* %error1239, align 4
  store i32 %602, i32* %retval
  br label %return

if.end.1240:                                      ; preds = %if.then.1235
  %603 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1241 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %603, i32 0, i32 13
  %604 = load i8*, i8** %i_ptr1241, align 8
  store i8* %604, i8** %i_ptr, align 8
  %605 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1242 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %605, i32 0, i32 14
  %606 = load i8*, i8** %i_end1242, align 8
  store i8* %606, i8** %i_end, align 8
  br label %if.end.1243

if.end.1243:                                      ; preds = %if.end.1240, %if.then.1232
  %607 = load i8*, i8** %i_ptr, align 8
  %arrayidx1244 = getelementptr inbounds i8, i8* %607, i64 0
  %608 = load i8, i8* %arrayidx1244, align 1
  %conv1245 = zext i8 %608 to i32
  %shl1246 = shl i32 %conv1245, 8
  %609 = load i8*, i8** %i_ptr, align 8
  %arrayidx1247 = getelementptr inbounds i8, i8* %609, i64 1
  %610 = load i8, i8* %arrayidx1247, align 1
  %conv1248 = zext i8 %610 to i32
  %or1249 = or i32 %shl1246, %conv1248
  %611 = load i8, i8* %bits_left, align 1
  %conv1250 = zext i8 %611 to i64
  %sub1251 = sub i64 16, %conv1250
  %sh_prom1252 = trunc i64 %sub1251 to i32
  %shl1253 = shl i32 %or1249, %sh_prom1252
  %612 = load i32, i32* %bit_buffer, align 4
  %or1254 = or i32 %612, %shl1253
  store i32 %or1254, i32* %bit_buffer, align 4
  %613 = load i8, i8* %bits_left, align 1
  %conv1255 = zext i8 %613 to i32
  %add1256 = add nsw i32 %conv1255, 16
  %conv1257 = trunc i32 %add1256 to i8
  store i8 %conv1257, i8* %bits_left, align 1
  %614 = load i8*, i8** %i_ptr, align 8
  %add.ptr1258 = getelementptr inbounds i8, i8* %614, i64 2
  store i8* %add.ptr1258, i8** %i_ptr, align 8
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.end.1243, %do.body.1228
  br label %do.end.1261

do.end.1261:                                      ; preds = %if.end.1259
  %615 = load i8, i8* %bits_left, align 1
  %conv1262 = zext i8 %615 to i32
  %616 = load i8, i8* %bits_needed, align 1
  %conv1263 = zext i8 %616 to i32
  %cmp1264 = icmp slt i32 %conv1262, %conv1263
  br i1 %cmp1264, label %cond.true.1266, label %cond.false.1268

cond.true.1266:                                   ; preds = %do.end.1261
  %617 = load i8, i8* %bits_left, align 1
  %conv1267 = zext i8 %617 to i32
  br label %cond.end.1270

cond.false.1268:                                  ; preds = %do.end.1261
  %618 = load i8, i8* %bits_needed, align 1
  %conv1269 = zext i8 %618 to i32
  br label %cond.end.1270

cond.end.1270:                                    ; preds = %cond.false.1268, %cond.true.1266
  %cond1271 = phi i32 [ %conv1267, %cond.true.1266 ], [ %conv1269, %cond.false.1268 ]
  %conv1272 = trunc i32 %cond1271 to i8
  store i8 %conv1272, i8* %bit_run, align 1
  %619 = load i32, i32* %extra, align 4
  %620 = load i8, i8* %bit_run, align 1
  %conv1273 = zext i8 %620 to i32
  %shl1274 = shl i32 %619, %conv1273
  %621 = load i32, i32* %bit_buffer, align 4
  %622 = load i8, i8* %bit_run, align 1
  %conv1275 = zext i8 %622 to i64
  %sub1276 = sub i64 32, %conv1275
  %sh_prom1277 = trunc i64 %sub1276 to i32
  %shr1278 = lshr i32 %621, %sh_prom1277
  %or1279 = or i32 %shl1274, %shr1278
  store i32 %or1279, i32* %extra, align 4
  %623 = load i8, i8* %bit_run, align 1
  %conv1280 = zext i8 %623 to i32
  %624 = load i32, i32* %bit_buffer, align 4
  %shl1281 = shl i32 %624, %conv1280
  store i32 %shl1281, i32* %bit_buffer, align 4
  %625 = load i8, i8* %bit_run, align 1
  %conv1282 = zext i8 %625 to i32
  %626 = load i8, i8* %bits_left, align 1
  %conv1283 = zext i8 %626 to i32
  %sub1284 = sub nsw i32 %conv1283, %conv1282
  %conv1285 = trunc i32 %sub1284 to i8
  store i8 %conv1285, i8* %bits_left, align 1
  br label %for.inc.1286

for.inc.1286:                                     ; preds = %cond.end.1270
  %627 = load i8, i8* %bit_run, align 1
  %conv1287 = zext i8 %627 to i32
  %628 = load i8, i8* %bits_needed, align 1
  %conv1288 = zext i8 %628 to i32
  %sub1289 = sub nsw i32 %conv1288, %conv1287
  %conv1290 = trunc i32 %sub1289 to i8
  store i8 %conv1290, i8* %bits_needed, align 1
  br label %for.cond.1223

for.end.1291:                                     ; preds = %for.cond.1223
  br label %do.end.1293

do.end.1293:                                      ; preds = %for.end.1291
  %629 = load i32, i32* %sym, align 4
  %idxprom1294 = sext i32 %629 to i64
  %630 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %length_base = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %630, i32 0, i32 22
  %arrayidx1295 = getelementptr inbounds [27 x i8], [27 x i8]* %length_base, i32 0, i64 %idxprom1294
  %631 = load i8, i8* %arrayidx1295, align 1
  %conv1296 = zext i8 %631 to i32
  %632 = load i32, i32* %extra, align 4
  %add1297 = add nsw i32 %conv1296, %632
  %add1298 = add nsw i32 %add1297, 5
  store i32 %add1298, i32* %match_length, align 4
  br label %do.body.1299

do.body.1299:                                     ; preds = %do.end.1293
  %633 = load i16, i16* %H, align 2
  %conv1300 = zext i16 %633 to i32
  %634 = load i16, i16* %L, align 2
  %conv1301 = zext i16 %634 to i32
  %sub1302 = sub nsw i32 %conv1300, %conv1301
  %and1303 = and i32 %sub1302, 65535
  %add1304 = add nsw i32 %and1303, 1
  store i32 %add1304, i32* %range, align 4
  %635 = load i16, i16* %C, align 2
  %conv1305 = zext i16 %635 to i32
  %636 = load i16, i16* %L, align 2
  %conv1306 = zext i16 %636 to i32
  %sub1307 = sub nsw i32 %conv1305, %conv1306
  %add1308 = add nsw i32 %sub1307, 1
  %637 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model6 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %637, i32 0, i32 30
  %syms1309 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model6, i32 0, i32 2
  %638 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1309, align 8
  %arrayidx1310 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %638, i64 0
  %cumfreq1311 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1310, i32 0, i32 1
  %639 = load i16, i16* %cumfreq1311, align 2
  %conv1312 = zext i16 %639 to i32
  %mul1313 = mul nsw i32 %add1308, %conv1312
  %sub1314 = sub nsw i32 %mul1313, 1
  %640 = load i32, i32* %range, align 4
  %div1315 = udiv i32 %sub1314, %640
  %and1316 = and i32 %div1315, 65535
  %conv1317 = trunc i32 %and1316 to i16
  store i16 %conv1317, i16* %symf, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.1318

for.cond.1318:                                    ; preds = %for.inc.1335, %do.body.1299
  %641 = load i32, i32* %i, align 4
  %642 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61319 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %642, i32 0, i32 30
  %entries1320 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61319, i32 0, i32 1
  %643 = load i32, i32* %entries1320, align 4
  %cmp1321 = icmp slt i32 %641, %643
  br i1 %cmp1321, label %for.body.1323, label %for.end.1337

for.body.1323:                                    ; preds = %for.cond.1318
  %644 = load i32, i32* %i, align 4
  %idxprom1324 = sext i32 %644 to i64
  %645 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61325 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %645, i32 0, i32 30
  %syms1326 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61325, i32 0, i32 2
  %646 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1326, align 8
  %arrayidx1327 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %646, i64 %idxprom1324
  %cumfreq1328 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1327, i32 0, i32 1
  %647 = load i16, i16* %cumfreq1328, align 2
  %conv1329 = zext i16 %647 to i32
  %648 = load i16, i16* %symf, align 2
  %conv1330 = zext i16 %648 to i32
  %cmp1331 = icmp sle i32 %conv1329, %conv1330
  br i1 %cmp1331, label %if.then.1333, label %if.end.1334

if.then.1333:                                     ; preds = %for.body.1323
  br label %for.end.1337

if.end.1334:                                      ; preds = %for.body.1323
  br label %for.inc.1335

for.inc.1335:                                     ; preds = %if.end.1334
  %649 = load i32, i32* %i, align 4
  %inc1336 = add nsw i32 %649, 1
  store i32 %inc1336, i32* %i, align 4
  br label %for.cond.1318

for.end.1337:                                     ; preds = %if.then.1333, %for.cond.1318
  %650 = load i32, i32* %i, align 4
  %sub1338 = sub nsw i32 %650, 1
  %idxprom1339 = sext i32 %sub1338 to i64
  %651 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61340 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %651, i32 0, i32 30
  %syms1341 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61340, i32 0, i32 2
  %652 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1341, align 8
  %arrayidx1342 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %652, i64 %idxprom1339
  %sym1343 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1342, i32 0, i32 0
  %653 = load i16, i16* %sym1343, align 2
  %conv1344 = zext i16 %653 to i32
  store i32 %conv1344, i32* %sym, align 4
  %654 = load i16, i16* %H, align 2
  %conv1345 = zext i16 %654 to i32
  %655 = load i16, i16* %L, align 2
  %conv1346 = zext i16 %655 to i32
  %sub1347 = sub nsw i32 %conv1345, %conv1346
  %add1348 = add nsw i32 %sub1347, 1
  store i32 %add1348, i32* %range, align 4
  %656 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61349 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %656, i32 0, i32 30
  %syms1350 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61349, i32 0, i32 2
  %657 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1350, align 8
  %arrayidx1351 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %657, i64 0
  %cumfreq1352 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1351, i32 0, i32 1
  %658 = load i16, i16* %cumfreq1352, align 2
  store i16 %658, i16* %symf, align 2
  %659 = load i16, i16* %L, align 2
  %conv1353 = zext i16 %659 to i32
  %660 = load i32, i32* %i, align 4
  %sub1354 = sub nsw i32 %660, 1
  %idxprom1355 = sext i32 %sub1354 to i64
  %661 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61356 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %661, i32 0, i32 30
  %syms1357 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61356, i32 0, i32 2
  %662 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1357, align 8
  %arrayidx1358 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %662, i64 %idxprom1355
  %cumfreq1359 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1358, i32 0, i32 1
  %663 = load i16, i16* %cumfreq1359, align 2
  %conv1360 = zext i16 %663 to i32
  %664 = load i32, i32* %range, align 4
  %mul1361 = mul i32 %conv1360, %664
  %665 = load i16, i16* %symf, align 2
  %conv1362 = zext i16 %665 to i32
  %div1363 = udiv i32 %mul1361, %conv1362
  %add1364 = add i32 %conv1353, %div1363
  %sub1365 = sub i32 %add1364, 1
  %conv1366 = trunc i32 %sub1365 to i16
  store i16 %conv1366, i16* %H, align 2
  %666 = load i16, i16* %L, align 2
  %conv1367 = zext i16 %666 to i32
  %667 = load i32, i32* %i, align 4
  %idxprom1368 = sext i32 %667 to i64
  %668 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61369 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %668, i32 0, i32 30
  %syms1370 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61369, i32 0, i32 2
  %669 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1370, align 8
  %arrayidx1371 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %669, i64 %idxprom1368
  %cumfreq1372 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1371, i32 0, i32 1
  %670 = load i16, i16* %cumfreq1372, align 2
  %conv1373 = zext i16 %670 to i32
  %671 = load i32, i32* %range, align 4
  %mul1374 = mul i32 %conv1373, %671
  %672 = load i16, i16* %symf, align 2
  %conv1375 = zext i16 %672 to i32
  %div1376 = udiv i32 %mul1374, %conv1375
  %add1377 = add i32 %conv1367, %div1376
  %conv1378 = trunc i32 %add1377 to i16
  store i16 %conv1378, i16* %L, align 2
  br label %do.body.1379

do.body.1379:                                     ; preds = %do.cond.1389, %for.end.1337
  %673 = load i32, i32* %i, align 4
  %dec1380 = add nsw i32 %673, -1
  store i32 %dec1380, i32* %i, align 4
  %idxprom1381 = sext i32 %dec1380 to i64
  %674 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61382 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %674, i32 0, i32 30
  %syms1383 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61382, i32 0, i32 2
  %675 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1383, align 8
  %arrayidx1384 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %675, i64 %idxprom1381
  %cumfreq1385 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1384, i32 0, i32 1
  %676 = load i16, i16* %cumfreq1385, align 2
  %conv1386 = zext i16 %676 to i32
  %add1387 = add nsw i32 %conv1386, 8
  %conv1388 = trunc i32 %add1387 to i16
  store i16 %conv1388, i16* %cumfreq1385, align 2
  br label %do.cond.1389

do.cond.1389:                                     ; preds = %do.body.1379
  %677 = load i32, i32* %i, align 4
  %cmp1390 = icmp sgt i32 %677, 0
  br i1 %cmp1390, label %do.body.1379, label %do.end.1392

do.end.1392:                                      ; preds = %do.cond.1389
  %678 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61393 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %678, i32 0, i32 30
  %syms1394 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %model61393, i32 0, i32 2
  %679 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms1394, align 8
  %arrayidx1395 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %679, i64 0
  %cumfreq1396 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx1395, i32 0, i32 1
  %680 = load i16, i16* %cumfreq1396, align 2
  %conv1397 = zext i16 %680 to i32
  %cmp1398 = icmp sgt i32 %conv1397, 3800
  br i1 %cmp1398, label %if.then.1400, label %if.end.1402

if.then.1400:                                     ; preds = %do.end.1392
  %681 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %model61401 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %681, i32 0, i32 30
  call void @qtm_update_model(%struct.qtm_model* %model61401)
  br label %if.end.1402

if.end.1402:                                      ; preds = %if.then.1400, %do.end.1392
  br label %while.body.1404

while.body.1404:                                  ; preds = %if.end.1402, %do.end.1472
  %682 = load i16, i16* %L, align 2
  %conv1405 = zext i16 %682 to i32
  %and1406 = and i32 %conv1405, 32768
  %683 = load i16, i16* %H, align 2
  %conv1407 = zext i16 %683 to i32
  %and1408 = and i32 %conv1407, 32768
  %cmp1409 = icmp ne i32 %and1406, %and1408
  br i1 %cmp1409, label %if.then.1411, label %if.end.1431

if.then.1411:                                     ; preds = %while.body.1404
  %684 = load i16, i16* %L, align 2
  %conv1412 = zext i16 %684 to i32
  %and1413 = and i32 %conv1412, 16384
  %tobool1414 = icmp ne i32 %and1413, 0
  br i1 %tobool1414, label %land.lhs.true.1415, label %if.else.1429

land.lhs.true.1415:                               ; preds = %if.then.1411
  %685 = load i16, i16* %H, align 2
  %conv1416 = zext i16 %685 to i32
  %and1417 = and i32 %conv1416, 16384
  %tobool1418 = icmp ne i32 %and1417, 0
  br i1 %tobool1418, label %if.else.1429, label %if.then.1419

if.then.1419:                                     ; preds = %land.lhs.true.1415
  %686 = load i16, i16* %C, align 2
  %conv1420 = zext i16 %686 to i32
  %xor1421 = xor i32 %conv1420, 16384
  %conv1422 = trunc i32 %xor1421 to i16
  store i16 %conv1422, i16* %C, align 2
  %687 = load i16, i16* %L, align 2
  %conv1423 = zext i16 %687 to i32
  %and1424 = and i32 %conv1423, 16383
  %conv1425 = trunc i32 %and1424 to i16
  store i16 %conv1425, i16* %L, align 2
  %688 = load i16, i16* %H, align 2
  %conv1426 = zext i16 %688 to i32
  %or1427 = or i32 %conv1426, 16384
  %conv1428 = trunc i32 %or1427 to i16
  store i16 %conv1428, i16* %H, align 2
  br label %if.end.1430

if.else.1429:                                     ; preds = %land.lhs.true.1415, %if.then.1411
  br label %while.end.1482

if.end.1430:                                      ; preds = %if.then.1419
  br label %if.end.1431

if.end.1431:                                      ; preds = %if.end.1430, %while.body.1404
  %689 = load i16, i16* %L, align 2
  %conv1432 = zext i16 %689 to i32
  %shl1433 = shl i32 %conv1432, 1
  %conv1434 = trunc i32 %shl1433 to i16
  store i16 %conv1434, i16* %L, align 2
  %690 = load i16, i16* %H, align 2
  %conv1435 = zext i16 %690 to i32
  %shl1436 = shl i32 %conv1435, 1
  %or1437 = or i32 %shl1436, 1
  %conv1438 = trunc i32 %or1437 to i16
  store i16 %conv1438, i16* %H, align 2
  br label %do.body.1439

do.body.1439:                                     ; preds = %if.end.1431
  %691 = load i8, i8* %bits_left, align 1
  %conv1440 = zext i8 %691 to i64
  %cmp1441 = icmp ule i64 %conv1440, 16
  br i1 %cmp1441, label %if.then.1443, label %if.end.1470

if.then.1443:                                     ; preds = %do.body.1439
  %692 = load i8*, i8** %i_ptr, align 8
  %693 = load i8*, i8** %i_end, align 8
  %cmp1444 = icmp uge i8* %692, %693
  br i1 %cmp1444, label %if.then.1446, label %if.end.1454

if.then.1446:                                     ; preds = %if.then.1443
  %694 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call1447 = call i32 @qtm_read_input(%struct.qtm_stream* %694)
  %tobool1448 = icmp ne i32 %call1447, 0
  br i1 %tobool1448, label %if.then.1449, label %if.end.1451

if.then.1449:                                     ; preds = %if.then.1446
  %695 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1450 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %695, i32 0, i32 11
  %696 = load i32, i32* %error1450, align 4
  store i32 %696, i32* %retval
  br label %return

if.end.1451:                                      ; preds = %if.then.1446
  %697 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1452 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %697, i32 0, i32 13
  %698 = load i8*, i8** %i_ptr1452, align 8
  store i8* %698, i8** %i_ptr, align 8
  %699 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1453 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %699, i32 0, i32 14
  %700 = load i8*, i8** %i_end1453, align 8
  store i8* %700, i8** %i_end, align 8
  br label %if.end.1454

if.end.1454:                                      ; preds = %if.end.1451, %if.then.1443
  %701 = load i8*, i8** %i_ptr, align 8
  %arrayidx1455 = getelementptr inbounds i8, i8* %701, i64 0
  %702 = load i8, i8* %arrayidx1455, align 1
  %conv1456 = zext i8 %702 to i32
  %shl1457 = shl i32 %conv1456, 8
  %703 = load i8*, i8** %i_ptr, align 8
  %arrayidx1458 = getelementptr inbounds i8, i8* %703, i64 1
  %704 = load i8, i8* %arrayidx1458, align 1
  %conv1459 = zext i8 %704 to i32
  %or1460 = or i32 %shl1457, %conv1459
  %705 = load i8, i8* %bits_left, align 1
  %conv1461 = zext i8 %705 to i64
  %sub1462 = sub i64 16, %conv1461
  %sh_prom1463 = trunc i64 %sub1462 to i32
  %shl1464 = shl i32 %or1460, %sh_prom1463
  %706 = load i32, i32* %bit_buffer, align 4
  %or1465 = or i32 %706, %shl1464
  store i32 %or1465, i32* %bit_buffer, align 4
  %707 = load i8, i8* %bits_left, align 1
  %conv1466 = zext i8 %707 to i32
  %add1467 = add nsw i32 %conv1466, 16
  %conv1468 = trunc i32 %add1467 to i8
  store i8 %conv1468, i8* %bits_left, align 1
  %708 = load i8*, i8** %i_ptr, align 8
  %add.ptr1469 = getelementptr inbounds i8, i8* %708, i64 2
  store i8* %add.ptr1469, i8** %i_ptr, align 8
  br label %if.end.1470

if.end.1470:                                      ; preds = %if.end.1454, %do.body.1439
  br label %do.end.1472

do.end.1472:                                      ; preds = %if.end.1470
  %709 = load i16, i16* %C, align 2
  %conv1473 = zext i16 %709 to i32
  %shl1474 = shl i32 %conv1473, 1
  %710 = load i32, i32* %bit_buffer, align 4
  %shr1475 = lshr i32 %710, 31
  %or1476 = or i32 %shl1474, %shr1475
  %conv1477 = trunc i32 %or1476 to i16
  store i16 %conv1477, i16* %C, align 2
  %711 = load i32, i32* %bit_buffer, align 4
  %shl1478 = shl i32 %711, 1
  store i32 %shl1478, i32* %bit_buffer, align 4
  %712 = load i8, i8* %bits_left, align 1
  %conv1479 = zext i8 %712 to i32
  %sub1480 = sub nsw i32 %conv1479, 1
  %conv1481 = trunc i32 %sub1480 to i8
  store i8 %conv1481, i8* %bits_left, align 1
  br label %while.body.1404

while.end.1482:                                   ; preds = %if.else.1429
  br label %do.end.1484

do.end.1484:                                      ; preds = %while.end.1482
  br label %do.body.1485

do.body.1485:                                     ; preds = %do.end.1484
  store i32 0, i32* %extra, align 4
  %713 = load i32, i32* %sym, align 4
  %idxprom1486 = sext i32 %713 to i64
  %714 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %extra_bits1487 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %714, i32 0, i32 21
  %arrayidx1488 = getelementptr inbounds [42 x i8], [42 x i8]* %extra_bits1487, i32 0, i64 %idxprom1486
  %715 = load i8, i8* %arrayidx1488, align 1
  store i8 %715, i8* %bits_needed, align 1
  br label %for.cond.1489

for.cond.1489:                                    ; preds = %for.inc.1552, %do.body.1485
  %716 = load i8, i8* %bits_needed, align 1
  %conv1490 = zext i8 %716 to i32
  %cmp1491 = icmp sgt i32 %conv1490, 0
  br i1 %cmp1491, label %for.body.1493, label %for.end.1557

for.body.1493:                                    ; preds = %for.cond.1489
  br label %do.body.1494

do.body.1494:                                     ; preds = %for.body.1493
  %717 = load i8, i8* %bits_left, align 1
  %conv1495 = zext i8 %717 to i64
  %cmp1496 = icmp ule i64 %conv1495, 16
  br i1 %cmp1496, label %if.then.1498, label %if.end.1525

if.then.1498:                                     ; preds = %do.body.1494
  %718 = load i8*, i8** %i_ptr, align 8
  %719 = load i8*, i8** %i_end, align 8
  %cmp1499 = icmp uge i8* %718, %719
  br i1 %cmp1499, label %if.then.1501, label %if.end.1509

if.then.1501:                                     ; preds = %if.then.1498
  %720 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call1502 = call i32 @qtm_read_input(%struct.qtm_stream* %720)
  %tobool1503 = icmp ne i32 %call1502, 0
  br i1 %tobool1503, label %if.then.1504, label %if.end.1506

if.then.1504:                                     ; preds = %if.then.1501
  %721 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1505 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %721, i32 0, i32 11
  %722 = load i32, i32* %error1505, align 4
  store i32 %722, i32* %retval
  br label %return

if.end.1506:                                      ; preds = %if.then.1501
  %723 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1507 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %723, i32 0, i32 13
  %724 = load i8*, i8** %i_ptr1507, align 8
  store i8* %724, i8** %i_ptr, align 8
  %725 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1508 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %725, i32 0, i32 14
  %726 = load i8*, i8** %i_end1508, align 8
  store i8* %726, i8** %i_end, align 8
  br label %if.end.1509

if.end.1509:                                      ; preds = %if.end.1506, %if.then.1498
  %727 = load i8*, i8** %i_ptr, align 8
  %arrayidx1510 = getelementptr inbounds i8, i8* %727, i64 0
  %728 = load i8, i8* %arrayidx1510, align 1
  %conv1511 = zext i8 %728 to i32
  %shl1512 = shl i32 %conv1511, 8
  %729 = load i8*, i8** %i_ptr, align 8
  %arrayidx1513 = getelementptr inbounds i8, i8* %729, i64 1
  %730 = load i8, i8* %arrayidx1513, align 1
  %conv1514 = zext i8 %730 to i32
  %or1515 = or i32 %shl1512, %conv1514
  %731 = load i8, i8* %bits_left, align 1
  %conv1516 = zext i8 %731 to i64
  %sub1517 = sub i64 16, %conv1516
  %sh_prom1518 = trunc i64 %sub1517 to i32
  %shl1519 = shl i32 %or1515, %sh_prom1518
  %732 = load i32, i32* %bit_buffer, align 4
  %or1520 = or i32 %732, %shl1519
  store i32 %or1520, i32* %bit_buffer, align 4
  %733 = load i8, i8* %bits_left, align 1
  %conv1521 = zext i8 %733 to i32
  %add1522 = add nsw i32 %conv1521, 16
  %conv1523 = trunc i32 %add1522 to i8
  store i8 %conv1523, i8* %bits_left, align 1
  %734 = load i8*, i8** %i_ptr, align 8
  %add.ptr1524 = getelementptr inbounds i8, i8* %734, i64 2
  store i8* %add.ptr1524, i8** %i_ptr, align 8
  br label %if.end.1525

if.end.1525:                                      ; preds = %if.end.1509, %do.body.1494
  br label %do.end.1527

do.end.1527:                                      ; preds = %if.end.1525
  %735 = load i8, i8* %bits_left, align 1
  %conv1528 = zext i8 %735 to i32
  %736 = load i8, i8* %bits_needed, align 1
  %conv1529 = zext i8 %736 to i32
  %cmp1530 = icmp slt i32 %conv1528, %conv1529
  br i1 %cmp1530, label %cond.true.1532, label %cond.false.1534

cond.true.1532:                                   ; preds = %do.end.1527
  %737 = load i8, i8* %bits_left, align 1
  %conv1533 = zext i8 %737 to i32
  br label %cond.end.1536

cond.false.1534:                                  ; preds = %do.end.1527
  %738 = load i8, i8* %bits_needed, align 1
  %conv1535 = zext i8 %738 to i32
  br label %cond.end.1536

cond.end.1536:                                    ; preds = %cond.false.1534, %cond.true.1532
  %cond1537 = phi i32 [ %conv1533, %cond.true.1532 ], [ %conv1535, %cond.false.1534 ]
  %conv1538 = trunc i32 %cond1537 to i8
  store i8 %conv1538, i8* %bit_run, align 1
  %739 = load i32, i32* %extra, align 4
  %740 = load i8, i8* %bit_run, align 1
  %conv1539 = zext i8 %740 to i32
  %shl1540 = shl i32 %739, %conv1539
  %741 = load i32, i32* %bit_buffer, align 4
  %742 = load i8, i8* %bit_run, align 1
  %conv1541 = zext i8 %742 to i64
  %sub1542 = sub i64 32, %conv1541
  %sh_prom1543 = trunc i64 %sub1542 to i32
  %shr1544 = lshr i32 %741, %sh_prom1543
  %or1545 = or i32 %shl1540, %shr1544
  store i32 %or1545, i32* %extra, align 4
  %743 = load i8, i8* %bit_run, align 1
  %conv1546 = zext i8 %743 to i32
  %744 = load i32, i32* %bit_buffer, align 4
  %shl1547 = shl i32 %744, %conv1546
  store i32 %shl1547, i32* %bit_buffer, align 4
  %745 = load i8, i8* %bit_run, align 1
  %conv1548 = zext i8 %745 to i32
  %746 = load i8, i8* %bits_left, align 1
  %conv1549 = zext i8 %746 to i32
  %sub1550 = sub nsw i32 %conv1549, %conv1548
  %conv1551 = trunc i32 %sub1550 to i8
  store i8 %conv1551, i8* %bits_left, align 1
  br label %for.inc.1552

for.inc.1552:                                     ; preds = %cond.end.1536
  %747 = load i8, i8* %bit_run, align 1
  %conv1553 = zext i8 %747 to i32
  %748 = load i8, i8* %bits_needed, align 1
  %conv1554 = zext i8 %748 to i32
  %sub1555 = sub nsw i32 %conv1554, %conv1553
  %conv1556 = trunc i32 %sub1555 to i8
  store i8 %conv1556, i8* %bits_needed, align 1
  br label %for.cond.1489

for.end.1557:                                     ; preds = %for.cond.1489
  br label %do.end.1559

do.end.1559:                                      ; preds = %for.end.1557
  %749 = load i32, i32* %sym, align 4
  %idxprom1560 = sext i32 %749 to i64
  %750 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %position_base1561 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %750, i32 0, i32 20
  %arrayidx1562 = getelementptr inbounds [42 x i32], [42 x i32]* %position_base1561, i32 0, i64 %idxprom1560
  %751 = load i32, i32* %arrayidx1562, align 4
  %752 = load i32, i32* %extra, align 4
  %add1563 = add i32 %751, %752
  %add1564 = add i32 %add1563, 1
  store i32 %add1564, i32* %match_offset, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.501
  %753 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1565 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %753, i32 0, i32 11
  store i32 -124, i32* %error1565, align 4
  store i32 -124, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end.1559, %do.end.1027, %do.end.761
  %754 = load i32, i32* %window_posn, align 4
  %idxprom1566 = zext i32 %754 to i64
  %755 = load i8*, i8** %window, align 8
  %arrayidx1567 = getelementptr inbounds i8, i8* %755, i64 %idxprom1566
  store i8* %arrayidx1567, i8** %rundest, align 8
  %756 = load i32, i32* %match_length, align 4
  store i32 %756, i32* %i, align 4
  %757 = load i32, i32* %match_offset, align 4
  %758 = load i32, i32* %window_posn, align 4
  %cmp1568 = icmp ugt i32 %757, %758
  br i1 %cmp1568, label %if.then.1570, label %if.else.1601

if.then.1570:                                     ; preds = %sw.epilog
  %759 = load i32, i32* %match_offset, align 4
  %760 = load i32, i32* %window_posn, align 4
  %sub1571 = sub i32 %759, %760
  store i32 %sub1571, i32* %j, align 4
  %761 = load i32, i32* %j, align 4
  %762 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window_size = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %762, i32 0, i32 4
  %763 = load i32, i32* %window_size, align 4
  %cmp1572 = icmp sgt i32 %761, %763
  br i1 %cmp1572, label %if.then.1574, label %if.end.1576

if.then.1574:                                     ; preds = %if.then.1570
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  %764 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1575 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %764, i32 0, i32 11
  store i32 -124, i32* %error1575, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1576:                                      ; preds = %if.then.1570
  %765 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window_size1577 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %765, i32 0, i32 4
  %766 = load i32, i32* %window_size1577, align 4
  %767 = load i32, i32* %j, align 4
  %sub1578 = sub i32 %766, %767
  %idxprom1579 = zext i32 %sub1578 to i64
  %768 = load i8*, i8** %window, align 8
  %arrayidx1580 = getelementptr inbounds i8, i8* %768, i64 %idxprom1579
  store i8* %arrayidx1580, i8** %runsrc, align 8
  %769 = load i32, i32* %j, align 4
  %770 = load i32, i32* %i, align 4
  %cmp1581 = icmp slt i32 %769, %770
  br i1 %cmp1581, label %if.then.1583, label %if.end.1592

if.then.1583:                                     ; preds = %if.end.1576
  %771 = load i32, i32* %j, align 4
  %772 = load i32, i32* %i, align 4
  %sub1584 = sub nsw i32 %772, %771
  store i32 %sub1584, i32* %i, align 4
  br label %while.cond.1585

while.cond.1585:                                  ; preds = %while.body.1589, %if.then.1583
  %773 = load i32, i32* %j, align 4
  %dec1586 = add nsw i32 %773, -1
  store i32 %dec1586, i32* %j, align 4
  %cmp1587 = icmp sgt i32 %773, 0
  br i1 %cmp1587, label %while.body.1589, label %while.end.1591

while.body.1589:                                  ; preds = %while.cond.1585
  %774 = load i8*, i8** %runsrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %774, i32 1
  store i8* %incdec.ptr, i8** %runsrc, align 8
  %775 = load i8, i8* %774, align 1
  %776 = load i8*, i8** %rundest, align 8
  %incdec.ptr1590 = getelementptr inbounds i8, i8* %776, i32 1
  store i8* %incdec.ptr1590, i8** %rundest, align 8
  store i8 %775, i8* %776, align 1
  br label %while.cond.1585

while.end.1591:                                   ; preds = %while.cond.1585
  %777 = load i8*, i8** %window, align 8
  store i8* %777, i8** %runsrc, align 8
  br label %if.end.1592

if.end.1592:                                      ; preds = %while.end.1591, %if.end.1576
  br label %while.cond.1593

while.cond.1593:                                  ; preds = %while.body.1597, %if.end.1592
  %778 = load i32, i32* %i, align 4
  %dec1594 = add nsw i32 %778, -1
  store i32 %dec1594, i32* %i, align 4
  %cmp1595 = icmp sgt i32 %778, 0
  br i1 %cmp1595, label %while.body.1597, label %while.end.1600

while.body.1597:                                  ; preds = %while.cond.1593
  %779 = load i8*, i8** %runsrc, align 8
  %incdec.ptr1598 = getelementptr inbounds i8, i8* %779, i32 1
  store i8* %incdec.ptr1598, i8** %runsrc, align 8
  %780 = load i8, i8* %779, align 1
  %781 = load i8*, i8** %rundest, align 8
  %incdec.ptr1599 = getelementptr inbounds i8, i8* %781, i32 1
  store i8* %incdec.ptr1599, i8** %rundest, align 8
  store i8 %780, i8* %781, align 1
  br label %while.cond.1593

while.end.1600:                                   ; preds = %while.cond.1593
  br label %if.end.1612

if.else.1601:                                     ; preds = %sw.epilog
  %782 = load i8*, i8** %rundest, align 8
  %783 = load i32, i32* %match_offset, align 4
  %idx.ext1602 = zext i32 %783 to i64
  %idx.neg = sub i64 0, %idx.ext1602
  %add.ptr1603 = getelementptr inbounds i8, i8* %782, i64 %idx.neg
  store i8* %add.ptr1603, i8** %runsrc, align 8
  br label %while.cond.1604

while.cond.1604:                                  ; preds = %while.body.1608, %if.else.1601
  %784 = load i32, i32* %i, align 4
  %dec1605 = add nsw i32 %784, -1
  store i32 %dec1605, i32* %i, align 4
  %cmp1606 = icmp sgt i32 %784, 0
  br i1 %cmp1606, label %while.body.1608, label %while.end.1611

while.body.1608:                                  ; preds = %while.cond.1604
  %785 = load i8*, i8** %runsrc, align 8
  %incdec.ptr1609 = getelementptr inbounds i8, i8* %785, i32 1
  store i8* %incdec.ptr1609, i8** %runsrc, align 8
  %786 = load i8, i8* %785, align 1
  %787 = load i8*, i8** %rundest, align 8
  %incdec.ptr1610 = getelementptr inbounds i8, i8* %787, i32 1
  store i8* %incdec.ptr1610, i8** %rundest, align 8
  store i8 %786, i8* %787, align 1
  br label %while.cond.1604

while.end.1611:                                   ; preds = %while.cond.1604
  br label %if.end.1612

if.end.1612:                                      ; preds = %while.end.1611, %while.end.1600
  %788 = load i32, i32* %match_length, align 4
  %789 = load i32, i32* %window_posn, align 4
  %add1613 = add i32 %789, %788
  store i32 %add1613, i32* %window_posn, align 4
  br label %if.end.1614

if.end.1614:                                      ; preds = %if.end.1612, %do.end.496
  br label %while.cond.122

while.end.1615:                                   ; preds = %while.cond.122
  %790 = load i32, i32* %window_posn, align 4
  %idxprom1616 = zext i32 %790 to i64
  %791 = load i8*, i8** %window, align 8
  %arrayidx1617 = getelementptr inbounds i8, i8* %791, i64 %idxprom1616
  %792 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end1618 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %792, i32 0, i32 16
  store i8* %arrayidx1617, i8** %o_end1618, align 8
  %793 = load i32, i32* %window_posn, align 4
  %794 = load i32, i32* %frame_start, align 4
  %sub1619 = sub i32 %793, %794
  %cmp1620 = icmp uge i32 %sub1619, 32768
  br i1 %cmp1620, label %if.then.1622, label %if.end.1749

if.then.1622:                                     ; preds = %while.end.1615
  %795 = load i32, i32* %window_posn, align 4
  %796 = load i32, i32* %frame_start, align 4
  %sub1623 = sub i32 %795, %796
  %cmp1624 = icmp ne i32 %sub1623, 32768
  br i1 %cmp1624, label %if.then.1626, label %if.end.1628

if.then.1626:                                     ; preds = %if.then.1622
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0))
  %797 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1627 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %797, i32 0, i32 11
  store i32 -124, i32* %error1627, align 4
  store i32 -124, i32* %retval
  br label %return

if.end.1628:                                      ; preds = %if.then.1622
  %798 = load i8, i8* %bits_left, align 1
  %conv1629 = zext i8 %798 to i32
  %and1630 = and i32 %conv1629, 7
  %tobool1631 = icmp ne i32 %and1630, 0
  br i1 %tobool1631, label %if.then.1632, label %if.end.1641

if.then.1632:                                     ; preds = %if.end.1628
  %799 = load i8, i8* %bits_left, align 1
  %conv1633 = zext i8 %799 to i32
  %and1634 = and i32 %conv1633, 7
  %800 = load i32, i32* %bit_buffer, align 4
  %shl1635 = shl i32 %800, %and1634
  store i32 %shl1635, i32* %bit_buffer, align 4
  %801 = load i8, i8* %bits_left, align 1
  %conv1636 = zext i8 %801 to i32
  %and1637 = and i32 %conv1636, 7
  %802 = load i8, i8* %bits_left, align 1
  %conv1638 = zext i8 %802 to i32
  %sub1639 = sub nsw i32 %conv1638, %and1637
  %conv1640 = trunc i32 %sub1639 to i8
  store i8 %conv1640, i8* %bits_left, align 1
  br label %if.end.1641

if.end.1641:                                      ; preds = %if.then.1632, %if.end.1628
  br label %do.body.1642

do.body.1642:                                     ; preds = %do.cond.1715, %if.end.1641
  br label %do.body.1643

do.body.1643:                                     ; preds = %do.body.1642
  store i32 0, i32* %i, align 4
  store i8 8, i8* %bits_needed, align 1
  br label %for.cond.1644

for.cond.1644:                                    ; preds = %for.inc.1707, %do.body.1643
  %803 = load i8, i8* %bits_needed, align 1
  %conv1645 = zext i8 %803 to i32
  %cmp1646 = icmp sgt i32 %conv1645, 0
  br i1 %cmp1646, label %for.body.1648, label %for.end.1712

for.body.1648:                                    ; preds = %for.cond.1644
  br label %do.body.1649

do.body.1649:                                     ; preds = %for.body.1648
  %804 = load i8, i8* %bits_left, align 1
  %conv1650 = zext i8 %804 to i64
  %cmp1651 = icmp ule i64 %conv1650, 16
  br i1 %cmp1651, label %if.then.1653, label %if.end.1680

if.then.1653:                                     ; preds = %do.body.1649
  %805 = load i8*, i8** %i_ptr, align 8
  %806 = load i8*, i8** %i_end, align 8
  %cmp1654 = icmp uge i8* %805, %806
  br i1 %cmp1654, label %if.then.1656, label %if.end.1664

if.then.1656:                                     ; preds = %if.then.1653
  %807 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %call1657 = call i32 @qtm_read_input(%struct.qtm_stream* %807)
  %tobool1658 = icmp ne i32 %call1657, 0
  br i1 %tobool1658, label %if.then.1659, label %if.end.1661

if.then.1659:                                     ; preds = %if.then.1656
  %808 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1660 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %808, i32 0, i32 11
  %809 = load i32, i32* %error1660, align 4
  store i32 %809, i32* %retval
  br label %return

if.end.1661:                                      ; preds = %if.then.1656
  %810 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1662 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %810, i32 0, i32 13
  %811 = load i8*, i8** %i_ptr1662, align 8
  store i8* %811, i8** %i_ptr, align 8
  %812 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1663 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %812, i32 0, i32 14
  %813 = load i8*, i8** %i_end1663, align 8
  store i8* %813, i8** %i_end, align 8
  br label %if.end.1664

if.end.1664:                                      ; preds = %if.end.1661, %if.then.1653
  %814 = load i8*, i8** %i_ptr, align 8
  %arrayidx1665 = getelementptr inbounds i8, i8* %814, i64 0
  %815 = load i8, i8* %arrayidx1665, align 1
  %conv1666 = zext i8 %815 to i32
  %shl1667 = shl i32 %conv1666, 8
  %816 = load i8*, i8** %i_ptr, align 8
  %arrayidx1668 = getelementptr inbounds i8, i8* %816, i64 1
  %817 = load i8, i8* %arrayidx1668, align 1
  %conv1669 = zext i8 %817 to i32
  %or1670 = or i32 %shl1667, %conv1669
  %818 = load i8, i8* %bits_left, align 1
  %conv1671 = zext i8 %818 to i64
  %sub1672 = sub i64 16, %conv1671
  %sh_prom1673 = trunc i64 %sub1672 to i32
  %shl1674 = shl i32 %or1670, %sh_prom1673
  %819 = load i32, i32* %bit_buffer, align 4
  %or1675 = or i32 %819, %shl1674
  store i32 %or1675, i32* %bit_buffer, align 4
  %820 = load i8, i8* %bits_left, align 1
  %conv1676 = zext i8 %820 to i32
  %add1677 = add nsw i32 %conv1676, 16
  %conv1678 = trunc i32 %add1677 to i8
  store i8 %conv1678, i8* %bits_left, align 1
  %821 = load i8*, i8** %i_ptr, align 8
  %add.ptr1679 = getelementptr inbounds i8, i8* %821, i64 2
  store i8* %add.ptr1679, i8** %i_ptr, align 8
  br label %if.end.1680

if.end.1680:                                      ; preds = %if.end.1664, %do.body.1649
  br label %do.end.1682

do.end.1682:                                      ; preds = %if.end.1680
  %822 = load i8, i8* %bits_left, align 1
  %conv1683 = zext i8 %822 to i32
  %823 = load i8, i8* %bits_needed, align 1
  %conv1684 = zext i8 %823 to i32
  %cmp1685 = icmp slt i32 %conv1683, %conv1684
  br i1 %cmp1685, label %cond.true.1687, label %cond.false.1689

cond.true.1687:                                   ; preds = %do.end.1682
  %824 = load i8, i8* %bits_left, align 1
  %conv1688 = zext i8 %824 to i32
  br label %cond.end.1691

cond.false.1689:                                  ; preds = %do.end.1682
  %825 = load i8, i8* %bits_needed, align 1
  %conv1690 = zext i8 %825 to i32
  br label %cond.end.1691

cond.end.1691:                                    ; preds = %cond.false.1689, %cond.true.1687
  %cond1692 = phi i32 [ %conv1688, %cond.true.1687 ], [ %conv1690, %cond.false.1689 ]
  %conv1693 = trunc i32 %cond1692 to i8
  store i8 %conv1693, i8* %bit_run, align 1
  %826 = load i32, i32* %i, align 4
  %827 = load i8, i8* %bit_run, align 1
  %conv1694 = zext i8 %827 to i32
  %shl1695 = shl i32 %826, %conv1694
  %828 = load i32, i32* %bit_buffer, align 4
  %829 = load i8, i8* %bit_run, align 1
  %conv1696 = zext i8 %829 to i64
  %sub1697 = sub i64 32, %conv1696
  %sh_prom1698 = trunc i64 %sub1697 to i32
  %shr1699 = lshr i32 %828, %sh_prom1698
  %or1700 = or i32 %shl1695, %shr1699
  store i32 %or1700, i32* %i, align 4
  %830 = load i8, i8* %bit_run, align 1
  %conv1701 = zext i8 %830 to i32
  %831 = load i32, i32* %bit_buffer, align 4
  %shl1702 = shl i32 %831, %conv1701
  store i32 %shl1702, i32* %bit_buffer, align 4
  %832 = load i8, i8* %bit_run, align 1
  %conv1703 = zext i8 %832 to i32
  %833 = load i8, i8* %bits_left, align 1
  %conv1704 = zext i8 %833 to i32
  %sub1705 = sub nsw i32 %conv1704, %conv1703
  %conv1706 = trunc i32 %sub1705 to i8
  store i8 %conv1706, i8* %bits_left, align 1
  br label %for.inc.1707

for.inc.1707:                                     ; preds = %cond.end.1691
  %834 = load i8, i8* %bit_run, align 1
  %conv1708 = zext i8 %834 to i32
  %835 = load i8, i8* %bits_needed, align 1
  %conv1709 = zext i8 %835 to i32
  %sub1710 = sub nsw i32 %conv1709, %conv1708
  %conv1711 = trunc i32 %sub1710 to i8
  store i8 %conv1711, i8* %bits_needed, align 1
  br label %for.cond.1644

for.end.1712:                                     ; preds = %for.cond.1644
  br label %do.end.1714

do.end.1714:                                      ; preds = %for.end.1712
  br label %do.cond.1715

do.cond.1715:                                     ; preds = %do.end.1714
  %836 = load i32, i32* %i, align 4
  %cmp1716 = icmp ne i32 %836, 255
  br i1 %cmp1716, label %do.body.1642, label %do.end.1718

do.end.1718:                                      ; preds = %do.cond.1715
  %837 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %header_read1719 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %837, i32 0, i32 10
  store i8 0, i8* %header_read1719, align 1
  %838 = load i32, i32* %window_posn, align 4
  %839 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window_size1720 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %839, i32 0, i32 4
  %840 = load i32, i32* %window_size1720, align 4
  %cmp1721 = icmp eq i32 %838, %840
  br i1 %cmp1721, label %if.then.1723, label %if.end.1748

if.then.1723:                                     ; preds = %do.end.1718
  %841 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end1724 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %841, i32 0, i32 16
  %842 = load i8*, i8** %o_end1724, align 8
  %843 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr1725 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %843, i32 0, i32 15
  %844 = load i8*, i8** %o_ptr1725, align 8
  %sub.ptr.lhs.cast1726 = ptrtoint i8* %842 to i64
  %sub.ptr.rhs.cast1727 = ptrtoint i8* %844 to i64
  %sub.ptr.sub1728 = sub i64 %sub.ptr.lhs.cast1726, %sub.ptr.rhs.cast1727
  %conv1729 = trunc i64 %sub.ptr.sub1728 to i32
  store i32 %conv1729, i32* %i, align 4
  %845 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %wflag1730 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %845, i32 0, i32 2
  %846 = load i8, i8* %wflag1730, align 1
  %conv1731 = zext i8 %846 to i32
  %tobool1732 = icmp ne i32 %conv1731, 0
  br i1 %tobool1732, label %land.lhs.true.1733, label %if.end.1741

land.lhs.true.1733:                               ; preds = %if.then.1723
  %847 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %ofd1734 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %847, i32 0, i32 1
  %848 = load i32, i32* %ofd1734, align 4
  %849 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr1735 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %849, i32 0, i32 15
  %850 = load i8*, i8** %o_ptr1735, align 8
  %851 = load i32, i32* %i, align 4
  %call1736 = call i32 @cli_writen(i32 %848, i8* %850, i32 %851)
  %852 = load i32, i32* %i, align 4
  %cmp1737 = icmp ne i32 %call1736, %852
  br i1 %cmp1737, label %if.then.1739, label %if.end.1741

if.then.1739:                                     ; preds = %land.lhs.true.1733
  %853 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1740 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %853, i32 0, i32 11
  store i32 -123, i32* %error1740, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.1741:                                      ; preds = %land.lhs.true.1733, %if.then.1723
  %854 = load i32, i32* %i, align 4
  %conv1742 = sext i32 %854 to i64
  %855 = load i64, i64* %out_bytes.addr, align 8
  %sub1743 = sub nsw i64 %855, %conv1742
  store i64 %sub1743, i64* %out_bytes.addr, align 8
  %856 = load i8*, i8** %window, align 8
  %arrayidx1744 = getelementptr inbounds i8, i8* %856, i64 0
  %857 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr1745 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %857, i32 0, i32 15
  store i8* %arrayidx1744, i8** %o_ptr1745, align 8
  %858 = load i8*, i8** %window, align 8
  %arrayidx1746 = getelementptr inbounds i8, i8* %858, i64 0
  %859 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_end1747 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %859, i32 0, i32 16
  store i8* %arrayidx1746, i8** %o_end1747, align 8
  store i32 0, i32* %window_posn, align 4
  br label %if.end.1748

if.end.1748:                                      ; preds = %if.end.1741, %do.end.1718
  %860 = load i32, i32* %window_posn, align 4
  store i32 %860, i32* %frame_start, align 4
  br label %if.end.1749

if.end.1749:                                      ; preds = %if.end.1748, %while.end.1615
  br label %while.cond

while.end.1750:                                   ; preds = %while.cond
  %861 = load i64, i64* %out_bytes.addr, align 8
  %tobool1751 = icmp ne i64 %861, 0
  br i1 %tobool1751, label %if.then.1752, label %if.end.1769

if.then.1752:                                     ; preds = %while.end.1750
  %862 = load i64, i64* %out_bytes.addr, align 8
  %conv1753 = trunc i64 %862 to i32
  store i32 %conv1753, i32* %i, align 4
  %863 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %wflag1754 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %863, i32 0, i32 2
  %864 = load i8, i8* %wflag1754, align 1
  %conv1755 = zext i8 %864 to i32
  %tobool1756 = icmp ne i32 %conv1755, 0
  br i1 %tobool1756, label %land.lhs.true.1757, label %if.end.1765

land.lhs.true.1757:                               ; preds = %if.then.1752
  %865 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %ofd1758 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %865, i32 0, i32 1
  %866 = load i32, i32* %ofd1758, align 4
  %867 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr1759 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %867, i32 0, i32 15
  %868 = load i8*, i8** %o_ptr1759, align 8
  %869 = load i32, i32* %i, align 4
  %call1760 = call i32 @cli_writen(i32 %866, i8* %868, i32 %869)
  %870 = load i32, i32* %i, align 4
  %cmp1761 = icmp ne i32 %call1760, %870
  br i1 %cmp1761, label %if.then.1763, label %if.end.1765

if.then.1763:                                     ; preds = %land.lhs.true.1757
  %871 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error1764 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %871, i32 0, i32 11
  store i32 -123, i32* %error1764, align 4
  store i32 -123, i32* %retval
  br label %return

if.end.1765:                                      ; preds = %land.lhs.true.1757, %if.then.1752
  %872 = load i32, i32* %i, align 4
  %873 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %o_ptr1766 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %873, i32 0, i32 15
  %874 = load i8*, i8** %o_ptr1766, align 8
  %idx.ext1767 = sext i32 %872 to i64
  %add.ptr1768 = getelementptr inbounds i8, i8* %874, i64 %idx.ext1767
  store i8* %add.ptr1768, i8** %o_ptr1766, align 8
  br label %if.end.1769

if.end.1769:                                      ; preds = %if.end.1765, %while.end.1750
  br label %do.body.1770

do.body.1770:                                     ; preds = %if.end.1769
  %875 = load i8*, i8** %i_ptr, align 8
  %876 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr1771 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %876, i32 0, i32 13
  store i8* %875, i8** %i_ptr1771, align 8
  %877 = load i8*, i8** %i_end, align 8
  %878 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end1772 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %878, i32 0, i32 14
  store i8* %877, i8** %i_end1772, align 8
  %879 = load i32, i32* %bit_buffer, align 4
  %880 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %bit_buffer1773 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %880, i32 0, i32 17
  store i32 %879, i32* %bit_buffer1773, align 4
  %881 = load i8, i8* %bits_left, align 1
  %882 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %bits_left1774 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %882, i32 0, i32 19
  store i8 %881, i8* %bits_left1774, align 1
  br label %do.end.1776

do.end.1776:                                      ; preds = %do.body.1770
  %883 = load i32, i32* %window_posn, align 4
  %884 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window_posn1777 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %884, i32 0, i32 5
  store i32 %883, i32* %window_posn1777, align 4
  %885 = load i32, i32* %frame_start, align 4
  %886 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %frame_start1778 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %886, i32 0, i32 6
  store i32 %885, i32* %frame_start1778, align 4
  %887 = load i16, i16* %H, align 2
  %888 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %H1779 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %888, i32 0, i32 7
  store i16 %887, i16* %H1779, align 2
  %889 = load i16, i16* %L, align 2
  %890 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %L1780 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %890, i32 0, i32 8
  store i16 %889, i16* %L1780, align 2
  %891 = load i16, i16* %C, align 2
  %892 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %C1781 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %892, i32 0, i32 9
  store i16 %891, i16* %C1781, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.1776, %if.then.1763, %if.then.1739, %if.then.1659, %if.then.1626, %if.then.1574, %sw.default, %if.then.1504, %if.then.1449, %if.then.1238, %if.then.1184, %if.then.972, %if.then.917, %if.then.706, %if.then.652, %if.then.461, %if.then.264, %if.then.61, %if.then.26, %if.then.18, %if.then.2, %if.then
  %893 = load i32, i32* %retval
  ret i32 %893
}

; Function Attrs: nounwind uwtable
define internal i32 @qtm_read_input(%struct.qtm_stream* %qtm) #0 {
entry:
  %retval = alloca i32, align 4
  %qtm.addr = alloca %struct.qtm_stream*, align 8
  %read = alloca i32, align 4
  store %struct.qtm_stream* %qtm, %struct.qtm_stream** %qtm.addr, align 8
  %0 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %read1 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %0, i32 0, i32 43
  %1 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read1, align 8
  %tobool = icmp ne i32 (%struct.cab_file*, i8*, i32)* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %read2 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %2, i32 0, i32 43
  %3 = load i32 (%struct.cab_file*, i8*, i32)*, i32 (%struct.cab_file*, i8*, i32)** %read2, align 8
  %4 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %file = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %4, i32 0, i32 42
  %5 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %6 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %6, i32 0, i32 12
  %7 = load i8*, i8** %inbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf_size = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %8, i32 0, i32 18
  %9 = load i32, i32* %inbuf_size, align 4
  %call = call i32 %3(%struct.cab_file* %5, i8* %arrayidx, i32 %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %fd = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %10, i32 0, i32 0
  %11 = load i32, i32* %fd, align 4
  %12 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf3 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %12, i32 0, i32 12
  %13 = load i8*, i8** %inbuf3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf_size5 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %14, i32 0, i32 18
  %15 = load i32, i32* %inbuf_size5, align 4
  %call6 = call i32 @cli_readn(i32 %11, i8* %arrayidx4, i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call6, %cond.false ]
  store i32 %cond, i32* %read, align 4
  %16 = load i32, i32* %read, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %17 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %error = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %17, i32 0, i32 11
  store i32 -123, i32* %error, align 4
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %18 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf7 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %18, i32 0, i32 12
  %19 = load i8*, i8** %inbuf7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_ptr = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %20, i32 0, i32 13
  store i8* %arrayidx8, i8** %i_ptr, align 8
  %21 = load i32, i32* %read, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf9 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %22, i32 0, i32 12
  %23 = load i8*, i8** %inbuf9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %i_end = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %24, i32 0, i32 14
  store i8* %arrayidx10, i8** %i_end, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @qtm_update_model(%struct.qtm_model* %model) #0 {
entry:
  %model.addr = alloca %struct.qtm_model*, align 8
  %tmp = alloca %struct.qtm_modelsym, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.qtm_model* %model, %struct.qtm_model** %model.addr, align 8
  %0 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %shiftsleft = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %0, i32 0, i32 0
  %1 = load i32, i32* %shiftsleft, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %shiftsleft, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %2, i32 0, i32 1
  %3 = load i32, i32* %entries, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %6, i32 0, i32 2
  %7 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms, align 8
  %arrayidx = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %7, i64 %idxprom
  %cumfreq = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx, i32 0, i32 1
  %8 = load i16, i16* %cumfreq, align 2
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 1
  %conv3 = trunc i32 %shr to i16
  store i16 %conv3, i16* %cumfreq, align 2
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms5 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %10, i32 0, i32 2
  %11 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms5, align 8
  %arrayidx6 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %11, i64 %idxprom4
  %cumfreq7 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx6, i32 0, i32 1
  %12 = load i16, i16* %cumfreq7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %idxprom9 = sext i32 %add to i64
  %14 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms10 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %14, i32 0, i32 2
  %15 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms10, align 8
  %arrayidx11 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %15, i64 %idxprom9
  %cumfreq12 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx11, i32 0, i32 1
  %16 = load i16, i16* %cumfreq12, align 2
  %conv13 = zext i16 %16 to i32
  %cmp14 = icmp sle i32 %conv8, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %17, 1
  %idxprom18 = sext i32 %add17 to i64
  %18 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms19 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %18, i32 0, i32 2
  %19 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms19, align 8
  %arrayidx20 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %19, i64 %idxprom18
  %cumfreq21 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx20, i32 0, i32 1
  %20 = load i16, i16* %cumfreq21, align 2
  %conv22 = zext i16 %20 to i32
  %add23 = add nsw i32 %conv22, 1
  %conv24 = trunc i32 %add23 to i16
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms26 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %22, i32 0, i32 2
  %23 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms26, align 8
  %arrayidx27 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %23, i64 %idxprom25
  %cumfreq28 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx27, i32 0, i32 1
  store i16 %conv24, i16* %cumfreq28, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %dec29 = add nsw i32 %24, -1
  store i32 %dec29, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.129

if.else:                                          ; preds = %entry
  %25 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %shiftsleft30 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %25, i32 0, i32 0
  store i32 50, i32* %shiftsleft30, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.60, %if.else
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries32 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %27, i32 0, i32 1
  %28 = load i32, i32* %entries32, align 4
  %cmp33 = icmp slt i32 %26, %28
  br i1 %cmp33, label %for.body.35, label %for.end.62

for.body.35:                                      ; preds = %for.cond.31
  %29 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %29, 1
  %idxprom37 = sext i32 %add36 to i64
  %30 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms38 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %30, i32 0, i32 2
  %31 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms38, align 8
  %arrayidx39 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %31, i64 %idxprom37
  %cumfreq40 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx39, i32 0, i32 1
  %32 = load i16, i16* %cumfreq40, align 2
  %conv41 = zext i16 %32 to i32
  %33 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %33 to i64
  %34 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms43 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %34, i32 0, i32 2
  %35 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms43, align 8
  %arrayidx44 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %35, i64 %idxprom42
  %cumfreq45 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx44, i32 0, i32 1
  %36 = load i16, i16* %cumfreq45, align 2
  %conv46 = zext i16 %36 to i32
  %sub47 = sub nsw i32 %conv46, %conv41
  %conv48 = trunc i32 %sub47 to i16
  store i16 %conv48, i16* %cumfreq45, align 2
  %37 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %38 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms50 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %38, i32 0, i32 2
  %39 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms50, align 8
  %arrayidx51 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %39, i64 %idxprom49
  %cumfreq52 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx51, i32 0, i32 1
  %40 = load i16, i16* %cumfreq52, align 2
  %inc = add i16 %40, 1
  store i16 %inc, i16* %cumfreq52, align 2
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms54 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %42, i32 0, i32 2
  %43 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms54, align 8
  %arrayidx55 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %43, i64 %idxprom53
  %cumfreq56 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx55, i32 0, i32 1
  %44 = load i16, i16* %cumfreq56, align 2
  %conv57 = zext i16 %44 to i32
  %shr58 = ashr i32 %conv57, 1
  %conv59 = trunc i32 %shr58 to i16
  store i16 %conv59, i16* %cumfreq56, align 2
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.35
  %45 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.31

for.end.62:                                       ; preds = %for.cond.31
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.104, %for.end.62
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries64 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %47, i32 0, i32 1
  %48 = load i32, i32* %entries64, align 4
  %sub65 = sub nsw i32 %48, 1
  %cmp66 = icmp slt i32 %46, %sub65
  br i1 %cmp66, label %for.body.68, label %for.end.106

for.body.68:                                      ; preds = %for.cond.63
  %49 = load i32, i32* %i, align 4
  %add69 = add nsw i32 %49, 1
  store i32 %add69, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.101, %for.body.68
  %50 = load i32, i32* %j, align 4
  %51 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries71 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %51, i32 0, i32 1
  %52 = load i32, i32* %entries71, align 4
  %cmp72 = icmp slt i32 %50, %52
  br i1 %cmp72, label %for.body.74, label %for.end.103

for.body.74:                                      ; preds = %for.cond.70
  %53 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %53 to i64
  %54 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms76 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %54, i32 0, i32 2
  %55 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms76, align 8
  %arrayidx77 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %55, i64 %idxprom75
  %cumfreq78 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx77, i32 0, i32 1
  %56 = load i16, i16* %cumfreq78, align 2
  %conv79 = zext i16 %56 to i32
  %57 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %57 to i64
  %58 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms81 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %58, i32 0, i32 2
  %59 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms81, align 8
  %arrayidx82 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %59, i64 %idxprom80
  %cumfreq83 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx82, i32 0, i32 1
  %60 = load i16, i16* %cumfreq83, align 2
  %conv84 = zext i16 %60 to i32
  %cmp85 = icmp slt i32 %conv79, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %for.body.74
  %61 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %61 to i64
  %62 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms89 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %62, i32 0, i32 2
  %63 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms89, align 8
  %arrayidx90 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %63, i64 %idxprom88
  %64 = bitcast %struct.qtm_modelsym* %tmp to i8*
  %65 = bitcast %struct.qtm_modelsym* %arrayidx90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 4, i32 2, i1 false)
  %66 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %66 to i64
  %67 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms92 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %67, i32 0, i32 2
  %68 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms92, align 8
  %arrayidx93 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %68, i64 %idxprom91
  %69 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms95 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %70, i32 0, i32 2
  %71 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms95, align 8
  %arrayidx96 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %71, i64 %idxprom94
  %72 = bitcast %struct.qtm_modelsym* %arrayidx93 to i8*
  %73 = bitcast %struct.qtm_modelsym* %arrayidx96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 4, i32 2, i1 false)
  %74 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %74 to i64
  %75 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms98 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %75, i32 0, i32 2
  %76 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms98, align 8
  %arrayidx99 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %76, i64 %idxprom97
  %77 = bitcast %struct.qtm_modelsym* %arrayidx99 to i8*
  %78 = bitcast %struct.qtm_modelsym* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 4, i32 2, i1 false)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.87, %for.body.74
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %79 = load i32, i32* %j, align 4
  %inc102 = add nsw i32 %79, 1
  store i32 %inc102, i32* %j, align 4
  br label %for.cond.70

for.end.103:                                      ; preds = %for.cond.70
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.103
  %80 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %80, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.63

for.end.106:                                      ; preds = %for.cond.63
  %81 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %entries107 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %81, i32 0, i32 1
  %82 = load i32, i32* %entries107, align 4
  %sub108 = sub nsw i32 %82, 1
  store i32 %sub108, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.126, %for.end.106
  %83 = load i32, i32* %i, align 4
  %cmp110 = icmp sge i32 %83, 0
  br i1 %cmp110, label %for.body.112, label %for.end.128

for.body.112:                                     ; preds = %for.cond.109
  %84 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %84, 1
  %idxprom114 = sext i32 %add113 to i64
  %85 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms115 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %85, i32 0, i32 2
  %86 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms115, align 8
  %arrayidx116 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %86, i64 %idxprom114
  %cumfreq117 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx116, i32 0, i32 1
  %87 = load i16, i16* %cumfreq117, align 2
  %conv118 = zext i16 %87 to i32
  %88 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %88 to i64
  %89 = load %struct.qtm_model*, %struct.qtm_model** %model.addr, align 8
  %syms120 = getelementptr inbounds %struct.qtm_model, %struct.qtm_model* %89, i32 0, i32 2
  %90 = load %struct.qtm_modelsym*, %struct.qtm_modelsym** %syms120, align 8
  %arrayidx121 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %90, i64 %idxprom119
  %cumfreq122 = getelementptr inbounds %struct.qtm_modelsym, %struct.qtm_modelsym* %arrayidx121, i32 0, i32 1
  %91 = load i16, i16* %cumfreq122, align 2
  %conv123 = zext i16 %91 to i32
  %add124 = add nsw i32 %conv123, %conv118
  %conv125 = trunc i32 %add124 to i16
  store i16 %conv125, i16* %cumfreq122, align 2
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.112
  %92 = load i32, i32* %i, align 4
  %dec127 = add nsw i32 %92, -1
  store i32 %dec127, i32* %i, align 4
  br label %for.cond.109

for.end.128:                                      ; preds = %for.cond.109
  br label %if.end.129

if.end.129:                                       ; preds = %for.end.128, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @qtm_free(%struct.qtm_stream* %qtm) #0 {
entry:
  %qtm.addr = alloca %struct.qtm_stream*, align 8
  store %struct.qtm_stream* %qtm, %struct.qtm_stream** %qtm.addr, align 8
  %0 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %tobool = icmp ne %struct.qtm_stream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %window = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %1, i32 0, i32 3
  %2 = load i8*, i8** %window, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %inbuf = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %3, i32 0, i32 12
  %4 = load i8*, i8** %inbuf, align 8
  call void @free(i8* %4) #3
  %5 = load %struct.qtm_stream*, %struct.qtm_stream** %qtm.addr, align 8
  %6 = bitcast %struct.qtm_stream* %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @mszip_read_lens(%struct.mszip_stream* %zip) #0 {
entry:
  %retval = alloca i32, align 4
  %zip.addr = alloca %struct.mszip_stream*, align 8
  %bit_buffer = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %i_ptr = alloca i8*, align 8
  %i_end = alloca i8*, align 8
  %bl_table = alloca [128 x i16], align 16
  %bl_len = alloca [19 x i8], align 16
  %lens = alloca [320 x i8], align 16
  %lit_codes = alloca i32, align 4
  %dist_codes = alloca i32, align 4
  %code = alloca i32, align 4
  %last_code = alloca i32, align 4
  %bitlen_codes = alloca i32, align 4
  %i = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct.mszip_stream* %zip, %struct.mszip_stream** %zip.addr, align 8
  store i32 0, i32* %last_code, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr1 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %0, i32 0, i32 10
  %1 = load i8*, i8** %i_ptr1, align 8
  store i8* %1, i8** %i_ptr, align 8
  %2 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end2 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %2, i32 0, i32 11
  %3 = load i8*, i8** %i_end2, align 8
  store i8* %3, i8** %i_end, align 8
  %4 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer3 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %4, i32 0, i32 14
  %5 = load i32, i32* %bit_buffer3, align 4
  store i32 %5, i32* %bit_buffer, align 4
  %6 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left4 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %6, i32 0, i32 15
  %7 = load i32, i32* %bits_left4, align 4
  store i32 %7, i32* %bits_left, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %do.body.6
  %8 = load i32, i32* %bits_left, align 4
  %cmp = icmp slt i32 %8, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %i_ptr, align 8
  %10 = load i8*, i8** %i_end, align 8
  %cmp7 = icmp uge i8* %9, %10
  br i1 %cmp7, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %11 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call = call i32 @mszip_read_input(%struct.mszip_stream* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %12, i32 0, i32 5
  %13 = load i32, i32* %error, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr9 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %14, i32 0, i32 10
  %15 = load i8*, i8** %i_ptr9, align 8
  store i8* %15, i8** %i_ptr, align 8
  %16 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end10 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %16, i32 0, i32 11
  %17 = load i8*, i8** %i_end10, align 8
  store i8* %17, i8** %i_end, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  %18 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %i_ptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* %bits_left, align 4
  %shl = shl i32 %conv, %20
  %21 = load i32, i32* %bit_buffer, align 4
  %or = or i32 %21, %shl
  store i32 %or, i32* %bit_buffer, align 4
  %22 = load i32, i32* %bits_left, align 4
  %add = add nsw i32 %22, 8
  store i32 %add, i32* %bits_left, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end.12

do.end.12:                                        ; preds = %while.end
  %23 = load i32, i32* %bit_buffer, align 4
  %and = and i32 %23, 31
  store i32 %and, i32* %lit_codes, align 4
  %24 = load i32, i32* %bit_buffer, align 4
  %shr = lshr i32 %24, 5
  store i32 %shr, i32* %bit_buffer, align 4
  %25 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %25, 5
  store i32 %sub, i32* %bits_left, align 4
  br label %do.end.13

do.end.13:                                        ; preds = %do.end.12
  %26 = load i32, i32* %lit_codes, align 4
  %add14 = add i32 %26, 257
  store i32 %add14, i32* %lit_codes, align 4
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.13
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.31, %do.body.16
  %27 = load i32, i32* %bits_left, align 4
  %cmp18 = icmp slt i32 %27, 5
  br i1 %cmp18, label %while.body.20, label %while.end.37

while.body.20:                                    ; preds = %while.cond.17
  %28 = load i8*, i8** %i_ptr, align 8
  %29 = load i8*, i8** %i_end, align 8
  %cmp21 = icmp uge i8* %28, %29
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %while.body.20
  %30 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call24 = call i32 @mszip_read_input(%struct.mszip_stream* %30)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %31 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error27 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %31, i32 0, i32 5
  %32 = load i32, i32* %error27, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.23
  %33 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr29 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %33, i32 0, i32 10
  %34 = load i8*, i8** %i_ptr29, align 8
  store i8* %34, i8** %i_ptr, align 8
  %35 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end30 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %35, i32 0, i32 11
  %36 = load i8*, i8** %i_end30, align 8
  store i8* %36, i8** %i_end, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %while.body.20
  %37 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr32, i8** %i_ptr, align 8
  %38 = load i8, i8* %37, align 1
  %conv33 = zext i8 %38 to i32
  %39 = load i32, i32* %bits_left, align 4
  %shl34 = shl i32 %conv33, %39
  %40 = load i32, i32* %bit_buffer, align 4
  %or35 = or i32 %40, %shl34
  store i32 %or35, i32* %bit_buffer, align 4
  %41 = load i32, i32* %bits_left, align 4
  %add36 = add nsw i32 %41, 8
  store i32 %add36, i32* %bits_left, align 4
  br label %while.cond.17

while.end.37:                                     ; preds = %while.cond.17
  br label %do.end.38

do.end.38:                                        ; preds = %while.end.37
  %42 = load i32, i32* %bit_buffer, align 4
  %and39 = and i32 %42, 31
  store i32 %and39, i32* %dist_codes, align 4
  %43 = load i32, i32* %bit_buffer, align 4
  %shr40 = lshr i32 %43, 5
  store i32 %shr40, i32* %bit_buffer, align 4
  %44 = load i32, i32* %bits_left, align 4
  %sub41 = sub nsw i32 %44, 5
  store i32 %sub41, i32* %bits_left, align 4
  br label %do.end.42

do.end.42:                                        ; preds = %do.end.38
  %45 = load i32, i32* %dist_codes, align 4
  %add43 = add i32 %45, 1
  store i32 %add43, i32* %dist_codes, align 4
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.42
  br label %do.body.45

do.body.45:                                       ; preds = %do.body.44
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.60, %do.body.45
  %46 = load i32, i32* %bits_left, align 4
  %cmp47 = icmp slt i32 %46, 4
  br i1 %cmp47, label %while.body.49, label %while.end.66

while.body.49:                                    ; preds = %while.cond.46
  %47 = load i8*, i8** %i_ptr, align 8
  %48 = load i8*, i8** %i_end, align 8
  %cmp50 = icmp uge i8* %47, %48
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %while.body.49
  %49 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call53 = call i32 @mszip_read_input(%struct.mszip_stream* %49)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.52
  %50 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error56 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %50, i32 0, i32 5
  %51 = load i32, i32* %error56, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.52
  %52 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr58 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %52, i32 0, i32 10
  %53 = load i8*, i8** %i_ptr58, align 8
  store i8* %53, i8** %i_ptr, align 8
  %54 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end59 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %54, i32 0, i32 11
  %55 = load i8*, i8** %i_end59, align 8
  store i8* %55, i8** %i_end, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.57, %while.body.49
  %56 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr61, i8** %i_ptr, align 8
  %57 = load i8, i8* %56, align 1
  %conv62 = zext i8 %57 to i32
  %58 = load i32, i32* %bits_left, align 4
  %shl63 = shl i32 %conv62, %58
  %59 = load i32, i32* %bit_buffer, align 4
  %or64 = or i32 %59, %shl63
  store i32 %or64, i32* %bit_buffer, align 4
  %60 = load i32, i32* %bits_left, align 4
  %add65 = add nsw i32 %60, 8
  store i32 %add65, i32* %bits_left, align 4
  br label %while.cond.46

while.end.66:                                     ; preds = %while.cond.46
  br label %do.end.67

do.end.67:                                        ; preds = %while.end.66
  %61 = load i32, i32* %bit_buffer, align 4
  %and68 = and i32 %61, 15
  store i32 %and68, i32* %bitlen_codes, align 4
  %62 = load i32, i32* %bit_buffer, align 4
  %shr69 = lshr i32 %62, 4
  store i32 %shr69, i32* %bit_buffer, align 4
  %63 = load i32, i32* %bits_left, align 4
  %sub70 = sub nsw i32 %63, 4
  store i32 %sub70, i32* %bits_left, align 4
  br label %do.end.71

do.end.71:                                        ; preds = %do.end.67
  %64 = load i32, i32* %bitlen_codes, align 4
  %add72 = add i32 %64, 4
  store i32 %add72, i32* %bitlen_codes, align 4
  %65 = load i32, i32* %lit_codes, align 4
  %cmp73 = icmp ugt i32 %65, 288
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.end.71
  store i32 -5, i32* %retval
  br label %return

if.end.76:                                        ; preds = %do.end.71
  %66 = load i32, i32* %dist_codes, align 4
  %cmp77 = icmp ugt i32 %66, 32
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  store i32 -5, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.76
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.80
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %bitlen_codes, align 4
  %cmp81 = icmp ult i32 %67, %68
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.83

do.body.83:                                       ; preds = %for.body
  br label %do.body.84

do.body.84:                                       ; preds = %do.body.83
  br label %while.cond.85

while.cond.85:                                    ; preds = %if.end.99, %do.body.84
  %69 = load i32, i32* %bits_left, align 4
  %cmp86 = icmp slt i32 %69, 3
  br i1 %cmp86, label %while.body.88, label %while.end.105

while.body.88:                                    ; preds = %while.cond.85
  %70 = load i8*, i8** %i_ptr, align 8
  %71 = load i8*, i8** %i_end, align 8
  %cmp89 = icmp uge i8* %70, %71
  br i1 %cmp89, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %while.body.88
  %72 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call92 = call i32 @mszip_read_input(%struct.mszip_stream* %72)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.then.91
  %73 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error95 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %73, i32 0, i32 5
  %74 = load i32, i32* %error95, align 4
  store i32 %74, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.then.91
  %75 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr97 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %75, i32 0, i32 10
  %76 = load i8*, i8** %i_ptr97, align 8
  store i8* %76, i8** %i_ptr, align 8
  %77 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end98 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %77, i32 0, i32 11
  %78 = load i8*, i8** %i_end98, align 8
  store i8* %78, i8** %i_end, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %while.body.88
  %79 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr100, i8** %i_ptr, align 8
  %80 = load i8, i8* %79, align 1
  %conv101 = zext i8 %80 to i32
  %81 = load i32, i32* %bits_left, align 4
  %shl102 = shl i32 %conv101, %81
  %82 = load i32, i32* %bit_buffer, align 4
  %or103 = or i32 %82, %shl102
  store i32 %or103, i32* %bit_buffer, align 4
  %83 = load i32, i32* %bits_left, align 4
  %add104 = add nsw i32 %83, 8
  store i32 %add104, i32* %bits_left, align 4
  br label %while.cond.85

while.end.105:                                    ; preds = %while.cond.85
  br label %do.end.106

do.end.106:                                       ; preds = %while.end.105
  %84 = load i32, i32* %bit_buffer, align 4
  %and107 = and i32 %84, 7
  %conv108 = trunc i32 %and107 to i8
  %85 = load i32, i32* %i, align 4
  %idxprom = zext i32 %85 to i64
  %arrayidx = getelementptr inbounds [19 x i8], [19 x i8]* @mszip_bitlen_order, i32 0, i64 %idxprom
  %86 = load i8, i8* %arrayidx, align 1
  %idxprom109 = zext i8 %86 to i64
  %arrayidx110 = getelementptr inbounds [19 x i8], [19 x i8]* %bl_len, i32 0, i64 %idxprom109
  store i8 %conv108, i8* %arrayidx110, align 1
  %87 = load i32, i32* %bit_buffer, align 4
  %shr111 = lshr i32 %87, 3
  store i32 %shr111, i32* %bit_buffer, align 4
  %88 = load i32, i32* %bits_left, align 4
  %sub112 = sub nsw i32 %88, 3
  store i32 %sub112, i32* %bits_left, align 4
  br label %do.end.113

do.end.113:                                       ; preds = %do.end.106
  br label %for.inc

for.inc:                                          ; preds = %do.end.113
  %89 = load i32, i32* %i, align 4
  %inc = add i32 %89, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.114

while.cond.114:                                   ; preds = %while.body.117, %for.end
  %90 = load i32, i32* %i, align 4
  %cmp115 = icmp ult i32 %90, 19
  br i1 %cmp115, label %while.body.117, label %while.end.123

while.body.117:                                   ; preds = %while.cond.114
  %91 = load i32, i32* %i, align 4
  %inc118 = add i32 %91, 1
  store i32 %inc118, i32* %i, align 4
  %idxprom119 = zext i32 %91 to i64
  %arrayidx120 = getelementptr inbounds [19 x i8], [19 x i8]* @mszip_bitlen_order, i32 0, i64 %idxprom119
  %92 = load i8, i8* %arrayidx120, align 1
  %idxprom121 = zext i8 %92 to i64
  %arrayidx122 = getelementptr inbounds [19 x i8], [19 x i8]* %bl_len, i32 0, i64 %idxprom121
  store i8 0, i8* %arrayidx122, align 1
  br label %while.cond.114

while.end.123:                                    ; preds = %while.cond.114
  %arrayidx124 = getelementptr inbounds [19 x i8], [19 x i8]* %bl_len, i32 0, i64 0
  %arrayidx125 = getelementptr inbounds [128 x i16], [128 x i16]* %bl_table, i32 0, i64 0
  %call126 = call i32 @mszip_make_decode_table(i32 19, i32 7, i8* %arrayidx124, i16* %arrayidx125)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %while.end.123
  store i32 -6, i32* %retval
  br label %return

if.end.129:                                       ; preds = %while.end.123
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.281, %if.end.129
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %lit_codes, align 4
  %95 = load i32, i32* %dist_codes, align 4
  %add131 = add i32 %94, %95
  %cmp132 = icmp ult i32 %93, %add131
  br i1 %cmp132, label %for.body.134, label %for.end.283

for.body.134:                                     ; preds = %for.cond.130
  br label %do.body.135

do.body.135:                                      ; preds = %for.body.134
  br label %while.cond.136

while.cond.136:                                   ; preds = %if.end.150, %do.body.135
  %96 = load i32, i32* %bits_left, align 4
  %cmp137 = icmp slt i32 %96, 7
  br i1 %cmp137, label %while.body.139, label %while.end.156

while.body.139:                                   ; preds = %while.cond.136
  %97 = load i8*, i8** %i_ptr, align 8
  %98 = load i8*, i8** %i_end, align 8
  %cmp140 = icmp uge i8* %97, %98
  br i1 %cmp140, label %if.then.142, label %if.end.150

if.then.142:                                      ; preds = %while.body.139
  %99 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call143 = call i32 @mszip_read_input(%struct.mszip_stream* %99)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.then.142
  %100 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error146 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %100, i32 0, i32 5
  %101 = load i32, i32* %error146, align 4
  store i32 %101, i32* %retval
  br label %return

if.end.147:                                       ; preds = %if.then.142
  %102 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr148 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %102, i32 0, i32 10
  %103 = load i8*, i8** %i_ptr148, align 8
  store i8* %103, i8** %i_ptr, align 8
  %104 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end149 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %104, i32 0, i32 11
  %105 = load i8*, i8** %i_end149, align 8
  store i8* %105, i8** %i_end, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.147, %while.body.139
  %106 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr151, i8** %i_ptr, align 8
  %107 = load i8, i8* %106, align 1
  %conv152 = zext i8 %107 to i32
  %108 = load i32, i32* %bits_left, align 4
  %shl153 = shl i32 %conv152, %108
  %109 = load i32, i32* %bit_buffer, align 4
  %or154 = or i32 %109, %shl153
  store i32 %or154, i32* %bit_buffer, align 4
  %110 = load i32, i32* %bits_left, align 4
  %add155 = add nsw i32 %110, 8
  store i32 %add155, i32* %bits_left, align 4
  br label %while.cond.136

while.end.156:                                    ; preds = %while.cond.136
  br label %do.end.157

do.end.157:                                       ; preds = %while.end.156
  %111 = load i32, i32* %bit_buffer, align 4
  %and158 = and i32 %111, 127
  %idxprom159 = zext i32 %and158 to i64
  %arrayidx160 = getelementptr inbounds [128 x i16], [128 x i16]* %bl_table, i32 0, i64 %idxprom159
  %112 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %112 to i32
  store i32 %conv161, i32* %code, align 4
  %113 = load i32, i32* %code, align 4
  %idxprom162 = zext i32 %113 to i64
  %arrayidx163 = getelementptr inbounds [19 x i8], [19 x i8]* %bl_len, i32 0, i64 %idxprom162
  %114 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %114 to i32
  %115 = load i32, i32* %bit_buffer, align 4
  %shr165 = lshr i32 %115, %conv164
  store i32 %shr165, i32* %bit_buffer, align 4
  %116 = load i32, i32* %code, align 4
  %idxprom166 = zext i32 %116 to i64
  %arrayidx167 = getelementptr inbounds [19 x i8], [19 x i8]* %bl_len, i32 0, i64 %idxprom166
  %117 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %117 to i32
  %118 = load i32, i32* %bits_left, align 4
  %sub169 = sub nsw i32 %118, %conv168
  store i32 %sub169, i32* %bits_left, align 4
  %119 = load i32, i32* %code, align 4
  %cmp170 = icmp ult i32 %119, 16
  br i1 %cmp170, label %if.then.172, label %if.else

if.then.172:                                      ; preds = %do.end.157
  %120 = load i32, i32* %code, align 4
  store i32 %120, i32* %last_code, align 4
  %conv173 = trunc i32 %120 to i8
  %121 = load i32, i32* %i, align 4
  %idxprom174 = zext i32 %121 to i64
  %arrayidx175 = getelementptr inbounds [320 x i8], [320 x i8]* %lens, i32 0, i64 %idxprom174
  store i8 %conv173, i8* %arrayidx175, align 1
  br label %if.end.280

if.else:                                          ; preds = %do.end.157
  %122 = load i32, i32* %code, align 4
  switch i32 %122, label %sw.default [
    i32 16, label %sw.bb
    i32 17, label %sw.bb.205
    i32 18, label %sw.bb.235
  ]

sw.bb:                                            ; preds = %if.else
  br label %do.body.176

do.body.176:                                      ; preds = %sw.bb
  br label %do.body.177

do.body.177:                                      ; preds = %do.body.176
  br label %while.cond.178

while.cond.178:                                   ; preds = %if.end.192, %do.body.177
  %123 = load i32, i32* %bits_left, align 4
  %cmp179 = icmp slt i32 %123, 2
  br i1 %cmp179, label %while.body.181, label %while.end.198

while.body.181:                                   ; preds = %while.cond.178
  %124 = load i8*, i8** %i_ptr, align 8
  %125 = load i8*, i8** %i_end, align 8
  %cmp182 = icmp uge i8* %124, %125
  br i1 %cmp182, label %if.then.184, label %if.end.192

if.then.184:                                      ; preds = %while.body.181
  %126 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call185 = call i32 @mszip_read_input(%struct.mszip_stream* %126)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then.187, label %if.end.189

if.then.187:                                      ; preds = %if.then.184
  %127 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error188 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %127, i32 0, i32 5
  %128 = load i32, i32* %error188, align 4
  store i32 %128, i32* %retval
  br label %return

if.end.189:                                       ; preds = %if.then.184
  %129 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr190 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %129, i32 0, i32 10
  %130 = load i8*, i8** %i_ptr190, align 8
  store i8* %130, i8** %i_ptr, align 8
  %131 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end191 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %131, i32 0, i32 11
  %132 = load i8*, i8** %i_end191, align 8
  store i8* %132, i8** %i_end, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %while.body.181
  %133 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr193, i8** %i_ptr, align 8
  %134 = load i8, i8* %133, align 1
  %conv194 = zext i8 %134 to i32
  %135 = load i32, i32* %bits_left, align 4
  %shl195 = shl i32 %conv194, %135
  %136 = load i32, i32* %bit_buffer, align 4
  %or196 = or i32 %136, %shl195
  store i32 %or196, i32* %bit_buffer, align 4
  %137 = load i32, i32* %bits_left, align 4
  %add197 = add nsw i32 %137, 8
  store i32 %add197, i32* %bits_left, align 4
  br label %while.cond.178

while.end.198:                                    ; preds = %while.cond.178
  br label %do.end.199

do.end.199:                                       ; preds = %while.end.198
  %138 = load i32, i32* %bit_buffer, align 4
  %and200 = and i32 %138, 3
  store i32 %and200, i32* %run, align 4
  %139 = load i32, i32* %bit_buffer, align 4
  %shr201 = lshr i32 %139, 2
  store i32 %shr201, i32* %bit_buffer, align 4
  %140 = load i32, i32* %bits_left, align 4
  %sub202 = sub nsw i32 %140, 2
  store i32 %sub202, i32* %bits_left, align 4
  br label %do.end.203

do.end.203:                                       ; preds = %do.end.199
  %141 = load i32, i32* %run, align 4
  %add204 = add i32 %141, 3
  store i32 %add204, i32* %run, align 4
  %142 = load i32, i32* %last_code, align 4
  store i32 %142, i32* %code, align 4
  br label %sw.epilog

sw.bb.205:                                        ; preds = %if.else
  br label %do.body.206

do.body.206:                                      ; preds = %sw.bb.205
  br label %do.body.207

do.body.207:                                      ; preds = %do.body.206
  br label %while.cond.208

while.cond.208:                                   ; preds = %if.end.222, %do.body.207
  %143 = load i32, i32* %bits_left, align 4
  %cmp209 = icmp slt i32 %143, 3
  br i1 %cmp209, label %while.body.211, label %while.end.228

while.body.211:                                   ; preds = %while.cond.208
  %144 = load i8*, i8** %i_ptr, align 8
  %145 = load i8*, i8** %i_end, align 8
  %cmp212 = icmp uge i8* %144, %145
  br i1 %cmp212, label %if.then.214, label %if.end.222

if.then.214:                                      ; preds = %while.body.211
  %146 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call215 = call i32 @mszip_read_input(%struct.mszip_stream* %146)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %if.then.214
  %147 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error218 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %147, i32 0, i32 5
  %148 = load i32, i32* %error218, align 4
  store i32 %148, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.then.214
  %149 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr220 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %149, i32 0, i32 10
  %150 = load i8*, i8** %i_ptr220, align 8
  store i8* %150, i8** %i_ptr, align 8
  %151 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end221 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %151, i32 0, i32 11
  %152 = load i8*, i8** %i_end221, align 8
  store i8* %152, i8** %i_end, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.219, %while.body.211
  %153 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr223 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr223, i8** %i_ptr, align 8
  %154 = load i8, i8* %153, align 1
  %conv224 = zext i8 %154 to i32
  %155 = load i32, i32* %bits_left, align 4
  %shl225 = shl i32 %conv224, %155
  %156 = load i32, i32* %bit_buffer, align 4
  %or226 = or i32 %156, %shl225
  store i32 %or226, i32* %bit_buffer, align 4
  %157 = load i32, i32* %bits_left, align 4
  %add227 = add nsw i32 %157, 8
  store i32 %add227, i32* %bits_left, align 4
  br label %while.cond.208

while.end.228:                                    ; preds = %while.cond.208
  br label %do.end.229

do.end.229:                                       ; preds = %while.end.228
  %158 = load i32, i32* %bit_buffer, align 4
  %and230 = and i32 %158, 7
  store i32 %and230, i32* %run, align 4
  %159 = load i32, i32* %bit_buffer, align 4
  %shr231 = lshr i32 %159, 3
  store i32 %shr231, i32* %bit_buffer, align 4
  %160 = load i32, i32* %bits_left, align 4
  %sub232 = sub nsw i32 %160, 3
  store i32 %sub232, i32* %bits_left, align 4
  br label %do.end.233

do.end.233:                                       ; preds = %do.end.229
  %161 = load i32, i32* %run, align 4
  %add234 = add i32 %161, 3
  store i32 %add234, i32* %run, align 4
  store i32 0, i32* %code, align 4
  br label %sw.epilog

sw.bb.235:                                        ; preds = %if.else
  br label %do.body.236

do.body.236:                                      ; preds = %sw.bb.235
  br label %do.body.237

do.body.237:                                      ; preds = %do.body.236
  br label %while.cond.238

while.cond.238:                                   ; preds = %if.end.252, %do.body.237
  %162 = load i32, i32* %bits_left, align 4
  %cmp239 = icmp slt i32 %162, 7
  br i1 %cmp239, label %while.body.241, label %while.end.258

while.body.241:                                   ; preds = %while.cond.238
  %163 = load i8*, i8** %i_ptr, align 8
  %164 = load i8*, i8** %i_end, align 8
  %cmp242 = icmp uge i8* %163, %164
  br i1 %cmp242, label %if.then.244, label %if.end.252

if.then.244:                                      ; preds = %while.body.241
  %165 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %call245 = call i32 @mszip_read_input(%struct.mszip_stream* %165)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %if.then.244
  %166 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %error248 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %166, i32 0, i32 5
  %167 = load i32, i32* %error248, align 4
  store i32 %167, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.then.244
  %168 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr250 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %168, i32 0, i32 10
  %169 = load i8*, i8** %i_ptr250, align 8
  store i8* %169, i8** %i_ptr, align 8
  %170 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end251 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %170, i32 0, i32 11
  %171 = load i8*, i8** %i_end251, align 8
  store i8* %171, i8** %i_end, align 8
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.249, %while.body.241
  %172 = load i8*, i8** %i_ptr, align 8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr253, i8** %i_ptr, align 8
  %173 = load i8, i8* %172, align 1
  %conv254 = zext i8 %173 to i32
  %174 = load i32, i32* %bits_left, align 4
  %shl255 = shl i32 %conv254, %174
  %175 = load i32, i32* %bit_buffer, align 4
  %or256 = or i32 %175, %shl255
  store i32 %or256, i32* %bit_buffer, align 4
  %176 = load i32, i32* %bits_left, align 4
  %add257 = add nsw i32 %176, 8
  store i32 %add257, i32* %bits_left, align 4
  br label %while.cond.238

while.end.258:                                    ; preds = %while.cond.238
  br label %do.end.259

do.end.259:                                       ; preds = %while.end.258
  %177 = load i32, i32* %bit_buffer, align 4
  %and260 = and i32 %177, 127
  store i32 %and260, i32* %run, align 4
  %178 = load i32, i32* %bit_buffer, align 4
  %shr261 = lshr i32 %178, 7
  store i32 %shr261, i32* %bit_buffer, align 4
  %179 = load i32, i32* %bits_left, align 4
  %sub262 = sub nsw i32 %179, 7
  store i32 %sub262, i32* %bits_left, align 4
  br label %do.end.263

do.end.263:                                       ; preds = %do.end.259
  %180 = load i32, i32* %run, align 4
  %add264 = add i32 %180, 11
  store i32 %add264, i32* %run, align 4
  store i32 0, i32* %code, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %181 = load i32, i32* %code, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 %181)
  store i32 -10, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end.263, %do.end.233, %do.end.203
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %run, align 4
  %add265 = add i32 %182, %183
  %184 = load i32, i32* %lit_codes, align 4
  %185 = load i32, i32* %dist_codes, align 4
  %add266 = add i32 %184, %185
  %cmp267 = icmp ugt i32 %add265, %add266
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %sw.epilog
  store i32 -9, i32* %retval
  br label %return

if.end.270:                                       ; preds = %sw.epilog
  br label %while.cond.271

while.cond.271:                                   ; preds = %while.body.273, %if.end.270
  %186 = load i32, i32* %run, align 4
  %dec = add i32 %186, -1
  store i32 %dec, i32* %run, align 4
  %tobool272 = icmp ne i32 %186, 0
  br i1 %tobool272, label %while.body.273, label %while.end.278

while.body.273:                                   ; preds = %while.cond.271
  %187 = load i32, i32* %code, align 4
  %conv274 = trunc i32 %187 to i8
  %188 = load i32, i32* %i, align 4
  %inc275 = add i32 %188, 1
  store i32 %inc275, i32* %i, align 4
  %idxprom276 = zext i32 %188 to i64
  %arrayidx277 = getelementptr inbounds [320 x i8], [320 x i8]* %lens, i32 0, i64 %idxprom276
  store i8 %conv274, i8* %arrayidx277, align 1
  br label %while.cond.271

while.end.278:                                    ; preds = %while.cond.271
  %189 = load i32, i32* %i, align 4
  %dec279 = add i32 %189, -1
  store i32 %dec279, i32* %i, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %while.end.278, %if.then.172
  br label %for.inc.281

for.inc.281:                                      ; preds = %if.end.280
  %190 = load i32, i32* %i, align 4
  %inc282 = add i32 %190, 1
  store i32 %inc282, i32* %i, align 4
  br label %for.cond.130

for.end.283:                                      ; preds = %for.cond.130
  %191 = load i32, i32* %lit_codes, align 4
  store i32 %191, i32* %i, align 4
  %192 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %192, i32 0, i32 17
  %arrayidx284 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len, i32 0, i64 0
  %arrayidx285 = getelementptr inbounds [320 x i8], [320 x i8]* %lens, i32 0, i64 0
  %193 = load i32, i32* %i, align 4
  %conv286 = zext i32 %193 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx284, i8* %arrayidx285, i64 %conv286, i32 1, i1 false)
  br label %while.cond.287

while.cond.287:                                   ; preds = %while.body.290, %for.end.283
  %194 = load i32, i32* %i, align 4
  %cmp288 = icmp ult i32 %194, 288
  br i1 %cmp288, label %while.body.290, label %while.end.295

while.body.290:                                   ; preds = %while.cond.287
  %195 = load i32, i32* %i, align 4
  %inc291 = add i32 %195, 1
  store i32 %inc291, i32* %i, align 4
  %idxprom292 = zext i32 %195 to i64
  %196 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %LITERAL_len293 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %196, i32 0, i32 17
  %arrayidx294 = getelementptr inbounds [288 x i8], [288 x i8]* %LITERAL_len293, i32 0, i64 %idxprom292
  store i8 0, i8* %arrayidx294, align 1
  br label %while.cond.287

while.end.295:                                    ; preds = %while.cond.287
  %197 = load i32, i32* %dist_codes, align 4
  store i32 %197, i32* %i, align 4
  %198 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_len = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %198, i32 0, i32 18
  %arrayidx296 = getelementptr inbounds [32 x i8], [32 x i8]* %DISTANCE_len, i32 0, i64 0
  %199 = load i32, i32* %lit_codes, align 4
  %idxprom297 = zext i32 %199 to i64
  %arrayidx298 = getelementptr inbounds [320 x i8], [320 x i8]* %lens, i32 0, i64 %idxprom297
  %200 = load i32, i32* %i, align 4
  %conv299 = zext i32 %200 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx296, i8* %arrayidx298, i64 %conv299, i32 1, i1 false)
  br label %while.cond.300

while.cond.300:                                   ; preds = %while.body.303, %while.end.295
  %201 = load i32, i32* %i, align 4
  %cmp301 = icmp ult i32 %201, 32
  br i1 %cmp301, label %while.body.303, label %while.end.308

while.body.303:                                   ; preds = %while.cond.300
  %202 = load i32, i32* %i, align 4
  %inc304 = add i32 %202, 1
  store i32 %inc304, i32* %i, align 4
  %idxprom305 = zext i32 %202 to i64
  %203 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %DISTANCE_len306 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %203, i32 0, i32 18
  %arrayidx307 = getelementptr inbounds [32 x i8], [32 x i8]* %DISTANCE_len306, i32 0, i64 %idxprom305
  store i8 0, i8* %arrayidx307, align 1
  br label %while.cond.300

while.end.308:                                    ; preds = %while.cond.300
  br label %do.body.309

do.body.309:                                      ; preds = %while.end.308
  %204 = load i8*, i8** %i_ptr, align 8
  %205 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_ptr310 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %205, i32 0, i32 10
  store i8* %204, i8** %i_ptr310, align 8
  %206 = load i8*, i8** %i_end, align 8
  %207 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %i_end311 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %207, i32 0, i32 11
  store i8* %206, i8** %i_end311, align 8
  %208 = load i32, i32* %bit_buffer, align 4
  %209 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bit_buffer312 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %209, i32 0, i32 14
  store i32 %208, i32* %bit_buffer312, align 4
  %210 = load i32, i32* %bits_left, align 4
  %211 = load %struct.mszip_stream*, %struct.mszip_stream** %zip.addr, align 8
  %bits_left313 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %211, i32 0, i32 15
  store i32 %210, i32* %bits_left313, align 4
  br label %do.end.314

do.end.314:                                       ; preds = %do.body.309
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.314, %if.then.269, %sw.default, %if.then.247, %if.then.217, %if.then.187, %if.then.145, %if.then.128, %if.then.94, %if.then.79, %if.then.75, %if.then.55, %if.then.26, %if.then.8
  %212 = load i32, i32* %retval
  ret i32 %212
}

; Function Attrs: nounwind uwtable
define internal i32 @mszip_make_decode_table(i32 %nsyms, i32 %nbits, i8* %length, i16* %table) #0 {
entry:
  %retval = alloca i32, align 4
  %nsyms.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %length.addr = alloca i8*, align 8
  %table.addr = alloca i16*, align 8
  %leaf = alloca i32, align 4
  %reverse = alloca i32, align 4
  %fill = alloca i32, align 4
  %sym = alloca i16, align 2
  %next_sym = alloca i16, align 2
  %bit_num = alloca i8, align 1
  %pos = alloca i32, align 4
  %table_mask = alloca i32, align 4
  %mszip_bit_mask = alloca i32, align 4
  store i32 %nsyms, i32* %nsyms.addr, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  store i8* %length, i8** %length.addr, align 8
  store i16* %table, i16** %table.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %table_mask, align 4
  %1 = load i32, i32* %table_mask, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %mszip_bit_mask, align 4
  store i8 1, i8* %bit_num, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %2 = load i8, i8* %bit_num, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %nbits.addr, align 4
  %cmp = icmp ule i32 %conv, %3
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %sym, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i16, i16* %sym, align 2
  %conv3 = zext i16 %4 to i32
  %5 = load i32, i32* %nsyms.addr, align 4
  %cmp4 = icmp ult i32 %conv3, %5
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %6 = load i16, i16* %sym, align 2
  %idxprom = zext i16 %6 to i64
  %7 = load i8*, i8** %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8, i8* %bit_num, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.inc

if.end:                                           ; preds = %for.body.6
  %10 = load i16, i16* %sym, align 2
  %idxprom11 = zext i16 %10 to i64
  %11 = load i8*, i8** %length.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  store i32 %conv13, i32* %fill, align 4
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %nbits.addr, align 4
  %15 = load i32, i32* %fill, align 4
  %sub = sub i32 %14, %15
  %shr14 = lshr i32 %13, %sub
  store i32 %shr14, i32* %reverse, align 4
  store i32 0, i32* %leaf, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %16 = load i32, i32* %leaf, align 4
  %shl15 = shl i32 %16, 1
  store i32 %shl15, i32* %leaf, align 4
  %17 = load i32, i32* %reverse, align 4
  %and = and i32 %17, 1
  %18 = load i32, i32* %leaf, align 4
  %or = or i32 %18, %and
  store i32 %or, i32* %leaf, align 4
  %19 = load i32, i32* %reverse, align 4
  %shr16 = lshr i32 %19, 1
  store i32 %shr16, i32* %reverse, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %fill, align 4
  %dec = add i32 %20, -1
  store i32 %dec, i32* %fill, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %mszip_bit_mask, align 4
  %22 = load i32, i32* %pos, align 4
  %add = add i32 %22, %21
  store i32 %add, i32* %pos, align 4
  %23 = load i32, i32* %table_mask, align 4
  %cmp17 = icmp ugt i32 %add, %23
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  %24 = load i32, i32* %mszip_bit_mask, align 4
  store i32 %24, i32* %fill, align 4
  %25 = load i8, i8* %bit_num, align 1
  %conv21 = zext i8 %25 to i32
  %shl22 = shl i32 1, %conv21
  %conv23 = trunc i32 %shl22 to i16
  store i16 %conv23, i16* %next_sym, align 2
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond.29, %if.end.20
  %26 = load i16, i16* %sym, align 2
  %27 = load i32, i32* %leaf, align 4
  %idxprom25 = zext i32 %27 to i64
  %28 = load i16*, i16** %table.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %28, i64 %idxprom25
  store i16 %26, i16* %arrayidx26, align 2
  %29 = load i16, i16* %next_sym, align 2
  %conv27 = zext i16 %29 to i32
  %30 = load i32, i32* %leaf, align 4
  %add28 = add i32 %30, %conv27
  store i32 %add28, i32* %leaf, align 4
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.24
  %31 = load i32, i32* %fill, align 4
  %dec30 = add i32 %31, -1
  store i32 %dec30, i32* %fill, align 4
  %tobool31 = icmp ne i32 %dec30, 0
  br i1 %tobool31, label %do.body.24, label %do.end.32

do.end.32:                                        ; preds = %do.cond.29
  br label %for.inc

for.inc:                                          ; preds = %do.end.32, %if.then
  %32 = load i16, i16* %sym, align 2
  %inc = add i16 %32, 1
  store i16 %inc, i16* %sym, align 2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %33 = load i32, i32* %mszip_bit_mask, align 4
  %shr33 = lshr i32 %33, 1
  store i32 %shr33, i32* %mszip_bit_mask, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %34 = load i8, i8* %bit_num, align 1
  %inc35 = add i8 %34, 1
  store i8 %inc35, i8* %bit_num, align 1
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %35 = load i32, i32* %pos, align 4
  %36 = load i32, i32* %table_mask, align 4
  %cmp37 = icmp eq i32 %35, %36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end.36
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.end.36
  %37 = load i32, i32* %pos, align 4
  %conv41 = trunc i32 %37 to i16
  store i16 %conv41, i16* %sym, align 2
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.59, %if.end.40
  %38 = load i16, i16* %sym, align 2
  %conv43 = zext i16 %38 to i32
  %39 = load i32, i32* %table_mask, align 4
  %cmp44 = icmp ult i32 %conv43, %39
  br i1 %cmp44, label %for.body.46, label %for.end.61

for.body.46:                                      ; preds = %for.cond.42
  %40 = load i16, i16* %sym, align 2
  %conv47 = zext i16 %40 to i32
  store i32 %conv47, i32* %reverse, align 4
  store i32 0, i32* %leaf, align 4
  %41 = load i32, i32* %nbits.addr, align 4
  store i32 %41, i32* %fill, align 4
  br label %do.body.48

do.body.48:                                       ; preds = %do.cond.53, %for.body.46
  %42 = load i32, i32* %leaf, align 4
  %shl49 = shl i32 %42, 1
  store i32 %shl49, i32* %leaf, align 4
  %43 = load i32, i32* %reverse, align 4
  %and50 = and i32 %43, 1
  %44 = load i32, i32* %leaf, align 4
  %or51 = or i32 %44, %and50
  store i32 %or51, i32* %leaf, align 4
  %45 = load i32, i32* %reverse, align 4
  %shr52 = lshr i32 %45, 1
  store i32 %shr52, i32* %reverse, align 4
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.48
  %46 = load i32, i32* %fill, align 4
  %dec54 = add i32 %46, -1
  store i32 %dec54, i32* %fill, align 4
  %tobool55 = icmp ne i32 %dec54, 0
  br i1 %tobool55, label %do.body.48, label %do.end.56

do.end.56:                                        ; preds = %do.cond.53
  %47 = load i32, i32* %leaf, align 4
  %idxprom57 = zext i32 %47 to i64
  %48 = load i16*, i16** %table.addr, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %48, i64 %idxprom57
  store i16 -1, i16* %arrayidx58, align 2
  br label %for.inc.59

for.inc.59:                                       ; preds = %do.end.56
  %49 = load i16, i16* %sym, align 2
  %inc60 = add i16 %49, 1
  store i16 %inc60, i16* %sym, align 2
  br label %for.cond.42

for.end.61:                                       ; preds = %for.cond.42
  %50 = load i32, i32* %table_mask, align 4
  %shr62 = lshr i32 %50, 1
  %51 = load i32, i32* %nsyms.addr, align 4
  %cmp63 = icmp ult i32 %shr62, %51
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.61
  %52 = load i32, i32* %nsyms.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.61
  %53 = load i32, i32* %table_mask, align 4
  %shr65 = lshr i32 %53, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %shr65, %cond.false ]
  %conv66 = trunc i32 %cond to i16
  store i16 %conv66, i16* %next_sym, align 2
  %54 = load i32, i32* %pos, align 4
  %shl67 = shl i32 %54, 16
  store i32 %shl67, i32* %pos, align 4
  %55 = load i32, i32* %table_mask, align 4
  %shl68 = shl i32 %55, 16
  store i32 %shl68, i32* %table_mask, align 4
  store i32 32768, i32* %mszip_bit_mask, align 4
  %56 = load i32, i32* %nbits.addr, align 4
  %add69 = add i32 %56, 1
  %conv70 = trunc i32 %add69 to i8
  store i8 %conv70, i8* %bit_num, align 1
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.146, %cond.end
  %57 = load i8, i8* %bit_num, align 1
  %conv72 = zext i8 %57 to i32
  %cmp73 = icmp sle i32 %conv72, 16
  br i1 %cmp73, label %for.body.75, label %for.end.148

for.body.75:                                      ; preds = %for.cond.71
  store i16 0, i16* %sym, align 2
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.142, %for.body.75
  %58 = load i16, i16* %sym, align 2
  %conv77 = zext i16 %58 to i32
  %59 = load i32, i32* %nsyms.addr, align 4
  %cmp78 = icmp ult i32 %conv77, %59
  br i1 %cmp78, label %for.body.80, label %for.end.144

for.body.80:                                      ; preds = %for.cond.76
  %60 = load i16, i16* %sym, align 2
  %idxprom81 = zext i16 %60 to i64
  %61 = load i8*, i8** %length.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %61, i64 %idxprom81
  %62 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %62 to i32
  %63 = load i8, i8* %bit_num, align 1
  %conv84 = zext i8 %63 to i32
  %cmp85 = icmp ne i32 %conv83, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.80
  br label %for.inc.142

if.end.88:                                        ; preds = %for.body.80
  %64 = load i32, i32* %pos, align 4
  %shr89 = lshr i32 %64, 16
  store i32 %shr89, i32* %reverse, align 4
  store i32 0, i32* %leaf, align 4
  %65 = load i32, i32* %nbits.addr, align 4
  store i32 %65, i32* %fill, align 4
  br label %do.body.90

do.body.90:                                       ; preds = %do.cond.95, %if.end.88
  %66 = load i32, i32* %leaf, align 4
  %shl91 = shl i32 %66, 1
  store i32 %shl91, i32* %leaf, align 4
  %67 = load i32, i32* %reverse, align 4
  %and92 = and i32 %67, 1
  %68 = load i32, i32* %leaf, align 4
  %or93 = or i32 %68, %and92
  store i32 %or93, i32* %leaf, align 4
  %69 = load i32, i32* %reverse, align 4
  %shr94 = lshr i32 %69, 1
  store i32 %shr94, i32* %reverse, align 4
  br label %do.cond.95

do.cond.95:                                       ; preds = %do.body.90
  %70 = load i32, i32* %fill, align 4
  %dec96 = add i32 %70, -1
  store i32 %dec96, i32* %fill, align 4
  %tobool97 = icmp ne i32 %dec96, 0
  br i1 %tobool97, label %do.body.90, label %do.end.98

do.end.98:                                        ; preds = %do.cond.95
  store i32 0, i32* %fill, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.132, %do.end.98
  %71 = load i32, i32* %fill, align 4
  %72 = load i8, i8* %bit_num, align 1
  %conv100 = zext i8 %72 to i32
  %73 = load i32, i32* %nbits.addr, align 4
  %sub101 = sub i32 %conv100, %73
  %cmp102 = icmp ult i32 %71, %sub101
  br i1 %cmp102, label %for.body.104, label %for.end.134

for.body.104:                                     ; preds = %for.cond.99
  %74 = load i32, i32* %leaf, align 4
  %idxprom105 = zext i32 %74 to i64
  %75 = load i16*, i16** %table.addr, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %75, i64 %idxprom105
  %76 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %76 to i32
  %cmp108 = icmp eq i32 %conv107, 65535
  br i1 %cmp108, label %if.then.110, label %if.end.123

if.then.110:                                      ; preds = %for.body.104
  %77 = load i16, i16* %next_sym, align 2
  %conv111 = zext i16 %77 to i32
  %shl112 = shl i32 %conv111, 1
  %idxprom113 = sext i32 %shl112 to i64
  %78 = load i16*, i16** %table.addr, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %78, i64 %idxprom113
  store i16 -1, i16* %arrayidx114, align 2
  %79 = load i16, i16* %next_sym, align 2
  %conv115 = zext i16 %79 to i32
  %shl116 = shl i32 %conv115, 1
  %add117 = add nsw i32 %shl116, 1
  %idxprom118 = sext i32 %add117 to i64
  %80 = load i16*, i16** %table.addr, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %80, i64 %idxprom118
  store i16 -1, i16* %arrayidx119, align 2
  %81 = load i16, i16* %next_sym, align 2
  %inc120 = add i16 %81, 1
  store i16 %inc120, i16* %next_sym, align 2
  %82 = load i32, i32* %leaf, align 4
  %idxprom121 = zext i32 %82 to i64
  %83 = load i16*, i16** %table.addr, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %83, i64 %idxprom121
  store i16 %81, i16* %arrayidx122, align 2
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.110, %for.body.104
  %84 = load i32, i32* %leaf, align 4
  %idxprom124 = zext i32 %84 to i64
  %85 = load i16*, i16** %table.addr, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %85, i64 %idxprom124
  %86 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %86 to i32
  %shl127 = shl i32 %conv126, 1
  %87 = load i32, i32* %pos, align 4
  %88 = load i32, i32* %fill, align 4
  %sub128 = sub i32 15, %88
  %shr129 = lshr i32 %87, %sub128
  %and130 = and i32 %shr129, 1
  %or131 = or i32 %shl127, %and130
  store i32 %or131, i32* %leaf, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.123
  %89 = load i32, i32* %fill, align 4
  %inc133 = add i32 %89, 1
  store i32 %inc133, i32* %fill, align 4
  br label %for.cond.99

for.end.134:                                      ; preds = %for.cond.99
  %90 = load i16, i16* %sym, align 2
  %91 = load i32, i32* %leaf, align 4
  %idxprom135 = zext i32 %91 to i64
  %92 = load i16*, i16** %table.addr, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %92, i64 %idxprom135
  store i16 %90, i16* %arrayidx136, align 2
  %93 = load i32, i32* %mszip_bit_mask, align 4
  %94 = load i32, i32* %pos, align 4
  %add137 = add i32 %94, %93
  store i32 %add137, i32* %pos, align 4
  %95 = load i32, i32* %table_mask, align 4
  %cmp138 = icmp ugt i32 %add137, %95
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %for.end.134
  store i32 1, i32* %retval
  br label %return

if.end.141:                                       ; preds = %for.end.134
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141, %if.then.87
  %96 = load i16, i16* %sym, align 2
  %inc143 = add i16 %96, 1
  store i16 %inc143, i16* %sym, align 2
  br label %for.cond.76

for.end.144:                                      ; preds = %for.cond.76
  %97 = load i32, i32* %mszip_bit_mask, align 4
  %shr145 = lshr i32 %97, 1
  store i32 %shr145, i32* %mszip_bit_mask, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.144
  %98 = load i8, i8* %bit_num, align 1
  %inc147 = add i8 %98, 1
  store i8 %inc147, i8* %bit_num, align 1
  br label %for.cond.71

for.end.148:                                      ; preds = %for.cond.71
  %99 = load i32, i32* %pos, align 4
  %100 = load i32, i32* %table_mask, align 4
  %cmp149 = icmp ne i32 %99, %100
  %cond151 = select i1 %cmp149, i32 1, i32 0
  store i32 %cond151, i32* %retval
  br label %return

return:                                           ; preds = %for.end.148, %if.then.140, %if.then.39, %if.then.19
  %101 = load i32, i32* %retval
  ret i32 %101
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
