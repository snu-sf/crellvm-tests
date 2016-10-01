; ModuleID = './MultiSource.Benchmarks.mediabench/16.jpeg.jpeg-6a.jerror.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Bogus DHT counts\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.74 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.98 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.99 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@jpeg_std_message_table = constant [121 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.119, i32 0, i32 0), i8* null], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %err) #0 {
entry:
  %err.addr = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_error_mgr* %err, %struct.jpeg_error_mgr** %err.addr, align 8
  %0 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %0, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @error_exit, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 1
  store void (%struct.jpeg_common_struct*, i32)* @emit_message, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 2
  store void (%struct.jpeg_common_struct*)* @output_message, void (%struct.jpeg_common_struct*)** %output_message, align 8
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %format_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 3
  store void (%struct.jpeg_common_struct*, i8*)* @format_message, void (%struct.jpeg_common_struct*, i8*)** %format_message, align 8
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 4
  store void (%struct.jpeg_common_struct*)* @reset_error_mgr, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 7
  store i32 0, i32* %trace_level, align 4
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 8
  store i64 0, i64* %num_warnings, align 8
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 0, i32* %msg_code, align 4
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %jpeg_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 9
  store i8** getelementptr inbounds ([121 x i8*], [121 x i8*]* @jpeg_std_message_table, i32 0, i32 0), i8*** %jpeg_message_table, align 8
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %last_jpeg_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 10
  store i32 119, i32* %last_jpeg_message, align 4
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 11
  store i8** null, i8*** %addon_message_table, align 8
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 12
  store i32 0, i32* %first_addon_message, align 4
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 13
  store i32 0, i32* %last_addon_message, align 4
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8
  ret %struct.jpeg_error_mgr* %13
}

; Function Attrs: nounwind uwtable
define internal void @error_exit(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 2
  %2 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %2(%struct.jpeg_common_struct* %3)
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @jpeg_destroy(%struct.jpeg_common_struct* %4)
  call void @exit(i32 1) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_message(%struct.jpeg_common_struct* %cinfo, i32 %msg_level) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %msg_level.addr = alloca i32, align 4
  %err = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %msg_level, i32* %msg_level.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  store %struct.jpeg_error_mgr* %1, %struct.jpeg_error_mgr** %err, align 8
  %2 = load i32, i32* %msg_level.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 8
  %4 = load i64, i64* %num_warnings, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 7
  %6 = load i32, i32* %trace_level, align 4
  %cmp3 = icmp sge i32 %6, 3
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %8(%struct.jpeg_common_struct* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %lor.lhs.false
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %num_warnings5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 8
  %11 = load i64, i64* %num_warnings5, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %num_warnings5, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %trace_level6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 7
  %13 = load i32, i32* %trace_level6, align 4
  %14 = load i32, i32* %msg_level.addr, align 4
  %cmp7 = icmp sge i32 %13, %14
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %output_message9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 2
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message9, align 8
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_message(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %buffer = alloca [200 x i8], align 16
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %format_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 3
  %2 = load void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*, i8*)** %format_message, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  call void %2(%struct.jpeg_common_struct* %3, i8* %arraydecay)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @format_message(%struct.jpeg_common_struct* %cinfo, i8* %buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %buffer.addr = alloca i8*, align 8
  %err = alloca %struct.jpeg_error_mgr*, align 8
  %msg_code = alloca i32, align 4
  %msgtext = alloca i8*, align 8
  %msgptr = alloca i8*, align 8
  %ch = alloca i8, align 1
  %isstring = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  store %struct.jpeg_error_mgr* %1, %struct.jpeg_error_mgr** %err, align 8
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code2 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 5
  %3 = load i32, i32* %msg_code2, align 4
  store i32 %3, i32* %msg_code, align 4
  store i8* null, i8** %msgtext, align 8
  %4 = load i32, i32* %msg_code, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %msg_code, align 4
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %last_jpeg_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 10
  %7 = load i32, i32* %last_jpeg_message, align 4
  %cmp3 = icmp sle i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %msg_code, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %jpeg_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 9
  %10 = load i8**, i8*** %jpeg_message_table, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  store i8* %11, i8** %msgtext, align 8
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 11
  %13 = load i8**, i8*** %addon_message_table, align 8
  %cmp4 = icmp ne i8** %13, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.else
  %14 = load i32, i32* %msg_code, align 4
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 12
  %16 = load i32, i32* %first_addon_message, align 4
  %cmp6 = icmp sge i32 %14, %16
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %17 = load i32, i32* %msg_code, align 4
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 13
  %19 = load i32, i32* %last_addon_message, align 4
  %cmp8 = icmp sle i32 %17, %19
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.7
  %20 = load i32, i32* %msg_code, align 4
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %first_addon_message10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 12
  %22 = load i32, i32* %first_addon_message10, align 4
  %sub = sub nsw i32 %20, %22
  %idxprom11 = sext i32 %sub to i64
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %addon_message_table12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 11
  %24 = load i8**, i8*** %addon_message_table12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %24, i64 %idxprom11
  %25 = load i8*, i8** %arrayidx13, align 8
  store i8* %25, i8** %msgtext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.7, %land.lhs.true.5, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %26 = load i8*, i8** %msgtext, align 8
  %cmp15 = icmp eq i8* %26, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %27 = load i32, i32* %msg_code, align 4
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %27, i32* %arrayidx17, align 4
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %jpeg_message_table18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 9
  %30 = load i8**, i8*** %jpeg_message_table18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %30, i64 0
  %31 = load i8*, i8** %arrayidx19, align 8
  store i8* %31, i8** %msgtext, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.14
  store i32 0, i32* %isstring, align 4
  %32 = load i8*, i8** %msgtext, align 8
  store i8* %32, i8** %msgptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.20
  %33 = load i8*, i8** %msgptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %msgptr, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %ch, align 1
  %conv = sext i8 %34 to i32
  %cmp21 = icmp ne i32 %conv, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8, i8* %ch, align 1
  %conv23 = sext i8 %35 to i32
  %cmp24 = icmp eq i32 %conv23, 37
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %while.body
  %36 = load i8*, i8** %msgptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv27 = sext i8 %37 to i32
  %cmp28 = icmp eq i32 %conv27, 115
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  store i32 1, i32* %isstring, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  br label %while.end

if.end.32:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.end.31, %while.cond
  %38 = load i32, i32* %isstring, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %while.end
  %39 = load i8*, i8** %buffer.addr, align 8
  %40 = load i8*, i8** %msgtext, align 8
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %s = bitcast %union.anon* %msg_parm34 to [80 x i8]*
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* %40, i8* %arraydecay) #5
  br label %if.end.61

if.else.35:                                       ; preds = %while.end
  %42 = load i8*, i8** %buffer.addr, align 8
  %43 = load i8*, i8** %msgtext, align 8
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  %45 = load i32, i32* %arrayidx38, align 4
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 1
  %47 = load i32, i32* %arrayidx41, align 4
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %i43 = bitcast %union.anon* %msg_parm42 to [8 x i32]*
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %i43, i32 0, i64 2
  %49 = load i32, i32* %arrayidx44, align 4
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 6
  %i46 = bitcast %union.anon* %msg_parm45 to [8 x i32]*
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %i46, i32 0, i64 3
  %51 = load i32, i32* %arrayidx47, align 4
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 6
  %i49 = bitcast %union.anon* %msg_parm48 to [8 x i32]*
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %i49, i32 0, i64 4
  %53 = load i32, i32* %arrayidx50, align 4
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 6
  %i52 = bitcast %union.anon* %msg_parm51 to [8 x i32]*
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %i52, i32 0, i64 5
  %55 = load i32, i32* %arrayidx53, align 4
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i55 = bitcast %union.anon* %msg_parm54 to [8 x i32]*
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %i55, i32 0, i64 6
  %57 = load i32, i32* %arrayidx56, align 4
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 6
  %i58 = bitcast %union.anon* %msg_parm57 to [8 x i32]*
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %i58, i32 0, i64 7
  %59 = load i32, i32* %arrayidx59, align 4
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.35, %if.then.33
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_error_mgr(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 8
  store i64 0, i64* %num_warnings, align 8
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 0, i32* %msg_code, align 4
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
