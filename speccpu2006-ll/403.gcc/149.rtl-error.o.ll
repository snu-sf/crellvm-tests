; ModuleID = 'rtl-error.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], i32 (%struct.output_buffer*)* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@global_dc = external global %struct.diagnostic_context*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"unrecognizable insn:\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"insn does not satisfy its constraints:\00", align 1
@input_filename = external global i8*, align 8
@lineno = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @error_for_asm(%struct.rtx_def* %insn, i8* %msgid, ...) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  call void @diagnostic_for_asm(%struct.rtx_def* %0, i8* %1, [1 x %struct.__va_list_tag]* %ap, i32 0)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @diagnostic_for_asm(%struct.rtx_def* %insn, i8* %msg, [1 x %struct.__va_list_tag]* %args_ptr, i32 %warn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %msg.addr = alloca i8*, align 8
  %args_ptr.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %warn.addr = alloca i32, align 4
  %dc = alloca %struct.diagnostic_context, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store [1 x %struct.__va_list_tag]* %args_ptr, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  store i32 %warn, i32* %warn.addr, align 4
  %0 = load i8*, i8** %msg.addr, align 8
  %1 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  %2 = load i32, i32* %warn.addr, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %1, i8* null, i32 0, i32 %2)
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %file = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %dc, i32 0, i32 3
  %line = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %dc, i32 0, i32 4
  call void @file_and_line_for_asm(%struct.rtx_def* %3, i8** %file, i32* %line)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define void @warning_for_asm(%struct.rtx_def* %insn, i8* %msgid, ...) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  call void @diagnostic_for_asm(%struct.rtx_def* %0, i8* %1, [1 x %struct.__va_list_tag]* %ap, i32 1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @_fatal_insn(i8* %msgid, %struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) #2 {
entry:
  %msgid.addr = alloca i8*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %function, i8** %function.addr, align 8
  %0 = load i8*, i8** %msgid.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %0)
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %2 = bitcast %struct.diagnostic_context* %1 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 3
  %3 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %arrayidx, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @debug_rtx(%struct.rtx_def* %4)
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load i32, i32* %line.addr, align 4
  %7 = load i8*, i8** %function.addr, align 8
  call void @fancy_abort(i8* %5, i32 %6, i8* %7) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @error(i8*, ...) #3

declare void @debug_rtx(%struct.rtx_def*) #3

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: noreturn nounwind uwtable
define void @_fatal_insn_not_found(%struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) #2 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %function, i8** %function.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %line.addr, align 4
  %5 = load i8*, i8** %function.addr, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), %struct.rtx_def* %2, i8* %3, i32 %4, i8* %5) #5
  unreachable

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = load i8*, i8** %file.addr, align 8
  %8 = load i32, i32* %line.addr, align 4
  %9 = load i8*, i8** %function.addr, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), %struct.rtx_def* %6, i8* %7, i32 %8, i8* %9) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @set_diagnostic_context(%struct.diagnostic_context*, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @file_and_line_for_asm(%struct.rtx_def* %insn, i8** %pfile, i32* %pline) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pfile.addr = alloca i8**, align 8
  %pline.addr = alloca i32*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %asmop = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i8** %pfile, i8*** %pfile.addr, align 8
  store i32* %pline, i32** %pline.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 41
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %asmop, align 8
  br label %if.end.56

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 41
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %asmop, align 8
  br label %if.end.55

if.else.14:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load15 = load i32, i32* %13, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 39
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.34

land.lhs.true.18:                                 ; preds = %if.else.14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 47
  br i1 %cmp24, label %if.then.25, label %if.else.34

if.then.25:                                       ; preds = %land.lhs.true.18
  %18 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec28, align 8
  %elem29 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem29, i32 0, i64 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %asmop, align 8
  br label %if.end.54

if.else.34:                                       ; preds = %land.lhs.true.18, %if.else.14
  %22 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load35 = load i32, i32* %23, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 39
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.53

land.lhs.true.38:                                 ; preds = %if.else.34
  %24 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtvec41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec41, align 8
  %elem42 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem42, i32 0, i64 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load44 = load i32, i32* %27, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 41
  br i1 %cmp46, label %if.then.47, label %if.else.53

if.then.47:                                       ; preds = %land.lhs.true.38
  %28 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtvec50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec50, align 8
  %elem51 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem51, i32 0, i64 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx52, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %asmop, align 8
  br label %if.end

if.else.53:                                       ; preds = %land.lhs.true.38, %if.else.34
  store %struct.rtx_def* null, %struct.rtx_def** %asmop, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.53, %if.then.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then.25
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.13
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %tobool = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool, label %if.then.57, label %if.else.62

if.then.57:                                       ; preds = %if.end.56
  %32 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 5
  %rtstr = bitcast %union.rtunion_def* %arrayidx59 to i8**
  %33 = load i8*, i8** %rtstr, align 8
  %34 = load i8**, i8*** %pfile.addr, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 6
  %rtint = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %36 = load i32, i32* %rtint, align 4
  %37 = load i32*, i32** %pline.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.63

if.else.62:                                       ; preds = %if.end.56
  %38 = load i8*, i8** @input_filename, align 8
  %39 = load i8**, i8*** %pfile.addr, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @lineno, align 4
  %41 = load i32*, i32** %pline.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.57
  ret void
}

declare void @report_diagnostic(%struct.diagnostic_context*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
