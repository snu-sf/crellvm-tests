; ModuleID = './MultiSource.Benchmarks.Ptrdist/16.bc.load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.program_counter = type { i32, i32 }
%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@load_adr = common global %struct.program_counter zeroinitializer, align 4
@load_str = common global i8 0, align 1
@load_const = common global i8 0, align 1
@had_error = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@functions = external global %struct.bc_function*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_load() #0 {
entry:
  call void @clear_func(i8 signext 0)
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  store i8 0, i8* @load_str, align 1
  store i8 0, i8* @load_const, align 1
  ret void
}

declare void @clear_func(i8 signext) #1

; Function Attrs: nounwind uwtable
define void @addbyte(i32 %byte) #0 {
entry:
  %byte.addr = alloca i32, align 4
  %seg = alloca i32, align 4
  %offset = alloca i32, align 4
  %func = alloca i32, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i32, i32* @had_error, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %shr = ashr i32 %1, 10
  store i32 %shr, i32* %seg, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %rem = srem i32 %2, 1024
  store i32 %rem, i32* %offset, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %3, i32* %func, align 4
  %4 = load i32, i32* %seg, align 4
  %cmp = icmp sge i32 %4, 16
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load i32, i32* %seg, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %func, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %7, i64 %idxprom3
  %f_body = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx4, align 8
  %cmp5 = icmp eq i8* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.2
  %call = call noalias i8* @malloc(i64 1024) #5
  %9 = load i32, i32* %seg, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %func, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx9 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %11, i64 %idxprom8
  %f_body10 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body10, i32 0, i64 %idxprom7
  store i8* %call, i8** %arrayidx11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.6, %if.end.2
  %12 = load i32, i32* %byte.addr, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i32, i32* %offset, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %seg, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32, i32* %func, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx16 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %16, i64 %idxprom15
  %f_body17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body17, i32 0, i64 %idxprom14
  %17 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  store i8 %conv, i8* %arrayidx19, align 1
  %18 = load i32, i32* %func, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx21 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %19, i64 %idxprom20
  %f_code_size = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx21, i32 0, i32 2
  %20 = load i32, i32* %f_code_size, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %f_code_size, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then.1, %if.then
  ret void
}

declare void @yyerror(i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @def_label(i64 %lab) #0 {
entry:
  %lab.addr = alloca i64, align 8
  %temp = alloca %struct.bc_label_group*, align 8
  %group = alloca i32, align 4
  %offset = alloca i32, align 4
  %func = alloca i32, align 4
  store i64 %lab, i64* %lab.addr, align 8
  %0 = load i64, i64* %lab.addr, align 8
  %shr = ashr i64 %0, 6
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %group, align 4
  %1 = load i64, i64* %lab.addr, align 8
  %rem = srem i64 %1, 64
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, i32* %offset, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %2, i32* %func, align 4
  %3 = load i32, i32* %func, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %4, i64 %idxprom
  %f_label = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 3
  %5 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label, align 8
  %cmp = icmp eq %struct.bc_label_group* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 520) #5
  %6 = bitcast i8* %call to %struct.bc_label_group*
  %7 = load i32, i32* %func, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx4 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %8, i64 %idxprom3
  %f_label5 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx4, i32 0, i32 3
  store %struct.bc_label_group* %6, %struct.bc_label_group** %f_label5, align 8
  %9 = load i32, i32* %func, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx7 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %10, i64 %idxprom6
  %f_label8 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx7, i32 0, i32 3
  %11 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label8, align 8
  %l_next = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %11, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %l_next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %func, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx10 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %13, i64 %idxprom9
  %f_label11 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx10, i32 0, i32 3
  %14 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label11, align 8
  store %struct.bc_label_group* %14, %struct.bc_label_group** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %15 = load i32, i32* %group, align 4
  %cmp12 = icmp sgt i32 %15, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.bc_label_group*, %struct.bc_label_group** %temp, align 8
  %l_next14 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %16, i32 0, i32 1
  %17 = load %struct.bc_label_group*, %struct.bc_label_group** %l_next14, align 8
  %cmp15 = icmp eq %struct.bc_label_group* %17, null
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %while.body
  %call18 = call noalias i8* @malloc(i64 520) #5
  %18 = bitcast i8* %call18 to %struct.bc_label_group*
  %19 = load %struct.bc_label_group*, %struct.bc_label_group** %temp, align 8
  %l_next19 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %19, i32 0, i32 1
  store %struct.bc_label_group* %18, %struct.bc_label_group** %l_next19, align 8
  %20 = load %struct.bc_label_group*, %struct.bc_label_group** %temp, align 8
  %l_next20 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %20, i32 0, i32 1
  %21 = load %struct.bc_label_group*, %struct.bc_label_group** %l_next20, align 8
  %l_next21 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %21, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %l_next21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %while.body
  %22 = load %struct.bc_label_group*, %struct.bc_label_group** %temp, align 8
  %l_next23 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %22, i32 0, i32 1
  %23 = load %struct.bc_label_group*, %struct.bc_label_group** %l_next23, align 8
  store %struct.bc_label_group* %23, %struct.bc_label_group** %temp, align 8
  %24 = load i32, i32* %group, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %group, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %conv24 = sext i32 %25 to i64
  %26 = load i32, i32* %offset, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load %struct.bc_label_group*, %struct.bc_label_group** %temp, align 8
  %l_adrs = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %27, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [64 x i64], [64 x i64]* %l_adrs, i32 0, i64 %idxprom25
  store i64 %conv24, i64* %arrayidx26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @long_val(i8** %str) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8**, align 8
  %val = alloca i32, align 4
  %neg = alloca i8, align 1
  store i8** %str, i8*** %str.addr, align 8
  store i32 0, i32* %val, align 4
  store i8 0, i8* %neg, align 1
  %0 = load i8**, i8*** %str.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %neg, align 1
  %3 = load i8**, i8*** %str.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i8**, i8*** %str.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #6
  %8 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %9 to i32
  %and = and i32 %conv3, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %val, align 4
  %mul = mul nsw i32 %10, 10
  %11 = load i8**, i8*** %str.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %conv5 = sext i8 %13 to i32
  %add = add nsw i32 %mul, %conv5
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %val, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i8, i8* %neg, align 1
  %tobool6 = icmp ne i8 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.end
  %15 = load i32, i32* %val, align 4
  %sub8 = sub nsw i32 0, %15
  %conv9 = sext i32 %sub8 to i64
  store i64 %conv9, i64* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %16 = load i32, i32* %val, align 4
  %conv10 = sext i32 %16 to i64
  store i64 %conv10, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.7
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define void @load_code(i8* %code) #0 {
entry:
  %code.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %ap_name = alloca i64, align 8
  %label_no = alloca i64, align 8
  %vaf_name = alloca i64, align 8
  %func = alloca i64, align 8
  %save_adr = alloca %struct.program_counter, align 4
  store i8* %code, i8** %code.addr, align 8
  %0 = load i8*, i8** %code.addr, align 8
  store i8* %0, i8** %str, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.175, %entry
  %1 = load i8*, i8** %str, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.176

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @had_error, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.176

if.end:                                           ; preds = %while.body
  %4 = load i8, i8* @load_str, align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** %str, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 34
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  store i8 0, i8* @load_str, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.3
  %7 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %8 = load i8, i8* %7, align 1
  %conv9 = sext i8 %8 to i32
  call void @addbyte(i32 %conv9)
  br label %if.end.175

if.else:                                          ; preds = %if.end
  %9 = load i8, i8* @load_const, align 1
  %tobool10 = icmp ne i8 %9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.46

if.then.11:                                       ; preds = %if.else
  %10 = load i8*, i8** %str, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.then.11
  %12 = load i8*, i8** %str, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr16, i8** %str, align 8
  br label %if.end.45

if.else.17:                                       ; preds = %if.then.11
  %13 = load i8*, i8** %str, align 8
  %14 = load i8, i8* %13, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp eq i32 %conv18, 58
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.17
  store i8 0, i8* @load_const, align 1
  %15 = load i8*, i8** %str, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr22, i8** %str, align 8
  %16 = load i8, i8* %15, align 1
  %conv23 = sext i8 %16 to i32
  call void @addbyte(i32 %conv23)
  br label %if.end.44

if.else.24:                                       ; preds = %if.else.17
  %17 = load i8*, i8** %str, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.else.24
  %19 = load i8*, i8** %str, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr29, i8** %str, align 8
  %20 = load i8, i8* %19, align 1
  %conv30 = sext i8 %20 to i32
  call void @addbyte(i32 %conv30)
  br label %if.end.43

if.else.31:                                       ; preds = %if.else.24
  %21 = load i8*, i8** %str, align 8
  %22 = load i8, i8* %21, align 1
  %conv32 = sext i8 %22 to i32
  %cmp33 = icmp sge i32 %conv32, 65
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.else.31
  %23 = load i8*, i8** %str, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr36, i8** %str, align 8
  %24 = load i8, i8* %23, align 1
  %conv37 = sext i8 %24 to i32
  %add = add nsw i32 %conv37, 10
  %sub = sub nsw i32 %add, 65
  call void @addbyte(i32 %sub)
  br label %if.end.42

if.else.38:                                       ; preds = %if.else.31
  %25 = load i8*, i8** %str, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr39, i8** %str, align 8
  %26 = load i8, i8* %25, align 1
  %conv40 = sext i8 %26 to i32
  %sub41 = sub nsw i32 %conv40, 48
  call void @addbyte(i32 %sub41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.28
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.21
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.15
  br label %if.end.174

if.else.46:                                       ; preds = %if.else
  %27 = load i8*, i8** %str, align 8
  %28 = load i8, i8* %27, align 1
  %conv47 = sext i8 %28 to i32
  switch i32 %conv47, label %sw.default [
    i32 34, label %sw.bb
    i32 78, label %sw.bb.48
    i32 66, label %sw.bb.50
    i32 74, label %sw.bb.50
    i32 90, label %sw.bb.50
    i32 70, label %sw.bb.63
    i32 93, label %sw.bb.110
    i32 67, label %sw.bb.113
    i32 99, label %sw.bb.143
    i32 75, label %sw.bb.147
    i32 100, label %sw.bb.149
    i32 105, label %sw.bb.149
    i32 108, label %sw.bb.149
    i32 115, label %sw.bb.149
    i32 65, label %sw.bb.149
    i32 77, label %sw.bb.149
    i32 76, label %sw.bb.149
    i32 83, label %sw.bb.149
    i32 64, label %sw.bb.165
    i32 10, label %sw.bb.170
  ]

sw.bb:                                            ; preds = %if.else.46
  store i8 1, i8* @load_str, align 1
  br label %sw.epilog.172

sw.bb.48:                                         ; preds = %if.else.46
  %29 = load i8*, i8** %str, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr49, i8** %str, align 8
  %call = call i64 @long_val(i8** %str)
  store i64 %call, i64* %label_no, align 8
  %30 = load i64, i64* %label_no, align 8
  call void @def_label(i64 %30)
  br label %sw.epilog.172

sw.bb.50:                                         ; preds = %if.else.46, %if.else.46, %if.else.46
  %31 = load i8*, i8** %str, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr51, i8** %str, align 8
  %32 = load i8, i8* %31, align 1
  %conv52 = sext i8 %32 to i32
  call void @addbyte(i32 %conv52)
  %call53 = call i64 @long_val(i8** %str)
  store i64 %call53, i64* %label_no, align 8
  %33 = load i64, i64* %label_no, align 8
  %cmp54 = icmp sgt i64 %33, 65535
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %sw.bb.50
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.58:                                        ; preds = %sw.bb.50
  %35 = load i64, i64* %label_no, align 8
  %conv59 = trunc i64 %35 to i8
  %conv60 = sext i8 %conv59 to i32
  %and = and i32 %conv60, 255
  call void @addbyte(i32 %and)
  %36 = load i64, i64* %label_no, align 8
  %conv61 = trunc i64 %36 to i8
  %conv62 = sext i8 %conv61 to i32
  %shr = ashr i32 %conv62, 8
  call void @addbyte(i32 %shr)
  br label %sw.epilog.172

sw.bb.63:                                         ; preds = %if.else.46
  %37 = load i8*, i8** %str, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr64, i8** %str, align 8
  %call65 = call i64 @long_val(i8** %str)
  store i64 %call65, i64* %func, align 8
  %38 = load i64, i64* %func, align 8
  %conv66 = trunc i64 %38 to i8
  call void @clear_func(i8 signext %conv66)
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.78, %sw.bb.63
  %39 = load i8*, i8** %str, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr68, i8** %str, align 8
  %40 = load i8, i8* %39, align 1
  %conv69 = sext i8 %40 to i32
  %cmp70 = icmp ne i32 %conv69, 46
  br i1 %cmp70, label %while.body.72, label %while.end

while.body.72:                                    ; preds = %while.cond.67
  %41 = load i8*, i8** %str, align 8
  %42 = load i8, i8* %41, align 1
  %conv73 = sext i8 %42 to i32
  %cmp74 = icmp eq i32 %conv73, 46
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %while.body.72
  %43 = load i8*, i8** %str, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr77, i8** %str, align 8
  br label %while.end

if.end.78:                                        ; preds = %while.body.72
  %call79 = call i64 @long_val(i8** %str)
  store i64 %call79, i64* %ap_name, align 8
  %44 = load i64, i64* %func, align 8
  %conv80 = trunc i64 %44 to i32
  %idxprom = sext i32 %conv80 to i64
  %45 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %45, i64 %idxprom
  %f_params = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 4
  %46 = load %struct.arg_list*, %struct.arg_list** %f_params, align 8
  %47 = load i64, i64* %ap_name, align 8
  %conv81 = trunc i64 %47 to i8
  %call82 = call %struct.arg_list* @nextarg(%struct.arg_list* %46, i8 signext %conv81)
  %48 = load i64, i64* %func, align 8
  %conv83 = trunc i64 %48 to i32
  %idxprom84 = sext i32 %conv83 to i64
  %49 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx85 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %49, i64 %idxprom84
  %f_params86 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx85, i32 0, i32 4
  store %struct.arg_list* %call82, %struct.arg_list** %f_params86, align 8
  br label %while.cond.67

while.end:                                        ; preds = %if.then.76, %while.cond.67
  br label %while.cond.87

while.cond.87:                                    ; preds = %if.end.97, %while.end
  %50 = load i8*, i8** %str, align 8
  %51 = load i8, i8* %50, align 1
  %conv88 = sext i8 %51 to i32
  %cmp89 = icmp ne i32 %conv88, 91
  br i1 %cmp89, label %while.body.91, label %while.end.108

while.body.91:                                    ; preds = %while.cond.87
  %52 = load i8*, i8** %str, align 8
  %53 = load i8, i8* %52, align 1
  %conv92 = sext i8 %53 to i32
  %cmp93 = icmp eq i32 %conv92, 44
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %while.body.91
  %54 = load i8*, i8** %str, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr96, i8** %str, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %while.body.91
  %call98 = call i64 @long_val(i8** %str)
  store i64 %call98, i64* %ap_name, align 8
  %55 = load i64, i64* %func, align 8
  %conv99 = trunc i64 %55 to i32
  %idxprom100 = sext i32 %conv99 to i64
  %56 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx101 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %56, i64 %idxprom100
  %f_autos = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx101, i32 0, i32 5
  %57 = load %struct.arg_list*, %struct.arg_list** %f_autos, align 8
  %58 = load i64, i64* %ap_name, align 8
  %conv102 = trunc i64 %58 to i8
  %call103 = call %struct.arg_list* @nextarg(%struct.arg_list* %57, i8 signext %conv102)
  %59 = load i64, i64* %func, align 8
  %conv104 = trunc i64 %59 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %60 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx106 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %60, i64 %idxprom105
  %f_autos107 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx106, i32 0, i32 5
  store %struct.arg_list* %call103, %struct.arg_list** %f_autos107, align 8
  br label %while.cond.87

while.end.108:                                    ; preds = %while.cond.87
  %61 = bitcast %struct.program_counter* %save_adr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct.program_counter* @load_adr to i8*), i64 8, i32 4, i1 false)
  %62 = load i64, i64* %func, align 8
  %conv109 = trunc i64 %62 to i32
  store i32 %conv109, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  br label %sw.epilog.172

sw.bb.110:                                        ; preds = %if.else.46
  %63 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  %idxprom111 = sext i32 %63 to i64
  %64 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx112 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %64, i64 %idxprom111
  %f_defined = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx112, i32 0, i32 0
  store i8 1, i8* %f_defined, align 1
  %65 = bitcast %struct.program_counter* %save_adr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.program_counter* @load_adr to i8*), i8* %65, i64 8, i32 4, i1 false)
  br label %sw.epilog.172

sw.bb.113:                                        ; preds = %if.else.46
  %66 = load i8*, i8** %str, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr114, i8** %str, align 8
  %67 = load i8, i8* %66, align 1
  %conv115 = sext i8 %67 to i32
  call void @addbyte(i32 %conv115)
  %call116 = call i64 @long_val(i8** %str)
  store i64 %call116, i64* %func, align 8
  %68 = load i64, i64* %func, align 8
  %cmp117 = icmp slt i64 %68, 128
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %sw.bb.113
  %69 = load i64, i64* %func, align 8
  %conv120 = trunc i64 %69 to i8
  %conv121 = sext i8 %conv120 to i32
  call void @addbyte(i32 %conv121)
  br label %if.end.128

if.else.122:                                      ; preds = %sw.bb.113
  %70 = load i64, i64* %func, align 8
  %shr123 = ashr i64 %70, 8
  %and124 = and i64 %shr123, 255
  %or = or i64 %and124, 128
  %conv125 = trunc i64 %or to i32
  call void @addbyte(i32 %conv125)
  %71 = load i64, i64* %func, align 8
  %and126 = and i64 %71, 255
  %conv127 = trunc i64 %and126 to i32
  call void @addbyte(i32 %conv127)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.122, %if.then.119
  %72 = load i8*, i8** %str, align 8
  %73 = load i8, i8* %72, align 1
  %conv129 = sext i8 %73 to i32
  %cmp130 = icmp eq i32 %conv129, 44
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.128
  %74 = load i8*, i8** %str, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr133, i8** %str, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.128
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.139, %if.end.134
  %75 = load i8*, i8** %str, align 8
  %76 = load i8, i8* %75, align 1
  %conv136 = sext i8 %76 to i32
  %cmp137 = icmp ne i32 %conv136, 58
  br i1 %cmp137, label %while.body.139, label %while.end.142

while.body.139:                                   ; preds = %while.cond.135
  %77 = load i8*, i8** %str, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr140, i8** %str, align 8
  %78 = load i8, i8* %77, align 1
  %conv141 = sext i8 %78 to i32
  call void @addbyte(i32 %conv141)
  br label %while.cond.135

while.end.142:                                    ; preds = %while.cond.135
  call void @addbyte(i32 58)
  br label %sw.epilog.172

sw.bb.143:                                        ; preds = %if.else.46
  %79 = load i8*, i8** %str, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr144, i8** %str, align 8
  %80 = load i8, i8* %79, align 1
  %conv145 = sext i8 %80 to i32
  call void @addbyte(i32 %conv145)
  %81 = load i8*, i8** %str, align 8
  %82 = load i8, i8* %81, align 1
  %conv146 = sext i8 %82 to i32
  call void @addbyte(i32 %conv146)
  br label %sw.epilog.172

sw.bb.147:                                        ; preds = %if.else.46
  %83 = load i8*, i8** %str, align 8
  %84 = load i8, i8* %83, align 1
  %conv148 = sext i8 %84 to i32
  call void @addbyte(i32 %conv148)
  store i8 1, i8* @load_const, align 1
  br label %sw.epilog.172

sw.bb.149:                                        ; preds = %if.else.46, %if.else.46, %if.else.46, %if.else.46, %if.else.46, %if.else.46, %if.else.46, %if.else.46
  %85 = load i8*, i8** %str, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr150, i8** %str, align 8
  %86 = load i8, i8* %85, align 1
  %conv151 = sext i8 %86 to i32
  call void @addbyte(i32 %conv151)
  %call152 = call i64 @long_val(i8** %str)
  store i64 %call152, i64* %vaf_name, align 8
  %87 = load i64, i64* %vaf_name, align 8
  %cmp153 = icmp slt i64 %87, 128
  br i1 %cmp153, label %if.then.155, label %if.else.157

if.then.155:                                      ; preds = %sw.bb.149
  %88 = load i64, i64* %vaf_name, align 8
  %conv156 = trunc i64 %88 to i32
  call void @addbyte(i32 %conv156)
  br label %if.end.164

if.else.157:                                      ; preds = %sw.bb.149
  %89 = load i64, i64* %vaf_name, align 8
  %shr158 = ashr i64 %89, 8
  %and159 = and i64 %shr158, 255
  %or160 = or i64 %and159, 128
  %conv161 = trunc i64 %or160 to i32
  call void @addbyte(i32 %conv161)
  %90 = load i64, i64* %vaf_name, align 8
  %and162 = and i64 %90, 255
  %conv163 = trunc i64 %and162 to i32
  call void @addbyte(i32 %conv163)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.157, %if.then.155
  br label %sw.epilog.172

sw.bb.165:                                        ; preds = %if.else.46
  %91 = load i8*, i8** %str, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr166, i8** %str, align 8
  %92 = load i8, i8* %incdec.ptr166, align 1
  %conv167 = sext i8 %92 to i32
  switch i32 %conv167, label %sw.epilog [
    i32 105, label %sw.bb.168
    i32 114, label %sw.bb.169
  ]

sw.bb.168:                                        ; preds = %sw.bb.165
  call void @init_load()
  br label %sw.epilog

sw.bb.169:                                        ; preds = %sw.bb.165
  call void @execute()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.165, %sw.bb.169, %sw.bb.168
  br label %sw.epilog.172

sw.bb.170:                                        ; preds = %if.else.46
  br label %sw.epilog.172

sw.default:                                       ; preds = %if.else.46
  %93 = load i8*, i8** %str, align 8
  %94 = load i8, i8* %93, align 1
  %conv171 = sext i8 %94 to i32
  call void @addbyte(i32 %conv171)
  br label %sw.epilog.172

sw.epilog.172:                                    ; preds = %sw.default, %sw.bb.170, %sw.epilog, %if.end.164, %sw.bb.147, %sw.bb.143, %while.end.142, %sw.bb.110, %while.end.108, %if.end.58, %sw.bb.48, %sw.bb
  %95 = load i8*, i8** %str, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr173, i8** %str, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %sw.epilog.172, %if.end.45
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.8
  br label %while.cond

while.end.176:                                    ; preds = %if.then, %while.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct.arg_list* @nextarg(%struct.arg_list*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @execute() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
