; ModuleID = './lib/printers.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_printers_s = type { %struct.a2ps_common_s*, %struct.hash_table_s*, %struct.printer, %struct.printer, i8*, i8*, %struct.ppd*, i8, i8*, i8, i8* }
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.printer = type { i8*, i8*, i8* }
%struct.ppd = type { i8*, i8*, i8*, %struct.string_htable* }
%struct.string_htable = type opaque
%struct.a2ps_common_s = type { i8** }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stream = type { i8, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.lister = type opaque
%struct.file_job = type opaque

@.str = private unnamed_addr constant [16 x i8] c"Default Printer\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Unknown Printer\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"level1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Known Outputs (Printers, etc.)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"output command\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"sent to the standard output\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"sent to the default printer\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"saved into the file `%s'\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"sent to the printer `%s'\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" (PPD: %s)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"no command for the `%s' (%s%s)\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-P \00", align 1

; Function Attrs: nounwind uwtable
define %struct.a2ps_printers_s* @a2ps_printers_new(%struct.a2ps_common_s* %common) #0 {
entry:
  %common.addr = alloca %struct.a2ps_common_s*, align 8
  %res = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_common_s* %common, %struct.a2ps_common_s** %common.addr, align 8
  %call = call i8* @xmalloc(i64 120)
  %0 = bitcast i8* %call to %struct.a2ps_printers_s*
  store %struct.a2ps_printers_s* %0, %struct.a2ps_printers_s** %res, align 8
  %1 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common.addr, align 8
  %2 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %common1 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %2, i32 0, i32 0
  store %struct.a2ps_common_s* %1, %struct.a2ps_common_s** %common1, align 8
  %call2 = call %struct.hash_table_s* @printer_table_new()
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %printers = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 1
  store %struct.hash_table_s* %call2, %struct.hash_table_s** %printers, align 8
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %4, i32 0, i32 2
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  call void @printer_create(%struct.printer* %default_printer, i8* %call3)
  %5 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %5, i32 0, i32 3
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  call void @printer_create(%struct.printer* %unknown_printer, i8* %call4)
  %6 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %request_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %6, i32 0, i32 5
  store i8* null, i8** %request_ppdkey, align 8
  %call5 = call i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %7 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %default_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %7, i32 0, i32 4
  store i8* %call5, i8** %default_ppdkey, align 8
  %8 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %ppd = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %8, i32 0, i32 6
  store %struct.ppd* null, %struct.ppd** %ppd, align 8
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 7
  store i8 1, i8* %flag_output_is_printer, align 1
  %10 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %10, i32 0, i32 8
  store i8* null, i8** %flag_output_name, align 8
  %11 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %output_is_file = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %11, i32 0, i32 9
  store i8 1, i8* %output_is_file, align 1
  %12 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  %output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %12, i32 0, i32 10
  store i8* null, i8** %output_name, align 8
  %13 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %res, align 8
  ret %struct.a2ps_printers_s* %13
}

declare i8* @xmalloc(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.hash_table_s* @printer_table_new() #2 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* bitcast (i64 (%struct.printer*)* @printer_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.printer*)* @printer_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.printer*, %struct.printer*)* @printer_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

; Function Attrs: nounwind uwtable
define internal void @printer_create(%struct.printer* %p, i8* %key) #0 {
entry:
  %p.addr = alloca %struct.printer*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.printer* %p, %struct.printer** %p.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i8* @xstrdup(i8* %0)
  %1 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %key1 = getelementptr inbounds %struct.printer, %struct.printer* %1, i32 0, i32 0
  store i8* %call, i8** %key1, align 8
  %2 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %ppdkey = getelementptr inbounds %struct.printer, %struct.printer* %2, i32 0, i32 1
  store i8* null, i8** %ppdkey, align 8
  %3 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %command = getelementptr inbounds %struct.printer, %struct.printer* %3, i32 0, i32 2
  store i8* null, i8** %command, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_printers_free(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %printers1 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 1
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %printers1, align 8
  call void @printer_table_free(%struct.hash_table_s* %1)
  %2 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %2, i32 0, i32 2
  call void @printer_free(%struct.printer* %default_printer)
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 3
  call void @printer_free(%struct.printer* %unknown_printer)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %4, i32 0, i32 5
  %5 = load i8*, i8** %request_ppdkey, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey2 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %6, i32 0, i32 5
  %7 = load i8*, i8** %request_ppdkey2, align 8
  call void @free(i8* %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %8 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %8, i32 0, i32 4
  %9 = load i8*, i8** %default_ppdkey, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body.3
  %10 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey6 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %10, i32 0, i32 4
  %11 = load i8*, i8** %default_ppdkey6, align 8
  call void @free(i8* %11) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body.3
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %12 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %ppd = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %12, i32 0, i32 6
  %13 = load %struct.ppd*, %struct.ppd** %ppd, align 8
  call void @ppd_free(%struct.ppd* %13)
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %14 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %14, i32 0, i32 8
  %15 = load i8*, i8** %flag_output_name, align 8
  %tobool10 = icmp ne i8* %15, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %do.body.9
  %16 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name12 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %16, i32 0, i32 8
  %17 = load i8*, i8** %flag_output_name12, align 8
  call void @free(i8* %17) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %do.body.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %18 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %18, i32 0, i32 10
  %19 = load i8*, i8** %output_name, align 8
  %tobool16 = icmp ne i8* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.body.15
  %20 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %output_name18 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %20, i32 0, i32 10
  %21 = load i8*, i8** %output_name18, align 8
  call void @free(i8* %21) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.body.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %22 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %23 = bitcast %struct.a2ps_printers_s* %22 to i8*
  call void @free(i8* %23) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @printer_table_free(%struct.hash_table_s* %table) #2 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.printer*)* @printer_free to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @printer_free(%struct.printer* %printer) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key1 = getelementptr inbounds %struct.printer, %struct.printer* %2, i32 0, i32 0
  %3 = load i8*, i8** %key1, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %ppdkey = getelementptr inbounds %struct.printer, %struct.printer* %4, i32 0, i32 1
  %5 = load i8*, i8** %ppdkey, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.2
  %6 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %ppdkey5 = getelementptr inbounds %struct.printer, %struct.printer* %6, i32 0, i32 1
  %7 = load i8*, i8** %ppdkey5, align 8
  call void @free(i8* %7) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.2
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %8 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %command = getelementptr inbounds %struct.printer, %struct.printer* %8, i32 0, i32 2
  %9 = load i8*, i8** %command, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.body.8
  %10 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %command11 = getelementptr inbounds %struct.printer, %struct.printer* %10, i32 0, i32 2
  %11 = load i8*, i8** %command11, align 8
  call void @free(i8* %11) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @ppd_free(%struct.ppd*) #1

; Function Attrs: nounwind uwtable
define i8* @a2ps_flag_destination_to_string(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 25
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %flag_output_name, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 25
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers1, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %4, i32 0, i32 7
  %5 = load i8, i8* %flag_output_is_printer, align 1
  %tobool = trunc i8 %5 to i1
  %cond = select i1 %tobool, i32 0, i32 1
  %tobool2 = icmp ne i32 %cond, 0
  %call = call i8* @destination_to_string(i8* %2, i1 zeroext %tobool2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @destination_to_string(i8* %name, i1 zeroext %file_p) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %file_p.addr = alloca i8, align 1
  %res = alloca i8*, align 8
  %format = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %frombool = zext i1 %file_p to i8
  store i8 %frombool, i8* %file_p.addr, align 1
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8, i8* %file_p.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #5
  %call4 = call i8* @xstrdup(i8* %call)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  %call6 = call i8* @xstrdup(i8* %call5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ %call6, %cond.false ]
  store i8* %cond, i8** %res, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8, i8* %file_p.addr, align 1
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.else
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %cond.end.13

cond.false.11:                                    ; preds = %if.else
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.9
  %cond14 = phi i8* [ %call10, %cond.true.9 ], [ %call12, %cond.false.11 ]
  store i8* %cond14, i8** %format, align 8
  %5 = load i8*, i8** %format, align 8
  %call15 = call i64 @strlen(i8* %5) #6
  %6 = load i8*, i8** %name.addr, align 8
  %call16 = call i64 @strlen(i8* %6) #6
  %add = add i64 %call15, %call16
  %mul = mul i64 1, %add
  %call17 = call i8* @xmalloc(i64 %mul)
  store i8* %call17, i8** %res, align 8
  %7 = load i8*, i8** %res, align 8
  %8 = load i8*, i8** %format, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* %8, i8* %9) #5
  br label %if.end

if.end:                                           ; preds = %cond.end.13, %cond.end
  %10 = load i8*, i8** %res, align 8
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @a2ps_destination_to_string(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 25
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 10
  %2 = load i8*, i8** %output_name, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 25
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers1, align 8
  %output_is_file = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %4, i32 0, i32 9
  %5 = load i8, i8* %output_is_file, align 1
  %tobool = trunc i8 %5 to i1
  %call = call i8* @destination_to_string(i8* %2, i1 zeroext %tobool)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @a2ps_printers_finalize(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %ppdkey = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 5
  %1 = load i8*, i8** %request_ppdkey, align 8
  store i8* %1, i8** %ppdkey, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.3

if.else:                                          ; preds = %entry
  %2 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %2, i32 0, i32 7
  %3 = load i8, i8* %flag_output_is_printer, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %5 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %5, i32 0, i32 8
  %6 = load i8*, i8** %flag_output_name, align 8
  %call = call i8* @a2ps_printers_ppdkey_get(%struct.a2ps_printers_s* %4, i8* %6)
  store i8* %call, i8** %ppdkey, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load i8*, i8** %ppdkey, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %8, i32 0, i32 4
  %9 = load i8*, i8** %default_ppdkey, align 8
  store i8* %9, i8** %ppdkey, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %10 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %10, i32 0, i32 0
  %11 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common, align 8
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %11, i32 0, i32 0
  %12 = load i8**, i8*** %path, align 8
  %13 = load i8*, i8** %ppdkey, align 8
  %call7 = call %struct.ppd* @_a2ps_ppd_get(i8** %12, i8* %13)
  %14 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %ppd = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %14, i32 0, i32 6
  store %struct.ppd* %call7, %struct.ppd** %ppd, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @a2ps_printers_ppdkey_get(%struct.a2ps_printers_s* %printers, i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %key.addr = alloca i8*, align 8
  %printer = alloca %struct.printer*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 2
  %ppdkey = getelementptr inbounds %struct.printer, %struct.printer* %default_printer, i32 0, i32 1
  %2 = load i8*, i8** %ppdkey, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %printers1 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 1
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %printers1, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %call = call %struct.printer* @printer_table_find(%struct.hash_table_s* %4, i8* %5)
  store %struct.printer* %call, %struct.printer** %printer, align 8
  %6 = load %struct.printer*, %struct.printer** %printer, align 8
  %tobool2 = icmp ne %struct.printer* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.printer*, %struct.printer** %printer, align 8
  %ppdkey3 = getelementptr inbounds %struct.printer, %struct.printer* %7, i32 0, i32 1
  %8 = load i8*, i8** %ppdkey3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct.printer*, %struct.printer** %printer, align 8
  %ppdkey6 = getelementptr inbounds %struct.printer, %struct.printer* %9, i32 0, i32 1
  %10 = load i8*, i8** %ppdkey6, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %11, i32 0, i32 3
  %ppdkey8 = getelementptr inbounds %struct.printer, %struct.printer* %unknown_printer, i32 0, i32 1
  %12 = load i8*, i8** %ppdkey8, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare %struct.ppd* @_a2ps_ppd_get(i8**, i8*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @a2ps_printers_add(%struct.a2ps_printers_s* %printers, i8* %key, i8* %definition) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %key.addr = alloca i8*, align 8
  %definition.addr = alloca i8*, align 8
  %ppdkey = alloca i8*, align 8
  %token = alloca i8*, align 8
  %command = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %definition, i8** %definition.addr, align 8
  store i8* null, i8** %ppdkey, align 8
  store i8* null, i8** %token, align 8
  store i8* null, i8** %command, align 8
  %0 = load i8*, i8** %definition.addr, align 8
  %1 = load i8*, i8** %definition.addr, align 8
  %call = call i64 @strspn(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #6
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  store i8* %add.ptr, i8** %token, align 8
  %2 = load i8*, i8** %token, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 62
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %token, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 124
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %token, align 8
  %call5 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call5, i8** %ppdkey, align 8
  %call6 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call6, i8** %token, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %token, align 8
  %call7 = call i64 @strspn(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #6
  %8 = load i8*, i8** %token, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %8, i64 %call7
  store i8* %add.ptr8, i8** %token, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %token, align 8
  store i8* %9, i8** %command, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %call10 = call i32 @strcmp(i8* %10, i8* %call9) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end
  %11 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %ppdkey, align 8
  %13 = load i8*, i8** %command, align 8
  call void @printer_set(%struct.printer* %default_printer, i8* %12, i8* %13)
  br label %if.end.23

if.else.14:                                       ; preds = %if.end
  %14 = load i8*, i8** %key.addr, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  %call16 = call i32 @strcmp(i8* %14, i8* %call15) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.14
  %15 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %15, i32 0, i32 3
  %16 = load i8*, i8** %ppdkey, align 8
  %17 = load i8*, i8** %command, align 8
  call void @printer_set(%struct.printer* %unknown_printer, i8* %16, i8* %17)
  br label %if.end.22

if.else.20:                                       ; preds = %if.else.14
  %18 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %printers21 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %18, i32 0, i32 1
  %19 = load %struct.hash_table_s*, %struct.hash_table_s** %printers21, align 8
  %20 = load i8*, i8** %key.addr, align 8
  %21 = load i8*, i8** %ppdkey, align 8
  %22 = load i8*, i8** %command, align 8
  call void @printer_table_add(%struct.hash_table_s* %19, i8* %20, i8* %21, i8* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.13
  ret i1 true
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @printer_set(%struct.printer* %p, i8* %ppdkey, i8* %command) #0 {
entry:
  %p.addr = alloca %struct.printer*, align 8
  %ppdkey.addr = alloca i8*, align 8
  %command.addr = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  %my_s29 = alloca i8*, align 8
  store %struct.printer* %p, %struct.printer** %p.addr, align 8
  store i8* %ppdkey, i8** %ppdkey.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %ppdkey.addr, align 8
  store i8* %0, i8** %my_s2, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %ppdkey2 = getelementptr inbounds %struct.printer, %struct.printer* %1, i32 0, i32 1
  %2 = load i8*, i8** %ppdkey2, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.1
  %3 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %ppdkey3 = getelementptr inbounds %struct.printer, %struct.printer* %3, i32 0, i32 1
  %4 = load i8*, i8** %ppdkey3, align 8
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i8*, i8** %my_s2, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %8 = load i8*, i8** %my_s2, align 8
  %call = call i8* @xstrdup(i8* %8)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  %9 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %ppdkey6 = getelementptr inbounds %struct.printer, %struct.printer* %9, i32 0, i32 1
  store i8* %cond, i8** %ppdkey6, align 8
  br label %do.end.7

do.end.7:                                         ; preds = %cond.end
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %10 = load i8*, i8** %command.addr, align 8
  store i8* %10, i8** %my_s29, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.body.8
  %11 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %command11 = getelementptr inbounds %struct.printer, %struct.printer* %11, i32 0, i32 2
  %12 = load i8*, i8** %command11, align 8
  %tobool12 = icmp ne i8* %12, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.body.10
  %13 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %command14 = getelementptr inbounds %struct.printer, %struct.printer* %13, i32 0, i32 2
  %14 = load i8*, i8** %command14, align 8
  call void @free(i8* %14) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.body.10
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load i8*, i8** %my_s29, align 8
  %cmp17 = icmp eq i8* %15, null
  br i1 %cmp17, label %cond.false.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %do.end.16
  %16 = load i8*, i8** %my_s29, align 8
  %17 = load i8, i8* %16, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %cond.false.25, label %cond.true.23

cond.true.23:                                     ; preds = %lor.lhs.false.19
  %18 = load i8*, i8** %my_s29, align 8
  %call24 = call i8* @xstrdup(i8* %18)
  br label %cond.end.26

cond.false.25:                                    ; preds = %lor.lhs.false.19, %do.end.16
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.23
  %cond27 = phi i8* [ %call24, %cond.true.23 ], [ null, %cond.false.25 ]
  %19 = load %struct.printer*, %struct.printer** %p.addr, align 8
  %command28 = getelementptr inbounds %struct.printer, %struct.printer* %19, i32 0, i32 2
  store i8* %cond27, i8** %command28, align 8
  br label %do.end.29

do.end.29:                                        ; preds = %cond.end.26
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @printer_table_add(%struct.hash_table_s* %table, i8* %key, i8* %ppdkey, i8* %command) #2 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %ppdkey.addr = alloca i8*, align 8
  %command.addr = alloca i8*, align 8
  %printer = alloca %struct.printer*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %ppdkey, i8** %ppdkey.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct.printer* @printer_table_find(%struct.hash_table_s* %0, i8* %1)
  store %struct.printer* %call, %struct.printer** %printer, align 8
  %2 = load %struct.printer*, %struct.printer** %printer, align 8
  %tobool = icmp ne %struct.printer* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %key.addr, align 8
  %call1 = call %struct.printer* @printer_new(i8* %3)
  store %struct.printer* %call1, %struct.printer** %printer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.printer*, %struct.printer** %printer, align 8
  %5 = load i8*, i8** %ppdkey.addr, align 8
  %6 = load i8*, i8** %command.addr, align 8
  call void @printer_set(%struct.printer* %4, i8* %5, i8* %6)
  %7 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %8 = load %struct.printer*, %struct.printer** %printer, align 8
  %9 = bitcast %struct.printer* %8 to i8*
  %call2 = call i8* @hash_insert(%struct.hash_table_s* %7, i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @a2ps_printers_default_ppdkey_get(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 4
  %1 = load i8*, i8** %default_ppdkey, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @a2ps_printers_default_ppdkey_set(%struct.a2ps_printers_s* %printers, i8* %ppdkey) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %ppdkey.addr = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %ppdkey, i8** %ppdkey.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %ppdkey.addr, align 8
  store i8* %0, i8** %my_s2, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 4
  %2 = load i8*, i8** %default_ppdkey, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.1
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey2 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 4
  %4 = load i8*, i8** %default_ppdkey2, align 8
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i8*, i8** %my_s2, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %8 = load i8*, i8** %my_s2, align 8
  %call = call i8* @xstrdup(i8* %8)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_ppdkey5 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 4
  store i8* %cond, i8** %default_ppdkey5, align 8
  br label %do.end.6

do.end.6:                                         ; preds = %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @a2ps_printers_request_ppdkey_get(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 5
  %1 = load i8*, i8** %request_ppdkey, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @a2ps_printers_request_ppdkey_set(%struct.a2ps_printers_s* %printers, i8* %ppdkey) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %ppdkey.addr = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %ppdkey, i8** %ppdkey.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %ppdkey.addr, align 8
  store i8* %0, i8** %my_s2, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 5
  %2 = load i8*, i8** %request_ppdkey, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.1
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey2 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 5
  %4 = load i8*, i8** %request_ppdkey2, align 8
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i8*, i8** %my_s2, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %8 = load i8*, i8** %my_s2, align 8
  %call = call i8* @xstrdup(i8* %8)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %request_ppdkey5 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 5
  store i8* %cond, i8** %request_ppdkey5, align 8
  br label %do.end.6

do.end.6:                                         ; preds = %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @a2ps_printers_flag_output_set(%struct.a2ps_printers_s* %printers, i8* %flag_output_name, i1 zeroext %is_printer) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %flag_output_name.addr = alloca i8*, align 8
  %is_printer.addr = alloca i8, align 1
  %my_s2 = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %flag_output_name, i8** %flag_output_name.addr, align 8
  %frombool = zext i1 %is_printer to i8
  store i8 %frombool, i8* %is_printer.addr, align 1
  %0 = load i8, i8* %is_printer.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 7
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* %flag_output_is_printer, align 1
  %2 = load i8, i8* %is_printer.addr, align 1
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %flag_output_name.addr, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %flag_output_name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name5 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %5, i32 0, i32 8
  %6 = load i8*, i8** %flag_output_name5, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %do.body
  %7 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name8 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %7, i32 0, i32 8
  %8 = load i8*, i8** %flag_output_name8, align 8
  call void @free(i8* %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name9 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 8
  store i8* null, i8** %flag_output_name9, align 8
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  br label %do.body.10

do.body.10:                                       ; preds = %if.else
  %10 = load i8*, i8** %flag_output_name.addr, align 8
  store i8* %10, i8** %my_s2, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  %11 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name12 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %11, i32 0, i32 8
  %12 = load i8*, i8** %flag_output_name12, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.body.11
  %13 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name15 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %13, i32 0, i32 8
  %14 = load i8*, i8** %flag_output_name15, align 8
  call void @free(i8* %14) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.body.11
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load i8*, i8** %my_s2, align 8
  %cmp18 = icmp eq i8* %15, null
  br i1 %cmp18, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.17
  %16 = load i8*, i8** %my_s2, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv, 0
  br i1 %cmp19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %18 = load i8*, i8** %my_s2, align 8
  %call21 = call i8* @xstrdup(i8* %18)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call21, %cond.true ], [ null, %cond.false ]
  %19 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name22 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %19, i32 0, i32 8
  store i8* %cond, i8** %flag_output_name22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %cond.end
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %flag_output_name, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @a2ps_printers_flag_output_is_printer_get(%struct.a2ps_printers_s* %printers) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 7
  %1 = load i8, i8* %flag_output_is_printer, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define i32 @a2ps_printers_font_known_p(%struct.a2ps_printers_s* %printers, i8* %name) #0 {
entry:
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %ppd = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %0, i32 0, i32 6
  %1 = load %struct.ppd*, %struct.ppd** %ppd, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @ppd_font_known_p(%struct.ppd* %1, i8* %2)
  ret i32 %call
}

declare i32 @ppd_font_known_p(%struct.ppd*, i8*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_printers_list_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 25
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %printers3 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 1
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %printers3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @printer_table_short_self_print(%struct.hash_table_s* %4, %struct._IO_FILE* %5)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @printer_table_short_self_print(%struct.hash_table_s* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %entries = alloca %struct.printer**, align 8
  %size = alloca i64, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.printer**, %struct.printer**)* @printer_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.printer**
  store %struct.printer** %1, %struct.printer*** %entries, align 8
  store i64 0, i64* %size, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %size, align 8
  %3 = load %struct.printer**, %struct.printer*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.printer*, %struct.printer** %3, i64 %2
  %4 = load %struct.printer*, %struct.printer** %arrayidx, align 8
  %tobool = icmp ne %struct.printer* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %size, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %size, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.printer**, %struct.printer*** %entries, align 8
  %8 = bitcast %struct.printer** %7 to i8*
  %9 = bitcast i8* %8 to i8**
  %10 = load i64, i64* %size, align 8
  call void @lister_fprint_vertical(%struct.lister* null, %struct._IO_FILE* %6, i8** %9, i64 %10, i64 (i8*)* bitcast (i64 (%struct.printer*)* @printer_key_len to i64 (i8*)*), void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.printer*, %struct._IO_FILE*)* @printer_key_fputs to void (i8*, %struct._IO_FILE*)*))
  %11 = load %struct.printer**, %struct.printer*** %entries, align 8
  %12 = bitcast %struct.printer** %11 to i8*
  call void @free(i8* %12) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @a2ps_printers_list_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %0, i8 signext 61, i32 1, i8* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 25
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @printer_self_print(%struct.printer* %default_printer, %struct._IO_FILE* %4)
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 25
  %6 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers2, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %6, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @printer_self_print(%struct.printer* %unknown_printer, %struct._IO_FILE* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 25
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers3, align 8
  %printers4 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 1
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %printers4, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @printer_table_self_print(%struct.hash_table_s* %10, %struct._IO_FILE* %11)
  ret void
}

declare void @title(%struct._IO_FILE*, i8 signext, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @printer_self_print(%struct.printer* %printer, %struct._IO_FILE* %stream) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  %4 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %ppdkey = getelementptr inbounds %struct.printer, %struct.printer* %4, i32 0, i32 1
  %5 = load i8*, i8** %ppdkey, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %ppdkey2 = getelementptr inbounds %struct.printer, %struct.printer* %7, i32 0, i32 1
  %8 = load i8*, i8** %ppdkey2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %9)
  %10 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %command = getelementptr inbounds %struct.printer, %struct.printer* %10, i32 0, i32 2
  %11 = load i8*, i8** %command, align 8
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %13 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %command7 = getelementptr inbounds %struct.printer, %struct.printer* %13, i32 0, i32 2
  %14 = load i8*, i8** %command7, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @printer_table_self_print(%struct.hash_table_s* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = bitcast %struct._IO_FILE* %1 to i8*
  call void @hash_maparg(%struct.hash_table_s* %0, void (i8*, i8*)* bitcast (void (%struct.printer*, %struct._IO_FILE*)* @printer_self_print to void (i8*, i8*)*), i8* %2, i32 (i8*, i8*)* bitcast (i32 (%struct.printer**, %struct.printer**)* @printer_hash_qcmp to i32 (i8*, i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define void @a2ps_ppd_list_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @_a2ps_ppd_list_short(i8** %1, %struct._IO_FILE* %2)
  ret void
}

declare void @_a2ps_ppd_list_short(i8**, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_ppd_list_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @_a2ps_ppd_list_long(i8** %1, %struct._IO_FILE* %2)
  ret void
}

declare void @_a2ps_ppd_list_long(i8**, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_open_output_stream(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %printers = alloca %struct.a2ps_printers_s*, align 8
  %my_s2 = alloca i8*, align 8
  %name = alloca i8*, align 8
  %command = alloca i8*, align 8
  %printer_cmd = alloca i8*, align 8
  %my_s227 = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 25
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers1, align 8
  store %struct.a2ps_printers_s* %1, %struct.a2ps_printers_s** %printers, align 8
  %2 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_is_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %2, i32 0, i32 7
  %3 = load i8, i8* %flag_output_is_printer, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %4, i32 0, i32 8
  %5 = load i8*, i8** %flag_output_name, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %backup_type = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 7
  %7 = load i32, i32* %backup_type, align 4
  %call = call %struct.stream* @stream_wopen_backup(i8* %5, i1 zeroext true, i32 %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_stream = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 27
  store %struct.stream* %call, %struct.stream** %output_stream, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_name2 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %9, i32 0, i32 8
  %10 = load i8*, i8** %flag_output_name2, align 8
  store i8* %10, i8** %my_s2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %11 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %11, i32 0, i32 10
  %12 = load i8*, i8** %output_name, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.body.3
  %13 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name6 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %13, i32 0, i32 10
  %14 = load i8*, i8** %output_name6, align 8
  call void @free(i8* %14) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %do.body.3
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %15, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %16 = load i8*, i8** %my_s2, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %18 = load i8*, i8** %my_s2, align 8
  %call9 = call i8* @xstrdup(i8* %18)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call9, %cond.true ], [ null, %cond.false ]
  %19 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name10 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %19, i32 0, i32 10
  store i8* %cond, i8** %output_name10, align 8
  br label %do.end.11

do.end.11:                                        ; preds = %cond.end
  %20 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_is_file = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %20, i32 0, i32 9
  store i8 1, i8* %output_is_file, align 1
  br label %if.end.51

if.else:                                          ; preds = %entry
  %21 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %22 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_name12 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %22, i32 0, i32 8
  %23 = load i8*, i8** %flag_output_name12, align 8
  %call13 = call i8* @a2ps_printers_command_get(%struct.a2ps_printers_s* %21, i8* %23)
  store i8* %call13, i8** %printer_cmd, align 8
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 68
  %26 = load %struct.darray*, %struct.darray** %jobs, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %26, i32 0, i32 6
  %27 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx, align 8
  %29 = bitcast i8* %28 to %struct.file_job*
  %30 = load i8*, i8** %printer_cmd, align 8
  %call14 = call i8* @expand_user_string(%struct.a2ps_job* %24, %struct.file_job* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %30)
  store i8* %call14, i8** %command, align 8
  %31 = load i8*, i8** %command, align 8
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %backup_type15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 7
  %33 = load i32, i32* %backup_type15, align 4
  %call16 = call %struct.stream* @stream_perl_open_backup(i8* %31, i32 %33, i8** %name)
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_stream17 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 27
  store %struct.stream* %call16, %struct.stream** %output_stream17, align 8
  %35 = load i8*, i8** %command, align 8
  %36 = load i8, i8* %35, align 1
  %conv18 = sext i8 %36 to i32
  %cmp19 = icmp eq i32 %conv18, 62
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %37 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_is_file22 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %37, i32 0, i32 9
  store i8 1, i8* %output_is_file22, align 1
  %38 = load i8*, i8** %name, align 8
  %call23 = call i8* @xstrdup(i8* %38)
  %39 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name24 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %39, i32 0, i32 10
  store i8* %call23, i8** %output_name24, align 8
  br label %if.end.50

if.else.25:                                       ; preds = %if.else
  br label %do.body.26

do.body.26:                                       ; preds = %if.else.25
  %40 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %flag_output_name28 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %40, i32 0, i32 8
  %41 = load i8*, i8** %flag_output_name28, align 8
  store i8* %41, i8** %my_s227, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.26
  %42 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name30 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %42, i32 0, i32 10
  %43 = load i8*, i8** %output_name30, align 8
  %tobool31 = icmp ne i8* %43, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.body.29
  %44 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name33 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %44, i32 0, i32 10
  %45 = load i8*, i8** %output_name33, align 8
  call void @free(i8* %45) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.body.29
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %46 = load i8*, i8** %my_s227, align 8
  %cmp36 = icmp eq i8* %46, null
  br i1 %cmp36, label %cond.false.44, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %do.end.35
  %47 = load i8*, i8** %my_s227, align 8
  %48 = load i8, i8* %47, align 1
  %conv39 = sext i8 %48 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %cond.false.44, label %cond.true.42

cond.true.42:                                     ; preds = %lor.lhs.false.38
  %49 = load i8*, i8** %my_s227, align 8
  %call43 = call i8* @xstrdup(i8* %49)
  br label %cond.end.45

cond.false.44:                                    ; preds = %lor.lhs.false.38, %do.end.35
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi i8* [ %call43, %cond.true.42 ], [ null, %cond.false.44 ]
  %50 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_name47 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %50, i32 0, i32 10
  store i8* %cond46, i8** %output_name47, align 8
  br label %do.end.48

do.end.48:                                        ; preds = %cond.end.45
  %51 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %output_is_file49 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %51, i32 0, i32 9
  store i8 0, i8* %output_is_file49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.48, %if.then.21
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %do.end.11
  ret void
}

declare %struct.stream* @stream_wopen_backup(i8*, i1 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @a2ps_printers_command_get(%struct.a2ps_printers_s* %printers, i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %printers.addr = alloca %struct.a2ps_printers_s*, align 8
  %key.addr = alloca i8*, align 8
  %printer = alloca %struct.printer*, align 8
  store %struct.a2ps_printers_s* %printers, %struct.a2ps_printers_s** %printers.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %1, i32 0, i32 2
  %command = getelementptr inbounds %struct.printer, %struct.printer* %default_printer, i32 0, i32 2
  %2 = load i8*, i8** %command, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0)) #5
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call, i8* %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %default_printer4 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %3, i32 0, i32 2
  %command5 = getelementptr inbounds %struct.printer, %struct.printer* %default_printer4, i32 0, i32 2
  %4 = load i8*, i8** %command5, align 8
  store i8* %4, i8** %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %5 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %printers7 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %5, i32 0, i32 1
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %printers7, align 8
  %7 = load i8*, i8** %key.addr, align 8
  %call8 = call %struct.printer* @printer_table_find(%struct.hash_table_s* %6, i8* %7)
  store %struct.printer* %call8, %struct.printer** %printer, align 8
  %8 = load %struct.printer*, %struct.printer** %printer, align 8
  %tobool9 = icmp ne %struct.printer* %8, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.6
  %9 = load %struct.printer*, %struct.printer** %printer, align 8
  %command10 = getelementptr inbounds %struct.printer, %struct.printer* %9, i32 0, i32 2
  %10 = load i8*, i8** %command10, align 8
  %tobool11 = icmp ne i8* %10, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load %struct.printer*, %struct.printer** %printer, align 8
  %command13 = getelementptr inbounds %struct.printer, %struct.printer* %11, i32 0, i32 2
  %12 = load i8*, i8** %command13, align 8
  store i8* %12, i8** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.6
  %13 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %unknown_printer = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %13, i32 0, i32 3
  %command15 = getelementptr inbounds %struct.printer, %struct.printer* %unknown_printer, i32 0, i32 2
  %14 = load i8*, i8** %command15, align 8
  %tobool16 = icmp ne i8* %14, null
  br i1 %tobool16, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0)) #5
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  %15 = load i8*, i8** %key.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call18, i8* %call19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %16 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers.addr, align 8
  %unknown_printer21 = getelementptr inbounds %struct.a2ps_printers_s, %struct.a2ps_printers_s* %16, i32 0, i32 3
  %command22 = getelementptr inbounds %struct.printer, %struct.printer* %unknown_printer21, i32 0, i32 2
  %17 = load i8*, i8** %command22, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.12, %if.end
  %18 = load i8*, i8** %retval
  ret i8* %18
}

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

declare %struct.stream* @stream_perl_open_backup(i8*, i32, i8**) #1

; Function Attrs: nounwind uwtable
define void @a2ps_close_output_stream(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_stream = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 27
  %1 = load %struct.stream*, %struct.stream** %output_stream, align 8
  call void @stream_close(%struct.stream* %1)
  ret void
}

declare void @stream_close(%struct.stream*) #1

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @printer_hash_1(%struct.printer* %printer) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @printer_hash_2(%struct.printer* %printer) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @printer_hash_cmp(%struct.printer* %x, %struct.printer* %y) #0 {
entry:
  %x.addr = alloca %struct.printer*, align 8
  %y.addr = alloca %struct.printer*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.printer* %x, %struct.printer** %x.addr, align 8
  store %struct.printer* %y, %struct.printer** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.printer*, %struct.printer** %x.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.printer*, %struct.printer** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.printer, %struct.printer* %2, i32 0, i32 0
  %3 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %15
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.printer* @printer_table_find(%struct.hash_table_s* %table, i8* %key) #2 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %token = alloca %struct.printer, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.printer, %struct.printer* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.printer* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.printer*
  ret %struct.printer* %3
}

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.printer* @printer_new(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %res = alloca %struct.printer*, align 8
  store i8* %key, i8** %key.addr, align 8
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.printer*
  store %struct.printer* %0, %struct.printer** %res, align 8
  %1 = load %struct.printer*, %struct.printer** %res, align 8
  %2 = load i8*, i8** %key.addr, align 8
  call void @printer_create(%struct.printer* %1, i8* %2)
  %3 = load %struct.printer*, %struct.printer** %res, align 8
  ret %struct.printer* %3
}

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @printer_hash_qcmp(%struct.printer** %x, %struct.printer** %y) #0 {
entry:
  %x.addr = alloca %struct.printer**, align 8
  %y.addr = alloca %struct.printer**, align 8
  store %struct.printer** %x, %struct.printer*** %x.addr, align 8
  store %struct.printer** %y, %struct.printer*** %y.addr, align 8
  %0 = load %struct.printer**, %struct.printer*** %x.addr, align 8
  %1 = load %struct.printer*, %struct.printer** %0, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %3 = load %struct.printer**, %struct.printer*** %y.addr, align 8
  %4 = load %struct.printer*, %struct.printer** %3, align 8
  %key1 = getelementptr inbounds %struct.printer, %struct.printer* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %call = call i32 @strverscmp(i8* %2, i8* %5)
  ret i32 %call
}

declare void @lister_fprint_vertical(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @printer_key_len(%struct.printer* %printer) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  %0 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %call = call i64 @strlen(i8* %1) #6
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @printer_key_fputs(%struct.printer* %printer, %struct._IO_FILE* %stream) #0 {
entry:
  %printer.addr = alloca %struct.printer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.printer* %printer, %struct.printer** %printer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.printer*, %struct.printer** %printer.addr, align 8
  %key = getelementptr inbounds %struct.printer, %struct.printer* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  ret void
}

declare i32 @strverscmp(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @hash_maparg(%struct.hash_table_s*, void (i8*, i8*)*, i8*, i32 (i8*, i8*)*) #1

declare void @error(i32, i32, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
