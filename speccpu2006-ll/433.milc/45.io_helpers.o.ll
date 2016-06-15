; ModuleID = 'io_helpers.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_check = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"save_lattice: ERROR: unknown type for saving lattice\0A\00", align 1
@this_node = external global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Time to save = %e\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CHECK PLAQ: %e %e\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"reload_lattice: Bad startflag %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Time to reload gauge configuration = %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Unitarity checked.  Max deviation %.2e\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"enter 'continue', 'fresh', 'reload_ascii', 'reload_serial', or 'reload_parallel'\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"ask_starting_lattice: ERROR IN INPUT: starting lattice command\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fresh\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"reload_ascii\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"reload_serial\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"reload_parallel\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"ask_starting_lattice: ERROR IN INPUT: lattice_command %s is invalid\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"enter name of file containing lattice\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"ask_starting_lattice: ERROR IN INPUT: file name read\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [142 x i8] c"'forget' lattice at end,  'save_ascii', 'save_serial', 'save_parallel', 'save_checkpoint', 'save_serial_archive', or 'save_parallel_archive'\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"ask_ending_lattice: ERROR IN INPUT: ending lattice command\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"save_ascii\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"save_serial\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"save_parallel\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"save_checkpoint\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"save_serial_archive\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"save_parallel_archive\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"ask_ending_lattice: ERROR IN INPUT: %s is not a save lattice command\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"enter filename\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"ask_ending_lattice: ERROR IN INPUT: save filename\0A\00", align 1
@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@.str.32 = private unnamed_addr constant [33 x i8] c"unit gauge configuration loaded\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"enter %s \00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%s %g\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Data format error.\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"get_f: EOF on STDIN while expecting %s.\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"get_f: Format error looking for %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"get_f: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"\0Aget_f: Expecting value for %s but found EOF.\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"\0Aget_f: Format error reading value for %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"get_i: EOF on STDIN while expecting %s.\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"get_i: Format error looking for %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"get_i: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"\0Aget_i: Expecting value for %s but found EOF.\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\0Aget_i: Format error reading value for %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"get_s: EOF on STDIN while expecting %s.\0A\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"get_s: Format error looking for %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"get_s: ERROR IN INPUT: expected %s but found %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"\0Aget_s: Expecting value for %s but found EOF.\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"\0Aget_s: Format error reading value for %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"type 0 for no prompts  or 1 for prompts\0A\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"get_prompt: ERROR IN INPUT: initial prompt\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_lattice(i32 %flag, i8* %filename) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %dtime = alloca double, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call double (...) @dclock()
  %sub = fsub double -0.000000e+00, %call
  store double %sub, double* %dtime, align 8
  %0 = load i32, i32* %flag.addr, align 4
  switch i32 %0, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb.1
    i32 22, label %sw.bb.3
    i32 28, label %sw.bb.5
    i32 23, label %sw.bb.7
    i32 30, label %sw.bb.9
    i32 31, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  store %struct.gauge_file* null, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct.gauge_file* @save_ascii(i8* %1)
  store %struct.gauge_file* %call2, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call4 = call %struct.gauge_file* @save_serial(i8* %2)
  store %struct.gauge_file* %call4, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call6 = call %struct.gauge_file* @save_parallel(i8* %3)
  store %struct.gauge_file* %call6, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8
  %call8 = call %struct.gauge_file* @save_checkpoint(i8* %4)
  store %struct.gauge_file* %call8, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call10 = call %struct.gauge_file* @save_serial_archive(i8* %5)
  store %struct.gauge_file* %call10, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %6 = load i8*, i8** %filename.addr, align 8
  %call12 = call %struct.gauge_file* @save_parallel_archive(i8* %6)
  store %struct.gauge_file* %call12, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %call14 = call double (...) @dclock()
  %7 = load double, double* %dtime, align 8
  %add = fadd double %7, %call14
  store double %add, double* %dtime, align 8
  %8 = load i32, i32* %flag.addr, align 4
  %cmp = icmp ne i32 %8, 20
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %sw.epilog
  %9 = load i32, i32* @this_node, align 4
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %10 = load double, double* %dtime, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), double %10)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %sw.epilog
  call void @d_plaquette(double* %ssplaq, double* %stplaq)
  %11 = load i32, i32* @this_node, align 4
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %12 = load double, double* %ssplaq, align 8
  %13 = load double, double* %stplaq, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), double %12, double %13)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %14 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %14
}

declare double @dclock(...) #1

declare %struct.gauge_file* @save_ascii(i8*) #1

declare %struct.gauge_file* @save_serial(i8*) #1

declare %struct.gauge_file* @save_parallel(i8*) #1

declare %struct.gauge_file* @save_checkpoint(i8*) #1

declare %struct.gauge_file* @save_serial_archive(i8*) #1

declare %struct.gauge_file* @save_parallel_archive(i8*) #1

declare i32 @printf(i8*, ...) #1

declare void @terminate(i32) #1

declare void @d_plaquette(double*, double*) #1

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @reload_lattice(i32 %flag, i8* %filename) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %dtime = alloca double, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  %max_deviation = alloca double, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call double (...) @dclock()
  %sub = fsub double -0.000000e+00, %call
  store double %sub, double* %dtime, align 8
  %0 = load i32, i32* %flag.addr, align 4
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.1
    i32 12, label %sw.bb.2
    i32 13, label %sw.bb.4
    i32 19, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store %struct.gauge_file* null, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  call void @coldlat()
  store %struct.gauge_file* null, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct.gauge_file* @restore_ascii(i8* %1)
  store %struct.gauge_file* %call3, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call5 = call %struct.gauge_file* @restore_serial(i8* %2)
  store %struct.gauge_file* %call5, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call7 = call %struct.gauge_file* @restore_parallel(i8* %3)
  store %struct.gauge_file* %call7, %struct.gauge_file** %gf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load i32, i32* %flag.addr, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  call void @terminate(i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %call9 = call double (...) @dclock()
  %6 = load double, double* %dtime, align 8
  %add = fadd double %6, %call9
  store double %add, double* %dtime, align 8
  %7 = load i32, i32* %flag.addr, align 4
  %cmp10 = icmp ne i32 %7, 11
  br i1 %cmp10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %sw.epilog
  %8 = load i32, i32* %flag.addr, align 4
  %cmp11 = icmp ne i32 %8, 10
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* @this_node, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %10 = load double, double* %dtime, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), double %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %sw.epilog
  call void @d_plaquette(double* %ssplaq, double* %stplaq)
  %11 = load i32, i32* @this_node, align 4
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %12 = load double, double* %ssplaq, align 8
  %13 = load double, double* %stplaq, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), double %12, double %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* %14)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %call23 = call double (...) @dclock()
  %sub24 = fsub double -0.000000e+00, %call23
  store double %sub24, double* %dtime, align 8
  %call25 = call double @check_unitarity()
  store double %call25, double* %max_deviation, align 8
  call void @g_doublemax(double* %max_deviation)
  %call26 = call double (...) @dclock()
  %15 = load double, double* %dtime, align 8
  %add27 = fadd double %15, %call26
  store double %add27, double* %dtime, align 8
  %16 = load i32, i32* @this_node, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.22
  %17 = load double, double* %max_deviation, align 8
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), double %17)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %18)
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %19
}

declare %struct.gauge_file* @restore_ascii(i8*) #1

declare %struct.gauge_file* @restore_serial(i8*) #1

declare %struct.gauge_file* @restore_parallel(i8*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare double @check_unitarity() #1

declare void @g_doublemax(double*) #1

; Function Attrs: nounwind uwtable
define i32 @ask_starting_lattice(i32 %prompt, i32* %flag, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32, align 4
  %flag.addr = alloca i32*, align 8
  %filename.addr = alloca i8*, align 8
  %savebuf = alloca [256 x i8], align 16
  %status = alloca i32, align 4
  store i32 %prompt, i32* %prompt.addr, align 4
  store i32* %flag, i32** %flag.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* %prompt.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  store i32 %call1, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay6)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay8) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.5
  %2 = load i32*, i32** %flag.addr, align 8
  store i32 11, i32* %2, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.40

if.else:                                          ; preds = %if.end.5
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call14 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay13) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %3 = load i32*, i32** %flag.addr, align 8
  store i32 10, i32* %3, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.39

if.else.18:                                       ; preds = %if.else
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call20 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay19) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.18
  %4 = load i32*, i32** %flag.addr, align 8
  store i32 12, i32* %4, align 4
  br label %if.end.38

if.else.23:                                       ; preds = %if.else.18
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call25 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay24) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.23
  %5 = load i32*, i32** %flag.addr, align 8
  store i32 13, i32* %5, align 4
  br label %if.end.37

if.else.28:                                       ; preds = %if.else.23
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay29) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  %6 = load i32*, i32** %flag.addr, align 8
  store i32 19, i32* %6, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %if.else.28
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay34)
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.27
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.16
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.11
  %7 = load i32*, i32** %flag.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp41 = icmp ne i32 %8, 11
  br i1 %cmp41, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.40
  %9 = load i32*, i32** %flag.addr, align 8
  %10 = load i32, i32* %9, align 4
  %cmp42 = icmp ne i32 %10, 10
  br i1 %cmp42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %prompt.addr, align 4
  %cmp44 = icmp ne i32 %11, 0
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.43
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.43
  %12 = load i8*, i8** %filename.addr, align 8
  %call48 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %12)
  store i32 %call48, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp49 = icmp ne i32 %13, 1
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.47
  %14 = load i8*, i8** %filename.addr, align 8
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %14)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %land.lhs.true, %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.50, %if.else.33, %if.then.3
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ask_ending_lattice(i32 %prompt, i32* %flag, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32, align 4
  %flag.addr = alloca i32*, align 8
  %filename.addr = alloca i8*, align 8
  %savebuf = alloca [256 x i8], align 16
  %status = alloca i32, align 4
  store i32 %prompt, i32* %prompt.addr, align 4
  store i32* %flag, i32** %flag.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* %prompt.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  store i32 %call1, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay6)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay8) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.5
  %2 = load i32*, i32** %flag.addr, align 8
  store i32 21, i32* %2, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.end.5
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay12) #5
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %3 = load i32*, i32** %flag.addr, align 8
  store i32 22, i32* %3, align 4
  br label %if.end.50

if.else.16:                                       ; preds = %if.else
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* %arraydecay17) #5
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  %4 = load i32*, i32** %flag.addr, align 8
  store i32 28, i32* %4, align 4
  br label %if.end.49

if.else.21:                                       ; preds = %if.else.16
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay22) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  %5 = load i32*, i32** %flag.addr, align 8
  store i32 23, i32* %5, align 4
  br label %if.end.48

if.else.26:                                       ; preds = %if.else.21
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay27) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  %6 = load i32*, i32** %flag.addr, align 8
  store i32 30, i32* %6, align 4
  br label %if.end.47

if.else.31:                                       ; preds = %if.else.26
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call33 = call i32 @strcmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i8* %arraydecay32) #5
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  %7 = load i32*, i32** %flag.addr, align 8
  store i32 31, i32* %7, align 4
  br label %if.end.46

if.else.36:                                       ; preds = %if.else.31
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call38 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay37) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.36
  %8 = load i32*, i32** %flag.addr, align 8
  store i32 20, i32* %8, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.45

if.else.42:                                       ; preds = %if.else.36
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %savebuf, i32 0, i32 0
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay43)
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.30
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.25
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.20
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.15
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.11
  %9 = load i32*, i32** %flag.addr, align 8
  %10 = load i32, i32* %9, align 4
  %cmp52 = icmp ne i32 %10, 20
  br i1 %cmp52, label %if.then.53, label %if.end.64

if.then.53:                                       ; preds = %if.end.51
  %11 = load i32, i32* %prompt.addr, align 4
  %cmp54 = icmp ne i32 %11, 0
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.53
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.53
  %12 = load i8*, i8** %filename.addr, align 8
  %call58 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %12)
  store i32 %call58, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp59 = icmp ne i32 %13, 1
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.57
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.57
  %14 = load i8*, i8** %filename.addr, align 8
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %14)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %if.end.51
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.60, %if.else.42, %if.then.3
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @coldlat() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dir = alloca i32, align 4
  %sit = alloca %struct.site*, align 8
  %coerce = alloca %struct.complex, align 8
  %coerce24 = alloca %struct.complex, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %sit, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.28, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end.30

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.25, %for.body.3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, 3
  br i1 %cmp5, label %for.body.6, label %for.end.27

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %5 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %5, 3
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %k, align 4
  %cmp10 = icmp ne i32 %6, %7
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i32, i32* %dir, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct.site*, %struct.site** %sit, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %11, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom12
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom11
  %arrayidx14 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx13, i32 0, i64 %idxprom
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00)
  %12 = bitcast %struct.complex* %coerce to { double, double }*
  %13 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = extractvalue { double, double } %call, 0
  store double %14, double* %13, align 8
  %15 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = extractvalue { double, double } %call, 1
  store double %16, double* %15, align 8
  %17 = bitcast %struct.complex* %arrayidx14 to i8*
  %18 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %for.body.9
  %19 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load i32, i32* %dir, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.site*, %struct.site** %sit, align 8
  %link18 = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link18, i32 0, i64 %idxprom17
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 %idxprom16
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 %idxprom15
  %call23 = call { double, double } @cmplx(double 1.000000e+00, double 0.000000e+00)
  %23 = bitcast %struct.complex* %coerce24 to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = extractvalue { double, double } %call23, 0
  store double %25, double* %24, align 8
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = extractvalue { double, double } %call23, 1
  store double %27, double* %26, align 8
  %28 = bitcast %struct.complex* %arrayidx22 to i8*
  %29 = bitcast %struct.complex* %coerce24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %k, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.4

for.end.27:                                       ; preds = %for.cond.4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %32 = load i32, i32* %dir, align 4
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, i32* %dir, align 4
  br label %for.cond.1

for.end.30:                                       ; preds = %for.cond.1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %33 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %i, align 4
  %34 = load %struct.site*, %struct.site** %sit, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %34, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %sit, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %35 = load i32, i32* @this_node, align 4
  %cmp34 = icmp eq i32 %35, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end.33
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.end.33
  ret void
}

declare { double, double } @cmplx(double, double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @funnylat() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dir = alloca i32, align 4
  %sit = alloca %struct.site*, align 8
  %coerce = alloca %struct.complex, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %sit, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.69, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end.71

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.body.3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, 3
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %5 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %5, 3
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %dir, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load %struct.site*, %struct.site** %sit, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom11
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx12, i32 0, i64 %idxprom
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00)
  %10 = bitcast %struct.complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct.complex* %arrayidx13 to i8*
  %16 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  %19 = load i32, i32* %dir, align 4
  %conv = sitofp i32 %19 to double
  %20 = load i32, i32* %dir, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.site*, %struct.site** %sit, align 8
  %link18 = getelementptr inbounds %struct.site, %struct.site* %21, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link18, i32 0, i64 %idxprom17
  %e20 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e20, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx21, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx22, i32 0, i32 0
  store double %conv, double* %real, align 8
  %22 = load %struct.site*, %struct.site** %sit, align 8
  %x = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 0
  %23 = load i16, i16* %x, align 2
  %conv23 = sext i16 %23 to i32
  %mul = mul nsw i32 10, %conv23
  %conv24 = sitofp i32 %mul to double
  %24 = load i32, i32* %dir, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.site*, %struct.site** %sit, align 8
  %link26 = getelementptr inbounds %struct.site, %struct.site* %25, i32 0, i32 8
  %arrayidx27 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link26, i32 0, i64 %idxprom25
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %real31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 0
  store double %conv24, double* %real31, align 8
  %26 = load %struct.site*, %struct.site** %sit, align 8
  %y = getelementptr inbounds %struct.site, %struct.site* %26, i32 0, i32 1
  %27 = load i16, i16* %y, align 2
  %conv32 = sext i16 %27 to i32
  %mul33 = mul nsw i32 100, %conv32
  %conv34 = sitofp i32 %mul33 to double
  %28 = load i32, i32* %dir, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.site*, %struct.site** %sit, align 8
  %link36 = getelementptr inbounds %struct.site, %struct.site* %29, i32 0, i32 8
  %arrayidx37 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link36, i32 0, i64 %idxprom35
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 2
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 2
  %real41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 0
  store double %conv34, double* %real41, align 8
  %30 = load i32, i32* %dir, align 4
  %conv42 = sitofp i32 %30 to double
  %31 = load i32, i32* %dir, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.site*, %struct.site** %sit, align 8
  %link44 = getelementptr inbounds %struct.site, %struct.site* %32, i32 0, i32 8
  %arrayidx45 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link44, i32 0, i64 %idxprom43
  %e46 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e46, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx47, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx48, i32 0, i32 1
  store double %conv42, double* %imag, align 8
  %33 = load %struct.site*, %struct.site** %sit, align 8
  %z = getelementptr inbounds %struct.site, %struct.site* %33, i32 0, i32 2
  %34 = load i16, i16* %z, align 2
  %conv49 = sext i16 %34 to i32
  %mul50 = mul nsw i32 10, %conv49
  %conv51 = sitofp i32 %mul50 to double
  %35 = load i32, i32* %dir, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load %struct.site*, %struct.site** %sit, align 8
  %link53 = getelementptr inbounds %struct.site, %struct.site* %36, i32 0, i32 8
  %arrayidx54 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link53, i32 0, i64 %idxprom52
  %e55 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx56, i32 0, i64 1
  %imag58 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx57, i32 0, i32 1
  store double %conv51, double* %imag58, align 8
  %37 = load %struct.site*, %struct.site** %sit, align 8
  %t = getelementptr inbounds %struct.site, %struct.site* %37, i32 0, i32 3
  %38 = load i16, i16* %t, align 2
  %conv59 = sext i16 %38 to i32
  %mul60 = mul nsw i32 100, %conv59
  %conv61 = sitofp i32 %mul60 to double
  %39 = load i32, i32* %dir, align 4
  %idxprom62 = sext i32 %39 to i64
  %40 = load %struct.site*, %struct.site** %sit, align 8
  %link63 = getelementptr inbounds %struct.site, %struct.site* %40, i32 0, i32 8
  %arrayidx64 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link63, i32 0, i64 %idxprom62
  %e65 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e65, i32 0, i64 2
  %arrayidx67 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx66, i32 0, i64 2
  %imag68 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx67, i32 0, i32 1
  store double %conv61, double* %imag68, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.16
  %41 = load i32, i32* %dir, align 4
  %inc70 = add nsw i32 %41, 1
  store i32 %inc70, i32* %dir, align 4
  br label %for.cond.1

for.end.71:                                       ; preds = %for.cond.1
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %42 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %42, 1
  store i32 %inc73, i32* %i, align 4
  %43 = load %struct.site*, %struct.site** %sit, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %43, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %sit, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_f(i32 %prompt, i8* %variable_name_string, double* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32, align 4
  %variable_name_string.addr = alloca i8*, align 8
  %value.addr = alloca double*, align 8
  %s = alloca i32, align 4
  %checkname = alloca [80 x i8], align 16
  store i32 %prompt, i32* %prompt.addr, align 4
  store i8* %variable_name_string, i8** %variable_name_string.addr, align 8
  store double* %value, double** %value.addr, align 8
  %0 = load i32, i32* %prompt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  store i32 0, i32* %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %variable_name_string.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* %2)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %3 = load double*, double** %value.addr, align 8
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), double* %3) #3
  store i32 %call3, i32* %s, align 4
  %4 = load i32, i32* %s, align 4
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %5 = load i8*, i8** %variable_name_string.addr, align 8
  %6 = load double*, double** %value.addr, align 8
  %7 = load double, double* %6, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* %5, double %7)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.40

if.else.8:                                        ; preds = %entry
  %arraydecay9 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call10 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay9)
  store i32 %call10, i32* %s, align 4
  %8 = load i32, i32* %s, align 4
  %cmp11 = icmp eq i32 %8, -1
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %9 = load i8*, i8** %variable_name_string.addr, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i8* %9)
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.8
  %10 = load i32, i32* %s, align 4
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.14
  %11 = load i8*, i8** %variable_name_string.addr, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i8* %11)
  store i32 1, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.else.14
  %arraydecay19 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %12 = load i8*, i8** %variable_name_string.addr, align 8
  %call20 = call i32 @strcmp(i8* %arraydecay19, i8* %12) #5
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.else.18
  %13 = load i8*, i8** %variable_name_string.addr, align 8
  %arraydecay23 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0), i8* %13, i8* %arraydecay23)
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  %14 = load i8*, i8** %variable_name_string.addr, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %14)
  %15 = load double*, double** %value.addr, align 8
  %call29 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), double* %15)
  store i32 %call29, i32* %s, align 4
  %16 = load i32, i32* %s, align 4
  %cmp30 = icmp eq i32 %16, -1
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.27
  %17 = load i8*, i8** %variable_name_string.addr, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i32 0, i32 0), i8* %17)
  store i32 1, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.end.27
  %18 = load i32, i32* %s, align 4
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.33
  %19 = load i8*, i8** %variable_name_string.addr, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0), i8* %19)
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %20 = load double*, double** %value.addr, align 8
  %21 = load double, double* %20, align 8
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), double %21)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.35, %if.then.31, %if.then.22, %if.then.16, %if.then.12
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @get_i(i32 %prompt, i8* %variable_name_string, i32* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32, align 4
  %variable_name_string.addr = alloca i8*, align 8
  %value.addr = alloca i32*, align 8
  %s = alloca i32, align 4
  %checkname = alloca [80 x i8], align 16
  store i32 %prompt, i32* %prompt.addr, align 4
  store i8* %variable_name_string, i8** %variable_name_string.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load i32, i32* %prompt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  store i32 0, i32* %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %variable_name_string.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* %2)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %3 = load i32*, i32** %value.addr, align 8
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32* %3) #3
  store i32 %call3, i32* %s, align 4
  %4 = load i32, i32* %s, align 4
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %5 = load i8*, i8** %variable_name_string.addr, align 8
  %6 = load i32*, i32** %value.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* %5, i32 %7)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.40

if.else.8:                                        ; preds = %entry
  %arraydecay9 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call10 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay9)
  store i32 %call10, i32* %s, align 4
  %8 = load i32, i32* %s, align 4
  %cmp11 = icmp eq i32 %8, -1
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %9 = load i8*, i8** %variable_name_string.addr, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i32 0, i32 0), i8* %9)
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.8
  %10 = load i32, i32* %s, align 4
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.14
  %11 = load i8*, i8** %variable_name_string.addr, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* %11)
  store i32 1, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.else.14
  %arraydecay19 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %12 = load i8*, i8** %variable_name_string.addr, align 8
  %call20 = call i32 @strcmp(i8* %arraydecay19, i8* %12) #5
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.else.18
  %13 = load i8*, i8** %variable_name_string.addr, align 8
  %arraydecay23 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), i8* %13, i8* %arraydecay23)
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  %14 = load i8*, i8** %variable_name_string.addr, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %14)
  %15 = load i32*, i32** %value.addr, align 8
  %call29 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32* %15)
  store i32 %call29, i32* %s, align 4
  %16 = load i32, i32* %s, align 4
  %cmp30 = icmp eq i32 %16, -1
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.27
  %17 = load i8*, i8** %variable_name_string.addr, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i8* %17)
  store i32 1, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.end.27
  %18 = load i32, i32* %s, align 4
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.33
  %19 = load i8*, i8** %variable_name_string.addr, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i32 0, i32 0), i8* %19)
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %20 = load i32*, i32** %value.addr, align 8
  %21 = load i32, i32* %20, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 %21)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.35, %if.then.31, %if.then.22, %if.then.16, %if.then.12
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @get_s(i32 %prompt, i8* %variable_name_string, i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32, align 4
  %variable_name_string.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %s = alloca i32, align 4
  %checkname = alloca [80 x i8], align 16
  store i32 %prompt, i32* %prompt.addr, align 4
  store i8* %variable_name_string, i8** %variable_name_string.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i32, i32* %prompt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  store i32 0, i32* %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %variable_name_string.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* %2)
  %3 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %3)
  store i32 %call1, i32* %s, align 4
  %4 = load i32, i32* %s, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  %5 = load i8*, i8** %variable_name_string.addr, align 8
  %6 = load i8*, i8** %value.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %5, i8* %6)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.37

if.else.6:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  store i32 %call7, i32* %s, align 4
  %7 = load i32, i32* %s, align 4
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.6
  %8 = load i8*, i8** %variable_name_string.addr, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0), i8* %8)
  store i32 1, i32* %retval
  br label %return

if.else.11:                                       ; preds = %if.else.6
  %9 = load i32, i32* %s, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.11
  %10 = load i8*, i8** %variable_name_string.addr, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0), i8* %10)
  store i32 1, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.11
  %arraydecay16 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %11 = load i8*, i8** %variable_name_string.addr, align 8
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* %11) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.else.15
  %12 = load i8*, i8** %variable_name_string.addr, align 8
  %arraydecay20 = getelementptr inbounds [80 x i8], [80 x i8]* %checkname, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i32 0, i32 0), i8* %12, i8* %arraydecay20)
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.else.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  %13 = load i8*, i8** %variable_name_string.addr, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %value.addr, align 8
  %call26 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %14)
  store i32 %call26, i32* %s, align 4
  %15 = load i32, i32* %s, align 4
  %cmp27 = icmp eq i32 %15, -1
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.end.24
  %16 = load i8*, i8** %variable_name_string.addr, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i32 0, i32 0), i8* %16)
  store i32 1, i32* %retval
  br label %return

if.else.30:                                       ; preds = %if.end.24
  %17 = load i32, i32* %s, align 4
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.30
  %18 = load i8*, i8** %variable_name_string.addr, align 8
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0), i8* %18)
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  %19 = load i8*, i8** %value.addr, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %19)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.32, %if.then.28, %if.then.19, %if.then.13, %if.then.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @get_prompt(i32* %prompt) #0 {
entry:
  %retval = alloca i32, align 4
  %prompt.addr = alloca i32*, align 8
  %initial_prompt = alloca [80 x i8], align 16
  store i32* %prompt, i32** %prompt.addr, align 8
  %0 = load i32*, i32** %prompt.addr, align 8
  store i32 -1, i32* %0, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %initial_prompt, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %initial_prompt, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %prompt.addr, align 8
  %call4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32* %1)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [80 x i8], [80 x i8]* %initial_prompt, i32 0, i32 0
  %call6 = call i32 @strcmp(i8* %arraydecay5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0)) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %2 = load i32*, i32** %prompt.addr, align 8
  store i32 0, i32* %2, align 4
  br label %if.end.14

if.else.9:                                        ; preds = %if.else
  %arraydecay10 = getelementptr inbounds [80 x i8], [80 x i8]* %initial_prompt, i32 0, i32 0
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.9
  %3 = load i32*, i32** %prompt.addr, align 8
  store i32 1, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %4 = load i32*, i32** %prompt.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp16 = icmp eq i32 %5, 0
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %6 = load i32*, i32** %prompt.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp17 = icmp eq i32 %7, 1
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.15
  store i32 0, i32* %retval
  br label %return

if.else.19:                                       ; preds = %lor.lhs.false
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.19, %if.then.18
  %8 = load i32, i32* %retval
  ret i32 %8
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
