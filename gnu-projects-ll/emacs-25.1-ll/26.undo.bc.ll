; ModuleID = './src/undo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }
%struct.Lisp_Intfwd = type { i32, i64* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }

@current_buffer = external global %struct.buffer*, align 8
@pending_boundary = internal global i64 0, align 8
@point_before_last_command_or_undo = external global i64, align 8
@buffer_before_last_command_or_undo = external global %struct.buffer*, align 8
@globals = external global %struct.emacs_globals, align 8
@Sundo_boundary = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fundo_boundary }, i16 0, i16 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_undo.i_fwd = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"undo-limit\00", align 1
@syms_of_undo.i_fwd.1 = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"undo-strong-limit\00", align 1
@syms_of_undo.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"undo-outer-limit\00", align 1
@syms_of_undo.o_fwd.4 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"undo-outer-limit-function\00", align 1
@syms_of_undo.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"undo-inhibit-record-point\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"undo-boundary\00", align 1

; Function Attrs: nounwind uwtable
define void @record_insert(i64 %beg, i64 %length) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %lbeg = alloca i64, align 8
  %lend = alloca i64, align 8
  %elt = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 98
  %1 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @prepare_record()
  %2 = load i64, i64* %beg.addr, align 8
  call void @record_point(i64 %2)
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 98
  %4 = load i64, i64* %undo_list_1, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then.4, label %if.end.33

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_5 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 98
  %6 = load i64, i64* %undo_list_5, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %elt, align 8
  %10 = load i64, i64* %elt, align 8
  %and6 = and i64 %10, 7
  %conv7 = trunc i64 %and6 to i32
  %cmp8 = icmp eq i32 %conv7, 3
  br i1 %cmp8, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.then.4
  %11 = load i64, i64* %elt, align 8
  %sub10 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub10 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car11, align 8
  %and12 = and i64 %14, 7
  %conv13 = trunc i64 %and12 to i32
  %and14 = and i32 %conv13, -5
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.32

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %15 = load i64, i64* %elt, align 8
  %sub18 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub18 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  %and19 = and i64 %18, 7
  %conv20 = trunc i64 %and19 to i32
  %and21 = and i32 %conv20, -5
  %cmp22 = icmp eq i32 %and21, 2
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.32

land.lhs.true.24:                                 ; preds = %land.lhs.true.17
  %19 = load i64, i64* %elt, align 8
  %sub25 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub25 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr27 = bitcast %union.anon* %u26 to i64*
  %22 = load i64, i64* %cdr27, align 8
  %shr = ashr i64 %22, 2
  %23 = load i64, i64* %beg.addr, align 8
  %cmp28 = icmp eq i64 %shr, %23
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true.24
  %24 = load i64, i64* %elt, align 8
  %25 = load i64, i64* %beg.addr, align 8
  %26 = load i64, i64* %length.addr, align 8
  %add = add nsw i64 %25, %26
  %shl = shl i64 %add, 2
  %add31 = add i64 %shl, 2
  call void @XSETCDR(i64 %24, i64 %add31)
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.24, %land.lhs.true.17, %land.lhs.true, %if.then.4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %27 = load i64, i64* %beg.addr, align 8
  %call34 = call i64 @make_natnum(i64 %27)
  store i64 %call34, i64* %lbeg, align 8
  %28 = load i64, i64* %beg.addr, align 8
  %29 = load i64, i64* %length.addr, align 8
  %add35 = add nsw i64 %28, %29
  %shl36 = shl i64 %add35, 2
  %add37 = add i64 %shl36, 2
  store i64 %add37, i64* %lend, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %31 = load i64, i64* %lbeg, align 8
  %32 = load i64, i64* %lend, align 8
  %call38 = call i64 @Fcons(i64 %31, i64 %32)
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_39 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 98
  %34 = load i64, i64* %undo_list_39, align 8
  %call40 = call i64 @Fcons(i64 %call38, i64 %34)
  call void @bset_undo_list(%struct.buffer* %30, i64 %call40)
  br label %return

return:                                           ; preds = %if.end.33, %if.then.30, %if.then
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_record() #0 {
entry:
  %0 = load i64, i64* @pending_boundary, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fcons(i64 %call1, i64 %call2)
  store i64 %call3, i64* @pending_boundary, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_point(i64 %beg) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %at_boundary = alloca i8, align 1
  store i64 %beg, i64* %beg.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 491), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.20

if.end:                                           ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  %2 = load i64, i64* %undo_list_, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 98
  %4 = load i64, i64* %undo_list_2, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %7, %call
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %8 = phi i1 [ true, %if.end ], [ %cmp3, %lor.rhs ]
  %frombool = zext i1 %8 to i8
  store i8 %frombool, i8* %at_boundary, align 1
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 73
  %10 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %10, i32 0, i32 6
  %11 = load i64, i64* %modiff, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text5 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 73
  %13 = load %struct.buffer_text*, %struct.buffer_text** %text5, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %13, i32 0, i32 8
  %14 = load i64, i64* %save_modiff, align 8
  %cmp6 = icmp sle i64 %11, %14
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.end
  call void @record_first_change()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.end
  %15 = load i8, i8* %at_boundary, align 1
  %tobool10 = trunc i8 %15 to i1
  br i1 %tobool10, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.9
  %16 = load i64, i64* @point_before_last_command_or_undo, align 8
  %17 = load i64, i64* %beg.addr, align 8
  %cmp12 = icmp ne i64 %16, %17
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.20

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %18 = load %struct.buffer*, %struct.buffer** @buffer_before_last_command_or_undo, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp15 = icmp eq %struct.buffer* %18, %19
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %land.lhs.true.14
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %21 = load i64, i64* @point_before_last_command_or_undo, align 8
  %shl = shl i64 %21, 2
  %add = add i64 %shl, 2
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_18 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 98
  %23 = load i64, i64* %undo_list_18, align 8
  %call19 = call i64 @Fcons(i64 %add, i64 %23)
  call void @bset_undo_list(%struct.buffer* %20, i64 %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then, %if.then.17, %land.lhs.true.14, %land.lhs.true, %if.end.9
  ret void
}

declare void @XSETCDR(i64, i64) #1

declare i64 @make_natnum(i64) #1

declare void @bset_undo_list(%struct.buffer*, i64) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @record_delete(i64 %beg, i64 %string, i1 zeroext %record_markers) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %record_markers.addr = alloca i8, align 1
  %sbeg = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %frombool = zext i1 %record_markers to i8
  store i8 %frombool, i8* %record_markers.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 98
  %1 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @prepare_record()
  %2 = load i64, i64* %beg.addr, align 8
  call void @record_point(i64 %2)
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 75
  %4 = load i64, i64* %pt, align 8
  %add = add nsw i64 %4, 0
  %5 = load i64, i64* %beg.addr, align 8
  %6 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SCHARS(i64 %6)
  %add2 = add nsw i64 %5, %call1
  %cmp3 = icmp eq i64 %add, %add2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load i64, i64* %beg.addr, align 8
  %sub = sub nsw i64 0, %7
  %shl = shl i64 %sub, 2
  %add5 = add i64 %shl, 2
  store i64 %add5, i64* %sbeg, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %beg.addr, align 8
  %call6 = call i64 @make_natnum(i64 %8)
  store i64 %call6, i64* %sbeg, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %9 = load i8, i8* %record_markers.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.7
  %10 = load i64, i64* %beg.addr, align 8
  %11 = load i64, i64* %beg.addr, align 8
  %12 = load i64, i64* %string.addr, align 8
  %call9 = call i64 @SCHARS(i64 %12)
  %add10 = add nsw i64 %11, %call9
  call void @record_marker_adjustments(i64 %10, i64 %add10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.7
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %14 = load i64, i64* %string.addr, align 8
  %15 = load i64, i64* %sbeg, align 8
  %call12 = call i64 @Fcons(i64 %14, i64 %15)
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_13 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 98
  %17 = load i64, i64* %undo_list_13, align 8
  %call14 = call i64 @Fcons(i64 %call12, i64 %17)
  call void @bset_undo_list(%struct.buffer* %13, i64 %call14)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define internal void @record_marker_adjustments(i64 %from, i64 %to) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %marker = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %charpos = alloca i64, align 8
  %adjustment = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  call void @prepare_record()
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 16
  %2 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %2, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %tobool = icmp ne %struct.Lisp_Marker* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos1 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %4, i32 0, i32 3
  %5 = load i64, i64* %charpos1, align 8
  store i64 %5, i64* %charpos, align 8
  %6 = load i64, i64* %from.addr, align 8
  %7 = load i64, i64* %charpos, align 8
  %cmp = icmp sle i64 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %for.body
  %8 = load i64, i64* %charpos, align 8
  %9 = load i64, i64* %to.addr, align 8
  %cmp2 = icmp sle i64 %8, %9
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %11 = bitcast %struct.Lisp_Marker* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i64, i64* %to.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i64, i64* %from.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load i64, i64* %charpos, align 8
  %sub = sub nsw i64 %cond, %14
  store i64 %sub, i64* %adjustment, align 8
  %15 = load i64, i64* %adjustment, align 8
  %tobool3 = icmp ne i64 %15, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %16 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %17 = bitcast %struct.Lisp_Marker* %16 to i8*
  %call = call i64 @make_lisp_ptr(i8* %17, i32 1)
  store i64 %call, i64* %marker, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %19 = load i64, i64* %marker, align 8
  %20 = load i64, i64* %adjustment, align 8
  %shl = shl i64 %20, 2
  %add = add i64 %shl, 2
  %call5 = call i64 @Fcons(i64 %19, i64 %add)
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 98
  %22 = load i64, i64* %undo_list_, align 8
  %call6 = call i64 @Fcons(i64 %call5, i64 %22)
  call void @bset_undo_list(%struct.buffer* %18, i64 %call6)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %cond.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %23 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %23, i32 0, i32 2
  %24 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %24, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @record_change(i64 %beg, i64 %length) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %beg.addr, align 8
  %1 = load i64, i64* %beg.addr, align 8
  %2 = load i64, i64* %beg.addr, align 8
  %3 = load i64, i64* %length.addr, align 8
  %add = add nsw i64 %2, %3
  %call = call i64 @make_buffer_string(i64 %1, i64 %add, i1 zeroext true)
  call void @record_delete(i64 %0, i64 %call, i1 zeroext false)
  %4 = load i64, i64* %beg.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  call void @record_insert(i64 %4, i64 %5)
  ret void
}

declare i64 @make_buffer_string(i64, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define void @record_first_change() #0 {
entry:
  %base_buffer = alloca %struct.buffer*, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %base_buffer, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  %2 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 81
  %4 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  %tobool = icmp ne %struct.buffer* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %base_buffer3 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 81
  %6 = load %struct.buffer*, %struct.buffer** %base_buffer3, align 8
  store %struct.buffer* %6, %struct.buffer** %base_buffer, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %call6 = call i64 @Fvisited_file_modtime()
  %call7 = call i64 @Fcons(i64 %call5, i64 %call6)
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_8 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 98
  %9 = load i64, i64* %undo_list_8, align 8
  %call9 = call i64 @Fcons(i64 %call7, i64 %9)
  call void @bset_undo_list(%struct.buffer* %7, i64 %call9)
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

declare i64 @Fvisited_file_modtime() #1

; Function Attrs: nounwind uwtable
define void @record_property_change(i64 %beg, i64 %length, i64 %prop, i64 %value, i64 %buffer) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %lbeg = alloca i64, align 8
  %lend = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @XBUFFER(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %buf, align 8
  %1 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  %2 = load i64, i64* %undo_list_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @prepare_record()
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 6
  %5 = load i64, i64* %modiff, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 73
  %7 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %7, i32 0, i32 8
  %8 = load i64, i64* %save_modiff, align 8
  %cmp4 = icmp sle i64 %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @record_first_change()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load i64, i64* %beg.addr, align 8
  %shl = shl i64 %9, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %lbeg, align 8
  %10 = load i64, i64* %beg.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  %add7 = add nsw i64 %10, %11
  %shl8 = shl i64 %add7, 2
  %add9 = add i64 %shl8, 2
  store i64 %add9, i64* %lend, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %12 = load i64, i64* %prop.addr, align 8
  %13 = load i64, i64* %value.addr, align 8
  %14 = load i64, i64* %lbeg, align 8
  %15 = load i64, i64* %lend, align 8
  %call11 = call i64 @Fcons(i64 %14, i64 %15)
  %call12 = call i64 @Fcons(i64 %13, i64 %call11)
  %call13 = call i64 @Fcons(i64 %12, i64 %call12)
  %call14 = call i64 @Fcons(i64 %call10, i64 %call13)
  store i64 %call14, i64* %entry1, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %17 = load i64, i64* %entry1, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_15 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 98
  %19 = load i64, i64* %undo_list_15, align 8
  %call16 = call i64 @Fcons(i64 %17, i64 %19)
  call void @bset_undo_list(%struct.buffer* %16, i64 %call16)
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

declare %struct.buffer* @XBUFFER(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fundo_boundary() #0 {
entry:
  %retval = alloca i64, align 8
  %tem = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 98
  %1 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 98
  %3 = load i64, i64* %undo_list_2, align 8
  %call3 = call i64 @Fcar(i64 %3)
  store i64 %call3, i64* %tem, align 8
  %4 = load i64, i64* %tem, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %if.end.16, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %5 = load i64, i64* @pending_boundary, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %5, %call7
  br i1 %cmp8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  %6 = load i64, i64* @pending_boundary, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_10 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 98
  %8 = load i64, i64* %undo_list_10, align 8
  call void @XSETCDR(i64 %6, i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %10 = load i64, i64* @pending_boundary, align 8
  call void @bset_undo_list(%struct.buffer* %9, i64 %10)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* @pending_boundary, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.6
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 98
  %13 = load i64, i64* %undo_list_13, align 8
  %call14 = call i64 @Fcons(i64 %call12, i64 %13)
  call void @bset_undo_list(%struct.buffer* %11, i64 %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %call17 = call i64 @builtin_lisp_symbol(i32 963)
  %call18 = call i64 @builtin_lisp_symbol(i32 390)
  %call19 = call i64 @Fset(i64 %call17, i64 %call18)
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt, align 8
  %add = add nsw i64 %15, 0
  store i64 %add, i64* @point_before_last_command_or_undo, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %16, %struct.buffer** @buffer_before_last_command_or_undo, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare i64 @Fcar(i64) #1

declare i64 @Fset(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @truncate_undo_list(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %list = alloca i64, align 8
  %prev = alloca i64, align 8
  %next = alloca i64, align 8
  %last_boundary = alloca i64, align 8
  %size_so_far = alloca i64, align 8
  %count = alloca i64, align 8
  %elt = alloca i64, align 8
  %tem = alloca i64, align 8
  %elt75 = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 0, i64* %size_so_far, align 8
  %call = call i64 @inhibit_garbage_collection()
  store i64 %call, i64* %count, align 8
  call void @record_unwind_current_buffer()
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  call void @set_buffer_internal(%struct.buffer* %0)
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  %2 = load i64, i64* %undo_list_, align 8
  store i64 %2, i64* %list, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %prev, align 8
  %3 = load i64, i64* %list, align 8
  store i64 %3, i64* %next, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %last_boundary, align 8
  %4 = load i64, i64* %next, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %next, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %8, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %size_so_far, align 8
  %add = add i64 %9, 16
  store i64 %add, i64* %size_so_far, align 8
  %10 = load i64, i64* %next, align 8
  store i64 %10, i64* %prev, align 8
  %11 = load i64, i64* %next, align 8
  %sub7 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub7 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  store i64 %14, i64* %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.end
  %15 = load i64, i64* %next, align 8
  %and8 = and i64 %15, 7
  %conv9 = trunc i64 %and8 to i32
  %cmp10 = icmp eq i32 %conv9, 3
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load i64, i64* %next, align 8
  %sub12 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub12 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car13, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %19, %call14
  %lnot = xor i1 %cmp15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i64, i64* %next, align 8
  %sub17 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub17 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car18, align 8
  store i64 %24, i64* %elt, align 8
  %25 = load i64, i64* %size_so_far, align 8
  %add19 = add i64 %25, 16
  store i64 %add19, i64* %size_so_far, align 8
  %26 = load i64, i64* %elt, align 8
  %and20 = and i64 %26, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %while.body
  %27 = load i64, i64* %size_so_far, align 8
  %add25 = add i64 %27, 16
  store i64 %add25, i64* %size_so_far, align 8
  %28 = load i64, i64* %elt, align 8
  %sub26 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub26 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car27, align 8
  %call28 = call zeroext i1 @STRINGP(i64 %31)
  br i1 %call28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.then.24
  %32 = load i64, i64* %elt, align 8
  %sub30 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub30 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 0
  %35 = load i64, i64* %car31, align 8
  %call32 = call i64 @SCHARS(i64 %35)
  %add33 = add i64 31, %call32
  %36 = load i64, i64* %size_so_far, align 8
  %add34 = add i64 %36, %add33
  store i64 %add34, i64* %size_so_far, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.then.24
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %while.body
  %37 = load i64, i64* %next, align 8
  store i64 %37, i64* %prev, align 8
  %38 = load i64, i64* %next, align 8
  %sub37 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub37 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr39 = bitcast %union.anon* %u38 to i64*
  %41 = load i64, i64* %cdr39, align 8
  store i64 %41, i64* %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 312), align 8
  %and40 = and i64 %42, 7
  %conv41 = trunc i64 %and40 to i32
  %and42 = and i32 %conv41, -5
  %cmp43 = icmp eq i32 %and42, 2
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.62

land.lhs.true.45:                                 ; preds = %while.end
  %43 = load i64, i64* %size_so_far, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 312), align 8
  %shr = ashr i64 %44, 2
  %cmp46 = icmp sgt i64 %43, %shr
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.62

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %45 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 313), align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %45, %call49
  br i1 %cmp50, label %if.end.62, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.48
  %46 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 313), align 8
  %47 = load i64, i64* %size_so_far, align 8
  %shl = shl i64 %47, 2
  %add53 = add i64 %shl, 2
  %call54 = call i64 @call1(i64 %46, i64 %add53)
  store i64 %call54, i64* %tem, align 8
  %48 = load i64, i64* %tem, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %48, %call55
  br i1 %cmp56, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %if.then.52
  %49 = load i64, i64* %count, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %call60 = call i64 @unbind_to(i64 %49, i64 %call59)
  br label %return

if.end.61:                                        ; preds = %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.48, %land.lhs.true.45, %while.end
  %50 = load i64, i64* %next, align 8
  %and63 = and i64 %50, 7
  %conv64 = trunc i64 %and63 to i32
  %cmp65 = icmp eq i32 %conv64, 3
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.62
  %51 = load i64, i64* %prev, align 8
  store i64 %51, i64* %last_boundary, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.62
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.108, %if.end.68
  %52 = load i64, i64* %next, align 8
  %and70 = and i64 %52, 7
  %conv71 = trunc i64 %and70 to i32
  %cmp72 = icmp eq i32 %conv71, 3
  br i1 %cmp72, label %while.body.74, label %while.end.112

while.body.74:                                    ; preds = %while.cond.69
  %53 = load i64, i64* %next, align 8
  %sub76 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub76 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %car77 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 0
  %56 = load i64, i64* %car77, align 8
  store i64 %56, i64* %elt75, align 8
  %57 = load i64, i64* %elt75, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp79 = icmp eq i64 %57, %call78
  br i1 %cmp79, label %if.then.81, label %if.end.90

if.then.81:                                       ; preds = %while.body.74
  %58 = load i64, i64* %size_so_far, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 417), align 8
  %cmp82 = icmp sgt i64 %58, %59
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.81
  br label %while.end.112

if.end.85:                                        ; preds = %if.then.81
  %60 = load i64, i64* %prev, align 8
  store i64 %60, i64* %last_boundary, align 8
  %61 = load i64, i64* %size_so_far, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 416), align 8
  %cmp86 = icmp sgt i64 %61, %62
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.85
  br label %while.end.112

if.end.89:                                        ; preds = %if.end.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %while.body.74
  %63 = load i64, i64* %size_so_far, align 8
  %add91 = add i64 %63, 16
  store i64 %add91, i64* %size_so_far, align 8
  %64 = load i64, i64* %elt75, align 8
  %and92 = and i64 %64, 7
  %conv93 = trunc i64 %and92 to i32
  %cmp94 = icmp eq i32 %conv93, 3
  br i1 %cmp94, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %if.end.90
  %65 = load i64, i64* %size_so_far, align 8
  %add97 = add i64 %65, 16
  store i64 %add97, i64* %size_so_far, align 8
  %66 = load i64, i64* %elt75, align 8
  %sub98 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub98 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %car99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 0
  %69 = load i64, i64* %car99, align 8
  %call100 = call zeroext i1 @STRINGP(i64 %69)
  br i1 %call100, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %if.then.96
  %70 = load i64, i64* %elt75, align 8
  %sub102 = sub nsw i64 %70, 3
  %71 = inttoptr i64 %sub102 to i8*
  %72 = bitcast i8* %71 to %struct.Lisp_Cons*
  %car103 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %72, i32 0, i32 0
  %73 = load i64, i64* %car103, align 8
  %call104 = call i64 @SCHARS(i64 %73)
  %add105 = add i64 31, %call104
  %74 = load i64, i64* %size_so_far, align 8
  %add106 = add i64 %74, %add105
  store i64 %add106, i64* %size_so_far, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.101, %if.then.96
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.90
  %75 = load i64, i64* %next, align 8
  store i64 %75, i64* %prev, align 8
  %76 = load i64, i64* %next, align 8
  %sub109 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub109 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %u110 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 1
  %cdr111 = bitcast %union.anon* %u110 to i64*
  %79 = load i64, i64* %cdr111, align 8
  store i64 %79, i64* %next, align 8
  br label %while.cond.69

while.end.112:                                    ; preds = %if.then.88, %if.then.84, %while.cond.69
  %80 = load i64, i64* %next, align 8
  %call113 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp114 = icmp eq i64 %80, %call113
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %while.end.112
  br label %if.end.125

if.else:                                          ; preds = %while.end.112
  %81 = load i64, i64* %last_boundary, align 8
  %call117 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp118 = icmp eq i64 %81, %call117
  br i1 %cmp118, label %if.else.122, label %if.then.120

if.then.120:                                      ; preds = %if.else
  %82 = load i64, i64* %last_boundary, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCDR(i64 %82, i64 %call121)
  br label %if.end.124

if.else.122:                                      ; preds = %if.else
  %83 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_undo_list(%struct.buffer* %83, i64 %call123)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.116
  %84 = load i64, i64* %count, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %call127 = call i64 @unbind_to(i64 %84, i64 %call126)
  br label %return

return:                                           ; preds = %if.end.125, %if.then.58
  ret void
}

declare i64 @inhibit_garbage_collection() #1

declare void @record_unwind_current_buffer() #1

declare void @set_buffer_internal(%struct.buffer*) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @call1(i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_undo() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @pending_boundary, align 8
  call void @staticpro(i64* @pending_boundary)
  call void @defsubr(%struct.Lisp_Subr* @Sundo_boundary)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_undo.i_fwd, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 416))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 80000, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 416), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_undo.i_fwd.1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 417))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  store i64 120000, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 417), align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_undo.o_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 312))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  store i64 48000002, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 312), align 8
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_undo.o_fwd.4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 313))
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 313), align 8
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.6
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_undo.b_fwd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 491))
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 491), align 1
  ret void
}

declare void @staticpro(i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_int(%struct.Lisp_Intfwd*, i8*, i64*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
