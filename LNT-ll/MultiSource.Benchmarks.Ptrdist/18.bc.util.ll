; ModuleID = './MultiSource.Benchmarks.Ptrdist/18.bc.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_rec = type { i8*, i32, i32, i32, i16, %struct.id_rec*, %struct.id_rec* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.program_counter = type { i32, i32 }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@arglist2 = internal global i8* null, align 8
@arglist1 = internal global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"duplicate parameter names\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Array parameter\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"duplicate auto variable names\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"variable in both parameter and auto lists\00", align 1
@break_label = external global i32, align 4
@continue_label = external global i32, align 4
@next_label = external global i32, align 4
@out_count = external global i32, align 4
@compile_only = external global i8, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@had_error = external global i32, align 4
@did_gen = external global i8, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"@r\0A\00", align 1
@out_col = external global i32, align 4
@name_tree = external global %struct.id_rec*, align 8
@next_array = external global i32, align 4
@next_func = external global i32, align 4
@next_var = external global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"multiple letter name - %s\00", align 1
@a_names = external global i8**, align 8
@a_count = external global i32, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Too many array variables\00", align 1
@f_names = external global i8**, align 8
@f_count = external global i32, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Too many functions\00", align 1
@v_names = external global i8**, align 8
@v_count = external global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Too many variables\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"For details type . \0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\0A%s%s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"    This program is free software; you can redistribute it and/or modify\0A\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"    it under the terms of the GNU General Public License as published by\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"    the Free Software Foundation; either version 2 of the License , or\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"    (at your option) any later version.\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"    This program is distributed in the hope that it will be useful,\0A\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"    but WITHOUT ANY WARRANTY; without even the implied warranty of\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"    GNU General Public License for more details.\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"    You should have received a copy of the GNU General Public License\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"    along with this program. If not, write to the Free Software\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"    Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"BC_BASE_MAX     = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"BC_DIM_MAX      = %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"BC_SCALE_MAX    = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"BC_STRING_MAX   = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"MAX Exponent    = %ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"MAX code        = %ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"multiply digits = %ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Number of vars  = %ld\0A\00", align 1
@is_std_in = external global i8, align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"(standard_in)\00", align 1
@optind = external global i32, align 4
@g_argv = external global i8**, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [8 x i8] c"%s %d: \00", align 1
@line_no = external global i32, align 4
@std_only = external global i8, align 1
@warn_not_std = external global i8, align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%s %d: (Warning) \00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Runtime error (func=%s, adr=%d): %s\0A\00", align 1
@pc = external global %struct.program_counter, align 4
@runtime_error = external global i8, align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Runtime warning (func=%s, adr=%d): %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @strcopyof(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #5
  store i8* %call1, i8** %temp, align 8
  %1 = load i8*, i8** %temp, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2) #5
  %3 = load i8*, i8** %temp, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.arg_list* @nextarg(%struct.arg_list* %args, i8 signext %val) #0 {
entry:
  %args.addr = alloca %struct.arg_list*, align 8
  %val.addr = alloca i8, align 1
  %temp = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %args, %struct.arg_list** %args.addr, align 8
  store i8 %val, i8* %val.addr, align 1
  %call = call noalias i8* @malloc(i64 16) #5
  %0 = bitcast i8* %call to %struct.arg_list*
  store %struct.arg_list* %0, %struct.arg_list** %temp, align 8
  %1 = load i8, i8* %val.addr, align 1
  %conv = sext i8 %1 to i32
  %2 = load %struct.arg_list*, %struct.arg_list** %temp, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %2, i32 0, i32 0
  store i32 %conv, i32* %av_name, align 4
  %3 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %4 = load %struct.arg_list*, %struct.arg_list** %temp, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %4, i32 0, i32 1
  store %struct.arg_list* %3, %struct.arg_list** %next, align 8
  %5 = load %struct.arg_list*, %struct.arg_list** %temp, align 8
  ret %struct.arg_list* %5
}

; Function Attrs: nounwind uwtable
define i8* @arg_str(%struct.arg_list* %args, i32 %commas) #0 {
entry:
  %args.addr = alloca %struct.arg_list*, align 8
  %commas.addr = alloca i32, align 4
  store %struct.arg_list* %args, %struct.arg_list** %args.addr, align 8
  store i32 %commas, i32* %commas.addr, align 4
  %0 = load i8*, i8** @arglist2, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @arglist2, align 8
  call void @free(i8* %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @arglist1, align 8
  store i8* %2, i8** @arglist2, align 8
  %3 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %4 = load i32, i32* %commas.addr, align 4
  %call = call i8* @make_arg_str(%struct.arg_list* %3, i32 1, i32 %4)
  store i8* %call, i8** @arglist1, align 8
  %5 = load i8*, i8** @arglist1, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @make_arg_str(%struct.arg_list* %args, i32 %len, i32 %commas) #0 {
entry:
  %retval = alloca i8*, align 8
  %args.addr = alloca %struct.arg_list*, align 8
  %len.addr = alloca i32, align 4
  %commas.addr = alloca i32, align 4
  %temp = alloca i8*, align 8
  %sval = alloca [20 x i8], align 16
  store %struct.arg_list* %args, %struct.arg_list** %args.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %commas, i32* %commas.addr, align 4
  %0 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %cmp = icmp ne %struct.arg_list* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %1, i32 0, i32 1
  %2 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %3, 11
  %4 = load i32, i32* %commas.addr, align 4
  %call = call i8* @make_arg_str(%struct.arg_list* %2, i32 %add, i32 %4)
  store i8* %call, i8** %temp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %5 to i64
  %call1 = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call1, i8** %temp, align 8
  %6 = load i8*, i8** %temp, align 8
  store i8 0, i8* %6, align 1
  %7 = load i8*, i8** %temp, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp ne i32 %8, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %commas.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %sval, i32 0, i32 0
  %10 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %10, i32 0, i32 0
  %11 = load i32, i32* %av_name, align 4
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 %11) #5
  br label %if.end.10

if.else.6:                                        ; preds = %land.lhs.true, %if.end
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %sval, i32 0, i32 0
  %12 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %av_name8 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %12, i32 0, i32 0
  %13 = load i32, i32* %av_name8, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %13) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.6, %if.then.4
  %14 = load i8*, i8** %temp, align 8
  %arraydecay11 = getelementptr inbounds [20 x i8], [20 x i8]* %sval, i32 0, i32 0
  %call12 = call i8* @strcat(i8* %14, i8* %arraydecay11) #5
  %15 = load i8*, i8** %temp, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define void @free_args(%struct.arg_list* %args) #0 {
entry:
  %args.addr = alloca %struct.arg_list*, align 8
  %temp = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %args, %struct.arg_list** %args.addr, align 8
  %0 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  store %struct.arg_list* %0, %struct.arg_list** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.arg_list*, %struct.arg_list** %temp, align 8
  %cmp = icmp ne %struct.arg_list* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %2, i32 0, i32 1
  %3 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  store %struct.arg_list* %3, %struct.arg_list** %args.addr, align 8
  %4 = load %struct.arg_list*, %struct.arg_list** %temp, align 8
  %5 = bitcast %struct.arg_list* %4 to i8*
  call void @free(i8* %5) #5
  %6 = load %struct.arg_list*, %struct.arg_list** %args.addr, align 8
  store %struct.arg_list* %6, %struct.arg_list** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @check_params(%struct.arg_list* %params, %struct.arg_list* %autos) #0 {
entry:
  %params.addr = alloca %struct.arg_list*, align 8
  %autos.addr = alloca %struct.arg_list*, align 8
  %tmp1 = alloca %struct.arg_list*, align 8
  %tmp2 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %params, %struct.arg_list** %params.addr, align 8
  store %struct.arg_list* %autos, %struct.arg_list** %autos.addr, align 8
  %0 = load %struct.arg_list*, %struct.arg_list** %params.addr, align 8
  %cmp = icmp ne %struct.arg_list* %0, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %struct.arg_list*, %struct.arg_list** %params.addr, align 8
  store %struct.arg_list* %1, %struct.arg_list** %tmp1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.then
  %2 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %cmp1 = icmp ne %struct.arg_list* %2, null
  br i1 %cmp1, label %while.body, label %while.end.14

while.body:                                       ; preds = %while.cond
  %3 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %3, i32 0, i32 1
  %4 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  store %struct.arg_list* %4, %struct.arg_list** %tmp2, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %5 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %cmp3 = icmp ne %struct.arg_list* %5, null
  br i1 %cmp3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.2
  %6 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %6, i32 0, i32 0
  %7 = load i32, i32* %av_name, align 4
  %8 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %av_name5 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %8, i32 0, i32 0
  %9 = load i32, i32* %av_name5, align 4
  %cmp6 = icmp eq i32 %7, %9
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body.4
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %while.body.4
  %10 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %next8 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %10, i32 0, i32 1
  %11 = load %struct.arg_list*, %struct.arg_list** %next8, align 8
  store %struct.arg_list* %11, %struct.arg_list** %tmp2, align 8
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %12 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %av_name9 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %12, i32 0, i32 0
  %13 = load i32, i32* %av_name9, align 4
  %cmp10 = icmp slt i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %while.end
  %14 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %next13 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %14, i32 0, i32 1
  %15 = load %struct.arg_list*, %struct.arg_list** %next13, align 8
  store %struct.arg_list* %15, %struct.arg_list** %tmp1, align 8
  br label %while.cond

while.end.14:                                     ; preds = %while.cond
  br label %if.end.15

if.end.15:                                        ; preds = %while.end.14, %entry
  %16 = load %struct.arg_list*, %struct.arg_list** %autos.addr, align 8
  %cmp16 = icmp ne %struct.arg_list* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %if.end.15
  %17 = load %struct.arg_list*, %struct.arg_list** %autos.addr, align 8
  store %struct.arg_list* %17, %struct.arg_list** %tmp1, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.end.31, %if.then.17
  %18 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %cmp19 = icmp ne %struct.arg_list* %18, null
  br i1 %cmp19, label %while.body.20, label %while.end.33

while.body.20:                                    ; preds = %while.cond.18
  %19 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %next21 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %19, i32 0, i32 1
  %20 = load %struct.arg_list*, %struct.arg_list** %next21, align 8
  store %struct.arg_list* %20, %struct.arg_list** %tmp2, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.29, %while.body.20
  %21 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %cmp23 = icmp ne %struct.arg_list* %21, null
  br i1 %cmp23, label %while.body.24, label %while.end.31

while.body.24:                                    ; preds = %while.cond.22
  %22 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %av_name25 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %22, i32 0, i32 0
  %23 = load i32, i32* %av_name25, align 4
  %24 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %av_name26 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %24, i32 0, i32 0
  %25 = load i32, i32* %av_name26, align 4
  %cmp27 = icmp eq i32 %23, %25
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.body.24
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %while.body.24
  %26 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %next30 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %26, i32 0, i32 1
  %27 = load %struct.arg_list*, %struct.arg_list** %next30, align 8
  store %struct.arg_list* %27, %struct.arg_list** %tmp2, align 8
  br label %while.cond.22

while.end.31:                                     ; preds = %while.cond.22
  %28 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %next32 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %28, i32 0, i32 1
  %29 = load %struct.arg_list*, %struct.arg_list** %next32, align 8
  store %struct.arg_list* %29, %struct.arg_list** %tmp1, align 8
  br label %while.cond.18

while.end.33:                                     ; preds = %while.cond.18
  br label %if.end.34

if.end.34:                                        ; preds = %while.end.33, %if.end.15
  %30 = load %struct.arg_list*, %struct.arg_list** %params.addr, align 8
  %cmp35 = icmp ne %struct.arg_list* %30, null
  br i1 %cmp35, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.34
  %31 = load %struct.arg_list*, %struct.arg_list** %autos.addr, align 8
  %cmp36 = icmp ne %struct.arg_list* %31, null
  br i1 %cmp36, label %if.then.37, label %if.end.53

if.then.37:                                       ; preds = %land.lhs.true
  %32 = load %struct.arg_list*, %struct.arg_list** %params.addr, align 8
  store %struct.arg_list* %32, %struct.arg_list** %tmp1, align 8
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.end.50, %if.then.37
  %33 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %cmp39 = icmp ne %struct.arg_list* %33, null
  br i1 %cmp39, label %while.body.40, label %while.end.52

while.body.40:                                    ; preds = %while.cond.38
  %34 = load %struct.arg_list*, %struct.arg_list** %autos.addr, align 8
  store %struct.arg_list* %34, %struct.arg_list** %tmp2, align 8
  br label %while.cond.41

while.cond.41:                                    ; preds = %if.end.48, %while.body.40
  %35 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %cmp42 = icmp ne %struct.arg_list* %35, null
  br i1 %cmp42, label %while.body.43, label %while.end.50

while.body.43:                                    ; preds = %while.cond.41
  %36 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %av_name44 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %36, i32 0, i32 0
  %37 = load i32, i32* %av_name44, align 4
  %38 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %av_name45 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %38, i32 0, i32 0
  %39 = load i32, i32* %av_name45, align 4
  %cmp46 = icmp eq i32 %37, %39
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.body.43
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %while.body.43
  %40 = load %struct.arg_list*, %struct.arg_list** %tmp2, align 8
  %next49 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %40, i32 0, i32 1
  %41 = load %struct.arg_list*, %struct.arg_list** %next49, align 8
  store %struct.arg_list* %41, %struct.arg_list** %tmp2, align 8
  br label %while.cond.41

while.end.50:                                     ; preds = %while.cond.41
  %42 = load %struct.arg_list*, %struct.arg_list** %tmp1, align 8
  %next51 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %42, i32 0, i32 1
  %43 = load %struct.arg_list*, %struct.arg_list** %next51, align 8
  store %struct.arg_list* %43, %struct.arg_list** %tmp1, align 8
  br label %while.cond.38

while.end.52:                                     ; preds = %while.cond.38
  br label %if.end.53

if.end.53:                                        ; preds = %while.end.52, %land.lhs.true, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define void @yyerror(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8, i8* @is_std_in, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load i8**, i8*** @g_argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* @line_no, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %str.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %7, i8* %8, %struct.__va_list_tag* %arraydecay2)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* @had_error, align 4
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @warn(i8* %mesg, ...) #0 {
entry:
  %mesg.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %mesg, i8** %mesg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8, i8* @std_only, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @is_std_in, align 1
  %tobool2 = icmp ne i8 %1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8**, i8*** @g_argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* @line_no, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* %6, i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %mesg.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call5 = call i32 @vfprintf(%struct._IO_FILE* %8, i8* %9, %struct.__va_list_tag* %arraydecay4)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* @had_error, align 4
  br label %if.end.22

if.else.7:                                        ; preds = %entry
  %11 = load i8, i8* @warn_not_std, align 1
  %tobool8 = icmp ne i8 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.else.7
  %12 = load i8, i8* @is_std_in, align 1
  %tobool10 = icmp ne i8 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8
  br label %if.end.16

if.else.12:                                       ; preds = %if.then.9
  %13 = load i32, i32* @optind, align 4
  %sub13 = sub nsw i32 %13, 1
  %idxprom14 = sext i32 %sub13 to i64
  %14 = load i8**, i8*** @g_argv, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %14, i64 %idxprom14
  %15 = load i8*, i8** %arrayidx15, align 8
  store i8* %15, i8** %name, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.12, %if.then.11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load i32, i32* @line_no, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* %17, i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %mesg.addr, align 8
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call19 = call i32 @vfprintf(%struct._IO_FILE* %19, i8* %20, %struct.__va_list_tag* %arraydecay18)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.16, %if.else.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %arraydecay23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2324 = bitcast %struct.__va_list_tag* %arraydecay23 to i8*
  call void @llvm.va_end(i8* %arraydecay2324)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_gen() #0 {
entry:
  store i32 0, i32* @break_label, align 4
  store i32 0, i32* @continue_label, align 4
  store i32 1, i32* @next_label, align 4
  store i32 2, i32* @out_count, align 4
  %0 = load i8, i8* @compile_only, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  call void @init_load()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @had_error, align 4
  store i8 0, i8* @did_gen, align 1
  ret void
}

declare i32 @printf(i8*, ...) #3

declare void @init_load() #3

; Function Attrs: nounwind uwtable
define void @generate(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8 1, i8* @did_gen, align 1
  %0 = load i8, i8* @compile_only, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %3 = load i32, i32* @out_count, align 4
  %conv = sext i32 %3 to i64
  %add = add i64 %conv, %call1
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* @out_count, align 4
  %4 = load i32, i32* @out_count, align 4
  %cmp = icmp sgt i32 %4, 60
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* @out_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  call void @load_code(i8* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  ret void
}

declare void @load_code(i8*) #3

; Function Attrs: nounwind uwtable
define void @run_code() #0 {
entry:
  %0 = load i32, i32* @had_error, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @did_gen, align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* @compile_only, align 1
  %tobool2 = icmp ne i8 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* @out_count, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @execute()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %3 = load i8, i8* @did_gen, align 1
  %tobool5 = icmp ne i8 %3, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  call void @init_gen()
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  store i32 0, i32* @had_error, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  ret void
}

declare void @execute() #3

; Function Attrs: nounwind uwtable
define void @out_char(i8 signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @out_col, align 4
  %call = call i32 @putchar(i32 10)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @out_col, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @out_col, align 4
  %2 = load i32, i32* @out_col, align 4
  %cmp2 = icmp eq i32 %2, 70
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 @putchar(i32 92)
  %call6 = call i32 @putchar(i32 10)
  store i32 1, i32* @out_col, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %3 = load i8, i8* %ch.addr, align 1
  %conv7 = sext i8 %3 to i32
  %call8 = call i32 @putchar(i32 %conv7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @putchar(i32) #3

; Function Attrs: nounwind uwtable
define %struct.id_rec* @find_id(%struct.id_rec* %tree, i8* %id) #0 {
entry:
  %retval = alloca %struct.id_rec*, align 8
  %tree.addr = alloca %struct.id_rec*, align 8
  %id.addr = alloca i8*, align 8
  %cmp_result = alloca i32, align 4
  store %struct.id_rec* %tree, %struct.id_rec** %tree.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct.id_rec*, %struct.id_rec** %tree.addr, align 8
  %cmp = icmp eq %struct.id_rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.id_rec* null, %struct.id_rec** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8
  %2 = load %struct.id_rec*, %struct.id_rec** %tree.addr, align 8
  %id1 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %2, i32 0, i32 0
  %3 = load i8*, i8** %id1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #6
  store i32 %call, i32* %cmp_result, align 4
  %4 = load i32, i32* %cmp_result, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.id_rec*, %struct.id_rec** %tree.addr, align 8
  store %struct.id_rec* %5, %struct.id_rec** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %cmp_result, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.id_rec*, %struct.id_rec** %tree.addr, align 8
  %left = getelementptr inbounds %struct.id_rec, %struct.id_rec* %7, i32 0, i32 5
  %8 = load %struct.id_rec*, %struct.id_rec** %left, align 8
  %9 = load i8*, i8** %id.addr, align 8
  %call6 = call %struct.id_rec* @find_id(%struct.id_rec* %8, i8* %9)
  store %struct.id_rec* %call6, %struct.id_rec** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %10 = load %struct.id_rec*, %struct.id_rec** %tree.addr, align 8
  %right = getelementptr inbounds %struct.id_rec, %struct.id_rec* %10, i32 0, i32 6
  %11 = load %struct.id_rec*, %struct.id_rec** %right, align 8
  %12 = load i8*, i8** %id.addr, align 8
  %call8 = call %struct.id_rec* @find_id(%struct.id_rec* %11, i8* %12)
  store %struct.id_rec* %call8, %struct.id_rec** %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.5, %if.then.3, %if.then
  %13 = load %struct.id_rec*, %struct.id_rec** %retval
  ret %struct.id_rec* %13
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @insert_id_rec(%struct.id_rec** %root, %struct.id_rec* %new_id) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.id_rec**, align 8
  %new_id.addr = alloca %struct.id_rec*, align 8
  %A = alloca %struct.id_rec*, align 8
  %B = alloca %struct.id_rec*, align 8
  store %struct.id_rec** %root, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %new_id, %struct.id_rec** %new_id.addr, align 8
  %0 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %1 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %cmp = icmp eq %struct.id_rec* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %3 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %2, %struct.id_rec** %3, align 8
  %4 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %left = getelementptr inbounds %struct.id_rec, %struct.id_rec* %4, i32 0, i32 5
  store %struct.id_rec* null, %struct.id_rec** %left, align 8
  %5 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %right = getelementptr inbounds %struct.id_rec, %struct.id_rec* %5, i32 0, i32 6
  store %struct.id_rec* null, %struct.id_rec** %right, align 8
  %6 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %balance = getelementptr inbounds %struct.id_rec, %struct.id_rec* %6, i32 0, i32 4
  store i16 0, i16* %balance, align 2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %id = getelementptr inbounds %struct.id_rec, %struct.id_rec* %7, i32 0, i32 0
  %8 = load i8*, i8** %id, align 8
  %9 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %10 = load %struct.id_rec*, %struct.id_rec** %9, align 8
  %id1 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %10, i32 0, i32 0
  %11 = load i8*, i8** %id1, align 8
  %call = call i32 @strcmp(i8* %8, i8* %11) #6
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.else.44

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %13 = load %struct.id_rec*, %struct.id_rec** %12, align 8
  %left4 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %13, i32 0, i32 5
  %14 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %call5 = call i32 @insert_id_rec(%struct.id_rec** %left4, %struct.id_rec* %14)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.43

if.then.6:                                        ; preds = %if.then.3
  %15 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %16 = load %struct.id_rec*, %struct.id_rec** %15, align 8
  %balance7 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %16, i32 0, i32 4
  %17 = load i16, i16* %balance7, align 2
  %dec = add i16 %17, -1
  store i16 %dec, i16* %balance7, align 2
  %18 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %19 = load %struct.id_rec*, %struct.id_rec** %18, align 8
  %balance8 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %19, i32 0, i32 4
  %20 = load i16, i16* %balance8, align 2
  %conv = sext i16 %20 to i32
  switch i32 %conv, label %sw.epilog.42 [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.9
    i32 -2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %if.then.6
  %21 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %22 = load %struct.id_rec*, %struct.id_rec** %21, align 8
  store %struct.id_rec* %22, %struct.id_rec** %A, align 8
  %23 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %24 = load %struct.id_rec*, %struct.id_rec** %23, align 8
  %left11 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %24, i32 0, i32 5
  %25 = load %struct.id_rec*, %struct.id_rec** %left11, align 8
  store %struct.id_rec* %25, %struct.id_rec** %B, align 8
  %26 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance12 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %26, i32 0, i32 4
  %27 = load i16, i16* %balance12, align 2
  %conv13 = sext i16 %27 to i32
  %cmp14 = icmp sle i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb.10
  %28 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %right17 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %28, i32 0, i32 6
  %29 = load %struct.id_rec*, %struct.id_rec** %right17, align 8
  %30 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %left18 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %30, i32 0, i32 5
  store %struct.id_rec* %29, %struct.id_rec** %left18, align 8
  %31 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %32 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %right19 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %32, i32 0, i32 6
  store %struct.id_rec* %31, %struct.id_rec** %right19, align 8
  %33 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %34 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %33, %struct.id_rec** %34, align 8
  %35 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance20 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i32 0, i32 4
  store i16 0, i16* %balance20, align 2
  %36 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance21 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %36, i32 0, i32 4
  store i16 0, i16* %balance21, align 2
  br label %if.end.41

if.else:                                          ; preds = %sw.bb.10
  %37 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %right22 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %37, i32 0, i32 6
  %38 = load %struct.id_rec*, %struct.id_rec** %right22, align 8
  %39 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %38, %struct.id_rec** %39, align 8
  %40 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %41 = load %struct.id_rec*, %struct.id_rec** %40, align 8
  %left23 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %41, i32 0, i32 5
  %42 = load %struct.id_rec*, %struct.id_rec** %left23, align 8
  %43 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %right24 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %43, i32 0, i32 6
  store %struct.id_rec* %42, %struct.id_rec** %right24, align 8
  %44 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %45 = load %struct.id_rec*, %struct.id_rec** %44, align 8
  %right25 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %45, i32 0, i32 6
  %46 = load %struct.id_rec*, %struct.id_rec** %right25, align 8
  %47 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %left26 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %47, i32 0, i32 5
  store %struct.id_rec* %46, %struct.id_rec** %left26, align 8
  %48 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %49 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %50 = load %struct.id_rec*, %struct.id_rec** %49, align 8
  %left27 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %50, i32 0, i32 5
  store %struct.id_rec* %48, %struct.id_rec** %left27, align 8
  %51 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %52 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %53 = load %struct.id_rec*, %struct.id_rec** %52, align 8
  %right28 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %53, i32 0, i32 6
  store %struct.id_rec* %51, %struct.id_rec** %right28, align 8
  %54 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %55 = load %struct.id_rec*, %struct.id_rec** %54, align 8
  %balance29 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %55, i32 0, i32 4
  %56 = load i16, i16* %balance29, align 2
  %conv30 = sext i16 %56 to i32
  switch i32 %conv30, label %sw.epilog [
    i32 -1, label %sw.bb.31
    i32 0, label %sw.bb.34
    i32 1, label %sw.bb.37
  ]

sw.bb.31:                                         ; preds = %if.else
  %57 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance32 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %57, i32 0, i32 4
  store i16 1, i16* %balance32, align 2
  %58 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance33 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %58, i32 0, i32 4
  store i16 0, i16* %balance33, align 2
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.else
  %59 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance35 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %59, i32 0, i32 4
  store i16 0, i16* %balance35, align 2
  %60 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance36 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %60, i32 0, i32 4
  store i16 0, i16* %balance36, align 2
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.else
  %61 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance38 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %61, i32 0, i32 4
  store i16 0, i16* %balance38, align 2
  %62 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance39 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %62, i32 0, i32 4
  store i16 -1, i16* %balance39, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.37, %sw.bb.34, %sw.bb.31
  %63 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %64 = load %struct.id_rec*, %struct.id_rec** %63, align 8
  %balance40 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %64, i32 0, i32 4
  store i16 0, i16* %balance40, align 2
  br label %if.end.41

if.end.41:                                        ; preds = %sw.epilog, %if.then.16
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %if.end.41, %if.then.6
  br label %if.end.43

if.end.43:                                        ; preds = %sw.epilog.42, %if.then.3
  br label %if.end.90

if.else.44:                                       ; preds = %if.end
  %65 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %66 = load %struct.id_rec*, %struct.id_rec** %65, align 8
  %right45 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %66, i32 0, i32 6
  %67 = load %struct.id_rec*, %struct.id_rec** %new_id.addr, align 8
  %call46 = call i32 @insert_id_rec(%struct.id_rec** %right45, %struct.id_rec* %67)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.89

if.then.48:                                       ; preds = %if.else.44
  %68 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %69 = load %struct.id_rec*, %struct.id_rec** %68, align 8
  %balance49 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %69, i32 0, i32 4
  %70 = load i16, i16* %balance49, align 2
  %inc = add i16 %70, 1
  store i16 %inc, i16* %balance49, align 2
  %71 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %72 = load %struct.id_rec*, %struct.id_rec** %71, align 8
  %balance50 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %72, i32 0, i32 4
  %73 = load i16, i16* %balance50, align 2
  %conv51 = sext i16 %73 to i32
  switch i32 %conv51, label %sw.epilog.88 [
    i32 0, label %sw.bb.52
    i32 1, label %sw.bb.53
    i32 2, label %sw.bb.54
  ]

sw.bb.52:                                         ; preds = %if.then.48
  store i32 0, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %if.then.48
  store i32 0, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %if.then.48
  %74 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %75 = load %struct.id_rec*, %struct.id_rec** %74, align 8
  store %struct.id_rec* %75, %struct.id_rec** %A, align 8
  %76 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %77 = load %struct.id_rec*, %struct.id_rec** %76, align 8
  %right55 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %77, i32 0, i32 6
  %78 = load %struct.id_rec*, %struct.id_rec** %right55, align 8
  store %struct.id_rec* %78, %struct.id_rec** %B, align 8
  %79 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance56 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %79, i32 0, i32 4
  %80 = load i16, i16* %balance56, align 2
  %conv57 = sext i16 %80 to i32
  %cmp58 = icmp sge i32 %conv57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.66

if.then.60:                                       ; preds = %sw.bb.54
  %81 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %left61 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %81, i32 0, i32 5
  %82 = load %struct.id_rec*, %struct.id_rec** %left61, align 8
  %83 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %right62 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %83, i32 0, i32 6
  store %struct.id_rec* %82, %struct.id_rec** %right62, align 8
  %84 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %85 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %left63 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %85, i32 0, i32 5
  store %struct.id_rec* %84, %struct.id_rec** %left63, align 8
  %86 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %87 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %86, %struct.id_rec** %87, align 8
  %88 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance64 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %88, i32 0, i32 4
  store i16 0, i16* %balance64, align 2
  %89 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance65 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %89, i32 0, i32 4
  store i16 0, i16* %balance65, align 2
  br label %if.end.87

if.else.66:                                       ; preds = %sw.bb.54
  %90 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %left67 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %90, i32 0, i32 5
  %91 = load %struct.id_rec*, %struct.id_rec** %left67, align 8
  %92 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  store %struct.id_rec* %91, %struct.id_rec** %92, align 8
  %93 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %94 = load %struct.id_rec*, %struct.id_rec** %93, align 8
  %right68 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %94, i32 0, i32 6
  %95 = load %struct.id_rec*, %struct.id_rec** %right68, align 8
  %96 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %left69 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %96, i32 0, i32 5
  store %struct.id_rec* %95, %struct.id_rec** %left69, align 8
  %97 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %98 = load %struct.id_rec*, %struct.id_rec** %97, align 8
  %left70 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %98, i32 0, i32 5
  %99 = load %struct.id_rec*, %struct.id_rec** %left70, align 8
  %100 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %right71 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %100, i32 0, i32 6
  store %struct.id_rec* %99, %struct.id_rec** %right71, align 8
  %101 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %102 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %103 = load %struct.id_rec*, %struct.id_rec** %102, align 8
  %left72 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %103, i32 0, i32 5
  store %struct.id_rec* %101, %struct.id_rec** %left72, align 8
  %104 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %105 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %106 = load %struct.id_rec*, %struct.id_rec** %105, align 8
  %right73 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %106, i32 0, i32 6
  store %struct.id_rec* %104, %struct.id_rec** %right73, align 8
  %107 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %108 = load %struct.id_rec*, %struct.id_rec** %107, align 8
  %balance74 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %108, i32 0, i32 4
  %109 = load i16, i16* %balance74, align 2
  %conv75 = sext i16 %109 to i32
  switch i32 %conv75, label %sw.epilog.85 [
    i32 -1, label %sw.bb.76
    i32 0, label %sw.bb.79
    i32 1, label %sw.bb.82
  ]

sw.bb.76:                                         ; preds = %if.else.66
  %110 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance77 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %110, i32 0, i32 4
  store i16 0, i16* %balance77, align 2
  %111 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance78 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %111, i32 0, i32 4
  store i16 1, i16* %balance78, align 2
  br label %sw.epilog.85

sw.bb.79:                                         ; preds = %if.else.66
  %112 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance80 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %112, i32 0, i32 4
  store i16 0, i16* %balance80, align 2
  %113 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance81 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %113, i32 0, i32 4
  store i16 0, i16* %balance81, align 2
  br label %sw.epilog.85

sw.bb.82:                                         ; preds = %if.else.66
  %114 = load %struct.id_rec*, %struct.id_rec** %A, align 8
  %balance83 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %114, i32 0, i32 4
  store i16 -1, i16* %balance83, align 2
  %115 = load %struct.id_rec*, %struct.id_rec** %B, align 8
  %balance84 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %115, i32 0, i32 4
  store i16 0, i16* %balance84, align 2
  br label %sw.epilog.85

sw.epilog.85:                                     ; preds = %if.else.66, %sw.bb.82, %sw.bb.79, %sw.bb.76
  %116 = load %struct.id_rec**, %struct.id_rec*** %root.addr, align 8
  %117 = load %struct.id_rec*, %struct.id_rec** %116, align 8
  %balance86 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %117, i32 0, i32 4
  store i16 0, i16* %balance86, align 2
  br label %if.end.87

if.end.87:                                        ; preds = %sw.epilog.85, %if.then.60
  br label %sw.epilog.88

sw.epilog.88:                                     ; preds = %if.end.87, %if.then.48
  br label %if.end.89

if.end.89:                                        ; preds = %sw.epilog.88, %if.else.44
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.43
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %sw.bb.53, %sw.bb.52, %sw.bb.9, %sw.bb, %if.then
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define void @init_tree() #0 {
entry:
  store %struct.id_rec* null, %struct.id_rec** @name_tree, align 8
  store i32 1, i32* @next_array, align 4
  store i32 1, i32* @next_func, align 4
  store i32 4, i32* @next_var, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lookup(i8* %name, i32 %namekind) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %namekind.addr = alloca i32, align 4
  %id = alloca %struct.id_rec*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %namekind, i32* %namekind.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.id_rec*, %struct.id_rec** @name_tree, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.id_rec* @find_id(%struct.id_rec* %2, i8* %3)
  store %struct.id_rec* %call1, %struct.id_rec** %id, align 8
  %4 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %cmp2 = icmp eq %struct.id_rec* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %call4 = call noalias i8* @malloc(i64 40) #5
  %5 = bitcast i8* %call4 to %struct.id_rec*
  store %struct.id_rec* %5, %struct.id_rec** %id, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %call5 = call i8* @strcopyof(i8* %6)
  %7 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %id6 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %7, i32 0, i32 0
  store i8* %call5, i8** %id6, align 8
  %8 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name = getelementptr inbounds %struct.id_rec, %struct.id_rec* %8, i32 0, i32 1
  store i32 0, i32* %a_name, align 4
  %9 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name = getelementptr inbounds %struct.id_rec, %struct.id_rec* %9, i32 0, i32 2
  store i32 0, i32* %f_name, align 4
  %10 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name = getelementptr inbounds %struct.id_rec, %struct.id_rec* %10, i32 0, i32 3
  store i32 0, i32* %v_name, align 4
  %11 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %call7 = call i32 @insert_id_rec(%struct.id_rec** @name_tree, %struct.id_rec* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %namekind.addr, align 4
  switch i32 %12, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.26
    i32 0, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.8
  %13 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name9 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %13, i32 0, i32 1
  %14 = load i32, i32* %a_name9, align 4
  %cmp10 = icmp ne i32 %14, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb
  %15 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %15) #5
  %16 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name12 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %16, i32 0, i32 1
  %17 = load i32, i32* %a_name12, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, i32* %retval
  br label %sw.epilog

if.end.13:                                        ; preds = %sw.bb
  %18 = load i32, i32* @next_array, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @next_array, align 4
  %19 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name14 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %19, i32 0, i32 1
  store i32 %18, i32* %a_name14, align 4
  %20 = load i8*, i8** %name.addr, align 8
  %21 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name15 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %21, i32 0, i32 1
  %22 = load i32, i32* %a_name15, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** @a_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  store i8* %20, i8** %arrayidx, align 8
  %24 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name16 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %24, i32 0, i32 1
  %25 = load i32, i32* %a_name16, align 4
  %cmp17 = icmp slt i32 %25, 32767
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.13
  %26 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name19 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %26, i32 0, i32 1
  %27 = load i32, i32* %a_name19, align 4
  %28 = load i32, i32* @a_count, align 4
  %cmp20 = icmp sge i32 %27, %28
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  call void @more_arrays()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %29 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %a_name23 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %29, i32 0, i32 1
  %30 = load i32, i32* %a_name23, align 4
  %sub24 = sub nsw i32 0, %30
  store i32 %sub24, i32* %retval
  br label %sw.epilog

if.end.25:                                        ; preds = %if.end.13
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

sw.bb.26:                                         ; preds = %if.end.8
  %31 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name27 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %31, i32 0, i32 2
  %32 = load i32, i32* %f_name27, align 4
  %cmp28 = icmp ne i32 %32, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %sw.bb.26
  %33 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %33) #5
  %34 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name30 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %34, i32 0, i32 2
  %35 = load i32, i32* %f_name30, align 4
  store i32 %35, i32* %retval
  br label %sw.epilog

if.end.31:                                        ; preds = %sw.bb.26
  %36 = load i32, i32* @next_func, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, i32* @next_func, align 4
  %37 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name33 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %37, i32 0, i32 2
  store i32 %36, i32* %f_name33, align 4
  %38 = load i8*, i8** %name.addr, align 8
  %39 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name34 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %39, i32 0, i32 2
  %40 = load i32, i32* %f_name34, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load i8**, i8*** @f_names, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %41, i64 %idxprom35
  store i8* %38, i8** %arrayidx36, align 8
  %42 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name37 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %42, i32 0, i32 2
  %43 = load i32, i32* %f_name37, align 4
  %cmp38 = icmp slt i32 %43, 32767
  br i1 %cmp38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.31
  %44 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name40 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %44, i32 0, i32 2
  %45 = load i32, i32* %f_name40, align 4
  %46 = load i32, i32* @f_count, align 4
  %cmp41 = icmp sge i32 %45, %46
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  call void @more_functions()
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.39
  %47 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %f_name44 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %47, i32 0, i32 2
  %48 = load i32, i32* %f_name44, align 4
  store i32 %48, i32* %retval
  br label %sw.epilog

if.end.45:                                        ; preds = %if.end.31
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

sw.bb.46:                                         ; preds = %if.end.8
  %49 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name47 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %49, i32 0, i32 3
  %50 = load i32, i32* %v_name47, align 4
  %cmp48 = icmp ne i32 %50, 0
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %sw.bb.46
  %51 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %51) #5
  %52 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name50 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %52, i32 0, i32 3
  %53 = load i32, i32* %v_name50, align 4
  store i32 %53, i32* %retval
  br label %sw.epilog

if.end.51:                                        ; preds = %sw.bb.46
  %54 = load i32, i32* @next_var, align 4
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* @next_var, align 4
  %55 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name53 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %55, i32 0, i32 3
  store i32 %54, i32* %v_name53, align 4
  %56 = load i8*, i8** %name.addr, align 8
  %57 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name54 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %57, i32 0, i32 3
  %58 = load i32, i32* %v_name54, align 4
  %sub55 = sub nsw i32 %58, 1
  %idxprom56 = sext i32 %sub55 to i64
  %59 = load i8**, i8*** @v_names, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %59, i64 %idxprom56
  store i8* %56, i8** %arrayidx57, align 8
  %60 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name58 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %60, i32 0, i32 3
  %61 = load i32, i32* %v_name58, align 4
  %cmp59 = icmp sle i32 %61, 32767
  br i1 %cmp59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.51
  %62 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name61 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %62, i32 0, i32 3
  %63 = load i32, i32* %v_name61, align 4
  %64 = load i32, i32* @v_count, align 4
  %cmp62 = icmp sge i32 %63, %64
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.60
  call void @more_variables()
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.60
  %65 = load %struct.id_rec*, %struct.id_rec** %id, align 8
  %v_name65 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %65, i32 0, i32 3
  %66 = load i32, i32* %v_name65, align 4
  store i32 %66, i32* %retval
  br label %sw.epilog

if.end.66:                                        ; preds = %if.end.51
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %if.then.11, %if.end.22, %if.then.29, %if.end.43, %if.then.49, %if.end.64, %if.end.8
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare void @more_arrays() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @more_functions() #3

declare void @more_variables() #3

; Function Attrs: nounwind uwtable
define void @welcome() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @warranty(i8* %prefix) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @limits() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i32 99)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i64 2048)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i32 99)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 1000)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), i64 9223372036854775807)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i64 16384)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i64 102481911520608620)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i64 32767)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @rt_error(i8* %mesg, ...) #0 {
entry:
  %mesg.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %error_mesg = alloca [255 x i8], align 16
  store i8* %mesg, i8** %mesg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %error_mesg, i32 0, i32 0
  %0 = load i8*, i8** %mesg.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsprintf(i8* %arraydecay2, i8* %0, %struct.__va_list_tag* %arraydecay3) #5
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @f_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %arraydecay6 = getelementptr inbounds [255 x i8], [255 x i8]* %error_mesg, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* %4, i32 %5, i8* %arraydecay6)
  store i8 1, i8* @runtime_error, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define void @rt_warn(i8* %mesg, ...) #0 {
entry:
  %mesg.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %error_mesg = alloca [255 x i8], align 16
  store i8* %mesg, i8** %mesg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %error_mesg, i32 0, i32 0
  %0 = load i8*, i8** %mesg.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsprintf(i8* %arraydecay2, i8* %0, %struct.__va_list_tag* %arraydecay3) #5
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @f_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %arraydecay6 = getelementptr inbounds [255 x i8], [255 x i8]* %error_mesg, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i8* %4, i32 %5, i8* %arraydecay6)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
