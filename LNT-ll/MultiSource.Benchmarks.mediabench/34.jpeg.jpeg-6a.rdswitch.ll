; ModuleID = './MultiSource.Benchmarks.mediabench/34.jpeg.jpeg-6a.rdswitch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @read_quant_tables(%struct.jpeg_compress_struct* %cinfo, i8* %filename, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %tblno = alloca i32, align 4
  %i = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %table = alloca [64 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  store i32 %force_baseline, i32* %force_baseline.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %tblno, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @read_text_integer(%struct._IO_FILE* %3, i64* %val, i32* %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %tblno, align 4
  %cmp3 = icmp sge i32 %4, 4
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  %8 = load i64, i64* %val, align 8
  %conv = trunc i64 %8 to i32
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %9 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %9, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @read_text_integer(%struct._IO_FILE* %10, i64* %val, i32* %termchar)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  %14 = load i64, i64* %val, align 8
  %conv16 = trunc i64 %14 to i32
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i64 %idxprom
  store i32 %conv16, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = load i32, i32* %tblno, align 4
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i32 0
  %19 = load i32, i32* %scale_factor.addr, align 4
  %20 = load i32, i32* %force_baseline.addr, align 4
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %17, i32 %18, i32* %arraydecay, i32 %19, i32 %20)
  %21 = load i32, i32* %tblno, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, i32* %tblno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %termchar, align 4
  %cmp19 = icmp ne i32 %22, -1
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %while.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8*, i8** %filename.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %25)
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %while.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %26)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.21, %if.then.12, %if.then.4, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_text_integer(%struct._IO_FILE* %file, i64* %result, i32* %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %result.addr = alloca i64*, align 8
  %termchar.addr = alloca i32*, align 8
  %ch = alloca i32, align 4
  %val = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64* %result, i64** %result.addr, align 8
  store i32* %termchar, i32** %termchar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @text_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %ch, align 4
  %3 = load i32*, i32** %termchar.addr, align 8
  store i32 %2, i32* %3, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %4 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %4 to i64
  %call1 = call i16** @__ctype_b_loc() #5
  %5 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i32, i32* %ch, align 4
  %idxprom2 = sext i32 %7 to i64
  %call3 = call i16** @__ctype_b_loc() #5
  %8 = load i16*, i16** %call3, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 %idxprom2
  %9 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %9 to i32
  %and6 = and i32 %conv5, 2048
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end
  %10 = load i32, i32* %ch, align 4
  %11 = load i32*, i32** %termchar.addr, align 8
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %do.end
  %12 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %12, 48
  %conv10 = sext i32 %sub to i64
  store i64 %conv10, i64* %val, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 @text_getc(%struct._IO_FILE* %13)
  store i32 %call11, i32* %ch, align 4
  %cmp12 = icmp ne i32 %call11, -1
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %ch, align 4
  %idxprom14 = sext i32 %14 to i64
  %call15 = call i16** @__ctype_b_loc() #5
  %15 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %15, i64 %idxprom14
  %16 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %16 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %while.body
  br label %while.end

if.end.21:                                        ; preds = %while.body
  %17 = load i64, i64* %val, align 8
  %mul = mul nsw i64 %17, 10
  store i64 %mul, i64* %val, align 8
  %18 = load i32, i32* %ch, align 4
  %sub22 = sub nsw i32 %18, 48
  %conv23 = sext i32 %sub22 to i64
  %19 = load i64, i64* %val, align 8
  %add = add nsw i64 %19, %conv23
  store i64 %add, i64* %val, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %20 = load i64, i64* %val, align 8
  %21 = load i64*, i64** %result.addr, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* %ch, align 4
  %23 = load i32*, i32** %termchar.addr, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @jpeg_add_quant_table(%struct.jpeg_compress_struct*, i32, i32*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @read_scan_script(%struct.jpeg_compress_struct* %cinfo, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  %scans = alloca [100 x %struct.jpeg_scan_info], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %scans, i32 0, i32 0
  store %struct.jpeg_scan_info* %arraydecay, %struct.jpeg_scan_info** %scanptr, align 8
  store i32 0, i32* %scanno, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @read_scan_integer(%struct._IO_FILE* %3, i64* %val, i32* %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %scanno, align 4
  %cmp3 = icmp sge i32 %4, 100
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  %8 = load i64, i64* %val, align 8
  %conv = trunc i64 %8 to i32
  %9 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  store i32 1, i32* %ncomps, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %if.end.7
  %10 = load i32, i32* %termchar, align 4
  %cmp9 = icmp eq i32 %10, 32
  br i1 %cmp9, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.8
  %11 = load i32, i32* %ncomps, align 4
  %cmp12 = icmp sge i32 %11, 4
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %while.body.11
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %filename.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.body.11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @read_scan_integer(%struct._IO_FILE* %15, i64* %val, i32* %termchar)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %bogus

if.end.21:                                        ; preds = %if.end.17
  %16 = load i64, i64* %val, align 8
  %conv22 = trunc i64 %16 to i32
  %17 = load i32, i32* %ncomps, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index23 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index23, i32 0, i64 %idxprom
  store i32 %conv22, i32* %arrayidx24, align 4
  %19 = load i32, i32* %ncomps, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ncomps, align 4
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  %20 = load i32, i32* %ncomps, align 4
  %21 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %21, i32 0, i32 0
  store i32 %20, i32* %comps_in_scan, align 4
  %22 = load i32, i32* %termchar, align 4
  %cmp25 = icmp eq i32 %22, 58
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %while.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @read_scan_integer(%struct._IO_FILE* %23, i64* %val, i32* %termchar)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then.32

lor.lhs.false:                                    ; preds = %if.then.27
  %24 = load i32, i32* %termchar, align 4
  %cmp30 = icmp ne i32 %24, 32
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.then.27
  br label %bogus

if.end.33:                                        ; preds = %lor.lhs.false
  %25 = load i64, i64* %val, align 8
  %conv34 = trunc i64 %25 to i32
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 2
  store i32 %conv34, i32* %Ss, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i32 @read_scan_integer(%struct._IO_FILE* %27, i64* %val, i32* %termchar)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %if.end.33
  %28 = load i32, i32* %termchar, align 4
  %cmp38 = icmp ne i32 %28, 32
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.33
  br label %bogus

if.end.41:                                        ; preds = %lor.lhs.false.37
  %29 = load i64, i64* %val, align 8
  %conv42 = trunc i64 %29 to i32
  %30 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %30, i32 0, i32 3
  store i32 %conv42, i32* %Se, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i32 @read_scan_integer(%struct._IO_FILE* %31, i64* %val, i32* %termchar)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %lor.lhs.false.45, label %if.then.48

lor.lhs.false.45:                                 ; preds = %if.end.41
  %32 = load i32, i32* %termchar, align 4
  %cmp46 = icmp ne i32 %32, 32
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.45, %if.end.41
  br label %bogus

if.end.49:                                        ; preds = %lor.lhs.false.45
  %33 = load i64, i64* %val, align 8
  %conv50 = trunc i64 %33 to i32
  %34 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %34, i32 0, i32 4
  store i32 %conv50, i32* %Ah, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call51 = call i32 @read_scan_integer(%struct._IO_FILE* %35, i64* %val, i32* %termchar)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  br label %bogus

if.end.54:                                        ; preds = %if.end.49
  %36 = load i64, i64* %val, align 8
  %conv55 = trunc i64 %36 to i32
  %37 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Al = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %37, i32 0, i32 5
  store i32 %conv55, i32* %Al, align 4
  br label %if.end.60

if.else:                                          ; preds = %while.end
  %38 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ss56 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %38, i32 0, i32 2
  store i32 0, i32* %Ss56, align 4
  %39 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Se57 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %39, i32 0, i32 3
  store i32 63, i32* %Se57, align 4
  %40 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ah58 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %40, i32 0, i32 4
  store i32 0, i32* %Ah58, align 4
  %41 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Al59 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %41, i32 0, i32 5
  store i32 0, i32* %Al59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.54
  %42 = load i32, i32* %termchar, align 4
  %cmp61 = icmp ne i32 %42, 59
  br i1 %cmp61, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.60
  %43 = load i32, i32* %termchar, align 4
  %cmp63 = icmp ne i32 %43, -1
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true
  br label %bogus

bogus:                                            ; preds = %if.then.65, %if.then.53, %if.then.48, %if.then.40, %if.then.32, %if.then.20
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i8*, i8** %filename.addr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i8* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %46)
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true, %if.end.60
  %47 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %47, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr, %struct.jpeg_scan_info** %scanptr, align 8
  %48 = load i32, i32* %scanno, align 4
  %inc69 = add nsw i32 %48, 1
  store i32 %inc69, i32* %scanno, align 4
  br label %while.cond

while.end.70:                                     ; preds = %while.cond
  %49 = load i32, i32* %termchar, align 4
  %cmp71 = icmp ne i32 %49, -1
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %while.end.70
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** %filename.addr, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call75 = call i32 @fclose(%struct._IO_FILE* %52)
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %while.end.70
  %53 = load i32, i32* %scanno, align 4
  %cmp77 = icmp sgt i32 %53, 0
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.end.76
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 0
  %56 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  %59 = load i32, i32* %scanno, align 4
  %conv80 = sext i32 %59 to i64
  %mul = mul i64 %conv80, 36
  %call81 = call i8* %56(%struct.jpeg_common_struct* %58, i32 1, i64 %mul)
  %60 = bitcast i8* %call81 to %struct.jpeg_scan_info*
  store %struct.jpeg_scan_info* %60, %struct.jpeg_scan_info** %scanptr, align 8
  %61 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %62 = bitcast %struct.jpeg_scan_info* %61 to i8*
  %arraydecay82 = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %scans, i32 0, i32 0
  %63 = bitcast %struct.jpeg_scan_info* %arraydecay82 to i8*
  %64 = load i32, i32* %scanno, align 4
  %conv83 = sext i32 %64 to i64
  %mul84 = mul i64 %conv83, 36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %mul84, i32 1, i1 false)
  %65 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 22
  store %struct.jpeg_scan_info* %65, %struct.jpeg_scan_info** %scan_info, align 8
  %67 = load i32, i32* %scanno, align 4
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 21
  store i32 %67, i32* %num_scans, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.end.76
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i32 @fclose(%struct._IO_FILE* %69)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.73, %bogus, %if.then.14, %if.then.4, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @read_scan_integer(%struct._IO_FILE* %file, i64* %result, i32* %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %result.addr = alloca i64*, align 8
  %termchar.addr = alloca i32*, align 8
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64* %result, i64** %result.addr, align 8
  store i32* %termchar, i32** %termchar.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i64*, i64** %result.addr, align 8
  %2 = load i32*, i32** %termchar.addr, align 8
  %call = call i32 @read_text_integer(%struct._IO_FILE* %0, i64* %1, i32* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %termchar.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %ch, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %ch, align 4
  %cmp = icmp ne i32 %5, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %6 to i64
  %call1 = call i16** @__ctype_b_loc() #5
  %7 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 8192
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 @text_getc(%struct._IO_FILE* %10)
  store i32 %call3, i32* %ch, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %ch, align 4
  %idxprom4 = sext i32 %11 to i64
  %call5 = call i16** @__ctype_b_loc() #5
  %12 = load i16*, i16** %call5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %12, i64 %idxprom4
  %13 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %13 to i32
  %and8 = and i32 %conv7, 2048
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %while.end
  %14 = load i32, i32* %ch, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 @ungetc(i32 %14, %struct._IO_FILE* %15)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  store i32 32, i32* %ch, align 4
  br label %if.end.25

if.else:                                          ; preds = %while.end
  %16 = load i32, i32* %ch, align 4
  %cmp16 = icmp ne i32 %16, -1
  br i1 %cmp16, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.else
  %17 = load i32, i32* %ch, align 4
  %cmp18 = icmp ne i32 %17, 59
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* %ch, align 4
  %cmp21 = icmp ne i32 %18, 58
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 32, i32* %ch, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %land.lhs.true, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.15
  %19 = load i32, i32* %ch, align 4
  %20 = load i32*, i32** %termchar.addr, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.14, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @set_quant_slots(%struct.jpeg_compress_struct* %cinfo, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  %ci = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %val, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ci, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, i8* %ch, align 1
  %3 = load i8*, i8** %arg.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32* %val, i8* %ch) #2
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8, i8* %ch, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 44
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %val, align 4
  %cmp7 = icmp slt i32 %5, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %6 = load i32, i32* %val, align 4
  %cmp9 = icmp sge i32 %6, 4
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0), i32 3)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %8 = load i32, i32* %val, align 4
  %9 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 14
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i64 %idxprom
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 4
  store i32 %8, i32* %quant_tbl_no, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %12 = load i8*, i8** %arg.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv14 = sext i8 %13 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i8*, i8** %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp ne i32 %conv16, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %val, align 4
  %18 = load i32, i32* %ci, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 14
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info20, align 8
  %arrayidx21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i64 %idxprom19
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx21, i32 0, i32 4
  store i32 %17, i32* %quant_tbl_no22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %21 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then.5, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @set_sample_factors(%struct.jpeg_compress_struct* %cinfo, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %ci = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ci, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, i8* %ch2, align 1
  %3 = load i8*, i8** %arg.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %val1, i8* %ch1, i32* %val2, i8* %ch2) #2
  %cmp1 = icmp slt i32 %call, 3
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8, i8* %ch1, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 120
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, i8* %ch1, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 88
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %6 = load i8, i8* %ch2, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp ne i32 %conv8, 44
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %val1, align 4
  %cmp13 = icmp sle i32 %7, 0
  br i1 %cmp13, label %if.then.24, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.12
  %8 = load i32, i32* %val1, align 4
  %cmp16 = icmp sgt i32 %8, 4
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %9 = load i32, i32* %val2, align 4
  %cmp19 = icmp sle i32 %9, 0
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %10 = load i32, i32* %val2, align 4
  %cmp22 = icmp sgt i32 %10, 4
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %if.end.12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.21
  %12 = load i32, i32* %val1, align 4
  %13 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 14
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i64 %idxprom
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 2
  store i32 %12, i32* %h_samp_factor, align 4
  %16 = load i32, i32* %val2, align 4
  %17 = load i32, i32* %ci, align 4
  %idxprom27 = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 14
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info28, align 8
  %arrayidx29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 %idxprom27
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx29, i32 0, i32 3
  store i32 %16, i32* %v_samp_factor, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.26
  %20 = load i8*, i8** %arg.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv30 = sext i8 %21 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i8*, i8** %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv32 = sext i8 %23 to i32
  %cmp33 = icmp ne i32 %conv32, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 14
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info36, align 8
  %arrayidx37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 %idxprom35
  %h_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx37, i32 0, i32 2
  store i32 1, i32* %h_samp_factor38, align 4
  %28 = load i32, i32* %ci, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 14
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info40, align 8
  %arrayidx41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 %idxprom39
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx41, i32 0, i32 3
  store i32 1, i32* %v_samp_factor42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %31 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.11, %if.then.2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @text_getc(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %ch, align 4
  %cmp2 = icmp ne i32 %3, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, i32* %ch, align 4
  %cmp3 = icmp ne i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %6 = load i32, i32* %ch, align 4
  ret i32 %6
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
