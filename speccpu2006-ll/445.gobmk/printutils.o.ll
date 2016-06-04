; ModuleID = 'engine/printutils.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@verbose = external global i32, align 4
@.str = private unnamed_addr constant [50 x i8] c"%o\0A\0A***assertion failure:\0A%s:%d - %s near %m***\0A\0A\00", align 1
@stackp = external global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\0Agnugo %s (seed %d): You stepped on a bug.\0A\00", align 1
@random_seed = external global i32, align 4
@board_size = external global i32, align 4
@.str.2 = private unnamed_addr constant [136 x i8] c"Please save this game as an sgf file and mail it to gnugo@gnu.org\0AIf you can, please also include the debug output above this message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"white border\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"black border\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"purple?\00", align 1
@location_to_string.init = internal global i32 0, align 4
@location_to_string.buf = internal global [421 x [5 x i8]] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [20 x i8] c"engine/printutils.c\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"pos >= 0 && pos < BOARDSIZE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ALIVE\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"UNCHECKED\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"CAN_THREATEN_ATTACK\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"CAN_THREATEN_DEFENSE\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"INESSENTIAL\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TACTICALLY_DEAD\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ALIVE_IN_SEKI\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"STRONGLY_ALIVE\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"INVINCIBLE\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"INSUBSTANTIAL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"FIND_DEFENSE\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"ATTACK\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"OWL_ATTACK\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"OWL_DEFEND\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"SEMEAI\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"DISCONNECT\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"KO_B\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"LOSS\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"GAIN\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"KO_A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"WIN\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"SEKI\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"                                \00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"\0A\0AUnknown format string '2%c'\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"[%d,%d]\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%-2d\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"\0A\0AUnknown format string '1%c'\0A\00", align 1
@board = external global [421 x i8], align 16
@.str.52 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"\0A\0AUnknown format character '%c'\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gfprintf(%struct._IO_FILE* %outfile, i8* %fmt, ...) #0 {
entry:
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @vgprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @vgprintf(%struct._IO_FILE* %outputfile, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
entry:
  %outputfile.addr = alloca %struct._IO_FILE*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %d30 = alloca i32, align 4
  %f = alloca double, align 8
  %s = alloca i8*, align 8
  %movename = alloca [4 x i8], align 1
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %movename157 = alloca [4 x i8], align 1
  %pos = alloca i32, align 4
  %m169 = alloca i32, align 4
  %n171 = alloca i32, align 4
  %h = alloca i64, align 8
  %color = alloca i32, align 4
  store %struct._IO_FILE* %outputfile, %struct._IO_FILE** %outputfile.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %fmt.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 111
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %fmt.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %fmt.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* @stackp, align 4
  %cmp6 = icmp sgt i32 %5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %7 = load i32, i32* @stackp, align 4
  %mul = mul nsw i32 %7, 2
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 %mul, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %8 = load i8*, i8** %fmt.addr, align 8
  %9 = load i8, i8* %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %fmt.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 37
  br i1 %cmp11, label %if.then.13, label %if.else.246

if.then.13:                                       ; preds = %for.body
  %12 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv14 = sext i8 %13 to i32
  switch i32 %conv14, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb.16
    i32 120, label %sw.bb.29
    i32 102, label %sw.bb.43
    i32 115, label %sw.bb.53
    i32 50, label %sw.bb.66
    i32 109, label %sw.bb.79
    i32 77, label %sw.bb.79
    i32 49, label %sw.bb.144
    i32 72, label %sw.bb.217
    i32 67, label %sw.bb.230
  ]

sw.bb:                                            ; preds = %if.then.13
  %14 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 3
  %reg_save_area = load i8*, i8** %15
  %16 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %17 = bitcast i8* %16 to i32*
  %18 = add i32 %gp_offset, 8
  store i32 %18, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %19 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %17, %vaarg.in_reg ], [ %19, %vaarg.in_mem ]
  %20 = load i32, i32* %vaarg.addr
  store i32 %20, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call15 = call i32 @_IO_putc(i32 %21, %struct._IO_FILE* %22)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.13
  %23 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %gp_offset18 = load i32, i32* %gp_offset_p17
  %fits_in_gp19 = icmp ule i32 %gp_offset18, 40
  br i1 %fits_in_gp19, label %vaarg.in_reg.20, label %vaarg.in_mem.22

vaarg.in_reg.20:                                  ; preds = %sw.bb.16
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %reg_save_area21 = load i8*, i8** %24
  %25 = getelementptr i8, i8* %reg_save_area21, i32 %gp_offset18
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset18, 8
  store i32 %27, i32* %gp_offset_p17
  br label %vaarg.end.26

vaarg.in_mem.22:                                  ; preds = %sw.bb.16
  %overflow_arg_area_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23
  %28 = bitcast i8* %overflow_arg_area24 to i32*
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i32 8
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23
  br label %vaarg.end.26

vaarg.end.26:                                     ; preds = %vaarg.in_mem.22, %vaarg.in_reg.20
  %vaarg.addr27 = phi i32* [ %26, %vaarg.in_reg.20 ], [ %28, %vaarg.in_mem.22 ]
  %29 = load i32, i32* %vaarg.addr27
  store i32 %29, i32* %d, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %31 = load i32, i32* %d, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 %31)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.13
  %32 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 0
  %gp_offset32 = load i32, i32* %gp_offset_p31
  %fits_in_gp33 = icmp ule i32 %gp_offset32, 40
  br i1 %fits_in_gp33, label %vaarg.in_reg.34, label %vaarg.in_mem.36

vaarg.in_reg.34:                                  ; preds = %sw.bb.29
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 3
  %reg_save_area35 = load i8*, i8** %33
  %34 = getelementptr i8, i8* %reg_save_area35, i32 %gp_offset32
  %35 = bitcast i8* %34 to i32*
  %36 = add i32 %gp_offset32, 8
  store i32 %36, i32* %gp_offset_p31
  br label %vaarg.end.40

vaarg.in_mem.36:                                  ; preds = %sw.bb.29
  %overflow_arg_area_p37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 2
  %overflow_arg_area38 = load i8*, i8** %overflow_arg_area_p37
  %37 = bitcast i8* %overflow_arg_area38 to i32*
  %overflow_arg_area.next39 = getelementptr i8, i8* %overflow_arg_area38, i32 8
  store i8* %overflow_arg_area.next39, i8** %overflow_arg_area_p37
  br label %vaarg.end.40

vaarg.end.40:                                     ; preds = %vaarg.in_mem.36, %vaarg.in_reg.34
  %vaarg.addr41 = phi i32* [ %35, %vaarg.in_reg.34 ], [ %37, %vaarg.in_mem.36 ]
  %38 = load i32, i32* %vaarg.addr41
  store i32 %38, i32* %d30, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %40 = load i32, i32* %d30, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 %40)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then.13
  %41 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.44, label %vaarg.in_mem.46

vaarg.in_reg.44:                                  ; preds = %sw.bb.43
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 3
  %reg_save_area45 = load i8*, i8** %42
  %43 = getelementptr i8, i8* %reg_save_area45, i32 %fp_offset
  %44 = bitcast i8* %43 to double*
  %45 = add i32 %fp_offset, 16
  store i32 %45, i32* %fp_offset_p
  br label %vaarg.end.50

vaarg.in_mem.46:                                  ; preds = %sw.bb.43
  %overflow_arg_area_p47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 2
  %overflow_arg_area48 = load i8*, i8** %overflow_arg_area_p47
  %46 = bitcast i8* %overflow_arg_area48 to double*
  %overflow_arg_area.next49 = getelementptr i8, i8* %overflow_arg_area48, i32 8
  store i8* %overflow_arg_area.next49, i8** %overflow_arg_area_p47
  br label %vaarg.end.50

vaarg.end.50:                                     ; preds = %vaarg.in_mem.46, %vaarg.in_reg.44
  %vaarg.addr51 = phi double* [ %44, %vaarg.in_reg.44 ], [ %46, %vaarg.in_mem.46 ]
  %47 = load double, double* %vaarg.addr51
  store double %47, double* %f, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %49 = load double, double* %f, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), double %49)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.then.13
  %50 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %gp_offset55 = load i32, i32* %gp_offset_p54
  %fits_in_gp56 = icmp ule i32 %gp_offset55, 40
  br i1 %fits_in_gp56, label %vaarg.in_reg.57, label %vaarg.in_mem.59

vaarg.in_reg.57:                                  ; preds = %sw.bb.53
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %reg_save_area58 = load i8*, i8** %51
  %52 = getelementptr i8, i8* %reg_save_area58, i32 %gp_offset55
  %53 = bitcast i8* %52 to i8**
  %54 = add i32 %gp_offset55, 8
  store i32 %54, i32* %gp_offset_p54
  br label %vaarg.end.63

vaarg.in_mem.59:                                  ; preds = %sw.bb.53
  %overflow_arg_area_p60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %overflow_arg_area61 = load i8*, i8** %overflow_arg_area_p60
  %55 = bitcast i8* %overflow_arg_area61 to i8**
  %overflow_arg_area.next62 = getelementptr i8, i8* %overflow_arg_area61, i32 8
  store i8* %overflow_arg_area.next62, i8** %overflow_arg_area_p60
  br label %vaarg.end.63

vaarg.end.63:                                     ; preds = %vaarg.in_mem.59, %vaarg.in_reg.57
  %vaarg.addr64 = phi i8** [ %53, %vaarg.in_reg.57 ], [ %55, %vaarg.in_mem.59 ]
  %56 = load i8*, i8** %vaarg.addr64
  store i8* %56, i8** %s, align 8
  %57 = load i8*, i8** %s, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call65 = call i32 @fputs(i8* %57, %struct._IO_FILE* %58)
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.then.13
  %59 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr67, i8** %fmt.addr, align 8
  %60 = load i8*, i8** %fmt.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv68 = sext i8 %61 to i32
  %cmp69 = icmp ne i32 %conv68, 109
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.78

land.lhs.true.71:                                 ; preds = %sw.bb.66
  %62 = load i8*, i8** %fmt.addr, align 8
  %63 = load i8, i8* %62, align 1
  %conv72 = sext i8 %63 to i32
  %cmp73 = icmp ne i32 %conv72, 77
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %land.lhs.true.71
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %65 = load i8*, i8** %fmt.addr, align 8
  %66 = load i8, i8* %65, align 1
  %conv76 = sext i8 %66 to i32
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i32 %conv76)
  br label %sw.epilog

if.end.78:                                        ; preds = %land.lhs.true.71, %sw.bb.66
  br label %sw.bb.79

sw.bb.79:                                         ; preds = %if.then.13, %if.then.13, %if.end.78
  %67 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 0
  %gp_offset81 = load i32, i32* %gp_offset_p80
  %fits_in_gp82 = icmp ule i32 %gp_offset81, 40
  br i1 %fits_in_gp82, label %vaarg.in_reg.83, label %vaarg.in_mem.85

vaarg.in_reg.83:                                  ; preds = %sw.bb.79
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 3
  %reg_save_area84 = load i8*, i8** %68
  %69 = getelementptr i8, i8* %reg_save_area84, i32 %gp_offset81
  %70 = bitcast i8* %69 to i32*
  %71 = add i32 %gp_offset81, 8
  store i32 %71, i32* %gp_offset_p80
  br label %vaarg.end.89

vaarg.in_mem.85:                                  ; preds = %sw.bb.79
  %overflow_arg_area_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 2
  %overflow_arg_area87 = load i8*, i8** %overflow_arg_area_p86
  %72 = bitcast i8* %overflow_arg_area87 to i32*
  %overflow_arg_area.next88 = getelementptr i8, i8* %overflow_arg_area87, i32 8
  store i8* %overflow_arg_area.next88, i8** %overflow_arg_area_p86
  br label %vaarg.end.89

vaarg.end.89:                                     ; preds = %vaarg.in_mem.85, %vaarg.in_reg.83
  %vaarg.addr90 = phi i32* [ %70, %vaarg.in_reg.83 ], [ %72, %vaarg.in_mem.85 ]
  %73 = load i32, i32* %vaarg.addr90
  store i32 %73, i32* %m, align 4
  %74 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 0
  %gp_offset92 = load i32, i32* %gp_offset_p91
  %fits_in_gp93 = icmp ule i32 %gp_offset92, 40
  br i1 %fits_in_gp93, label %vaarg.in_reg.94, label %vaarg.in_mem.96

vaarg.in_reg.94:                                  ; preds = %vaarg.end.89
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 3
  %reg_save_area95 = load i8*, i8** %75
  %76 = getelementptr i8, i8* %reg_save_area95, i32 %gp_offset92
  %77 = bitcast i8* %76 to i32*
  %78 = add i32 %gp_offset92, 8
  store i32 %78, i32* %gp_offset_p91
  br label %vaarg.end.100

vaarg.in_mem.96:                                  ; preds = %vaarg.end.89
  %overflow_arg_area_p97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 2
  %overflow_arg_area98 = load i8*, i8** %overflow_arg_area_p97
  %79 = bitcast i8* %overflow_arg_area98 to i32*
  %overflow_arg_area.next99 = getelementptr i8, i8* %overflow_arg_area98, i32 8
  store i8* %overflow_arg_area.next99, i8** %overflow_arg_area_p97
  br label %vaarg.end.100

vaarg.end.100:                                    ; preds = %vaarg.in_mem.96, %vaarg.in_reg.94
  %vaarg.addr101 = phi i32* [ %77, %vaarg.in_reg.94 ], [ %79, %vaarg.in_mem.96 ]
  %80 = load i32, i32* %vaarg.addr101
  store i32 %80, i32* %n, align 4
  %81 = load i32, i32* %m, align 4
  %cmp102 = icmp eq i32 %81, -1
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.109

land.lhs.true.104:                                ; preds = %vaarg.end.100
  %82 = load i32, i32* %n, align 4
  %cmp105 = icmp eq i32 %82, -1
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %land.lhs.true.104
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call108 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %83)
  br label %if.end.143

if.else.109:                                      ; preds = %land.lhs.true.104, %vaarg.end.100
  %84 = load i32, i32* %m, align 4
  %85 = load i32, i32* @board_size, align 4
  %cmp110 = icmp ult i32 %84, %85
  br i1 %cmp110, label %land.lhs.true.112, label %if.then.115

land.lhs.true.112:                                ; preds = %if.else.109
  %86 = load i32, i32* %n, align 4
  %87 = load i32, i32* @board_size, align 4
  %cmp113 = icmp ult i32 %86, %87
  br i1 %cmp113, label %if.else.117, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true.112, %if.else.109
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %89 = load i32, i32* %m, align 4
  %90 = load i32, i32* %n, align 4
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 %89, i32 %90)
  br label %if.end.142

if.else.117:                                      ; preds = %land.lhs.true.112
  %91 = load i32, i32* %n, align 4
  %cmp118 = icmp slt i32 %91, 8
  br i1 %cmp118, label %if.then.120, label %if.else.123

if.then.120:                                      ; preds = %if.else.117
  %92 = load i32, i32* %n, align 4
  %add = add nsw i32 %92, 65
  %conv121 = trunc i32 %add to i8
  %arrayidx122 = getelementptr inbounds [4 x i8], [4 x i8]* %movename, i32 0, i64 0
  store i8 %conv121, i8* %arrayidx122, align 1
  br label %if.end.127

if.else.123:                                      ; preds = %if.else.117
  %93 = load i32, i32* %n, align 4
  %add124 = add nsw i32 %93, 66
  %conv125 = trunc i32 %add124 to i8
  %arrayidx126 = getelementptr inbounds [4 x i8], [4 x i8]* %movename, i32 0, i64 0
  store i8 %conv125, i8* %arrayidx126, align 1
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.123, %if.then.120
  %94 = load i8*, i8** %fmt.addr, align 8
  %95 = load i8, i8* %94, align 1
  %conv128 = sext i8 %95 to i32
  %cmp129 = icmp eq i32 %conv128, 109
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %if.end.127
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %movename, i32 0, i32 0
  %add.ptr132 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %96 = load i32, i32* @board_size, align 4
  %97 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %96, %97
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 %sub) #1
  br label %if.end.139

if.else.134:                                      ; preds = %if.end.127
  %arraydecay135 = getelementptr inbounds [4 x i8], [4 x i8]* %movename, i32 0, i32 0
  %add.ptr136 = getelementptr inbounds i8, i8* %arraydecay135, i64 1
  %98 = load i32, i32* @board_size, align 4
  %99 = load i32, i32* %m, align 4
  %sub137 = sub nsw i32 %98, %99
  %call138 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 %sub137) #1
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.134, %if.then.131
  %arraydecay140 = getelementptr inbounds [4 x i8], [4 x i8]* %movename, i32 0, i32 0
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call141 = call i32 @fputs(i8* %arraydecay140, %struct._IO_FILE* %100)
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.139, %if.then.115
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.107
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.then.13
  %101 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr145, i8** %fmt.addr, align 8
  %102 = load i8*, i8** %fmt.addr, align 8
  %103 = load i8, i8* %102, align 1
  %conv146 = sext i8 %103 to i32
  %cmp147 = icmp ne i32 %conv146, 109
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.156

land.lhs.true.149:                                ; preds = %sw.bb.144
  %104 = load i8*, i8** %fmt.addr, align 8
  %105 = load i8, i8* %104, align 1
  %conv150 = sext i8 %105 to i32
  %cmp151 = icmp ne i32 %conv150, 77
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %land.lhs.true.149
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %107 = load i8*, i8** %fmt.addr, align 8
  %108 = load i8, i8* %107, align 1
  %conv154 = sext i8 %108 to i32
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0), i32 %conv154)
  br label %sw.epilog

if.else.156:                                      ; preds = %land.lhs.true.149, %sw.bb.144
  %109 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p158 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 0
  %gp_offset159 = load i32, i32* %gp_offset_p158
  %fits_in_gp160 = icmp ule i32 %gp_offset159, 40
  br i1 %fits_in_gp160, label %vaarg.in_reg.161, label %vaarg.in_mem.163

vaarg.in_reg.161:                                 ; preds = %if.else.156
  %110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 3
  %reg_save_area162 = load i8*, i8** %110
  %111 = getelementptr i8, i8* %reg_save_area162, i32 %gp_offset159
  %112 = bitcast i8* %111 to i32*
  %113 = add i32 %gp_offset159, 8
  store i32 %113, i32* %gp_offset_p158
  br label %vaarg.end.167

vaarg.in_mem.163:                                 ; preds = %if.else.156
  %overflow_arg_area_p164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 2
  %overflow_arg_area165 = load i8*, i8** %overflow_arg_area_p164
  %114 = bitcast i8* %overflow_arg_area165 to i32*
  %overflow_arg_area.next166 = getelementptr i8, i8* %overflow_arg_area165, i32 8
  store i8* %overflow_arg_area.next166, i8** %overflow_arg_area_p164
  br label %vaarg.end.167

vaarg.end.167:                                    ; preds = %vaarg.in_mem.163, %vaarg.in_reg.161
  %vaarg.addr168 = phi i32* [ %112, %vaarg.in_reg.161 ], [ %114, %vaarg.in_mem.163 ]
  %115 = load i32, i32* %vaarg.addr168
  store i32 %115, i32* %pos, align 4
  %116 = load i32, i32* %pos, align 4
  %div = sdiv i32 %116, 20
  %sub170 = sub nsw i32 %div, 1
  store i32 %sub170, i32* %m169, align 4
  %117 = load i32, i32* %pos, align 4
  %rem = srem i32 %117, 20
  %sub172 = sub nsw i32 %rem, 1
  store i32 %sub172, i32* %n171, align 4
  %118 = load i32, i32* %pos, align 4
  %cmp173 = icmp eq i32 %118, 0
  br i1 %cmp173, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %vaarg.end.167
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call176 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %119)
  br label %if.end.216

if.else.177:                                      ; preds = %vaarg.end.167
  %120 = load i32, i32* %pos, align 4
  %cmp178 = icmp ult i32 %120, 421
  br i1 %cmp178, label %land.lhs.true.180, label %if.then.185

land.lhs.true.180:                                ; preds = %if.else.177
  %121 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %121 to i64
  %arrayidx181 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %122 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %122 to i32
  %cmp183 = icmp ne i32 %conv182, 3
  br i1 %cmp183, label %if.else.187, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.180, %if.else.177
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %124 = load i32, i32* %pos, align 4
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 %124)
  br label %if.end.215

if.else.187:                                      ; preds = %land.lhs.true.180
  %125 = load i32, i32* %n171, align 4
  %cmp188 = icmp slt i32 %125, 8
  br i1 %cmp188, label %if.then.190, label %if.else.194

if.then.190:                                      ; preds = %if.else.187
  %126 = load i32, i32* %n171, align 4
  %add191 = add nsw i32 %126, 65
  %conv192 = trunc i32 %add191 to i8
  %arrayidx193 = getelementptr inbounds [4 x i8], [4 x i8]* %movename157, i32 0, i64 0
  store i8 %conv192, i8* %arrayidx193, align 1
  br label %if.end.198

if.else.194:                                      ; preds = %if.else.187
  %127 = load i32, i32* %n171, align 4
  %add195 = add nsw i32 %127, 66
  %conv196 = trunc i32 %add195 to i8
  %arrayidx197 = getelementptr inbounds [4 x i8], [4 x i8]* %movename157, i32 0, i64 0
  store i8 %conv196, i8* %arrayidx197, align 1
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.194, %if.then.190
  %128 = load i8*, i8** %fmt.addr, align 8
  %129 = load i8, i8* %128, align 1
  %conv199 = sext i8 %129 to i32
  %cmp200 = icmp eq i32 %conv199, 109
  br i1 %cmp200, label %if.then.202, label %if.else.207

if.then.202:                                      ; preds = %if.end.198
  %arraydecay203 = getelementptr inbounds [4 x i8], [4 x i8]* %movename157, i32 0, i32 0
  %add.ptr204 = getelementptr inbounds i8, i8* %arraydecay203, i64 1
  %130 = load i32, i32* @board_size, align 4
  %131 = load i32, i32* %m169, align 4
  %sub205 = sub nsw i32 %130, %131
  %call206 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 %sub205) #1
  br label %if.end.212

if.else.207:                                      ; preds = %if.end.198
  %arraydecay208 = getelementptr inbounds [4 x i8], [4 x i8]* %movename157, i32 0, i32 0
  %add.ptr209 = getelementptr inbounds i8, i8* %arraydecay208, i64 1
  %132 = load i32, i32* @board_size, align 4
  %133 = load i32, i32* %m169, align 4
  %sub210 = sub nsw i32 %132, %133
  %call211 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 %sub210) #1
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.207, %if.then.202
  %arraydecay213 = getelementptr inbounds [4 x i8], [4 x i8]* %movename157, i32 0, i32 0
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call214 = call i32 @fputs(i8* %arraydecay213, %struct._IO_FILE* %134)
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.212, %if.then.185
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.175
  br label %sw.epilog

sw.bb.217:                                        ; preds = %if.then.13
  %135 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 0
  %gp_offset219 = load i32, i32* %gp_offset_p218
  %fits_in_gp220 = icmp ule i32 %gp_offset219, 40
  br i1 %fits_in_gp220, label %vaarg.in_reg.221, label %vaarg.in_mem.223

vaarg.in_reg.221:                                 ; preds = %sw.bb.217
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 3
  %reg_save_area222 = load i8*, i8** %136
  %137 = getelementptr i8, i8* %reg_save_area222, i32 %gp_offset219
  %138 = bitcast i8* %137 to i64*
  %139 = add i32 %gp_offset219, 8
  store i32 %139, i32* %gp_offset_p218
  br label %vaarg.end.227

vaarg.in_mem.223:                                 ; preds = %sw.bb.217
  %overflow_arg_area_p224 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 2
  %overflow_arg_area225 = load i8*, i8** %overflow_arg_area_p224
  %140 = bitcast i8* %overflow_arg_area225 to i64*
  %overflow_arg_area.next226 = getelementptr i8, i8* %overflow_arg_area225, i32 8
  store i8* %overflow_arg_area.next226, i8** %overflow_arg_area_p224
  br label %vaarg.end.227

vaarg.end.227:                                    ; preds = %vaarg.in_mem.223, %vaarg.in_reg.221
  %vaarg.addr228 = phi i64* [ %138, %vaarg.in_reg.221 ], [ %140, %vaarg.in_mem.223 ]
  %141 = load i64, i64* %vaarg.addr228
  store i64 %141, i64* %h, align 8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %143 = load i64, i64* %h, align 8
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i64 %143)
  br label %sw.epilog

sw.bb.230:                                        ; preds = %if.then.13
  %144 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p231 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 0
  %gp_offset232 = load i32, i32* %gp_offset_p231
  %fits_in_gp233 = icmp ule i32 %gp_offset232, 40
  br i1 %fits_in_gp233, label %vaarg.in_reg.234, label %vaarg.in_mem.236

vaarg.in_reg.234:                                 ; preds = %sw.bb.230
  %145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 3
  %reg_save_area235 = load i8*, i8** %145
  %146 = getelementptr i8, i8* %reg_save_area235, i32 %gp_offset232
  %147 = bitcast i8* %146 to i32*
  %148 = add i32 %gp_offset232, 8
  store i32 %148, i32* %gp_offset_p231
  br label %vaarg.end.240

vaarg.in_mem.236:                                 ; preds = %sw.bb.230
  %overflow_arg_area_p237 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 2
  %overflow_arg_area238 = load i8*, i8** %overflow_arg_area_p237
  %149 = bitcast i8* %overflow_arg_area238 to i32*
  %overflow_arg_area.next239 = getelementptr i8, i8* %overflow_arg_area238, i32 8
  store i8* %overflow_arg_area.next239, i8** %overflow_arg_area_p237
  br label %vaarg.end.240

vaarg.end.240:                                    ; preds = %vaarg.in_mem.236, %vaarg.in_reg.234
  %vaarg.addr241 = phi i32* [ %147, %vaarg.in_reg.234 ], [ %149, %vaarg.in_mem.236 ]
  %150 = load i32, i32* %vaarg.addr241
  store i32 %150, i32* %color, align 4
  %151 = load i32, i32* %color, align 4
  %call242 = call i8* @color_to_string(i32 %151)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call243 = call i32 @fputs(i8* %call242, %struct._IO_FILE* %152)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.13
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %154 = load i8*, i8** %fmt.addr, align 8
  %155 = load i8, i8* %154, align 1
  %conv244 = sext i8 %155 to i32
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0), i32 %conv244)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %vaarg.end.240, %vaarg.end.227, %if.end.216, %if.then.153, %if.end.143, %if.then.75, %vaarg.end.63, %vaarg.end.50, %vaarg.end.40, %vaarg.end.26, %vaarg.end
  br label %if.end.249

if.else.246:                                      ; preds = %for.body
  %156 = load i8*, i8** %fmt.addr, align 8
  %157 = load i8, i8* %156, align 1
  %conv247 = sext i8 %157 to i32
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %outputfile.addr, align 8
  %call248 = call i32 @_IO_putc(i32 %conv247, %struct._IO_FILE* %158)
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.246, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.249
  %159 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr250, i8** %fmt.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gprintf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @vgprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @mprintf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @vgprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @abortgo(i8* %file, i32 %line, i8* %msg, i32 %x, i32 %y) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 4, i32* @verbose, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load i32, i32* %line.addr, align 4
  %3 = load i8*, i8** %msg.addr, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %2, i8* %3, i32 %4, i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  call void @dump_stack()
  call void @showboard(i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %6 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @popgo()
  call void @showboard(i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i8* @gg_version()
  %8 = load i32, i32* @random_seed, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %call1, i32 %8)
  %9 = load i32, i32* @board_size, align 4
  %cmp3 = icmp sge i32 %9, 9
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load i32, i32* @board_size, align 4
  %cmp4 = icmp sle i32 %10, 19
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %14)
  call void @abort() #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @dump_stack() #2

declare void @showboard(i32) #2

declare void @popgo() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @gg_version() #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i8* @color_to_string(i32 %color) #0 {
entry:
  %retval = alloca i8*, align 8
  %color.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %3 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %3, 3
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  %4 = load i32, i32* %color.addr, align 4
  %cmp10 = icmp eq i32 %4, 4
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.9
  %5 = load i32, i32* %color.addr, align 4
  %cmp13 = icmp eq i32 %5, 5
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

if.else.15:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.14, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i8* @location_to_string(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %pos1 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* @location_to_string.init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %pos1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %pos1, align 4
  %cmp = icmp slt i32 %1, 421
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos1, align 4
  %3 = load i32, i32* %pos1, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x [5 x i8]], [421 x [5 x i8]]* @location_to_string.buf, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx, i32 0, i32 0
  call void @location_to_buffer(i32 %2, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %pos1, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %pos1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @location_to_string.init, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %5 = load i32, i32* %pos.addr, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %cmp3 = icmp slt i32 %6, 421
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %8, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [421 x [5 x i8]], [421 x [5 x i8]]* @location_to_string.buf, i32 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx8, i32 0, i32 0
  ret i8* %arraydecay9
}

; Function Attrs: nounwind uwtable
define void @location_to_buffer(i32 %pos, i8* %buf) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %bufp, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %1, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %i, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %2, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %j, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 65, %5
  %conv = trunc i32 %add to i8
  %6 = load i8*, i8** %bufp, align 8
  store i8 %conv, i8* %6, align 1
  %7 = load i8*, i8** %bufp, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp sge i32 %conv2, 73
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i8*, i8** %bufp, align 8
  %10 = load i8, i8* %9, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %9, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %11 = load i8*, i8** %bufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %bufp, align 8
  %12 = load i32, i32* @board_size, align 4
  %13 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %12, %13
  store i32 %sub7, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp8 = icmp sgt i32 %14, 9
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.6
  %15 = load i32, i32* %i, align 4
  %div11 = sdiv i32 %15, 10
  %add12 = add nsw i32 48, %div11
  %conv13 = trunc i32 %add12 to i8
  %16 = load i8*, i8** %bufp, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr14, i8** %bufp, align 8
  store i8 %conv13, i8* %16, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.6
  %17 = load i32, i32* %i, align 4
  %rem16 = srem i32 %17, 10
  %add17 = add nsw i32 48, %rem16
  %conv18 = trunc i32 %add17 to i8
  %18 = load i8*, i8** %bufp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %bufp, align 8
  store i8 %conv18, i8* %18, align 1
  %19 = load i8*, i8** %bufp, align 8
  store i8 0, i8* %19, align 1
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @status_to_string(i32 %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %status.addr, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %3 = load i32, i32* %status.addr, align 4
  %cmp7 = icmp eq i32 %3, 3
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  %4 = load i32, i32* %status.addr, align 4
  %cmp10 = icmp eq i32 %4, 4
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.9
  %5 = load i32, i32* %status.addr, align 4
  %cmp13 = icmp eq i32 %5, 11
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

if.else.15:                                       ; preds = %if.else.12
  %6 = load i32, i32* %status.addr, align 4
  %cmp16 = icmp eq i32 %6, 12
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.18:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.18, %if.then.17, %if.then.14, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @safety_to_string(i32 %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %status.addr, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %3 = load i32, i32* %status.addr, align 4
  %cmp7 = icmp eq i32 %3, 5
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  %4 = load i32, i32* %status.addr, align 4
  %cmp10 = icmp eq i32 %4, 6
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.9
  %5 = load i32, i32* %status.addr, align 4
  %cmp13 = icmp eq i32 %5, 7
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

if.else.15:                                       ; preds = %if.else.12
  %6 = load i32, i32* %status.addr, align 4
  %cmp16 = icmp eq i32 %6, 8
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

if.else.18:                                       ; preds = %if.else.15
  %7 = load i32, i32* %status.addr, align 4
  %cmp19 = icmp eq i32 %7, 9
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

if.else.21:                                       ; preds = %if.else.18
  %8 = load i32, i32* %status.addr, align 4
  %cmp22 = icmp eq i32 %8, 10
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.21
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

if.else.24:                                       ; preds = %if.else.21
  %9 = load i32, i32* %status.addr, align 4
  %cmp25 = icmp eq i32 %9, 11
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.24
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

if.else.27:                                       ; preds = %if.else.24
  %10 = load i32, i32* %status.addr, align 4
  %cmp28 = icmp eq i32 %10, 12
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.27
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.30:                                       ; preds = %if.else.27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.30, %if.then.29, %if.then.26, %if.then.23, %if.then.20, %if.then.17, %if.then.14, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i8* @routine_to_string(i32 %routine) #0 {
entry:
  %retval = alloca i8*, align 8
  %routine.addr = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  %0 = load i32, i32* %routine.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %routine.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %routine.addr, align 4
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %3 = load i32, i32* %routine.addr, align 4
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  %4 = load i32, i32* %routine.addr, align 4
  %cmp10 = icmp eq i32 %4, 2
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.9
  %5 = load i32, i32* %routine.addr, align 4
  %cmp13 = icmp eq i32 %5, 5
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8** %retval
  br label %return

if.else.15:                                       ; preds = %if.else.12
  %6 = load i32, i32* %routine.addr, align 4
  %cmp16 = icmp eq i32 %6, 6
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8** %retval
  br label %return

if.else.18:                                       ; preds = %if.else.15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.18, %if.then.17, %if.then.14, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @result_to_string(i32 %result) #0 {
entry:
  %retval = alloca i8*, align 8
  %result.addr = alloca i32, align 4
  store i32 %result, i32* %result.addr, align 4
  %0 = load i32, i32* %result.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 7, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @string_to_location(i32 %boardsize, i8* %str, i32* %m, i32* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %boardsize.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %m.addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32* %m, i32** %m.addr, align 8
  store i32* %n, i32** %n.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #8
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %call7 = call i32 @tolower(i32 %conv6) #1
  %sub = sub nsw i32 %call7, 97
  %8 = load i32*, i32** %n.addr, align 8
  store i32 %sub, i32* %8, align 4
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %call9 = call i32 @tolower(i32 %conv8) #1
  %cmp10 = icmp sge i32 %call9, 105
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  %11 = load i32*, i32** %n.addr, align 8
  %12 = load i32, i32* %11, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %11, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.5
  %13 = load i32*, i32** %n.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp14 = icmp slt i32 %14, 0
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %15 = load i32*, i32** %n.addr, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %boardsize.addr, align 4
  %sub16 = sub nsw i32 %17, 1
  %cmp17 = icmp sgt i32 %16, %sub16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.13
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  %18 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %add.ptr, align 1
  %conv21 = sext i8 %19 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %call23 = call i16** @__ctype_b_loc() #8
  %20 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %20, i64 %idxprom22
  %21 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %21 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.20
  %22 = load i32, i32* %boardsize.addr, align 4
  %23 = load i8*, i8** %str.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %23, i64 1
  %call31 = call i32 @atoi(i8* %add.ptr30) #9
  %sub32 = sub nsw i32 %22, %call31
  %24 = load i32*, i32** %m.addr, align 8
  store i32 %sub32, i32* %24, align 4
  %25 = load i32*, i32** %m.addr, align 8
  %26 = load i32, i32* %25, align 4
  %cmp33 = icmp slt i32 %26, 0
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.29
  %27 = load i32*, i32** %m.addr, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %boardsize.addr, align 4
  %sub36 = sub nsw i32 %29, 1
  %cmp37 = icmp sgt i32 %28, %sub36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.35, %if.end.29
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.35
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.28, %if.then.19, %if.then.4, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
