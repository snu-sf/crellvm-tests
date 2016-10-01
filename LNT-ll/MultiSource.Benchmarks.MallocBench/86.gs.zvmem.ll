; ModuleID = './MultiSource.Benchmarks.MallocBench/86.gs.zvmem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.vm_save_s = type { %struct.alloc_save_s*, %struct.int_state_s*, %struct.gs_state_s* }
%struct.alloc_save_s = type opaque
%struct.dict_s = type opaque
%struct.gs_font_s = type opaque
%struct.name_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_s = type opaque

@.str = private unnamed_addr constant [6 x i8] c"zsave\00", align 1
@istate = external global %struct.int_state_s, align 8
@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@osbot = external global %struct.ref_s*, align 8
@estack = external global [0 x %struct.ref_s], align 8
@esp = external global %struct.ref_s*, align 8
@dstack = external global [0 x %struct.ref_s], align 8
@dsp = external global %struct.ref_s*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"zrestore\00", align 1
@zvmem_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zrestore }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zsave }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zvmstatus }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0vmstatus\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zsave(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %vmsave = alloca %struct.vm_save_s*, align 8
  %asave = alloca %struct.alloc_save_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgsave to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %call1 = call i8* @alloc(i32 1, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i8* %call1 to %struct.vm_save_s*
  store %struct.vm_save_s* %1, %struct.vm_save_s** %vmsave, align 8
  %call2 = call %struct.alloc_save_s* @alloc_save_state()
  store %struct.alloc_save_s* %call2, %struct.alloc_save_s** %asave, align 8
  %2 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %cmp3 = icmp eq %struct.vm_save_s* %4, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %cmp4 = icmp eq %struct.alloc_save_s* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -25, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %7 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %asave7 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %7, i32 0, i32 0
  store %struct.alloc_save_s* %6, %struct.alloc_save_s** %asave7, align 8
  %8 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %9 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %isave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %9, i32 0, i32 1
  store %struct.int_state_s* %8, %struct.int_state_s** %isave, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call8 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %10, %struct.gs_state_s* null)
  %11 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %gsave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %11, i32 0, i32 2
  store %struct.gs_state_s* %call8, %struct.gs_state_s** %gsave, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp9 = icmp ugt %struct.ref_s* %add.ptr, %13
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr11, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %15 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %psave = bitcast %union.v* %value to %struct.vm_save_s**
  store %struct.vm_save_s* %15, %struct.vm_save_s** %psave, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 48, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @zgsave(...) #1

declare i8* @alloc(i32, i32, i8*) #1

declare %struct.alloc_save_s* @alloc_save_state() #1

declare %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s*, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zrestore(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %vmsave = alloca %struct.vm_save_s*, align 8
  %asave = alloca %struct.alloc_save_s*, align 8
  %code = alloca i32, align 4
  %code3 = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 48
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %psave = bitcast %union.v* %value to %struct.vm_save_s**
  %3 = load %struct.vm_save_s*, %struct.vm_save_s** %psave, align 8
  store %struct.vm_save_s* %3, %struct.vm_save_s** %vmsave, align 8
  %4 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %asave2 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %4, i32 0, i32 0
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave2, align 8
  store %struct.alloc_save_s* %5, %struct.alloc_save_s** %asave, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %call = call i32 @restore_check_stack(%struct.ref_s* %6, %struct.ref_s* %7, %struct.alloc_save_s* %8)
  store i32 %call, i32* %code3, align 4
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %call6 = call i32 @restore_check_stack(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0), %struct.ref_s* %add.ptr, %struct.alloc_save_s* %10)
  store i32 %call6, i32* %code3, align 4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  %12 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %call11 = call i32 @restore_check_stack(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %add.ptr10, %struct.alloc_save_s* %12)
  store i32 %call11, i32* %code3, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.end
  %13 = load i32, i32* %code3, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.9
  %14 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  %call16 = call i32 @alloc_restore_state_check(%struct.alloc_save_s* %14)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 -11, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call21 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestoreall to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %15)
  %16 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave, align 8
  call void @alloc_restore_state(%struct.alloc_save_s* %16)
  %17 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %isave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %17, i32 0, i32 1
  %18 = load %struct.int_state_s*, %struct.int_state_s** %isave, align 8
  store %struct.int_state_s* %18, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %20 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %gsave = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %20, i32 0, i32 2
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %gsave, align 8
  %call22 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %19, %struct.gs_state_s* %21)
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call23 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestore to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %22)
  store i32 %call23, i32* %code, align 4
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  %24 = load %struct.vm_save_s*, %struct.vm_save_s** %vmsave, align 8
  %25 = bitcast %struct.vm_save_s* %24 to i8*
  call void @alloc_free(i8* %25, i32 1, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  store %struct.ref_s* %add.ptr28, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.19, %if.then.14, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @restore_check_stack(%struct.ref_s* %bot, %struct.ref_s* %top, %struct.alloc_save_s* %asave) #0 {
entry:
  %retval = alloca i32, align 4
  %bot.addr = alloca %struct.ref_s*, align 8
  %top.addr = alloca %struct.ref_s*, align 8
  %asave.addr = alloca %struct.alloc_save_s*, align 8
  %stkp = alloca %struct.ref_s*, align 8
  %ptr = alloca i8*, align 8
  store %struct.ref_s* %bot, %struct.ref_s** %bot.addr, align 8
  store %struct.ref_s* %top, %struct.ref_s** %top.addr, align 8
  store %struct.alloc_save_s* %asave, %struct.alloc_save_s** %asave.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %bot.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %stkp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %top.addr, align 8
  %cmp = icmp ult %struct.ref_s* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 7, label %sw.bb.5
    i32 12, label %sw.bb.7
    i32 13, label %sw.bb.9
    i32 14, label %sw.bb.11
    i32 15, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %5 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %7 = bitcast %struct.ref_s* %6 to i8*
  store i8* %7, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %8 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %pdict = bitcast %union.v* %value2 to %struct.dict_s**
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %10 = bitcast %struct.dict_s* %9 to i8*
  store i8* %10, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %11 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %pfont = bitcast %union.v* %value4 to %struct.gs_font_s**
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %13 = bitcast %struct.gs_font_s* %12 to i8*
  store i8* %13, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %14 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %pname = bitcast %union.v* %value6 to %struct.name_s**
  %15 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %16 = bitcast %struct.name_s* %15 to i8*
  store i8* %16, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %17 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %psave = bitcast %union.v* %value8 to %struct.vm_save_s**
  %18 = load %struct.vm_save_s*, %struct.vm_save_s** %psave, align 8
  %19 = bitcast %struct.vm_save_s* %18 to i8*
  store i8* %19, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %20 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %bytes = bitcast %union.v* %value10 to i8**
  %21 = load i8*, i8** %bytes, align 8
  store i8* %21, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %22 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %pcolor = bitcast %union.v* %value12 to %struct.gs_color_s**
  %23 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %24 = bitcast %struct.gs_color_s* %23 to i8*
  store i8* %24, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %25 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %pdevice = bitcast %union.v* %value14 to %struct.gx_device_s**
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %27 = bitcast %struct.gx_device_s* %26 to i8*
  store i8* %27, i8** %ptr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %28 = load i8*, i8** %ptr, align 8
  %29 = load %struct.alloc_save_s*, %struct.alloc_save_s** %asave.addr, align 8
  %call = call i32 @alloc_is_since_save(i8* %28, %struct.alloc_save_s* %29)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -11, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end, %sw.default
  %30 = load %struct.ref_s*, %struct.ref_s** %stkp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %stkp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @alloc_restore_state_check(%struct.alloc_save_s*) #1

declare i32 @zgrestoreall(...) #1

declare void @alloc_restore_state(%struct.alloc_save_s*) #1

declare i32 @zgrestore(...) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

declare i32 @alloc_is_since_save(i8*, %struct.alloc_save_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zvmstatus(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %used = alloca i64, align 8
  %total = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  call void @alloc_status(i64* %used, i64* %total)
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -3
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @alloc_save_level()
  %conv = sext i32 %call to i64
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  %5 = load i64, i64* %used, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 0
  %intval6 = bitcast %union.v* %value5 to i64*
  store i64 %5, i64* %intval6, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 1
  store i16 20, i16* %type_attrs8, align 2
  %8 = load i64, i64* %total, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval10 = bitcast %union.v* %value9 to i64*
  store i64 %8, i64* %intval10, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  store i16 20, i16* %type_attrs11, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @alloc_status(i64*, i64*) #1

declare i32 @alloc_save_level() #1

; Function Attrs: nounwind uwtable
define void @zvmem_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zvmem_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
