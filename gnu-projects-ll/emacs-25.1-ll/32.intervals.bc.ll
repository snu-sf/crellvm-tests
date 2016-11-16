; ModuleID = './src/intervals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon, i8, i64 }
%union.anon = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }

@pure = external global [0 x i64], align 8
@.str = private unnamed_addr constant [33 x i8] c"Point before start of properties\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Point %ld after end of properties\00", align 1
@globals = external global %struct.emacs_globals, align 8
@current_buffer = external global %struct.buffer*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Marker points into wrong buffer\00", align 1

; Function Attrs: nounwind uwtable
define %struct.interval* @create_root_interval(i64 %parent) #0 {
entry:
  %parent.addr = alloca i64, align 8
  %new = alloca %struct.interval*, align 8
  store i64 %parent, i64* %parent.addr, align 8
  %call = call %struct.interval* @make_interval()
  store %struct.interval* %call, %struct.interval** %new, align 8
  %0 = load i64, i64* %parent.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call1, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %parent.addr, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %1)
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %call2, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 2
  %3 = load i64, i64* %z, align 8
  %sub = sub nsw i64 %3, 1
  %4 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 0
  store i64 %sub, i64* %total_length, align 8
  %5 = load i64, i64* %parent.addr, align 8
  %call3 = call %struct.buffer* @XBUFFER(i64 %5)
  %6 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_buffer_intervals(%struct.buffer* %call3, %struct.interval* %6)
  %7 = load %struct.interval*, %struct.interval** %new, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 1
  store i64 1, i64* %position, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %parent.addr, align 8
  %call4 = call %struct.Lisp_String* @XSTRING(i64 %8)
  %9 = ptrtoint %struct.Lisp_String* %call4 to i64
  %sub5 = sub i64 %9, ptrtoint ([0 x i64]* @pure to i64)
  %cmp = icmp ule i64 %sub5, 3000000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load i64, i64* %parent.addr, align 8
  call void @pure_write_error(i64 %10) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %11
  %12 = load i64, i64* %parent.addr, align 8
  %call6 = call i64 @SCHARS(i64 %12)
  %13 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length7 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  store i64 %call6, i64* %total_length7, align 8
  %14 = load i64, i64* %parent.addr, align 8
  %15 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_string_intervals(i64 %14, %struct.interval* %15)
  %16 = load %struct.interval*, %struct.interval** %new, align 8
  %position8 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 1
  store i64 0, i64* %position8, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %17 = load %struct.interval*, %struct.interval** %new, align 8
  %18 = load i64, i64* %parent.addr, align 8
  call void @set_interval_object(%struct.interval* %17, i64 %18)
  %19 = load %struct.interval*, %struct.interval** %new, align 8
  ret %struct.interval* %19
}

declare %struct.interval* @make_interval() #1

declare zeroext i1 @STRINGP(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @set_buffer_intervals(%struct.buffer*, %struct.interval*) #1

declare %struct.Lisp_String* @XSTRING(i64) #1

; Function Attrs: noreturn
declare void @pure_write_error(i64) #2

declare i64 @SCHARS(i64) #1

declare void @set_string_intervals(i64, %struct.interval*) #1

declare void @set_interval_object(%struct.interval*, i64) #1

; Function Attrs: nounwind uwtable
define void @copy_properties(%struct.interval* %source, %struct.interval* %target) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %target.addr = alloca %struct.interval*, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  store %struct.interval* %target, %struct.interval** %target.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 6
  %2 = load i64, i64* %plist, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %tobool1 = icmp ne %struct.interval* %3, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %plist3 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 6
  %5 = load i64, i64* %plist3, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %land.lhs.true
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %write_protect = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 5
  %bf.load = load i8, i8* %write_protect, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %7 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %write_protect6 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 5
  %8 = zext i1 %bf.cast to i8
  %bf.load7 = load i8, i8* %write_protect6, align 8
  %bf.shl = shl i8 %8, 2
  %bf.clear8 = and i8 %bf.load7, -5
  %bf.set = or i8 %bf.clear8, %bf.shl
  store i8 %bf.set, i8* %write_protect6, align 8
  %tobool9 = trunc i8 %8 to i1
  %9 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %visible = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 5
  %bf.load10 = load i8, i8* %visible, align 8
  %bf.lshr11 = lshr i8 %bf.load10, 3
  %bf.clear12 = and i8 %bf.lshr11, 1
  %bf.cast13 = trunc i8 %bf.clear12 to i1
  %10 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %visible14 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 5
  %11 = zext i1 %bf.cast13 to i8
  %bf.load15 = load i8, i8* %visible14, align 8
  %bf.shl16 = shl i8 %11, 3
  %bf.clear17 = and i8 %bf.load15, -9
  %bf.set18 = or i8 %bf.clear17, %bf.shl16
  store i8 %bf.set18, i8* %visible14, align 8
  %tobool19 = trunc i8 %11 to i1
  %12 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %front_sticky = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 5
  %bf.load20 = load i8, i8* %front_sticky, align 8
  %bf.lshr21 = lshr i8 %bf.load20, 4
  %bf.clear22 = and i8 %bf.lshr21, 1
  %bf.cast23 = trunc i8 %bf.clear22 to i1
  %13 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %front_sticky24 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 5
  %14 = zext i1 %bf.cast23 to i8
  %bf.load25 = load i8, i8* %front_sticky24, align 8
  %bf.shl26 = shl i8 %14, 4
  %bf.clear27 = and i8 %bf.load25, -17
  %bf.set28 = or i8 %bf.clear27, %bf.shl26
  store i8 %bf.set28, i8* %front_sticky24, align 8
  %tobool29 = trunc i8 %14 to i1
  %15 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %rear_sticky = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 5
  %bf.load30 = load i8, i8* %rear_sticky, align 8
  %bf.lshr31 = lshr i8 %bf.load30, 5
  %bf.clear32 = and i8 %bf.lshr31, 1
  %bf.cast33 = trunc i8 %bf.clear32 to i1
  %16 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %rear_sticky34 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 5
  %17 = zext i1 %bf.cast33 to i8
  %bf.load35 = load i8, i8* %rear_sticky34, align 8
  %bf.shl36 = shl i8 %17, 5
  %bf.clear37 = and i8 %bf.load35, -33
  %bf.set38 = or i8 %bf.clear37, %bf.shl36
  store i8 %bf.set38, i8* %rear_sticky34, align 8
  %tobool39 = trunc i8 %17 to i1
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %19 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %plist40 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 6
  %20 = load i64, i64* %plist40, align 8
  %call41 = call i64 @Fcopy_sequence(i64 %20)
  call void @set_interval_plist(%struct.interval* %18, i64 %call41)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

declare void @set_interval_plist(%struct.interval*, i64) #1

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @intervals_equal(%struct.interval* %i0, %struct.interval* %i1) #0 {
entry:
  %retval = alloca i1, align 1
  %i0.addr = alloca %struct.interval*, align 8
  %i1.addr = alloca %struct.interval*, align 8
  %i0_cdr = alloca i64, align 8
  %i0_sym = alloca i64, align 8
  %i1_cdr = alloca i64, align 8
  %i1_val = alloca i64, align 8
  store %struct.interval* %i0, %struct.interval** %i0.addr, align 8
  store %struct.interval* %i1, %struct.interval** %i1.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i0.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %i0.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 6
  %2 = load i64, i64* %plist, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %tobool1 = icmp ne %struct.interval* %3, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %plist3 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 6
  %5 = load i64, i64* %plist3, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %land.lhs.true
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2, %lor.lhs.false
  %6 = load %struct.interval*, %struct.interval** %i0.addr, align 8
  %tobool6 = icmp ne %struct.interval* %6, null
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.17

lor.lhs.false.7:                                  ; preds = %if.end
  %7 = load %struct.interval*, %struct.interval** %i0.addr, align 8
  %plist8 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 6
  %8 = load i64, i64* %plist8, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %8, %call9
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %9 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %tobool12 = icmp ne %struct.interval* %9, null
  br i1 %tobool12, label %lor.lhs.false.13, label %if.then.17

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %10 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %plist14 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 6
  %11 = load i64, i64* %plist14, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %11, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false.7, %if.end
  store i1 false, i1* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.13
  %12 = load %struct.interval*, %struct.interval** %i0.addr, align 8
  %plist19 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 6
  %13 = load i64, i64* %plist19, align 8
  store i64 %13, i64* %i0_cdr, align 8
  %14 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %plist20 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 6
  %15 = load i64, i64* %plist20, align 8
  store i64 %15, i64* %i1_cdr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.97, %if.end.18
  %16 = load i64, i64* %i0_cdr, align 8
  %and = and i64 %16, 7
  %conv = trunc i64 %and to i32
  %cmp21 = icmp eq i32 %conv, 3
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i64, i64* %i1_cdr, align 8
  %and23 = and i64 %17, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %18, label %while.body, label %while.end.101

while.body:                                       ; preds = %land.end
  %19 = load i64, i64* %i0_cdr, align 8
  %sub = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car, align 8
  store i64 %22, i64* %i0_sym, align 8
  %23 = load i64, i64* %i0_cdr, align 8
  %sub27 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub27 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %26 = load i64, i64* %cdr, align 8
  store i64 %26, i64* %i0_cdr, align 8
  %27 = load i64, i64* %i0_cdr, align 8
  %and28 = and i64 %27, 7
  %conv29 = trunc i64 %and28 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %while.body
  store i1 false, i1* %retval
  br label %return

if.end.33:                                        ; preds = %while.body
  %28 = load %struct.interval*, %struct.interval** %i1.addr, align 8
  %plist34 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 6
  %29 = load i64, i64* %plist34, align 8
  store i64 %29, i64* %i1_val, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.55, %if.end.33
  %30 = load i64, i64* %i1_val, align 8
  %and36 = and i64 %30, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 3
  br i1 %cmp38, label %land.rhs.40, label %land.end.45

land.rhs.40:                                      ; preds = %while.cond.35
  %31 = load i64, i64* %i1_val, align 8
  %sub41 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub41 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car42, align 8
  %35 = load i64, i64* %i0_sym, align 8
  %cmp43 = icmp eq i64 %34, %35
  %lnot = xor i1 %cmp43, true
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.40, %while.cond.35
  %36 = phi i1 [ false, %while.cond.35 ], [ %lnot, %land.rhs.40 ]
  br i1 %36, label %while.body.46, label %while.end

while.body.46:                                    ; preds = %land.end.45
  %37 = load i64, i64* %i1_val, align 8
  %sub47 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub47 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr49 = bitcast %union.anon.0* %u48 to i64*
  %40 = load i64, i64* %cdr49, align 8
  store i64 %40, i64* %i1_val, align 8
  %41 = load i64, i64* %i1_val, align 8
  %and50 = and i64 %41, 7
  %conv51 = trunc i64 %and50 to i32
  %cmp52 = icmp eq i32 %conv51, 3
  br i1 %cmp52, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %while.body.46
  store i1 false, i1* %retval
  br label %return

if.end.55:                                        ; preds = %while.body.46
  %42 = load i64, i64* %i1_val, align 8
  %sub56 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub56 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u57 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr58 = bitcast %union.anon.0* %u57 to i64*
  %45 = load i64, i64* %cdr58, align 8
  store i64 %45, i64* %i1_val, align 8
  br label %while.cond.35

while.end:                                        ; preds = %land.end.45
  %46 = load i64, i64* %i1_val, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %46, %call59
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %while.end
  store i1 false, i1* %retval
  br label %return

if.end.63:                                        ; preds = %while.end
  %47 = load i64, i64* %i1_val, align 8
  %and64 = and i64 %47, 7
  %conv65 = trunc i64 %and64 to i32
  %cmp66 = icmp eq i32 %conv65, 3
  br i1 %cmp66, label %lor.lhs.false.68, label %if.then.84

lor.lhs.false.68:                                 ; preds = %if.end.63
  %48 = load i64, i64* %i1_val, align 8
  %sub69 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub69 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u70 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr71 = bitcast %union.anon.0* %u70 to i64*
  %51 = load i64, i64* %cdr71, align 8
  store i64 %51, i64* %i1_val, align 8
  %52 = load i64, i64* %i1_val, align 8
  %and72 = and i64 %52, 7
  %conv73 = trunc i64 %and72 to i32
  %cmp74 = icmp eq i32 %conv73, 3
  %lnot76 = xor i1 %cmp74, true
  br i1 %lnot76, label %if.then.84, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.68
  %53 = load i64, i64* %i1_val, align 8
  %sub78 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub78 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %car79 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 0
  %56 = load i64, i64* %car79, align 8
  %57 = load i64, i64* %i0_cdr, align 8
  %sub80 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub80 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %car81 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 0
  %60 = load i64, i64* %car81, align 8
  %cmp82 = icmp eq i64 %56, %60
  br i1 %cmp82, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false.68, %if.end.63
  store i1 false, i1* %retval
  br label %return

if.end.85:                                        ; preds = %lor.lhs.false.77
  %61 = load i64, i64* %i0_cdr, align 8
  %sub86 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub86 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u87 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr88 = bitcast %union.anon.0* %u87 to i64*
  %64 = load i64, i64* %cdr88, align 8
  store i64 %64, i64* %i0_cdr, align 8
  %65 = load i64, i64* %i1_cdr, align 8
  %sub89 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub89 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 1
  %cdr91 = bitcast %union.anon.0* %u90 to i64*
  %68 = load i64, i64* %cdr91, align 8
  store i64 %68, i64* %i1_cdr, align 8
  %69 = load i64, i64* %i1_cdr, align 8
  %and92 = and i64 %69, 7
  %conv93 = trunc i64 %and92 to i32
  %cmp94 = icmp eq i32 %conv93, 3
  br i1 %cmp94, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.end.85
  store i1 false, i1* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.85
  %70 = load i64, i64* %i1_cdr, align 8
  %sub98 = sub nsw i64 %70, 3
  %71 = inttoptr i64 %sub98 to i8*
  %72 = bitcast i8* %71 to %struct.Lisp_Cons*
  %u99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %72, i32 0, i32 1
  %cdr100 = bitcast %union.anon.0* %u99 to i64*
  %73 = load i64, i64* %cdr100, align 8
  store i64 %73, i64* %i1_cdr, align 8
  br label %while.cond

while.end.101:                                    ; preds = %land.end
  %74 = load i64, i64* %i0_cdr, align 8
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp103 = icmp eq i64 %74, %call102
  br i1 %cmp103, label %land.rhs.105, label %land.end.109

land.rhs.105:                                     ; preds = %while.end.101
  %75 = load i64, i64* %i1_cdr, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp107 = icmp eq i64 %75, %call106
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.105, %while.end.101
  %76 = phi i1 [ false, %while.end.101 ], [ %cmp107, %land.rhs.105 ]
  store i1 %76, i1* %retval
  br label %return

return:                                           ; preds = %land.end.109, %if.then.96, %if.then.84, %if.then.62, %if.then.54, %if.then.32, %if.then.17, %if.then
  %77 = load i1, i1* %retval
  ret i1 %77
}

; Function Attrs: nounwind uwtable
define void @traverse_intervals_noorder(%struct.interval* %tree, void (%struct.interval*, i64)* %function, i64 %arg) #0 {
entry:
  %tree.addr = alloca %struct.interval*, align 8
  %function.addr = alloca void (%struct.interval*, i64)*, align 8
  %arg.addr = alloca i64, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store void (%struct.interval*, i64)* %function, void (%struct.interval*, i64)** %function.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (%struct.interval*, i64)*, void (%struct.interval*, i64)** %function.addr, align 8
  %2 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %3 = load i64, i64* %arg.addr, align 8
  call void %1(%struct.interval* %2, i64 %3)
  %4 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right, align 8
  %tobool1 = icmp ne %struct.interval* %5, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 2
  %7 = load %struct.interval*, %struct.interval** %left, align 8
  store %struct.interval* %7, %struct.interval** %tree.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left2 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 2
  %9 = load %struct.interval*, %struct.interval** %left2, align 8
  %10 = load void (%struct.interval*, i64)*, void (%struct.interval*, i64)** %function.addr, align 8
  %11 = load i64, i64* %arg.addr, align 8
  call void @traverse_intervals_noorder(%struct.interval* %9, void (%struct.interval*, i64)* %10, i64 %11)
  %12 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right3 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %13 = load %struct.interval*, %struct.interval** %right3, align 8
  store %struct.interval* %13, %struct.interval** %tree.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @traverse_intervals(%struct.interval* %tree, i64 %position, void (%struct.interval*, i64)* %function, i64 %arg) #0 {
entry:
  %tree.addr = alloca %struct.interval*, align 8
  %position.addr = alloca i64, align 8
  %function.addr = alloca void (%struct.interval*, i64)*, align 8
  %arg.addr = alloca i64, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store void (%struct.interval*, i64)* %function, void (%struct.interval*, i64)** %function.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.29, %entry
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 2
  %2 = load %struct.interval*, %struct.interval** %left, align 8
  %3 = load i64, i64* %position.addr, align 8
  %4 = load void (%struct.interval*, i64)*, void (%struct.interval*, i64)** %function.addr, align 8
  %5 = load i64, i64* %arg.addr, align 8
  call void @traverse_intervals(%struct.interval* %2, i64 %3, void (%struct.interval*, i64)* %4, i64 %5)
  %6 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left1 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 2
  %7 = load %struct.interval*, %struct.interval** %left1, align 8
  %tobool2 = icmp ne %struct.interval* %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left3 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 2
  %9 = load %struct.interval*, %struct.interval** %left3, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 0
  %10 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load i64, i64* %position.addr, align 8
  %add = add nsw i64 %11, %cond
  store i64 %add, i64* %position.addr, align 8
  %12 = load i64, i64* %position.addr, align 8
  %13 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %position4 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 1
  store i64 %12, i64* %position4, align 8
  %14 = load void (%struct.interval*, i64)*, void (%struct.interval*, i64)** %function.addr, align 8
  %15 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %16 = load i64, i64* %arg.addr, align 8
  call void %14(%struct.interval* %15, i64 %16)
  %17 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp = icmp eq %struct.interval* %17, null
  br i1 %cmp, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.29

cond.false.6:                                     ; preds = %cond.end
  %18 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp7 = icmp eq %struct.interval* %18, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false.6
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.false.6
  %19 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length10 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 0
  %20 = load i64, i64* %total_length10, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.8
  %cond12 = phi i64 [ 0, %cond.true.8 ], [ %20, %cond.false.9 ]
  %21 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 3
  %22 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp13 = icmp eq %struct.interval* %22, null
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.11
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end.11
  %23 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right16 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 3
  %24 = load %struct.interval*, %struct.interval** %right16, align 8
  %total_length17 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 0
  %25 = load i64, i64* %total_length17, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i64 [ 0, %cond.true.14 ], [ %25, %cond.false.15 ]
  %sub = sub nsw i64 %cond12, %cond19
  %26 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left20 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 2
  %27 = load %struct.interval*, %struct.interval** %left20, align 8
  %cmp21 = icmp eq %struct.interval* %27, null
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.18
  br label %cond.end.26

cond.false.23:                                    ; preds = %cond.end.18
  %28 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left24 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 2
  %29 = load %struct.interval*, %struct.interval** %left24, align 8
  %total_length25 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 0
  %30 = load i64, i64* %total_length25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i64 [ 0, %cond.true.22 ], [ %30, %cond.false.23 ]
  %sub28 = sub nsw i64 %sub, %cond27
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.26, %cond.true.5
  %cond30 = phi i64 [ 0, %cond.true.5 ], [ %sub28, %cond.end.26 ]
  %31 = load i64, i64* %position.addr, align 8
  %add31 = add nsw i64 %31, %cond30
  store i64 %add31, i64* %position.addr, align 8
  %32 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right32 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 3
  %33 = load %struct.interval*, %struct.interval** %right32, align 8
  store %struct.interval* %33, %struct.interval** %tree.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.interval* @balance_intervals(%struct.interval* %tree) #0 {
entry:
  %tree.addr = alloca %struct.interval*, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %call = call %struct.interval* @balance_intervals_internal(%struct.interval* %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.interval* [ %call, %cond.true ], [ null, %cond.false ]
  ret %struct.interval* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @balance_intervals_internal(%struct.interval* %tree) #0 {
entry:
  %tree.addr = alloca %struct.interval*, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 2
  %1 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left1 = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 2
  %3 = load %struct.interval*, %struct.interval** %left1, align 8
  %call = call %struct.interval* @balance_intervals_internal(%struct.interval* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right, align 8
  %tobool2 = icmp ne %struct.interval* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right4 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 3
  %7 = load %struct.interval*, %struct.interval** %right4, align 8
  %call5 = call %struct.interval* @balance_intervals_internal(%struct.interval* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %call7 = call %struct.interval* @balance_an_interval(%struct.interval* %8)
  ret %struct.interval* %call7
}

; Function Attrs: nounwind uwtable
define %struct.interval* @split_interval_right(%struct.interval* %interval, i64 %offset) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %offset.addr = alloca i64, align 8
  %new = alloca %struct.interval*, align 8
  %position = alloca i64, align 8
  %new_length = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %call = call %struct.interval* @make_interval()
  store %struct.interval* %call, %struct.interval** %new, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position1 = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 1
  %1 = load i64, i64* %position1, align 8
  store i64 %1, i64* %position, align 8
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp = icmp eq %struct.interval* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.20

cond.false:                                       ; preds = %entry
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp2 = icmp eq %struct.interval* %3, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %4 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 0
  %5 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i64 [ 0, %cond.true.3 ], [ %5, %cond.false.4 ]
  %6 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 3
  %7 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp5 = icmp eq %struct.interval* %7, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.7:                                     ; preds = %cond.end
  %8 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right8 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 3
  %9 = load %struct.interval*, %struct.interval** %right8, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 0
  %10 = load i64, i64* %total_length9, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.6
  %cond11 = phi i64 [ 0, %cond.true.6 ], [ %10, %cond.false.7 ]
  %sub = sub nsw i64 %cond, %cond11
  %11 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp12 = icmp eq %struct.interval* %12, null
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  br label %cond.end.17

cond.false.14:                                    ; preds = %cond.end.10
  %13 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left15 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 2
  %14 = load %struct.interval*, %struct.interval** %left15, align 8
  %total_length16 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 0
  %15 = load i64, i64* %total_length16, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.14, %cond.true.13
  %cond18 = phi i64 [ 0, %cond.true.13 ], [ %15, %cond.false.14 ]
  %sub19 = sub nsw i64 %sub, %cond18
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.17, %cond.true
  %cond21 = phi i64 [ 0, %cond.true ], [ %sub19, %cond.end.17 ]
  %16 = load i64, i64* %offset.addr, align 8
  %sub22 = sub nsw i64 %cond21, %16
  store i64 %sub22, i64* %new_length, align 8
  %17 = load i64, i64* %position, align 8
  %18 = load i64, i64* %offset.addr, align 8
  %add = add nsw i64 %17, %18
  %19 = load %struct.interval*, %struct.interval** %new, align 8
  %position23 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 1
  store i64 %add, i64* %position23, align 8
  %20 = load %struct.interval*, %struct.interval** %new, align 8
  %21 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  call void @set_interval_parent(%struct.interval* %20, %struct.interval* %21)
  %22 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right24 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 3
  %23 = load %struct.interval*, %struct.interval** %right24, align 8
  %cmp25 = icmp eq %struct.interval* %23, null
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.20
  %24 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %25 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_right(%struct.interval* %24, %struct.interval* %25)
  %26 = load i64, i64* %new_length, align 8
  %27 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length26 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 0
  store i64 %26, i64* %total_length26, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.20
  %28 = load %struct.interval*, %struct.interval** %new, align 8
  %29 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right27 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 3
  %30 = load %struct.interval*, %struct.interval** %right27, align 8
  call void @set_interval_right(%struct.interval* %28, %struct.interval* %30)
  %31 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right28 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 3
  %32 = load %struct.interval*, %struct.interval** %right28, align 8
  %33 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_parent(%struct.interval* %32, %struct.interval* %33)
  %34 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %35 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_right(%struct.interval* %34, %struct.interval* %35)
  %36 = load i64, i64* %new_length, align 8
  %37 = load %struct.interval*, %struct.interval** %new, align 8
  %right29 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 3
  %38 = load %struct.interval*, %struct.interval** %right29, align 8
  %total_length30 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length30, align 8
  %add31 = add nsw i64 %36, %39
  %40 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length32 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 0
  store i64 %add31, i64* %total_length32, align 8
  %41 = load %struct.interval*, %struct.interval** %new, align 8
  %call33 = call %struct.interval* @balance_an_interval(%struct.interval* %41)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %call34 = call %struct.interval* @balance_possible_root_interval(%struct.interval* %42)
  %43 = load %struct.interval*, %struct.interval** %new, align 8
  ret %struct.interval* %43
}

declare void @set_interval_parent(%struct.interval*, %struct.interval*) #1

; Function Attrs: nounwind uwtable
define internal void @set_interval_right(%struct.interval* %i, %struct.interval* %right) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %right.addr = alloca %struct.interval*, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store %struct.interval* %right, %struct.interval** %right.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %right.addr, align 8
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right1 = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 3
  store %struct.interval* %0, %struct.interval** %right1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @balance_an_interval(%struct.interval* %i) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %old_diff = alloca i64, align 8
  %new_diff = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.87
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 2
  %1 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left1 = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 2
  %3 = load %struct.interval*, %struct.interval** %left1, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 0
  %4 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ]
  %5 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 3
  %6 = load %struct.interval*, %struct.interval** %right, align 8
  %tobool2 = icmp ne %struct.interval* %6, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.end
  %7 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right4 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 3
  %8 = load %struct.interval*, %struct.interval** %right4, align 8
  %total_length5 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 0
  %9 = load i64, i64* %total_length5, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.3
  %cond8 = phi i64 [ %9, %cond.true.3 ], [ 0, %cond.false.6 ]
  %sub = sub nsw i64 %cond, %cond8
  store i64 %sub, i64* %old_diff, align 8
  %10 = load i64, i64* %old_diff, align 8
  %cmp = icmp sgt i64 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.7
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i64, i64* %total_length9, align 8
  %13 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left10 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 2
  %14 = load %struct.interval*, %struct.interval** %left10, align 8
  %total_length11 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 0
  %15 = load i64, i64* %total_length11, align 8
  %sub12 = sub nsw i64 %12, %15
  %16 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left13 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 2
  %17 = load %struct.interval*, %struct.interval** %left13, align 8
  %right14 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 3
  %18 = load %struct.interval*, %struct.interval** %right14, align 8
  %tobool15 = icmp ne %struct.interval* %18, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %if.then
  %19 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left17 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left17, align 8
  %right18 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 3
  %21 = load %struct.interval*, %struct.interval** %right18, align 8
  %total_length19 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 0
  %22 = load i64, i64* %total_length19, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.then
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.16
  %cond22 = phi i64 [ %22, %cond.true.16 ], [ 0, %cond.false.20 ]
  %add = add nsw i64 %sub12, %cond22
  %23 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left23 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 2
  %24 = load %struct.interval*, %struct.interval** %left23, align 8
  %left24 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 2
  %25 = load %struct.interval*, %struct.interval** %left24, align 8
  %tobool25 = icmp ne %struct.interval* %25, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.end.21
  %26 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left27 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 2
  %27 = load %struct.interval*, %struct.interval** %left27, align 8
  %left28 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 2
  %28 = load %struct.interval*, %struct.interval** %left28, align 8
  %total_length29 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.21
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.26
  %cond32 = phi i64 [ %29, %cond.true.26 ], [ 0, %cond.false.30 ]
  %sub33 = sub nsw i64 %add, %cond32
  store i64 %sub33, i64* %new_diff, align 8
  %30 = load i64, i64* %new_diff, align 8
  %cmp34 = icmp slt i64 %30, 0
  br i1 %cmp34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end.31
  %31 = load i64, i64* %new_diff, align 8
  %sub36 = sub nsw i64 0, %31
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end.31
  %32 = load i64, i64* %new_diff, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi i64 [ %sub36, %cond.true.35 ], [ %32, %cond.false.37 ]
  %33 = load i64, i64* %old_diff, align 8
  %cmp40 = icmp sge i64 %cond39, %33
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %cond.end.38
  br label %while.end

if.end:                                           ; preds = %cond.end.38
  %34 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call = call %struct.interval* @rotate_right(%struct.interval* %34)
  store %struct.interval* %call, %struct.interval** %i.addr, align 8
  %35 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right42 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 3
  %36 = load %struct.interval*, %struct.interval** %right42, align 8
  %call43 = call %struct.interval* @balance_an_interval(%struct.interval* %36)
  br label %if.end.87

if.else:                                          ; preds = %cond.end.7
  %37 = load i64, i64* %old_diff, align 8
  %cmp44 = icmp slt i64 %37, 0
  br i1 %cmp44, label %if.then.45, label %if.else.85

if.then.45:                                       ; preds = %if.else
  %38 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length46 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length46, align 8
  %40 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right47 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 3
  %41 = load %struct.interval*, %struct.interval** %right47, align 8
  %total_length48 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 0
  %42 = load i64, i64* %total_length48, align 8
  %sub49 = sub nsw i64 %39, %42
  %43 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right50 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 3
  %44 = load %struct.interval*, %struct.interval** %right50, align 8
  %left51 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 2
  %45 = load %struct.interval*, %struct.interval** %left51, align 8
  %tobool52 = icmp ne %struct.interval* %45, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %if.then.45
  %46 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right54 = getelementptr inbounds %struct.interval, %struct.interval* %46, i32 0, i32 3
  %47 = load %struct.interval*, %struct.interval** %right54, align 8
  %left55 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 2
  %48 = load %struct.interval*, %struct.interval** %left55, align 8
  %total_length56 = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 0
  %49 = load i64, i64* %total_length56, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.then.45
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.53
  %cond59 = phi i64 [ %49, %cond.true.53 ], [ 0, %cond.false.57 ]
  %add60 = add nsw i64 %sub49, %cond59
  %50 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right61 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 3
  %51 = load %struct.interval*, %struct.interval** %right61, align 8
  %right62 = getelementptr inbounds %struct.interval, %struct.interval* %51, i32 0, i32 3
  %52 = load %struct.interval*, %struct.interval** %right62, align 8
  %tobool63 = icmp ne %struct.interval* %52, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %cond.end.58
  %53 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right65 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 3
  %54 = load %struct.interval*, %struct.interval** %right65, align 8
  %right66 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 3
  %55 = load %struct.interval*, %struct.interval** %right66, align 8
  %total_length67 = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 0
  %56 = load i64, i64* %total_length67, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.58
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.64
  %cond70 = phi i64 [ %56, %cond.true.64 ], [ 0, %cond.false.68 ]
  %sub71 = sub nsw i64 %add60, %cond70
  store i64 %sub71, i64* %new_diff, align 8
  %57 = load i64, i64* %new_diff, align 8
  %cmp72 = icmp slt i64 %57, 0
  br i1 %cmp72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.end.69
  %58 = load i64, i64* %new_diff, align 8
  %sub74 = sub nsw i64 0, %58
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.end.69
  %59 = load i64, i64* %new_diff, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.73
  %cond77 = phi i64 [ %sub74, %cond.true.73 ], [ %59, %cond.false.75 ]
  %60 = load i64, i64* %old_diff, align 8
  %sub78 = sub nsw i64 0, %60
  %cmp79 = icmp sge i64 %cond77, %sub78
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.76
  br label %while.end

if.end.81:                                        ; preds = %cond.end.76
  %61 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call82 = call %struct.interval* @rotate_left(%struct.interval* %61)
  store %struct.interval* %call82, %struct.interval** %i.addr, align 8
  %62 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left83 = getelementptr inbounds %struct.interval, %struct.interval* %62, i32 0, i32 2
  %63 = load %struct.interval*, %struct.interval** %left83, align 8
  %call84 = call %struct.interval* @balance_an_interval(%struct.interval* %63)
  br label %if.end.86

if.else.85:                                       ; preds = %if.else
  br label %while.end

if.end.86:                                        ; preds = %if.end.81
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end
  br label %while.body

while.end:                                        ; preds = %if.else.85, %if.then.80, %if.then.41
  %64 = load %struct.interval*, %struct.interval** %i.addr, align 8
  ret %struct.interval* %64
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @balance_possible_root_interval(%struct.interval* %interval) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %interval.addr = alloca %struct.interval*, align 8
  %parent = alloca i64, align 8
  %have_parent = alloca i8, align 1
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i8 0, i8* %have_parent, align 1
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %have_parent, align 1
  %1 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 4
  %obj = bitcast %union.anon* %up to i64*
  %2 = load i64, i64* %obj, align 8
  store i64 %2, i64* %parent, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %up_obj1 = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 5
  %bf.load2 = load i8, i8* %up_obj1, align 8
  %bf.clear3 = and i8 %bf.load2, 1
  %bf.cast4 = trunc i8 %bf.clear3 to i1
  br i1 %bf.cast4, label %if.then.7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %up5 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 4
  %interval6 = bitcast %union.anon* %up5 to %struct.interval**
  %5 = load %struct.interval*, %struct.interval** %interval6, align 8
  %cmp = icmp ne %struct.interval* %5, null
  br i1 %cmp, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true, %if.else
  %6 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  store %struct.interval* %6, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %7 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %call = call %struct.interval* @balance_an_interval(%struct.interval* %7)
  store %struct.interval* %call, %struct.interval** %interval.addr, align 8
  %8 = load i8, i8* %have_parent, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.8
  %9 = load i64, i64* %parent, align 8
  %call10 = call zeroext i1 @BUFFERP(i64 %9)
  br i1 %call10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.then.9
  %10 = load i64, i64* %parent, align 8
  %call12 = call %struct.buffer* @XBUFFER(i64 %10)
  %11 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  call void @set_buffer_intervals(%struct.buffer* %call12, %struct.interval* %11)
  br label %if.end.17

if.else.13:                                       ; preds = %if.then.9
  %12 = load i64, i64* %parent, align 8
  %call14 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  %13 = load i64, i64* %parent, align 8
  %14 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  call void @set_string_intervals(i64 %13, %struct.interval* %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8
  %15 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  store %struct.interval* %15, %struct.interval** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.7
  %16 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %16
}

; Function Attrs: nounwind uwtable
define %struct.interval* @split_interval_left(%struct.interval* %interval, i64 %offset) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %offset.addr = alloca i64, align 8
  %new = alloca %struct.interval*, align 8
  %new_length = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %call = call %struct.interval* @make_interval()
  store %struct.interval* %call, %struct.interval** %new, align 8
  %0 = load i64, i64* %offset.addr, align 8
  store i64 %0, i64* %new_length, align 8
  %1 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 1
  %2 = load i64, i64* %position, align 8
  %3 = load %struct.interval*, %struct.interval** %new, align 8
  %position1 = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 1
  store i64 %2, i64* %position1, align 8
  %4 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position2 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 1
  %5 = load i64, i64* %position2, align 8
  %6 = load i64, i64* %offset.addr, align 8
  %add = add nsw i64 %5, %6
  %7 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position3 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 1
  store i64 %add, i64* %position3, align 8
  %8 = load %struct.interval*, %struct.interval** %new, align 8
  %9 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  call void @set_interval_parent(%struct.interval* %8, %struct.interval* %9)
  %10 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 2
  %11 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp = icmp eq %struct.interval* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %13 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_left(%struct.interval* %12, %struct.interval* %13)
  %14 = load i64, i64* %new_length, align 8
  %15 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 0
  store i64 %14, i64* %total_length, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.interval*, %struct.interval** %new, align 8
  %17 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left4 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left4, align 8
  call void @set_interval_left(%struct.interval* %16, %struct.interval* %18)
  %19 = load %struct.interval*, %struct.interval** %new, align 8
  %left5 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left5, align 8
  %21 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_parent(%struct.interval* %20, %struct.interval* %21)
  %22 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %23 = load %struct.interval*, %struct.interval** %new, align 8
  call void @set_interval_left(%struct.interval* %22, %struct.interval* %23)
  %24 = load i64, i64* %new_length, align 8
  %25 = load %struct.interval*, %struct.interval** %new, align 8
  %left6 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 2
  %26 = load %struct.interval*, %struct.interval** %left6, align 8
  %total_length7 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 0
  %27 = load i64, i64* %total_length7, align 8
  %add8 = add nsw i64 %24, %27
  %28 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  store i64 %add8, i64* %total_length9, align 8
  %29 = load %struct.interval*, %struct.interval** %new, align 8
  %call10 = call %struct.interval* @balance_an_interval(%struct.interval* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %call11 = call %struct.interval* @balance_possible_root_interval(%struct.interval* %30)
  %31 = load %struct.interval*, %struct.interval** %new, align 8
  ret %struct.interval* %31
}

; Function Attrs: nounwind uwtable
define internal void @set_interval_left(%struct.interval* %i, %struct.interval* %left) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %left.addr = alloca %struct.interval*, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store %struct.interval* %left, %struct.interval** %left.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %left.addr, align 8
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left1 = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 2
  store %struct.interval* %0, %struct.interval** %left1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.interval* @find_interval(%struct.interval* %tree, i64 %position) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %tree.addr = alloca %struct.interval*, align 8
  %position.addr = alloca i64, align 8
  %relative_position = alloca i64, align 8
  %parent = alloca i64, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %position.addr, align 8
  store i64 %1, i64* %relative_position, align 8
  %2 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 4
  %obj = bitcast %union.anon* %up to i64*
  %4 = load i64, i64* %obj, align 8
  store i64 %4, i64* %parent, align 8
  %5 = load i64, i64* %parent, align 8
  %call = call zeroext i1 @BUFFERP(i64 %5)
  br i1 %call, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.then.1
  %6 = load i64, i64* %relative_position, align 8
  %sub = sub nsw i64 %6, 1
  store i64 %sub, i64* %relative_position, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end.3, %if.end
  %7 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %call5 = call %struct.interval* @balance_possible_root_interval(%struct.interval* %7)
  store %struct.interval* %call5, %struct.interval** %tree.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.4, %if.end.57
  %8 = load i64, i64* %relative_position, align 8
  %9 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 2
  %10 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool6 = icmp ne %struct.interval* %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %11 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left7 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left7, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ 0, %cond.false ]
  %cmp = icmp slt i64 %8, %cond
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %cond.end
  %14 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left9 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 2
  %15 = load %struct.interval*, %struct.interval** %left9, align 8
  store %struct.interval* %15, %struct.interval** %tree.addr, align 8
  br label %if.end.57

if.else:                                          ; preds = %cond.end
  %16 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp10 = icmp eq %struct.interval* %17, null
  br i1 %cmp10, label %if.else.45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %18 = load i64, i64* %relative_position, align 8
  %19 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp11 = icmp eq %struct.interval* %19, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %land.lhs.true
  br label %cond.end.15

cond.false.13:                                    ; preds = %land.lhs.true
  %20 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length14 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 0
  %21 = load i64, i64* %total_length14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i64 [ 0, %cond.true.12 ], [ %21, %cond.false.13 ]
  %22 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right17 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 3
  %23 = load %struct.interval*, %struct.interval** %right17, align 8
  %tobool18 = icmp ne %struct.interval* %23, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.15
  %24 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right20 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 3
  %25 = load %struct.interval*, %struct.interval** %right20, align 8
  %total_length21 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 0
  %26 = load i64, i64* %total_length21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.15
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.19
  %cond24 = phi i64 [ %26, %cond.true.19 ], [ 0, %cond.false.22 ]
  %sub25 = sub nsw i64 %cond16, %cond24
  %cmp26 = icmp sge i64 %18, %sub25
  br i1 %cmp26, label %if.then.27, label %if.else.45

if.then.27:                                       ; preds = %cond.end.23
  %27 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp28 = icmp eq %struct.interval* %27, null
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.then.27
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.then.27
  %28 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length31 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi i64 [ 0, %cond.true.29 ], [ %29, %cond.false.30 ]
  %30 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right34 = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 3
  %31 = load %struct.interval*, %struct.interval** %right34, align 8
  %tobool35 = icmp ne %struct.interval* %31, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end.32
  %32 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right37 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 3
  %33 = load %struct.interval*, %struct.interval** %right37, align 8
  %total_length38 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length38, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end.32
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.36
  %cond41 = phi i64 [ %34, %cond.true.36 ], [ 0, %cond.false.39 ]
  %sub42 = sub nsw i64 %cond33, %cond41
  %35 = load i64, i64* %relative_position, align 8
  %sub43 = sub nsw i64 %35, %sub42
  store i64 %sub43, i64* %relative_position, align 8
  %36 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right44 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 3
  %37 = load %struct.interval*, %struct.interval** %right44, align 8
  store %struct.interval* %37, %struct.interval** %tree.addr, align 8
  br label %if.end.56

if.else.45:                                       ; preds = %cond.end.23, %if.else
  %38 = load i64, i64* %position.addr, align 8
  %39 = load i64, i64* %relative_position, align 8
  %sub46 = sub nsw i64 %38, %39
  %40 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left47 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 2
  %41 = load %struct.interval*, %struct.interval** %left47, align 8
  %tobool48 = icmp ne %struct.interval* %41, null
  br i1 %tobool48, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %if.else.45
  %42 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left50 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 2
  %43 = load %struct.interval*, %struct.interval** %left50, align 8
  %total_length51 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 0
  %44 = load i64, i64* %total_length51, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.else.45
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.49
  %cond54 = phi i64 [ %44, %cond.true.49 ], [ 0, %cond.false.52 ]
  %add = add nsw i64 %sub46, %cond54
  %45 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %position55 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 1
  store i64 %add, i64* %position55, align 8
  %46 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  store %struct.interval* %46, %struct.interval** %retval
  br label %return

if.end.56:                                        ; preds = %cond.end.40
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.8
  br label %while.body

return:                                           ; preds = %cond.end.53, %if.then
  %47 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %47
}

declare zeroext i1 @BUFFERP(i64) #1

; Function Attrs: nounwind uwtable
define %struct.interval* @next_interval(%struct.interval* %interval) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %interval.addr = alloca %struct.interval*, align 8
  %i = alloca %struct.interval*, align 8
  %next_position = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  store %struct.interval* %0, %struct.interval** %i, align 8
  %1 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 1
  %3 = load i64, i64* %position, align 8
  %4 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp = icmp eq %struct.interval* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.19

cond.false:                                       ; preds = %if.end
  %5 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp1 = icmp eq %struct.interval* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %6 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 0
  %7 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 0, %cond.true.2 ], [ %7, %cond.false.3 ]
  %8 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 3
  %9 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp4 = icmp eq %struct.interval* %9, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %10 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right7 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 3
  %11 = load %struct.interval*, %struct.interval** %right7, align 8
  %total_length8 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i64, i64* %total_length8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i64 [ 0, %cond.true.5 ], [ %12, %cond.false.6 ]
  %sub = sub nsw i64 %cond, %cond10
  %13 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 2
  %14 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp11 = icmp eq %struct.interval* %14, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  br label %cond.end.16

cond.false.13:                                    ; preds = %cond.end.9
  %15 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left14 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 2
  %16 = load %struct.interval*, %struct.interval** %left14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 0
  %17 = load i64, i64* %total_length15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i64 [ 0, %cond.true.12 ], [ %17, %cond.false.13 ]
  %sub18 = sub nsw i64 %sub, %cond17
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.16, %cond.true
  %cond20 = phi i64 [ 0, %cond.true ], [ %sub18, %cond.end.16 ]
  %add = add nsw i64 %3, %cond20
  store i64 %add, i64* %next_position, align 8
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %right21 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 3
  %19 = load %struct.interval*, %struct.interval** %right21, align 8
  %cmp22 = icmp eq %struct.interval* %19, null
  br i1 %cmp22, label %if.end.29, label %if.then.23

if.then.23:                                       ; preds = %cond.end.19
  %20 = load %struct.interval*, %struct.interval** %i, align 8
  %right24 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 3
  %21 = load %struct.interval*, %struct.interval** %right24, align 8
  store %struct.interval* %21, %struct.interval** %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.23
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %left25 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 2
  %23 = load %struct.interval*, %struct.interval** %left25, align 8
  %cmp26 = icmp eq %struct.interval* %23, null
  %lnot = xor i1 %cmp26, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.interval*, %struct.interval** %i, align 8
  %left27 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 2
  %25 = load %struct.interval*, %struct.interval** %left27, align 8
  store %struct.interval* %25, %struct.interval** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i64, i64* %next_position, align 8
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %position28 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 1
  store i64 %26, i64* %position28, align 8
  %28 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %28, %struct.interval** %retval
  br label %return

if.end.29:                                        ; preds = %cond.end.19
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.50, %if.end.29
  %29 = load %struct.interval*, %struct.interval** %i, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.30
  %30 = load %struct.interval*, %struct.interval** %i, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 4
  %interval31 = bitcast %union.anon* %up to %struct.interval**
  %31 = load %struct.interval*, %struct.interval** %interval31, align 8
  %cmp32 = icmp eq %struct.interval* %31, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.30
  %32 = phi i1 [ true, %while.cond.30 ], [ %cmp32, %lor.rhs ]
  %lnot33 = xor i1 %32, true
  br i1 %lnot33, label %while.body.34, label %while.end.53

while.body.34:                                    ; preds = %lor.end
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %up_obj35 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 5
  %bf.load36 = load i8, i8* %up_obj35, align 8
  %bf.clear37 = and i8 %bf.load36, 1
  %bf.cast38 = trunc i8 %bf.clear37 to i1
  br i1 %bf.cast38, label %if.end.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.34
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %up39 = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 4
  %interval40 = bitcast %union.anon* %up39 to %struct.interval**
  %35 = load %struct.interval*, %struct.interval** %interval40, align 8
  %cmp41 = icmp eq %struct.interval* %35, null
  br i1 %cmp41, label %if.end.50, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load %struct.interval*, %struct.interval** %i, align 8
  %up42 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 4
  %interval43 = bitcast %union.anon* %up42 to %struct.interval**
  %37 = load %struct.interval*, %struct.interval** %interval43, align 8
  %left44 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 2
  %38 = load %struct.interval*, %struct.interval** %left44, align 8
  %39 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp45 = icmp eq %struct.interval* %38, %39
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %land.lhs.true
  %40 = load %struct.interval*, %struct.interval** %i, align 8
  %up47 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 4
  %interval48 = bitcast %union.anon* %up47 to %struct.interval**
  %41 = load %struct.interval*, %struct.interval** %interval48, align 8
  store %struct.interval* %41, %struct.interval** %i, align 8
  %42 = load i64, i64* %next_position, align 8
  %43 = load %struct.interval*, %struct.interval** %i, align 8
  %position49 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 1
  store i64 %42, i64* %position49, align 8
  %44 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %44, %struct.interval** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true, %lor.lhs.false, %while.body.34
  %45 = load %struct.interval*, %struct.interval** %i, align 8
  %up51 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 4
  %interval52 = bitcast %union.anon* %up51 to %struct.interval**
  %46 = load %struct.interval*, %struct.interval** %interval52, align 8
  store %struct.interval* %46, %struct.interval** %i, align 8
  br label %while.cond.30

while.end.53:                                     ; preds = %lor.end
  store %struct.interval* null, %struct.interval** %retval
  br label %return

return:                                           ; preds = %while.end.53, %if.then.46, %while.end, %if.then
  %47 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %47
}

; Function Attrs: nounwind uwtable
define %struct.interval* @previous_interval(%struct.interval* %interval) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %interval.addr = alloca %struct.interval*, align 8
  %i = alloca %struct.interval*, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 2
  %2 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp = icmp eq %struct.interval* %2, null
  br i1 %cmp, label %if.end.30, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left2 = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 2
  %4 = load %struct.interval*, %struct.interval** %left2, align 8
  store %struct.interval* %4, %struct.interval** %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.1
  %5 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 3
  %6 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp3 = icmp eq %struct.interval* %6, null
  %lnot = xor i1 %cmp3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.interval*, %struct.interval** %i, align 8
  %right4 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 3
  %8 = load %struct.interval*, %struct.interval** %right4, align 8
  store %struct.interval* %8, %struct.interval** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 1
  %10 = load i64, i64* %position, align 8
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp5 = icmp eq %struct.interval* %11, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end.26

cond.false:                                       ; preds = %while.end
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp6 = icmp eq %struct.interval* %12, null
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %13 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i64 [ 0, %cond.true.7 ], [ %14, %cond.false.8 ]
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  %right9 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 3
  %16 = load %struct.interval*, %struct.interval** %right9, align 8
  %cmp10 = icmp eq %struct.interval* %16, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %right13 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 3
  %18 = load %struct.interval*, %struct.interval** %right13, align 8
  %total_length14 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 0
  %19 = load i64, i64* %total_length14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i64 [ 0, %cond.true.11 ], [ %19, %cond.false.12 ]
  %sub = sub nsw i64 %cond, %cond16
  %20 = load %struct.interval*, %struct.interval** %i, align 8
  %left17 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 2
  %21 = load %struct.interval*, %struct.interval** %left17, align 8
  %cmp18 = icmp eq %struct.interval* %21, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.15
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end.15
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %left21 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 2
  %23 = load %struct.interval*, %struct.interval** %left21, align 8
  %total_length22 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length22, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.19
  %cond24 = phi i64 [ 0, %cond.true.19 ], [ %24, %cond.false.20 ]
  %sub25 = sub nsw i64 %sub, %cond24
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.23, %cond.true
  %cond27 = phi i64 [ 0, %cond.true ], [ %sub25, %cond.end.23 ]
  %sub28 = sub nsw i64 %10, %cond27
  %25 = load %struct.interval*, %struct.interval** %i, align 8
  %position29 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 1
  store i64 %sub28, i64* %position29, align 8
  %26 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %26, %struct.interval** %retval
  br label %return

if.end.30:                                        ; preds = %if.end
  %27 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  store %struct.interval* %27, %struct.interval** %i, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %if.end.82, %if.end.30
  %28 = load %struct.interval*, %struct.interval** %i, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.31
  %29 = load %struct.interval*, %struct.interval** %i, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 4
  %interval32 = bitcast %union.anon* %up to %struct.interval**
  %30 = load %struct.interval*, %struct.interval** %interval32, align 8
  %cmp33 = icmp eq %struct.interval* %30, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.31
  %31 = phi i1 [ true, %while.cond.31 ], [ %cmp33, %lor.rhs ]
  %lnot34 = xor i1 %31, true
  br i1 %lnot34, label %while.body.35, label %while.end.85

while.body.35:                                    ; preds = %lor.end
  %32 = load %struct.interval*, %struct.interval** %i, align 8
  %up_obj36 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 5
  %bf.load37 = load i8, i8* %up_obj36, align 8
  %bf.clear38 = and i8 %bf.load37, 1
  %bf.cast39 = trunc i8 %bf.clear38 to i1
  br i1 %bf.cast39, label %if.end.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.35
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %up40 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 4
  %interval41 = bitcast %union.anon* %up40 to %struct.interval**
  %34 = load %struct.interval*, %struct.interval** %interval41, align 8
  %cmp42 = icmp eq %struct.interval* %34, null
  br i1 %cmp42, label %if.end.82, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %35 = load %struct.interval*, %struct.interval** %i, align 8
  %up43 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 4
  %interval44 = bitcast %union.anon* %up43 to %struct.interval**
  %36 = load %struct.interval*, %struct.interval** %interval44, align 8
  %right45 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 3
  %37 = load %struct.interval*, %struct.interval** %right45, align 8
  %38 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp46 = icmp eq %struct.interval* %37, %38
  br i1 %cmp46, label %if.then.47, label %if.end.82

if.then.47:                                       ; preds = %land.lhs.true
  %39 = load %struct.interval*, %struct.interval** %i, align 8
  %up48 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 4
  %interval49 = bitcast %union.anon* %up48 to %struct.interval**
  %40 = load %struct.interval*, %struct.interval** %interval49, align 8
  store %struct.interval* %40, %struct.interval** %i, align 8
  %41 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position50 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 1
  %42 = load i64, i64* %position50, align 8
  %43 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp51 = icmp eq %struct.interval* %43, null
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %if.then.47
  br label %cond.end.78

cond.false.53:                                    ; preds = %if.then.47
  %44 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp54 = icmp eq %struct.interval* %44, null
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false.53
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.false.53
  %45 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length57 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 0
  %46 = load i64, i64* %total_length57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.55
  %cond59 = phi i64 [ 0, %cond.true.55 ], [ %46, %cond.false.56 ]
  %47 = load %struct.interval*, %struct.interval** %i, align 8
  %right60 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 3
  %48 = load %struct.interval*, %struct.interval** %right60, align 8
  %cmp61 = icmp eq %struct.interval* %48, null
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.58
  br label %cond.end.66

cond.false.63:                                    ; preds = %cond.end.58
  %49 = load %struct.interval*, %struct.interval** %i, align 8
  %right64 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 3
  %50 = load %struct.interval*, %struct.interval** %right64, align 8
  %total_length65 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 0
  %51 = load i64, i64* %total_length65, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.63, %cond.true.62
  %cond67 = phi i64 [ 0, %cond.true.62 ], [ %51, %cond.false.63 ]
  %sub68 = sub nsw i64 %cond59, %cond67
  %52 = load %struct.interval*, %struct.interval** %i, align 8
  %left69 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 2
  %53 = load %struct.interval*, %struct.interval** %left69, align 8
  %cmp70 = icmp eq %struct.interval* %53, null
  br i1 %cmp70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.end.66
  br label %cond.end.75

cond.false.72:                                    ; preds = %cond.end.66
  %54 = load %struct.interval*, %struct.interval** %i, align 8
  %left73 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 2
  %55 = load %struct.interval*, %struct.interval** %left73, align 8
  %total_length74 = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 0
  %56 = load i64, i64* %total_length74, align 8
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.72, %cond.true.71
  %cond76 = phi i64 [ 0, %cond.true.71 ], [ %56, %cond.false.72 ]
  %sub77 = sub nsw i64 %sub68, %cond76
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.75, %cond.true.52
  %cond79 = phi i64 [ 0, %cond.true.52 ], [ %sub77, %cond.end.75 ]
  %sub80 = sub nsw i64 %42, %cond79
  %57 = load %struct.interval*, %struct.interval** %i, align 8
  %position81 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 1
  store i64 %sub80, i64* %position81, align 8
  %58 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %58, %struct.interval** %retval
  br label %return

if.end.82:                                        ; preds = %land.lhs.true, %lor.lhs.false, %while.body.35
  %59 = load %struct.interval*, %struct.interval** %i, align 8
  %up83 = getelementptr inbounds %struct.interval, %struct.interval* %59, i32 0, i32 4
  %interval84 = bitcast %union.anon* %up83 to %struct.interval**
  %60 = load %struct.interval*, %struct.interval** %interval84, align 8
  store %struct.interval* %60, %struct.interval** %i, align 8
  br label %while.cond.31

while.end.85:                                     ; preds = %lor.end
  store %struct.interval* null, %struct.interval** %retval
  br label %return

return:                                           ; preds = %while.end.85, %cond.end.78, %cond.end.26, %if.then
  %61 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %61
}

; Function Attrs: nounwind uwtable
define %struct.interval* @update_interval(%struct.interval* %i, i64 %pos) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %i.addr = alloca %struct.interval*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.36, %if.end.171
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 1
  %3 = load i64, i64* %position, align 8
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then.1, label %if.else.37

if.then.1:                                        ; preds = %while.body
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position2 = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 1
  %6 = load i64, i64* %position2, align 8
  %7 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 2
  %8 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp3 = icmp eq %struct.interval* %8, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %9 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left4 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 2
  %10 = load %struct.interval*, %struct.interval** %left4, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 0
  %11 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %11, %cond.false ]
  %sub = sub nsw i64 %6, %cond
  %cmp5 = icmp sge i64 %4, %sub
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position7 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 1
  %13 = load i64, i64* %position7, align 8
  %14 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left8 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 2
  %15 = load %struct.interval*, %struct.interval** %left8, align 8
  %cmp9 = icmp eq %struct.interval* %15, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.then.6
  br label %cond.end.14

cond.false.11:                                    ; preds = %if.then.6
  %16 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left12 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 2
  %17 = load %struct.interval*, %struct.interval** %left12, align 8
  %total_length13 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 0
  %18 = load i64, i64* %total_length13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.10
  %cond15 = phi i64 [ 0, %cond.true.10 ], [ %18, %cond.false.11 ]
  %sub16 = sub nsw i64 %13, %cond15
  %19 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left17 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left17, align 8
  %left18 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 2
  %21 = load %struct.interval*, %struct.interval** %left18, align 8
  %tobool19 = icmp ne %struct.interval* %21, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %cond.end.14
  %22 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left21 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 2
  %23 = load %struct.interval*, %struct.interval** %left21, align 8
  %left22 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 2
  %24 = load %struct.interval*, %struct.interval** %left22, align 8
  %total_length23 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 0
  %25 = load i64, i64* %total_length23, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.14
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.20
  %cond26 = phi i64 [ %25, %cond.true.20 ], [ 0, %cond.false.24 ]
  %add = add nsw i64 %sub16, %cond26
  %26 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left27 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 2
  %27 = load %struct.interval*, %struct.interval** %left27, align 8
  %position28 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 1
  store i64 %add, i64* %position28, align 8
  %28 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left29 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 2
  %29 = load %struct.interval*, %struct.interval** %left29, align 8
  store %struct.interval* %29, %struct.interval** %i.addr, align 8
  br label %if.end.36

if.else:                                          ; preds = %cond.end
  %30 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %31 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %32 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp30 = icmp eq %struct.interval* %32, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.else.32:                                       ; preds = %lor.lhs.false
  %33 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up33 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 4
  %interval34 = bitcast %union.anon* %up33 to %struct.interval**
  %34 = load %struct.interval*, %struct.interval** %interval34, align 8
  store %struct.interval* %34, %struct.interval** %i.addr, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %cond.end.25
  br label %while.body

if.else.37:                                       ; preds = %while.body
  %35 = load i64, i64* %pos.addr, align 8
  %36 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position38 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 1
  %37 = load i64, i64* %position38, align 8
  %38 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp39 = icmp eq %struct.interval* %38, null
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.else.37
  br label %cond.end.65

cond.false.41:                                    ; preds = %if.else.37
  %39 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp42 = icmp eq %struct.interval* %39, null
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.41
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.41
  %40 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length45 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 0
  %41 = load i64, i64* %total_length45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i64 [ 0, %cond.true.43 ], [ %41, %cond.false.44 ]
  %42 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 3
  %43 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp48 = icmp eq %struct.interval* %43, null
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.46
  br label %cond.end.53

cond.false.50:                                    ; preds = %cond.end.46
  %44 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right51 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 3
  %45 = load %struct.interval*, %struct.interval** %right51, align 8
  %total_length52 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 0
  %46 = load i64, i64* %total_length52, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.50, %cond.true.49
  %cond54 = phi i64 [ 0, %cond.true.49 ], [ %46, %cond.false.50 ]
  %sub55 = sub nsw i64 %cond47, %cond54
  %47 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left56 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 2
  %48 = load %struct.interval*, %struct.interval** %left56, align 8
  %cmp57 = icmp eq %struct.interval* %48, null
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.53
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.end.53
  %49 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left60 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 2
  %50 = load %struct.interval*, %struct.interval** %left60, align 8
  %total_length61 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 0
  %51 = load i64, i64* %total_length61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i64 [ 0, %cond.true.58 ], [ %51, %cond.false.59 ]
  %sub64 = sub nsw i64 %sub55, %cond63
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.62, %cond.true.40
  %cond66 = phi i64 [ 0, %cond.true.40 ], [ %sub64, %cond.end.62 ]
  %add67 = add nsw i64 %37, %cond66
  %cmp68 = icmp sge i64 %35, %add67
  br i1 %cmp68, label %if.then.69, label %if.else.172

if.then.69:                                       ; preds = %cond.end.65
  %52 = load i64, i64* %pos.addr, align 8
  %53 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position70 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 1
  %54 = load i64, i64* %position70, align 8
  %55 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp71 = icmp eq %struct.interval* %55, null
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.then.69
  br label %cond.end.98

cond.false.73:                                    ; preds = %if.then.69
  %56 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp74 = icmp eq %struct.interval* %56, null
  br i1 %cmp74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.73
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.73
  %57 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length77 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 0
  %58 = load i64, i64* %total_length77, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i64 [ 0, %cond.true.75 ], [ %58, %cond.false.76 ]
  %59 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right80 = getelementptr inbounds %struct.interval, %struct.interval* %59, i32 0, i32 3
  %60 = load %struct.interval*, %struct.interval** %right80, align 8
  %cmp81 = icmp eq %struct.interval* %60, null
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.78
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.end.78
  %61 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right84 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 3
  %62 = load %struct.interval*, %struct.interval** %right84, align 8
  %total_length85 = getelementptr inbounds %struct.interval, %struct.interval* %62, i32 0, i32 0
  %63 = load i64, i64* %total_length85, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i64 [ 0, %cond.true.82 ], [ %63, %cond.false.83 ]
  %sub88 = sub nsw i64 %cond79, %cond87
  %64 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left89 = getelementptr inbounds %struct.interval, %struct.interval* %64, i32 0, i32 2
  %65 = load %struct.interval*, %struct.interval** %left89, align 8
  %cmp90 = icmp eq %struct.interval* %65, null
  br i1 %cmp90, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end.86
  br label %cond.end.95

cond.false.92:                                    ; preds = %cond.end.86
  %66 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left93 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 2
  %67 = load %struct.interval*, %struct.interval** %left93, align 8
  %total_length94 = getelementptr inbounds %struct.interval, %struct.interval* %67, i32 0, i32 0
  %68 = load i64, i64* %total_length94, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.91
  %cond96 = phi i64 [ 0, %cond.true.91 ], [ %68, %cond.false.92 ]
  %sub97 = sub nsw i64 %sub88, %cond96
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.95, %cond.true.72
  %cond99 = phi i64 [ 0, %cond.true.72 ], [ %sub97, %cond.end.95 ]
  %add100 = add nsw i64 %54, %cond99
  %69 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right101 = getelementptr inbounds %struct.interval, %struct.interval* %69, i32 0, i32 3
  %70 = load %struct.interval*, %struct.interval** %right101, align 8
  %cmp102 = icmp eq %struct.interval* %70, null
  br i1 %cmp102, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.end.98
  br label %cond.end.107

cond.false.104:                                   ; preds = %cond.end.98
  %71 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right105 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 3
  %72 = load %struct.interval*, %struct.interval** %right105, align 8
  %total_length106 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 0
  %73 = load i64, i64* %total_length106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.104, %cond.true.103
  %cond108 = phi i64 [ 0, %cond.true.103 ], [ %73, %cond.false.104 ]
  %add109 = add nsw i64 %add100, %cond108
  %cmp110 = icmp slt i64 %52, %add109
  br i1 %cmp110, label %if.then.111, label %if.else.157

if.then.111:                                      ; preds = %cond.end.107
  %74 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position112 = getelementptr inbounds %struct.interval, %struct.interval* %74, i32 0, i32 1
  %75 = load i64, i64* %position112, align 8
  %76 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp113 = icmp eq %struct.interval* %76, null
  br i1 %cmp113, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.111
  br label %cond.end.140

cond.false.115:                                   ; preds = %if.then.111
  %77 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp116 = icmp eq %struct.interval* %77, null
  br i1 %cmp116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.false.115
  br label %cond.end.120

cond.false.118:                                   ; preds = %cond.false.115
  %78 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length119 = getelementptr inbounds %struct.interval, %struct.interval* %78, i32 0, i32 0
  %79 = load i64, i64* %total_length119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.117
  %cond121 = phi i64 [ 0, %cond.true.117 ], [ %79, %cond.false.118 ]
  %80 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right122 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 3
  %81 = load %struct.interval*, %struct.interval** %right122, align 8
  %cmp123 = icmp eq %struct.interval* %81, null
  br i1 %cmp123, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.end.120
  br label %cond.end.128

cond.false.125:                                   ; preds = %cond.end.120
  %82 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right126 = getelementptr inbounds %struct.interval, %struct.interval* %82, i32 0, i32 3
  %83 = load %struct.interval*, %struct.interval** %right126, align 8
  %total_length127 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 0
  %84 = load i64, i64* %total_length127, align 8
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.125, %cond.true.124
  %cond129 = phi i64 [ 0, %cond.true.124 ], [ %84, %cond.false.125 ]
  %sub130 = sub nsw i64 %cond121, %cond129
  %85 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left131 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 2
  %86 = load %struct.interval*, %struct.interval** %left131, align 8
  %cmp132 = icmp eq %struct.interval* %86, null
  br i1 %cmp132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.end.128
  br label %cond.end.137

cond.false.134:                                   ; preds = %cond.end.128
  %87 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left135 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 2
  %88 = load %struct.interval*, %struct.interval** %left135, align 8
  %total_length136 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 0
  %89 = load i64, i64* %total_length136, align 8
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.134, %cond.true.133
  %cond138 = phi i64 [ 0, %cond.true.133 ], [ %89, %cond.false.134 ]
  %sub139 = sub nsw i64 %sub130, %cond138
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.137, %cond.true.114
  %cond141 = phi i64 [ 0, %cond.true.114 ], [ %sub139, %cond.end.137 ]
  %add142 = add nsw i64 %75, %cond141
  %90 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right143 = getelementptr inbounds %struct.interval, %struct.interval* %90, i32 0, i32 3
  %91 = load %struct.interval*, %struct.interval** %right143, align 8
  %left144 = getelementptr inbounds %struct.interval, %struct.interval* %91, i32 0, i32 2
  %92 = load %struct.interval*, %struct.interval** %left144, align 8
  %tobool145 = icmp ne %struct.interval* %92, null
  br i1 %tobool145, label %cond.true.146, label %cond.false.150

cond.true.146:                                    ; preds = %cond.end.140
  %93 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right147 = getelementptr inbounds %struct.interval, %struct.interval* %93, i32 0, i32 3
  %94 = load %struct.interval*, %struct.interval** %right147, align 8
  %left148 = getelementptr inbounds %struct.interval, %struct.interval* %94, i32 0, i32 2
  %95 = load %struct.interval*, %struct.interval** %left148, align 8
  %total_length149 = getelementptr inbounds %struct.interval, %struct.interval* %95, i32 0, i32 0
  %96 = load i64, i64* %total_length149, align 8
  br label %cond.end.151

cond.false.150:                                   ; preds = %cond.end.140
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.146
  %cond152 = phi i64 [ %96, %cond.true.146 ], [ 0, %cond.false.150 ]
  %add153 = add nsw i64 %add142, %cond152
  %97 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right154 = getelementptr inbounds %struct.interval, %struct.interval* %97, i32 0, i32 3
  %98 = load %struct.interval*, %struct.interval** %right154, align 8
  %position155 = getelementptr inbounds %struct.interval, %struct.interval* %98, i32 0, i32 1
  store i64 %add153, i64* %position155, align 8
  %99 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right156 = getelementptr inbounds %struct.interval, %struct.interval* %99, i32 0, i32 3
  %100 = load %struct.interval*, %struct.interval** %right156, align 8
  store %struct.interval* %100, %struct.interval** %i.addr, align 8
  br label %if.end.171

if.else.157:                                      ; preds = %cond.end.107
  %101 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj158 = getelementptr inbounds %struct.interval, %struct.interval* %101, i32 0, i32 5
  %bf.load159 = load i8, i8* %up_obj158, align 8
  %bf.clear160 = and i8 %bf.load159, 1
  %bf.cast161 = trunc i8 %bf.clear160 to i1
  br i1 %bf.cast161, label %if.then.166, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.else.157
  %102 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up163 = getelementptr inbounds %struct.interval, %struct.interval* %102, i32 0, i32 4
  %interval164 = bitcast %union.anon* %up163 to %struct.interval**
  %103 = load %struct.interval*, %struct.interval** %interval164, align 8
  %cmp165 = icmp eq %struct.interval* %103, null
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %lor.lhs.false.162, %if.else.157
  %104 = load i64, i64* %pos.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i64 %104) #4
  unreachable

if.else.167:                                      ; preds = %lor.lhs.false.162
  %105 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up168 = getelementptr inbounds %struct.interval, %struct.interval* %105, i32 0, i32 4
  %interval169 = bitcast %union.anon* %up168 to %struct.interval**
  %106 = load %struct.interval*, %struct.interval** %interval169, align 8
  store %struct.interval* %106, %struct.interval** %i.addr, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %cond.end.151
  br label %while.body

if.else.172:                                      ; preds = %cond.end.65
  %107 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %107, %struct.interval** %retval
  br label %return

return:                                           ; preds = %if.else.172, %if.then
  %108 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %108
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @offset_intervals(%struct.buffer* %buffer, i64 %start, i64 %length) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  %tobool = icmp ne %struct.interval* %call, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.5

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %length.addr, align 8
  %cmp1 = icmp sgt i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call3 = call %struct.interval* @buffer_intervals(%struct.buffer* %3)
  %4 = load i64, i64* %start.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  %call4 = call %struct.interval* @adjust_intervals_for_insertion(%struct.interval* %call3, i64 %4, i64 %5)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %7 = load i64, i64* %start.addr, align 8
  %8 = load i64, i64* %length.addr, align 8
  %sub = sub nsw i64 0, %8
  call void @adjust_intervals_for_deletion(%struct.buffer* %6, i64 %7, i64 %sub)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.2
  ret void
}

declare %struct.interval* @buffer_intervals(%struct.buffer*) #1

; Function Attrs: nounwind uwtable
define internal %struct.interval* @adjust_intervals_for_insertion(%struct.interval* %tree, i64 %position, i64 %length) #0 {
entry:
  %tree.addr = alloca %struct.interval*, align 8
  %position.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %temp = alloca %struct.interval*, align 8
  %eobp = alloca i8, align 1
  %parent = alloca i64, align 8
  %offset = alloca i64, align 8
  %tail = alloca i64, align 8
  %front = alloca i64, align 8
  %rear = alloca i64, align 8
  %prop = alloca i64, align 8
  %tmp = alloca i64, align 8
  %prev = alloca %struct.interval*, align 8
  %pleft = alloca i64, align 8
  %pright = alloca i64, align 8
  %newi = alloca %struct.interval, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8 0, i8* %eobp, align 1
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 4
  %obj = bitcast %union.anon* %up to i64*
  %1 = load i64, i64* %obj, align 8
  store i64 %1, i64* %parent, align 8
  %2 = load i64, i64* %parent, align 8
  %call = call zeroext i1 @BUFFERP(i64 %2)
  %cond = select i1 %call, i32 1, i32 0
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %offset, align 8
  %3 = load i64, i64* %position.addr, align 8
  %4 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp = icmp eq %struct.interval* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 0
  %6 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i64 [ 0, %cond.true ], [ %6, %cond.false ]
  %7 = load i64, i64* %offset, align 8
  %add = add nsw i64 %cond2, %7
  %cmp3 = icmp sge i64 %3, %add
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp5 = icmp eq %struct.interval* %8, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.then
  br label %cond.end.10

cond.false.8:                                     ; preds = %if.then
  %9 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 0
  %10 = load i64, i64* %total_length9, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i64 [ 0, %cond.true.7 ], [ %10, %cond.false.8 ]
  %11 = load i64, i64* %offset, align 8
  %add12 = add nsw i64 %cond11, %11
  store i64 %add12, i64* %position.addr, align 8
  store i8 1, i8* %eobp, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.10, %cond.end
  %12 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %13 = load i64, i64* %position.addr, align 8
  %call13 = call %struct.interval* @find_interval(%struct.interval* %12, i64 %13)
  store %struct.interval* %call13, %struct.interval** %i, align 8
  %14 = load i64, i64* %position.addr, align 8
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  %position14 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 1
  %16 = load i64, i64* %position14, align 8
  %cmp15 = icmp eq i64 %14, %16
  br i1 %cmp15, label %if.end.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i8, i8* %eobp, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.end.92, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 6
  %19 = load i64, i64* %plist, align 8
  store i64 %19, i64* %tail, align 8
  %20 = load %struct.interval*, %struct.interval** %i, align 8
  %plist19 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 6
  %21 = load i64, i64* %plist19, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 794)
  %call21 = call i64 @textget(i64 %21, i64 %call20)
  store i64 %call21, i64* %rear, align 8
  %22 = load i64, i64* %rear, align 8
  %and = and i64 %22, 7
  %conv22 = trunc i64 %and to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.18
  %23 = load i64, i64* %rear, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %23, %call25
  br i1 %cmp26, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  br label %check_done

if.end.29:                                        ; preds = %land.lhs.true, %if.then.18
  %24 = load %struct.interval*, %struct.interval** %i, align 8
  %plist30 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 6
  %25 = load i64, i64* %plist30, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 468)
  %call32 = call i64 @textget(i64 %25, i64 %call31)
  store i64 %call32, i64* %front, align 8
  %26 = load i64, i64* %front, align 8
  %and33 = and i64 %26, 7
  %conv34 = trunc i64 %and33 to i32
  %cmp35 = icmp eq i32 %conv34, 3
  br i1 %cmp35, label %if.end.43, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.29
  %27 = load i64, i64* %front, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %27, %call38
  br i1 %cmp39, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.37
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call42, i64* %tail, align 8
  br label %check_done

if.end.43:                                        ; preds = %land.lhs.true.37, %if.end.29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %28 = load i64, i64* %tail, align 8
  %and44 = and i64 %28, 7
  %conv45 = trunc i64 %and44 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car, align 8
  store i64 %32, i64* %prop, align 8
  %33 = load i64, i64* %front, align 8
  %and48 = and i64 %33, 7
  %conv49 = trunc i64 %and48 to i32
  %cmp50 = icmp eq i32 %conv49, 3
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.58

land.lhs.true.52:                                 ; preds = %for.body
  %34 = load i64, i64* %prop, align 8
  %35 = load i64, i64* %front, align 8
  %call53 = call i64 @Fmemq(i64 %34, i64 %35)
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp55 = icmp eq i64 %call53, %call54
  br i1 %cmp55, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.52
  br label %for.inc

if.end.58:                                        ; preds = %land.lhs.true.52, %for.body
  %36 = load i64, i64* %rear, align 8
  %and59 = and i64 %36, 7
  %conv60 = trunc i64 %and59 to i32
  %cmp61 = icmp eq i32 %conv60, 3
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.69

land.lhs.true.63:                                 ; preds = %if.end.58
  %37 = load i64, i64* %prop, align 8
  %38 = load i64, i64* %rear, align 8
  %call64 = call i64 @Fmemq(i64 %37, i64 %38)
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %call64, %call65
  br i1 %cmp66, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.63
  br label %for.end

if.end.69:                                        ; preds = %land.lhs.true.63, %if.end.58
  %39 = load i64, i64* %prop, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  %call70 = call i64 @Fassq(i64 %39, i64 %40)
  store i64 %call70, i64* %tmp, align 8
  %41 = load i64, i64* %tmp, align 8
  %and71 = and i64 %41, 7
  %conv72 = trunc i64 %and71 to i32
  %cmp73 = icmp eq i32 %conv72, 3
  br i1 %cmp73, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.69
  %42 = load i64, i64* %tmp, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %42, %call76
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.75
  br label %for.inc

if.end.80:                                        ; preds = %if.then.75
  br label %for.end

if.end.81:                                        ; preds = %if.end.69
  br label %for.inc

for.inc:                                          ; preds = %if.end.81, %if.then.79, %if.then.57
  %43 = load i64, i64* %tail, align 8
  %sub82 = sub nsw i64 %43, 3
  %44 = inttoptr i64 %sub82 to i8*
  %45 = bitcast i8* %44 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %45, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %46 = load i64, i64* %cdr, align 8
  %call83 = call i64 @Fcdr(i64 %46)
  store i64 %call83, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.80, %if.then.68, %for.cond
  br label %check_done

check_done:                                       ; preds = %for.end, %if.then.41, %if.then.28
  %47 = load i64, i64* %tail, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp85 = icmp eq i64 %47, %call84
  br i1 %cmp85, label %if.end.91, label %if.then.87

if.then.87:                                       ; preds = %check_done
  %48 = load %struct.interval*, %struct.interval** %i, align 8
  %49 = load i64, i64* %position.addr, align 8
  %50 = load %struct.interval*, %struct.interval** %i, align 8
  %position88 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 1
  %51 = load i64, i64* %position88, align 8
  %sub89 = sub nsw i64 %49, %51
  %call90 = call %struct.interval* @split_interval_right(%struct.interval* %48, i64 %sub89)
  store %struct.interval* %call90, %struct.interval** %temp, align 8
  %52 = load %struct.interval*, %struct.interval** %i, align 8
  %53 = load %struct.interval*, %struct.interval** %temp, align 8
  call void @copy_properties(%struct.interval* %52, %struct.interval* %53)
  %54 = load %struct.interval*, %struct.interval** %temp, align 8
  store %struct.interval* %54, %struct.interval** %i, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %check_done
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %lor.lhs.false, %if.end
  %55 = load i64, i64* %position.addr, align 8
  %56 = load %struct.interval*, %struct.interval** %i, align 8
  %position93 = getelementptr inbounds %struct.interval, %struct.interval* %56, i32 0, i32 1
  %57 = load i64, i64* %position93, align 8
  %cmp94 = icmp eq i64 %55, %57
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.end.92
  %58 = load i8, i8* %eobp, align 1
  %tobool97 = trunc i8 %58 to i1
  br i1 %tobool97, label %if.then.99, label %if.else.185

if.then.99:                                       ; preds = %lor.lhs.false.96, %if.end.92
  %59 = load i64, i64* %position.addr, align 8
  %cmp101 = icmp eq i64 %59, 1
  br i1 %cmp101, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %if.then.99
  store %struct.interval* null, %struct.interval** %prev, align 8
  br label %if.end.109

if.else:                                          ; preds = %if.then.99
  %60 = load i8, i8* %eobp, align 1
  %tobool104 = trunc i8 %60 to i1
  br i1 %tobool104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.else
  %61 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %61, %struct.interval** %prev, align 8
  store %struct.interval* null, %struct.interval** %i, align 8
  br label %if.end.108

if.else.106:                                      ; preds = %if.else
  %62 = load %struct.interval*, %struct.interval** %i, align 8
  %call107 = call %struct.interval* @previous_interval(%struct.interval* %62)
  store %struct.interval* %call107, %struct.interval** %prev, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.105
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.103
  %63 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool110 = icmp ne %struct.interval* %63, null
  br i1 %tobool110, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %if.end.109
  %64 = load %struct.interval*, %struct.interval** %prev, align 8
  br label %cond.end.113

cond.false.112:                                   ; preds = %if.end.109
  %65 = load %struct.interval*, %struct.interval** %i, align 8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi %struct.interval* [ %64, %cond.true.111 ], [ %65, %cond.false.112 ]
  store %struct.interval* %cond114, %struct.interval** %temp, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %cond.end.130, %cond.end.113
  %66 = load %struct.interval*, %struct.interval** %temp, align 8
  %tobool116 = icmp ne %struct.interval* %66, null
  br i1 %tobool116, label %for.body.117, label %for.end.132

for.body.117:                                     ; preds = %for.cond.115
  %67 = load i64, i64* %length.addr, align 8
  %68 = load %struct.interval*, %struct.interval** %temp, align 8
  %total_length118 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 0
  %69 = load i64, i64* %total_length118, align 8
  %add119 = add nsw i64 %69, %67
  store i64 %add119, i64* %total_length118, align 8
  %70 = load %struct.interval*, %struct.interval** %temp, align 8
  %call120 = call %struct.interval* @balance_possible_root_interval(%struct.interval* %70)
  store %struct.interval* %call120, %struct.interval** %temp, align 8
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.117
  %71 = load %struct.interval*, %struct.interval** %temp, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.false.129, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %for.inc.121
  %72 = load %struct.interval*, %struct.interval** %temp, align 8
  %up123 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 4
  %interval = bitcast %union.anon* %up123 to %struct.interval**
  %73 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp124 = icmp ne %struct.interval* %73, null
  br i1 %cmp124, label %cond.true.126, label %cond.false.129

cond.true.126:                                    ; preds = %land.lhs.true.122
  %74 = load %struct.interval*, %struct.interval** %temp, align 8
  %up127 = getelementptr inbounds %struct.interval, %struct.interval* %74, i32 0, i32 4
  %interval128 = bitcast %union.anon* %up127 to %struct.interval**
  %75 = load %struct.interval*, %struct.interval** %interval128, align 8
  br label %cond.end.130

cond.false.129:                                   ; preds = %land.lhs.true.122, %for.inc.121
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.126
  %cond131 = phi %struct.interval* [ %75, %cond.true.126 ], [ null, %cond.false.129 ]
  store %struct.interval* %cond131, %struct.interval** %temp, align 8
  br label %for.cond.115

for.end.132:                                      ; preds = %for.cond.115
  br label %do.body

do.body:                                          ; preds = %for.end.132
  %position136 = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 1
  store i64 0, i64* %position136, align 8
  %total_length137 = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 0
  store i64 0, i64* %total_length137, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 3
  store %struct.interval* null, %struct.interval** %right, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %left, align 8
  call void @set_interval_parent(%struct.interval* %newi, %struct.interval* null)
  %write_protect = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 5
  %bf.load138 = load i8, i8* %write_protect, align 8
  %bf.clear139 = and i8 %bf.load138, -5
  store i8 %bf.clear139, i8* %write_protect, align 8
  %visible = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 5
  %bf.load140 = load i8, i8* %visible, align 8
  %bf.clear141 = and i8 %bf.load140, -9
  store i8 %bf.clear141, i8* %visible, align 8
  %rear_sticky = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 5
  %bf.load142 = load i8, i8* %rear_sticky, align 8
  %bf.clear143 = and i8 %bf.load142, -33
  store i8 %bf.clear143, i8* %rear_sticky, align 8
  %front_sticky = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 5
  %bf.load144 = load i8, i8* %front_sticky, align 8
  %bf.clear145 = and i8 %bf.load144, -17
  store i8 %bf.clear145, i8* %front_sticky, align 8
  %call146 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_interval_plist(%struct.interval* %newi, i64 %call146)
  br label %do.end

do.end:                                           ; preds = %do.body
  %76 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool147 = icmp ne %struct.interval* %76, null
  br i1 %tobool147, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %do.end
  %77 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist149 = getelementptr inbounds %struct.interval, %struct.interval* %77, i32 0, i32 6
  %78 = load i64, i64* %plist149, align 8
  br label %cond.end.152

cond.false.150:                                   ; preds = %do.end
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.148
  %cond153 = phi i64 [ %78, %cond.true.148 ], [ %call151, %cond.false.150 ]
  store i64 %cond153, i64* %pleft, align 8
  %79 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool154 = icmp ne %struct.interval* %79, null
  br i1 %tobool154, label %cond.true.155, label %cond.false.157

cond.true.155:                                    ; preds = %cond.end.152
  %80 = load %struct.interval*, %struct.interval** %i, align 8
  %plist156 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 6
  %81 = load i64, i64* %plist156, align 8
  br label %cond.end.159

cond.false.157:                                   ; preds = %cond.end.152
  %call158 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.157, %cond.true.155
  %cond160 = phi i64 [ %81, %cond.true.155 ], [ %call158, %cond.false.157 ]
  store i64 %cond160, i64* %pright, align 8
  %82 = load i64, i64* %pleft, align 8
  %83 = load i64, i64* %pright, align 8
  %call161 = call i64 @merge_properties_sticky(i64 %82, i64 %83)
  call void @set_interval_plist(%struct.interval* %newi, i64 %call161)
  %84 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool162 = icmp ne %struct.interval* %84, null
  br i1 %tobool162, label %if.else.169, label %if.then.163

if.then.163:                                      ; preds = %cond.end.159
  %85 = load %struct.interval*, %struct.interval** %i, align 8
  %call164 = call zeroext i1 @intervals_equal(%struct.interval* %85, %struct.interval* %newi)
  br i1 %call164, label %if.end.168, label %if.then.165

if.then.165:                                      ; preds = %if.then.163
  %86 = load %struct.interval*, %struct.interval** %i, align 8
  %87 = load i64, i64* %length.addr, align 8
  %call166 = call %struct.interval* @split_interval_left(%struct.interval* %86, i64 %87)
  store %struct.interval* %call166, %struct.interval** %i, align 8
  %88 = load %struct.interval*, %struct.interval** %i, align 8
  %plist167 = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 6
  %89 = load i64, i64* %plist167, align 8
  call void @set_interval_plist(%struct.interval* %88, i64 %89)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.then.163
  br label %if.end.184

if.else.169:                                      ; preds = %cond.end.159
  %90 = load %struct.interval*, %struct.interval** %prev, align 8
  %call170 = call zeroext i1 @intervals_equal(%struct.interval* %90, %struct.interval* %newi)
  br i1 %call170, label %if.end.183, label %if.then.171

if.then.171:                                      ; preds = %if.else.169
  %91 = load %struct.interval*, %struct.interval** %prev, align 8
  %92 = load i64, i64* %position.addr, align 8
  %93 = load %struct.interval*, %struct.interval** %prev, align 8
  %position172 = getelementptr inbounds %struct.interval, %struct.interval* %93, i32 0, i32 1
  %94 = load i64, i64* %position172, align 8
  %sub173 = sub nsw i64 %92, %94
  %call174 = call %struct.interval* @split_interval_right(%struct.interval* %91, i64 %sub173)
  store %struct.interval* %call174, %struct.interval** %prev, align 8
  %95 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist175 = getelementptr inbounds %struct.interval, %struct.interval* %newi, i32 0, i32 6
  %96 = load i64, i64* %plist175, align 8
  call void @set_interval_plist(%struct.interval* %95, i64 %96)
  %97 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool176 = icmp ne %struct.interval* %97, null
  br i1 %tobool176, label %land.lhs.true.177, label %if.end.182

land.lhs.true.177:                                ; preds = %if.then.171
  %98 = load %struct.interval*, %struct.interval** %prev, align 8
  %99 = load %struct.interval*, %struct.interval** %i, align 8
  %call178 = call zeroext i1 @intervals_equal(%struct.interval* %98, %struct.interval* %99)
  br i1 %call178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %land.lhs.true.177
  %100 = load %struct.interval*, %struct.interval** %prev, align 8
  %call181 = call %struct.interval* @merge_interval_right(%struct.interval* %100)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %land.lhs.true.177, %if.then.171
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.else.169
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.168
  br label %if.end.209

if.else.185:                                      ; preds = %lor.lhs.false.96
  %101 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %101, %struct.interval** %temp, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %cond.end.206, %if.else.185
  %102 = load %struct.interval*, %struct.interval** %temp, align 8
  %tobool187 = icmp ne %struct.interval* %102, null
  br i1 %tobool187, label %for.body.188, label %for.end.208

for.body.188:                                     ; preds = %for.cond.186
  %103 = load i64, i64* %length.addr, align 8
  %104 = load %struct.interval*, %struct.interval** %temp, align 8
  %total_length189 = getelementptr inbounds %struct.interval, %struct.interval* %104, i32 0, i32 0
  %105 = load i64, i64* %total_length189, align 8
  %add190 = add nsw i64 %105, %103
  store i64 %add190, i64* %total_length189, align 8
  %106 = load %struct.interval*, %struct.interval** %temp, align 8
  %call191 = call %struct.interval* @balance_possible_root_interval(%struct.interval* %106)
  store %struct.interval* %call191, %struct.interval** %temp, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.188
  %107 = load %struct.interval*, %struct.interval** %temp, align 8
  %up_obj193 = getelementptr inbounds %struct.interval, %struct.interval* %107, i32 0, i32 5
  %bf.load194 = load i8, i8* %up_obj193, align 8
  %bf.clear195 = and i8 %bf.load194, 1
  %bf.cast196 = trunc i8 %bf.clear195 to i1
  br i1 %bf.cast196, label %cond.false.205, label %land.lhs.true.197

land.lhs.true.197:                                ; preds = %for.inc.192
  %108 = load %struct.interval*, %struct.interval** %temp, align 8
  %up198 = getelementptr inbounds %struct.interval, %struct.interval* %108, i32 0, i32 4
  %interval199 = bitcast %union.anon* %up198 to %struct.interval**
  %109 = load %struct.interval*, %struct.interval** %interval199, align 8
  %cmp200 = icmp ne %struct.interval* %109, null
  br i1 %cmp200, label %cond.true.202, label %cond.false.205

cond.true.202:                                    ; preds = %land.lhs.true.197
  %110 = load %struct.interval*, %struct.interval** %temp, align 8
  %up203 = getelementptr inbounds %struct.interval, %struct.interval* %110, i32 0, i32 4
  %interval204 = bitcast %union.anon* %up203 to %struct.interval**
  %111 = load %struct.interval*, %struct.interval** %interval204, align 8
  br label %cond.end.206

cond.false.205:                                   ; preds = %land.lhs.true.197, %for.inc.192
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.202
  %cond207 = phi %struct.interval* [ %111, %cond.true.202 ], [ null, %cond.false.205 ]
  store %struct.interval* %cond207, %struct.interval** %temp, align 8
  br label %for.cond.186

for.end.208:                                      ; preds = %for.cond.186
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %if.end.184
  %112 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  ret %struct.interval* %112
}

; Function Attrs: nounwind uwtable
define internal void @adjust_intervals_for_deletion(%struct.buffer* %buffer, i64 %start, i64 %length) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %left_to_delete = alloca i64, align 8
  %tree = alloca %struct.interval*, align 8
  %parent = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  store i64 %0, i64* %left_to_delete, align 8
  %1 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %1)
  store %struct.interval* %call, %struct.interval** %tree, align 8
  %2 = load %struct.interval*, %struct.interval** %tree, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 4
  %obj = bitcast %union.anon* %up to i64*
  %3 = load i64, i64* %obj, align 8
  store i64 %3, i64* %parent, align 8
  %4 = load i64, i64* %parent, align 8
  %call1 = call zeroext i1 @BUFFERP(i64 %4)
  %cond = select i1 %call1, i32 1, i32 0
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %offset, align 8
  %5 = load %struct.interval*, %struct.interval** %tree, align 8
  %tobool = icmp ne %struct.interval* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %length.addr, align 8
  %7 = load %struct.interval*, %struct.interval** %tree, align 8
  %cmp = icmp eq %struct.interval* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.interval*, %struct.interval** %tree, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 0
  %9 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i64 [ 0, %cond.true ], [ %9, %cond.false ]
  %cmp4 = icmp eq i64 %6, %cond3
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  call void @set_buffer_intervals(%struct.buffer* %10, %struct.interval* null)
  br label %while.end

if.end.7:                                         ; preds = %cond.end
  %11 = load %struct.interval*, %struct.interval** %tree, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %12 = load %struct.interval*, %struct.interval** %tree, align 8
  %up9 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 4
  %interval = bitcast %union.anon* %up9 to %struct.interval**
  %13 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp10 = icmp eq %struct.interval* %13, null
  br i1 %cmp10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.7
  %14 = load %struct.interval*, %struct.interval** %tree, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 2
  %15 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp12 = icmp eq %struct.interval* %15, null
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %16 = load %struct.interval*, %struct.interval** %tree, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp15 = icmp eq %struct.interval* %17, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true.14
  %18 = load i64, i64* %length.addr, align 8
  %19 = load %struct.interval*, %struct.interval** %tree, align 8
  %total_length18 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 0
  %20 = load i64, i64* %total_length18, align 8
  %sub = sub nsw i64 %20, %18
  store i64 %sub, i64* %total_length18, align 8
  br label %while.end

if.end.19:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %lor.lhs.false
  %21 = load i64, i64* %start.addr, align 8
  %22 = load i64, i64* %offset, align 8
  %23 = load %struct.interval*, %struct.interval** %tree, align 8
  %cmp20 = icmp eq %struct.interval* %23, null
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.end.19
  br label %cond.end.25

cond.false.23:                                    ; preds = %if.end.19
  %24 = load %struct.interval*, %struct.interval** %tree, align 8
  %total_length24 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 0
  %25 = load i64, i64* %total_length24, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.22
  %cond26 = phi i64 [ 0, %cond.true.22 ], [ %25, %cond.false.23 ]
  %add = add nsw i64 %22, %cond26
  %cmp27 = icmp sgt i64 %21, %add
  br i1 %cmp27, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %cond.end.25
  %26 = load i64, i64* %offset, align 8
  %27 = load %struct.interval*, %struct.interval** %tree, align 8
  %cmp30 = icmp eq %struct.interval* %27, null
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.then.29
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.then.29
  %28 = load %struct.interval*, %struct.interval** %tree, align 8
  %total_length34 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length34, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i64 [ 0, %cond.true.32 ], [ %29, %cond.false.33 ]
  %add37 = add nsw i64 %26, %cond36
  store i64 %add37, i64* %start.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.35, %cond.end.25
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end.38
  %30 = load i64, i64* %left_to_delete, align 8
  %cmp39 = icmp sgt i64 %30, 0
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.interval*, %struct.interval** %tree, align 8
  %32 = load i64, i64* %start.addr, align 8
  %33 = load i64, i64* %offset, align 8
  %sub41 = sub nsw i64 %32, %33
  %34 = load i64, i64* %left_to_delete, align 8
  %call42 = call i64 @interval_deletion_adjustment(%struct.interval* %31, i64 %sub41, i64 %34)
  %35 = load i64, i64* %left_to_delete, align 8
  %sub43 = sub nsw i64 %35, %call42
  store i64 %sub43, i64* %left_to_delete, align 8
  %36 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call44 = call %struct.interval* @buffer_intervals(%struct.buffer* %36)
  store %struct.interval* %call44, %struct.interval** %tree, align 8
  %37 = load i64, i64* %left_to_delete, align 8
  %38 = load %struct.interval*, %struct.interval** %tree, align 8
  %total_length45 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length45, align 8
  %cmp46 = icmp eq i64 %37, %39
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.body
  %40 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  call void @set_buffer_intervals(%struct.buffer* %40, %struct.interval* null)
  br label %while.end

if.end.49:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then.6, %if.then.17, %if.then.48, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.interval* @merge_interval_left(%struct.interval* %i) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %i.addr = alloca %struct.interval*, align 8
  %absorb = alloca i64, align 8
  %predecessor = alloca %struct.interval*, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp = icmp eq %struct.interval* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp1 = icmp eq %struct.interval* %1, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 0
  %3 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 0, %cond.true.2 ], [ %3, %cond.false.3 ]
  %4 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp4 = icmp eq %struct.interval* %5, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right7 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 3
  %7 = load %struct.interval*, %struct.interval** %right7, align 8
  %total_length8 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 0
  %8 = load i64, i64* %total_length8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i64 [ 0, %cond.true.5 ], [ %8, %cond.false.6 ]
  %sub = sub nsw i64 %cond, %cond10
  %9 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 2
  %10 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp11 = icmp eq %struct.interval* %10, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  br label %cond.end.16

cond.false.13:                                    ; preds = %cond.end.9
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left14 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i64, i64* %total_length15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i64 [ 0, %cond.true.12 ], [ %13, %cond.false.13 ]
  %sub18 = sub nsw i64 %sub, %cond17
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.16, %cond.true
  %cond20 = phi i64 [ 0, %cond.true ], [ %sub18, %cond.end.16 ]
  store i64 %cond20, i64* %absorb, align 8
  %14 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left21 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 2
  %15 = load %struct.interval*, %struct.interval** %left21, align 8
  %cmp22 = icmp eq %struct.interval* %15, null
  br i1 %cmp22, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.19
  %16 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left23 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 2
  %17 = load %struct.interval*, %struct.interval** %left23, align 8
  store %struct.interval* %17, %struct.interval** %predecessor, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %18 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %right24 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 3
  %19 = load %struct.interval*, %struct.interval** %right24, align 8
  %cmp25 = icmp eq %struct.interval* %19, null
  %lnot = xor i1 %cmp25, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i64, i64* %absorb, align 8
  %21 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %total_length26 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 0
  %22 = load i64, i64* %total_length26, align 8
  %add = add nsw i64 %22, %20
  store i64 %add, i64* %total_length26, align 8
  %23 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %right27 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 3
  %24 = load %struct.interval*, %struct.interval** %right27, align 8
  store %struct.interval* %24, %struct.interval** %predecessor, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i64, i64* %absorb, align 8
  %26 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %total_length28 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 0
  %27 = load i64, i64* %total_length28, align 8
  %add29 = add nsw i64 %27, %25
  store i64 %add29, i64* %total_length28, align 8
  %28 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @delete_interval(%struct.interval* %28)
  %29 = load %struct.interval*, %struct.interval** %predecessor, align 8
  store %struct.interval* %29, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %cond.end.19
  %30 = load i64, i64* %absorb, align 8
  %31 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length30 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 0
  %32 = load i64, i64* %total_length30, align 8
  %sub31 = sub nsw i64 %32, %30
  store i64 %sub31, i64* %total_length30, align 8
  %33 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %33, %struct.interval** %predecessor, align 8
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.50, %if.end
  %34 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.32
  %35 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %36 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp33 = icmp eq %struct.interval* %36, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.32
  %37 = phi i1 [ true, %while.cond.32 ], [ %cmp33, %lor.rhs ]
  %lnot34 = xor i1 %37, true
  br i1 %lnot34, label %while.body.35, label %while.end.55

while.body.35:                                    ; preds = %lor.end
  %38 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up_obj36 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 5
  %bf.load37 = load i8, i8* %up_obj36, align 8
  %bf.clear38 = and i8 %bf.load37, 1
  %bf.cast39 = trunc i8 %bf.clear38 to i1
  br i1 %bf.cast39, label %if.end.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.35
  %39 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up40 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 4
  %interval41 = bitcast %union.anon* %up40 to %struct.interval**
  %40 = load %struct.interval*, %struct.interval** %interval41, align 8
  %cmp42 = icmp eq %struct.interval* %40, null
  br i1 %cmp42, label %if.end.50, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %41 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up43 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 4
  %interval44 = bitcast %union.anon* %up43 to %struct.interval**
  %42 = load %struct.interval*, %struct.interval** %interval44, align 8
  %right45 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 3
  %43 = load %struct.interval*, %struct.interval** %right45, align 8
  %44 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %cmp46 = icmp eq %struct.interval* %43, %44
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %land.lhs.true
  %45 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up48 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 4
  %interval49 = bitcast %union.anon* %up48 to %struct.interval**
  %46 = load %struct.interval*, %struct.interval** %interval49, align 8
  store %struct.interval* %46, %struct.interval** %predecessor, align 8
  %47 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @delete_interval(%struct.interval* %47)
  %48 = load %struct.interval*, %struct.interval** %predecessor, align 8
  store %struct.interval* %48, %struct.interval** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true, %lor.lhs.false, %while.body.35
  %49 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %up51 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 4
  %interval52 = bitcast %union.anon* %up51 to %struct.interval**
  %50 = load %struct.interval*, %struct.interval** %interval52, align 8
  store %struct.interval* %50, %struct.interval** %predecessor, align 8
  %51 = load i64, i64* %absorb, align 8
  %52 = load %struct.interval*, %struct.interval** %predecessor, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 0
  %53 = load i64, i64* %total_length53, align 8
  %sub54 = sub nsw i64 %53, %51
  store i64 %sub54, i64* %total_length53, align 8
  br label %while.cond.32

while.end.55:                                     ; preds = %lor.end
  call void @emacs_abort() #4
  unreachable

return:                                           ; preds = %if.then.47, %while.end
  %54 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %54
}

; Function Attrs: nounwind uwtable
define internal void @delete_interval(%struct.interval* %i) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %parent = alloca %struct.interval*, align 8
  %amt = alloca i64, align 8
  %owner = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp = icmp eq %struct.interval* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp1 = icmp eq %struct.interval* %1, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 0
  %3 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 0, %cond.true.2 ], [ %3, %cond.false.3 ]
  %4 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp4 = icmp eq %struct.interval* %5, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right7 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 3
  %7 = load %struct.interval*, %struct.interval** %right7, align 8
  %total_length8 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 0
  %8 = load i64, i64* %total_length8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i64 [ 0, %cond.true.5 ], [ %8, %cond.false.6 ]
  %sub = sub nsw i64 %cond, %cond10
  %9 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 2
  %10 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp11 = icmp eq %struct.interval* %10, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  br label %cond.end.16

cond.false.13:                                    ; preds = %cond.end.9
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left14 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i64, i64* %total_length15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i64 [ 0, %cond.true.12 ], [ %13, %cond.false.13 ]
  %sub18 = sub nsw i64 %sub, %cond17
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.16, %cond.true
  %cond20 = phi i64 [ 0, %cond.true ], [ %sub18, %cond.end.16 ]
  store i64 %cond20, i64* %amt, align 8
  %14 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %15 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %16 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp21 = icmp eq %struct.interval* %16, null
  br i1 %cmp21, label %if.then, label %if.end.32

if.then:                                          ; preds = %lor.lhs.false, %cond.end.19
  %17 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up22 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 4
  %obj = bitcast %union.anon* %up22 to i64*
  %18 = load i64, i64* %obj, align 8
  store i64 %18, i64* %owner, align 8
  %19 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call = call %struct.interval* @delete_node(%struct.interval* %19)
  store %struct.interval* %call, %struct.interval** %parent, align 8
  %20 = load %struct.interval*, %struct.interval** %parent, align 8
  %tobool = icmp ne %struct.interval* %20, null
  br i1 %tobool, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %21 = load %struct.interval*, %struct.interval** %parent, align 8
  %22 = load i64, i64* %owner, align 8
  call void @set_interval_object(%struct.interval* %21, i64 %22)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  %23 = load i64, i64* %owner, align 8
  %call24 = call zeroext i1 @BUFFERP(i64 %23)
  br i1 %call24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end
  %24 = load i64, i64* %owner, align 8
  %call26 = call %struct.buffer* @XBUFFER(i64 %24)
  %25 = load %struct.interval*, %struct.interval** %parent, align 8
  call void @set_buffer_intervals(%struct.buffer* %call26, %struct.interval* %25)
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %26 = load i64, i64* %owner, align 8
  %call27 = call zeroext i1 @STRINGP(i64 %26)
  br i1 %call27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else
  %27 = load i64, i64* %owner, align 8
  %28 = load %struct.interval*, %struct.interval** %parent, align 8
  call void @set_string_intervals(i64 %27, %struct.interval* %28)
  br label %if.end.30

if.else.29:                                       ; preds = %if.else
  call void @emacs_abort() #4
  unreachable

if.end.30:                                        ; preds = %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.25
  br label %if.end.61

if.end.32:                                        ; preds = %lor.lhs.false
  %29 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up33 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 4
  %interval34 = bitcast %union.anon* %up33 to %struct.interval**
  %30 = load %struct.interval*, %struct.interval** %interval34, align 8
  store %struct.interval* %30, %struct.interval** %parent, align 8
  %31 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj35 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 5
  %bf.load36 = load i8, i8* %up_obj35, align 8
  %bf.clear37 = and i8 %bf.load36, 1
  %bf.cast38 = trunc i8 %bf.clear37 to i1
  br i1 %bf.cast38, label %if.else.54, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.32
  %32 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up40 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 4
  %interval41 = bitcast %union.anon* %up40 to %struct.interval**
  %33 = load %struct.interval*, %struct.interval** %interval41, align 8
  %cmp42 = icmp eq %struct.interval* %33, null
  br i1 %cmp42, label %if.else.54, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.39
  %34 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up43 = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 4
  %interval44 = bitcast %union.anon* %up43 to %struct.interval**
  %35 = load %struct.interval*, %struct.interval** %interval44, align 8
  %left45 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 2
  %36 = load %struct.interval*, %struct.interval** %left45, align 8
  %37 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp46 = icmp eq %struct.interval* %36, %37
  br i1 %cmp46, label %if.then.47, label %if.else.54

if.then.47:                                       ; preds = %land.lhs.true
  %38 = load %struct.interval*, %struct.interval** %parent, align 8
  %39 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call48 = call %struct.interval* @delete_node(%struct.interval* %39)
  call void @set_interval_left(%struct.interval* %38, %struct.interval* %call48)
  %40 = load %struct.interval*, %struct.interval** %parent, align 8
  %left49 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 2
  %41 = load %struct.interval*, %struct.interval** %left49, align 8
  %tobool50 = icmp ne %struct.interval* %41, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.47
  %42 = load %struct.interval*, %struct.interval** %parent, align 8
  %left52 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 2
  %43 = load %struct.interval*, %struct.interval** %left52, align 8
  %44 = load %struct.interval*, %struct.interval** %parent, align 8
  call void @set_interval_parent(%struct.interval* %43, %struct.interval* %44)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.47
  br label %if.end.61

if.else.54:                                       ; preds = %land.lhs.true, %lor.lhs.false.39, %if.end.32
  %45 = load %struct.interval*, %struct.interval** %parent, align 8
  %46 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call55 = call %struct.interval* @delete_node(%struct.interval* %46)
  call void @set_interval_right(%struct.interval* %45, %struct.interval* %call55)
  %47 = load %struct.interval*, %struct.interval** %parent, align 8
  %right56 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 3
  %48 = load %struct.interval*, %struct.interval** %right56, align 8
  %tobool57 = icmp ne %struct.interval* %48, null
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.else.54
  %49 = load %struct.interval*, %struct.interval** %parent, align 8
  %right59 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 3
  %50 = load %struct.interval*, %struct.interval** %right59, align 8
  %51 = load %struct.interval*, %struct.interval** %parent, align 8
  call void @set_interval_parent(%struct.interval* %50, %struct.interval* %51)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.31, %if.end.60, %if.end.53
  ret void
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define void @graft_intervals_into_buffer(%struct.interval* %source, i64 %position, i64 %length, %struct.buffer* %buffer, i1 zeroext %inherit) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %position.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %buffer.addr = alloca %struct.buffer*, align 8
  %inherit.addr = alloca i8, align 1
  %tree = alloca %struct.interval*, align 8
  %under = alloca %struct.interval*, align 8
  %over = alloca %struct.interval*, align 8
  %this = alloca %struct.interval*, align 8
  %over_used = alloca i64, align 8
  %buf = alloca i64, align 8
  %buf14 = alloca i64, align 8
  %buf21 = alloca i64, align 8
  %end_unchanged = alloca %struct.interval*, align 8
  %prev = alloca %struct.interval*, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  store %struct.interval* %call, %struct.interval** %tree, align 8
  %1 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %inherit.addr, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.interval*, %struct.interval** %tree, align 8
  %tobool2 = icmp ne %struct.interval* %3, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load i64, i64* %length.addr, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true.3
  %5 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %6 = bitcast %struct.buffer* %5 to i8*
  %call5 = call i64 @make_lisp_ptr(i8* %6, i32 5)
  store i64 %call5, i64* %buf, align 8
  %7 = load i64, i64* %position.addr, align 8
  %shl = shl i64 %7, 2
  %add = add i64 %shl, 2
  %8 = load i64, i64* %position.addr, align 8
  %9 = load i64, i64* %length.addr, align 8
  %add6 = add nsw i64 %8, %9
  %shl7 = shl i64 %add6, 2
  %add8 = add i64 %shl7, 2
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %10 = load i64, i64* %buf, align 8
  %11 = load %struct.interval*, %struct.interval** %tree, align 8
  %12 = load i64, i64* %position.addr, align 8
  %call10 = call %struct.interval* @find_interval(%struct.interval* %11, i64 %12)
  call void @set_text_properties_1(i64 %add, i64 %add8, i64 %call9, i64 %10, %struct.interval* %call10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true.3, %land.lhs.true, %if.then
  %13 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  call void @buffer_balance_intervals(%struct.buffer* %13)
  br label %return

if.end.11:                                        ; preds = %entry
  %14 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 2
  %16 = load i64, i64* %z, align 8
  %sub = sub nsw i64 %16, 1
  %17 = load i64, i64* %length.addr, align 8
  %cmp12 = icmp eq i64 %sub, %17
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %19 = bitcast %struct.buffer* %18 to i8*
  %call15 = call i64 @make_lisp_ptr(i8* %19, i32 5)
  store i64 %call15, i64* %buf14, align 8
  %20 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %21 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %22 = load i64, i64* %buf14, align 8
  %call16 = call %struct.interval* @reproduce_tree_obj(%struct.interval* %21, i64 %22)
  call void @set_buffer_intervals(%struct.buffer* %20, %struct.interval* %call16)
  %23 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call17 = call %struct.interval* @buffer_intervals(%struct.buffer* %23)
  %position18 = getelementptr inbounds %struct.interval, %struct.interval* %call17, i32 0, i32 1
  store i64 1, i64* %position18, align 8
  br label %return

if.else:                                          ; preds = %if.end.11
  %24 = load %struct.interval*, %struct.interval** %tree, align 8
  %tobool19 = icmp ne %struct.interval* %24, null
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %25 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %26 = bitcast %struct.buffer* %25 to i8*
  %call22 = call i64 @make_lisp_ptr(i8* %26, i32 5)
  store i64 %call22, i64* %buf21, align 8
  %27 = load i64, i64* %buf21, align 8
  %call23 = call %struct.interval* @create_root_interval(i64 %27)
  store %struct.interval* %call23, %struct.interval** %tree, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  %28 = load %struct.interval*, %struct.interval** %tree, align 8
  %29 = load i64, i64* %position.addr, align 8
  %call26 = call %struct.interval* @find_interval(%struct.interval* %28, i64 %29)
  store %struct.interval* %call26, %struct.interval** %under, align 8
  store %struct.interval* %call26, %struct.interval** %this, align 8
  %30 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %31 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %call27 = call i32 @interval_start_pos(%struct.interval* %31)
  %conv = sext i32 %call27 to i64
  %call28 = call %struct.interval* @find_interval(%struct.interval* %30, i64 %conv)
  store %struct.interval* %call28, %struct.interval** %over, align 8
  %32 = load i64, i64* %position.addr, align 8
  %33 = load %struct.interval*, %struct.interval** %under, align 8
  %position29 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 1
  %34 = load i64, i64* %position29, align 8
  %cmp30 = icmp sgt i64 %32, %34
  br i1 %cmp30, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.end.25
  %35 = load %struct.interval*, %struct.interval** %this, align 8
  %36 = load i64, i64* %position.addr, align 8
  %37 = load %struct.interval*, %struct.interval** %under, align 8
  %position33 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 1
  %38 = load i64, i64* %position33, align 8
  %sub34 = sub nsw i64 %36, %38
  %call35 = call %struct.interval* @split_interval_left(%struct.interval* %35, i64 %sub34)
  store %struct.interval* %call35, %struct.interval** %end_unchanged, align 8
  %39 = load %struct.interval*, %struct.interval** %under, align 8
  %40 = load %struct.interval*, %struct.interval** %end_unchanged, align 8
  call void @copy_properties(%struct.interval* %39, %struct.interval* %40)
  %41 = load i64, i64* %position.addr, align 8
  %42 = load %struct.interval*, %struct.interval** %under, align 8
  %position36 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 1
  store i64 %41, i64* %position36, align 8
  br label %if.end.39

if.else.37:                                       ; preds = %if.end.25
  %43 = load %struct.interval*, %struct.interval** %under, align 8
  %call38 = call %struct.interval* @previous_interval(%struct.interval* %43)
  store %struct.interval* %call38, %struct.interval** %prev, align 8
  %44 = load %struct.interval*, %struct.interval** %prev, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.32
  store i64 0, i64* %over_used, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.251, %if.end.39
  %45 = load %struct.interval*, %struct.interval** %over, align 8
  %tobool40 = icmp ne %struct.interval* %45, null
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp41 = icmp eq %struct.interval* %46, null
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.65

cond.false:                                       ; preds = %while.body
  %47 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp43 = icmp eq %struct.interval* %47, null
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false
  %48 = load %struct.interval*, %struct.interval** %over, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 0
  %49 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.45
  %cond = phi i64 [ 0, %cond.true.45 ], [ %49, %cond.false.46 ]
  %50 = load %struct.interval*, %struct.interval** %over, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 3
  %51 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp47 = icmp eq %struct.interval* %51, null
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end
  br label %cond.end.53

cond.false.50:                                    ; preds = %cond.end
  %52 = load %struct.interval*, %struct.interval** %over, align 8
  %right51 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 3
  %53 = load %struct.interval*, %struct.interval** %right51, align 8
  %total_length52 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 0
  %54 = load i64, i64* %total_length52, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.50, %cond.true.49
  %cond54 = phi i64 [ 0, %cond.true.49 ], [ %54, %cond.false.50 ]
  %sub55 = sub nsw i64 %cond, %cond54
  %55 = load %struct.interval*, %struct.interval** %over, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 2
  %56 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp56 = icmp eq %struct.interval* %56, null
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.53
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.end.53
  %57 = load %struct.interval*, %struct.interval** %over, align 8
  %left60 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 2
  %58 = load %struct.interval*, %struct.interval** %left60, align 8
  %total_length61 = getelementptr inbounds %struct.interval, %struct.interval* %58, i32 0, i32 0
  %59 = load i64, i64* %total_length61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i64 [ 0, %cond.true.58 ], [ %59, %cond.false.59 ]
  %sub64 = sub nsw i64 %sub55, %cond63
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.62, %cond.true
  %cond66 = phi i64 [ 0, %cond.true ], [ %sub64, %cond.end.62 ]
  %60 = load i64, i64* %over_used, align 8
  %sub67 = sub nsw i64 %cond66, %60
  %61 = load %struct.interval*, %struct.interval** %under, align 8
  %cmp68 = icmp eq %struct.interval* %61, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.65
  br label %cond.end.99

cond.false.71:                                    ; preds = %cond.end.65
  %62 = load %struct.interval*, %struct.interval** %under, align 8
  %cmp72 = icmp eq %struct.interval* %62, null
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.71
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.false.71
  %63 = load %struct.interval*, %struct.interval** %under, align 8
  %total_length76 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 0
  %64 = load i64, i64* %total_length76, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi i64 [ 0, %cond.true.74 ], [ %64, %cond.false.75 ]
  %65 = load %struct.interval*, %struct.interval** %under, align 8
  %right79 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 3
  %66 = load %struct.interval*, %struct.interval** %right79, align 8
  %cmp80 = icmp eq %struct.interval* %66, null
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.77
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.end.77
  %67 = load %struct.interval*, %struct.interval** %under, align 8
  %right84 = getelementptr inbounds %struct.interval, %struct.interval* %67, i32 0, i32 3
  %68 = load %struct.interval*, %struct.interval** %right84, align 8
  %total_length85 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 0
  %69 = load i64, i64* %total_length85, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i64 [ 0, %cond.true.82 ], [ %69, %cond.false.83 ]
  %sub88 = sub nsw i64 %cond78, %cond87
  %70 = load %struct.interval*, %struct.interval** %under, align 8
  %left89 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 2
  %71 = load %struct.interval*, %struct.interval** %left89, align 8
  %cmp90 = icmp eq %struct.interval* %71, null
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.86
  br label %cond.end.96

cond.false.93:                                    ; preds = %cond.end.86
  %72 = load %struct.interval*, %struct.interval** %under, align 8
  %left94 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 2
  %73 = load %struct.interval*, %struct.interval** %left94, align 8
  %total_length95 = getelementptr inbounds %struct.interval, %struct.interval* %73, i32 0, i32 0
  %74 = load i64, i64* %total_length95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.92
  %cond97 = phi i64 [ 0, %cond.true.92 ], [ %74, %cond.false.93 ]
  %sub98 = sub nsw i64 %sub88, %cond97
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.96, %cond.true.70
  %cond100 = phi i64 [ 0, %cond.true.70 ], [ %sub98, %cond.end.96 ]
  %cmp101 = icmp slt i64 %sub67, %cond100
  br i1 %cmp101, label %if.then.103, label %if.else.139

if.then.103:                                      ; preds = %cond.end.99
  %75 = load %struct.interval*, %struct.interval** %under, align 8
  %76 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp104 = icmp eq %struct.interval* %76, null
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %if.then.103
  br label %cond.end.135

cond.false.107:                                   ; preds = %if.then.103
  %77 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp108 = icmp eq %struct.interval* %77, null
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.false.107
  br label %cond.end.113

cond.false.111:                                   ; preds = %cond.false.107
  %78 = load %struct.interval*, %struct.interval** %over, align 8
  %total_length112 = getelementptr inbounds %struct.interval, %struct.interval* %78, i32 0, i32 0
  %79 = load i64, i64* %total_length112, align 8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.110
  %cond114 = phi i64 [ 0, %cond.true.110 ], [ %79, %cond.false.111 ]
  %80 = load %struct.interval*, %struct.interval** %over, align 8
  %right115 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 3
  %81 = load %struct.interval*, %struct.interval** %right115, align 8
  %cmp116 = icmp eq %struct.interval* %81, null
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.end.113
  br label %cond.end.122

cond.false.119:                                   ; preds = %cond.end.113
  %82 = load %struct.interval*, %struct.interval** %over, align 8
  %right120 = getelementptr inbounds %struct.interval, %struct.interval* %82, i32 0, i32 3
  %83 = load %struct.interval*, %struct.interval** %right120, align 8
  %total_length121 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 0
  %84 = load i64, i64* %total_length121, align 8
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.119, %cond.true.118
  %cond123 = phi i64 [ 0, %cond.true.118 ], [ %84, %cond.false.119 ]
  %sub124 = sub nsw i64 %cond114, %cond123
  %85 = load %struct.interval*, %struct.interval** %over, align 8
  %left125 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 2
  %86 = load %struct.interval*, %struct.interval** %left125, align 8
  %cmp126 = icmp eq %struct.interval* %86, null
  br i1 %cmp126, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.end.122
  br label %cond.end.132

cond.false.129:                                   ; preds = %cond.end.122
  %87 = load %struct.interval*, %struct.interval** %over, align 8
  %left130 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 2
  %88 = load %struct.interval*, %struct.interval** %left130, align 8
  %total_length131 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 0
  %89 = load i64, i64* %total_length131, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.129, %cond.true.128
  %cond133 = phi i64 [ 0, %cond.true.128 ], [ %89, %cond.false.129 ]
  %sub134 = sub nsw i64 %sub124, %cond133
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.132, %cond.true.106
  %cond136 = phi i64 [ 0, %cond.true.106 ], [ %sub134, %cond.end.132 ]
  %90 = load i64, i64* %over_used, align 8
  %sub137 = sub nsw i64 %cond136, %90
  %call138 = call %struct.interval* @split_interval_left(%struct.interval* %75, i64 %sub137)
  store %struct.interval* %call138, %struct.interval** %this, align 8
  %91 = load %struct.interval*, %struct.interval** %under, align 8
  %92 = load %struct.interval*, %struct.interval** %this, align 8
  call void @copy_properties(%struct.interval* %91, %struct.interval* %92)
  br label %if.end.140

if.else.139:                                      ; preds = %cond.end.99
  %93 = load %struct.interval*, %struct.interval** %under, align 8
  store %struct.interval* %93, %struct.interval** %this, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %cond.end.135
  %94 = load i8, i8* %inherit.addr, align 1
  %tobool141 = trunc i8 %94 to i1
  br i1 %tobool141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.end.140
  %95 = load %struct.interval*, %struct.interval** %over, align 8
  %96 = load %struct.interval*, %struct.interval** %this, align 8
  call void @merge_properties(%struct.interval* %95, %struct.interval* %96)
  br label %if.end.144

if.else.143:                                      ; preds = %if.end.140
  %97 = load %struct.interval*, %struct.interval** %over, align 8
  %98 = load %struct.interval*, %struct.interval** %this, align 8
  call void @copy_properties(%struct.interval* %97, %struct.interval* %98)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  %99 = load %struct.interval*, %struct.interval** %this, align 8
  %cmp145 = icmp eq %struct.interval* %99, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %if.end.144
  br label %cond.end.176

cond.false.148:                                   ; preds = %if.end.144
  %100 = load %struct.interval*, %struct.interval** %this, align 8
  %cmp149 = icmp eq %struct.interval* %100, null
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.false.148
  br label %cond.end.154

cond.false.152:                                   ; preds = %cond.false.148
  %101 = load %struct.interval*, %struct.interval** %this, align 8
  %total_length153 = getelementptr inbounds %struct.interval, %struct.interval* %101, i32 0, i32 0
  %102 = load i64, i64* %total_length153, align 8
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.151
  %cond155 = phi i64 [ 0, %cond.true.151 ], [ %102, %cond.false.152 ]
  %103 = load %struct.interval*, %struct.interval** %this, align 8
  %right156 = getelementptr inbounds %struct.interval, %struct.interval* %103, i32 0, i32 3
  %104 = load %struct.interval*, %struct.interval** %right156, align 8
  %cmp157 = icmp eq %struct.interval* %104, null
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.end.154
  br label %cond.end.163

cond.false.160:                                   ; preds = %cond.end.154
  %105 = load %struct.interval*, %struct.interval** %this, align 8
  %right161 = getelementptr inbounds %struct.interval, %struct.interval* %105, i32 0, i32 3
  %106 = load %struct.interval*, %struct.interval** %right161, align 8
  %total_length162 = getelementptr inbounds %struct.interval, %struct.interval* %106, i32 0, i32 0
  %107 = load i64, i64* %total_length162, align 8
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.160, %cond.true.159
  %cond164 = phi i64 [ 0, %cond.true.159 ], [ %107, %cond.false.160 ]
  %sub165 = sub nsw i64 %cond155, %cond164
  %108 = load %struct.interval*, %struct.interval** %this, align 8
  %left166 = getelementptr inbounds %struct.interval, %struct.interval* %108, i32 0, i32 2
  %109 = load %struct.interval*, %struct.interval** %left166, align 8
  %cmp167 = icmp eq %struct.interval* %109, null
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.end.163
  br label %cond.end.173

cond.false.170:                                   ; preds = %cond.end.163
  %110 = load %struct.interval*, %struct.interval** %this, align 8
  %left171 = getelementptr inbounds %struct.interval, %struct.interval* %110, i32 0, i32 2
  %111 = load %struct.interval*, %struct.interval** %left171, align 8
  %total_length172 = getelementptr inbounds %struct.interval, %struct.interval* %111, i32 0, i32 0
  %112 = load i64, i64* %total_length172, align 8
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.170, %cond.true.169
  %cond174 = phi i64 [ 0, %cond.true.169 ], [ %112, %cond.false.170 ]
  %sub175 = sub nsw i64 %sub165, %cond174
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.173, %cond.true.147
  %cond177 = phi i64 [ 0, %cond.true.147 ], [ %sub175, %cond.end.173 ]
  %113 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp178 = icmp eq %struct.interval* %113, null
  br i1 %cmp178, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %cond.end.176
  br label %cond.end.209

cond.false.181:                                   ; preds = %cond.end.176
  %114 = load %struct.interval*, %struct.interval** %over, align 8
  %cmp182 = icmp eq %struct.interval* %114, null
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.false.181
  br label %cond.end.187

cond.false.185:                                   ; preds = %cond.false.181
  %115 = load %struct.interval*, %struct.interval** %over, align 8
  %total_length186 = getelementptr inbounds %struct.interval, %struct.interval* %115, i32 0, i32 0
  %116 = load i64, i64* %total_length186, align 8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.185, %cond.true.184
  %cond188 = phi i64 [ 0, %cond.true.184 ], [ %116, %cond.false.185 ]
  %117 = load %struct.interval*, %struct.interval** %over, align 8
  %right189 = getelementptr inbounds %struct.interval, %struct.interval* %117, i32 0, i32 3
  %118 = load %struct.interval*, %struct.interval** %right189, align 8
  %cmp190 = icmp eq %struct.interval* %118, null
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %cond.end.187
  br label %cond.end.196

cond.false.193:                                   ; preds = %cond.end.187
  %119 = load %struct.interval*, %struct.interval** %over, align 8
  %right194 = getelementptr inbounds %struct.interval, %struct.interval* %119, i32 0, i32 3
  %120 = load %struct.interval*, %struct.interval** %right194, align 8
  %total_length195 = getelementptr inbounds %struct.interval, %struct.interval* %120, i32 0, i32 0
  %121 = load i64, i64* %total_length195, align 8
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.true.192
  %cond197 = phi i64 [ 0, %cond.true.192 ], [ %121, %cond.false.193 ]
  %sub198 = sub nsw i64 %cond188, %cond197
  %122 = load %struct.interval*, %struct.interval** %over, align 8
  %left199 = getelementptr inbounds %struct.interval, %struct.interval* %122, i32 0, i32 2
  %123 = load %struct.interval*, %struct.interval** %left199, align 8
  %cmp200 = icmp eq %struct.interval* %123, null
  br i1 %cmp200, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %cond.end.196
  br label %cond.end.206

cond.false.203:                                   ; preds = %cond.end.196
  %124 = load %struct.interval*, %struct.interval** %over, align 8
  %left204 = getelementptr inbounds %struct.interval, %struct.interval* %124, i32 0, i32 2
  %125 = load %struct.interval*, %struct.interval** %left204, align 8
  %total_length205 = getelementptr inbounds %struct.interval, %struct.interval* %125, i32 0, i32 0
  %126 = load i64, i64* %total_length205, align 8
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.203, %cond.true.202
  %cond207 = phi i64 [ 0, %cond.true.202 ], [ %126, %cond.false.203 ]
  %sub208 = sub nsw i64 %sub198, %cond207
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.end.206, %cond.true.180
  %cond210 = phi i64 [ 0, %cond.true.180 ], [ %sub208, %cond.end.206 ]
  %127 = load i64, i64* %over_used, align 8
  %sub211 = sub nsw i64 %cond210, %127
  %cmp212 = icmp eq i64 %cond177, %sub211
  br i1 %cmp212, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %cond.end.209
  %128 = load %struct.interval*, %struct.interval** %over, align 8
  %call215 = call %struct.interval* @next_interval(%struct.interval* %128)
  store %struct.interval* %call215, %struct.interval** %over, align 8
  store i64 0, i64* %over_used, align 8
  br label %if.end.251

if.else.216:                                      ; preds = %cond.end.209
  %129 = load %struct.interval*, %struct.interval** %this, align 8
  %cmp217 = icmp eq %struct.interval* %129, null
  br i1 %cmp217, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %if.else.216
  br label %cond.end.248

cond.false.220:                                   ; preds = %if.else.216
  %130 = load %struct.interval*, %struct.interval** %this, align 8
  %cmp221 = icmp eq %struct.interval* %130, null
  br i1 %cmp221, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %cond.false.220
  br label %cond.end.226

cond.false.224:                                   ; preds = %cond.false.220
  %131 = load %struct.interval*, %struct.interval** %this, align 8
  %total_length225 = getelementptr inbounds %struct.interval, %struct.interval* %131, i32 0, i32 0
  %132 = load i64, i64* %total_length225, align 8
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.224, %cond.true.223
  %cond227 = phi i64 [ 0, %cond.true.223 ], [ %132, %cond.false.224 ]
  %133 = load %struct.interval*, %struct.interval** %this, align 8
  %right228 = getelementptr inbounds %struct.interval, %struct.interval* %133, i32 0, i32 3
  %134 = load %struct.interval*, %struct.interval** %right228, align 8
  %cmp229 = icmp eq %struct.interval* %134, null
  br i1 %cmp229, label %cond.true.231, label %cond.false.232

cond.true.231:                                    ; preds = %cond.end.226
  br label %cond.end.235

cond.false.232:                                   ; preds = %cond.end.226
  %135 = load %struct.interval*, %struct.interval** %this, align 8
  %right233 = getelementptr inbounds %struct.interval, %struct.interval* %135, i32 0, i32 3
  %136 = load %struct.interval*, %struct.interval** %right233, align 8
  %total_length234 = getelementptr inbounds %struct.interval, %struct.interval* %136, i32 0, i32 0
  %137 = load i64, i64* %total_length234, align 8
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.232, %cond.true.231
  %cond236 = phi i64 [ 0, %cond.true.231 ], [ %137, %cond.false.232 ]
  %sub237 = sub nsw i64 %cond227, %cond236
  %138 = load %struct.interval*, %struct.interval** %this, align 8
  %left238 = getelementptr inbounds %struct.interval, %struct.interval* %138, i32 0, i32 2
  %139 = load %struct.interval*, %struct.interval** %left238, align 8
  %cmp239 = icmp eq %struct.interval* %139, null
  br i1 %cmp239, label %cond.true.241, label %cond.false.242

cond.true.241:                                    ; preds = %cond.end.235
  br label %cond.end.245

cond.false.242:                                   ; preds = %cond.end.235
  %140 = load %struct.interval*, %struct.interval** %this, align 8
  %left243 = getelementptr inbounds %struct.interval, %struct.interval* %140, i32 0, i32 2
  %141 = load %struct.interval*, %struct.interval** %left243, align 8
  %total_length244 = getelementptr inbounds %struct.interval, %struct.interval* %141, i32 0, i32 0
  %142 = load i64, i64* %total_length244, align 8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.242, %cond.true.241
  %cond246 = phi i64 [ 0, %cond.true.241 ], [ %142, %cond.false.242 ]
  %sub247 = sub nsw i64 %sub237, %cond246
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.245, %cond.true.219
  %cond249 = phi i64 [ 0, %cond.true.219 ], [ %sub247, %cond.end.245 ]
  %143 = load i64, i64* %over_used, align 8
  %add250 = add nsw i64 %143, %cond249
  store i64 %add250, i64* %over_used, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %cond.end.248, %if.then.214
  %144 = load %struct.interval*, %struct.interval** %this, align 8
  %call252 = call %struct.interval* @next_interval(%struct.interval* %144)
  store %struct.interval* %call252, %struct.interval** %under, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %145 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  call void @buffer_balance_intervals(%struct.buffer* %145)
  br label %return

return:                                           ; preds = %while.end, %if.then.13, %if.end
  ret void
}

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @set_text_properties_1(i64, i64, i64, i64, %struct.interval*) #1

; Function Attrs: nounwind uwtable
define internal void @buffer_balance_intervals(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %i = alloca %struct.interval*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  store %struct.interval* %call, %struct.interval** %i, align 8
  %1 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %3 = load %struct.interval*, %struct.interval** %i, align 8
  %call1 = call %struct.interval* @balance_an_interval(%struct.interval* %3)
  call void @set_buffer_intervals(%struct.buffer* %2, %struct.interval* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @reproduce_tree_obj(%struct.interval* %source, i64 %parent) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %parent.addr = alloca i64, align 8
  %target = alloca %struct.interval*, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  store i64 %parent, i64* %parent.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %call = call %struct.interval* @reproduce_interval(%struct.interval* %0)
  store %struct.interval* %call, %struct.interval** %target, align 8
  %1 = load %struct.interval*, %struct.interval** %target, align 8
  %2 = load i64, i64* %parent.addr, align 8
  call void @set_interval_object(%struct.interval* %1, i64 %2)
  %3 = load %struct.interval*, %struct.interval** %target, align 8
  ret %struct.interval* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @interval_start_pos(%struct.interval* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca %struct.interval*, align 8
  %parent = alloca i64, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 4
  %obj = bitcast %union.anon* %up to i64*
  %3 = load i64, i64* %obj, align 8
  store i64 %3, i64* %parent, align 8
  %4 = load i64, i64* %parent, align 8
  %call = call zeroext i1 @BUFFERP(i64 %4)
  br i1 %call, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end.2
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then.1, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @merge_properties(%struct.interval* %source, %struct.interval* %target) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %target.addr = alloca %struct.interval*, align 8
  %o = alloca i64, align 8
  %sym = alloca i64, align 8
  %val = alloca i64, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  store %struct.interval* %target, %struct.interval** %target.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 6
  %2 = load i64, i64* %plist, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %tobool1 = icmp ne %struct.interval* %3, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %plist3 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 6
  %5 = load i64, i64* %plist3, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %land.lhs.true
  br label %while.end.81

if.end:                                           ; preds = %lor.lhs.false.2, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %write_protect = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 5
  %bf.load = load i8, i8* %write_protect, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %do.body
  %7 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %write_protect7 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 5
  %bf.load8 = load i8, i8* %write_protect7, align 8
  %bf.clear9 = and i8 %bf.load8, -5
  %bf.set = or i8 %bf.clear9, 4
  store i8 %bf.set, i8* %write_protect7, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %do.body
  %8 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %visible = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 5
  %bf.load11 = load i8, i8* %visible, align 8
  %bf.lshr12 = lshr i8 %bf.load11, 3
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = trunc i8 %bf.clear13 to i1
  br i1 %bf.cast14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.10
  %9 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %visible16 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 5
  %bf.load17 = load i8, i8* %visible16, align 8
  %bf.clear18 = and i8 %bf.load17, -9
  %bf.set19 = or i8 %bf.clear18, 8
  store i8 %bf.set19, i8* %visible16, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end.10
  %10 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %front_sticky = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 5
  %bf.load21 = load i8, i8* %front_sticky, align 8
  %bf.lshr22 = lshr i8 %bf.load21, 4
  %bf.clear23 = and i8 %bf.lshr22, 1
  %bf.cast24 = trunc i8 %bf.clear23 to i1
  br i1 %bf.cast24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.20
  %11 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %front_sticky26 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 5
  %bf.load27 = load i8, i8* %front_sticky26, align 8
  %bf.clear28 = and i8 %bf.load27, -17
  %bf.set29 = or i8 %bf.clear28, 16
  store i8 %bf.set29, i8* %front_sticky26, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.20
  %12 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %rear_sticky = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 5
  %bf.load31 = load i8, i8* %rear_sticky, align 8
  %bf.lshr32 = lshr i8 %bf.load31, 5
  %bf.clear33 = and i8 %bf.lshr32, 1
  %bf.cast34 = trunc i8 %bf.clear33 to i1
  br i1 %bf.cast34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.30
  %13 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %rear_sticky36 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 5
  %bf.load37 = load i8, i8* %rear_sticky36, align 8
  %bf.clear38 = and i8 %bf.load37, -33
  %bf.set39 = or i8 %bf.clear38, 32
  store i8 %bf.set39, i8* %rear_sticky36, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.30
  br label %do.end

do.end:                                           ; preds = %if.end.40
  %14 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %plist41 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 6
  %15 = load i64, i64* %plist41, align 8
  store i64 %15, i64* %o, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %do.end
  %16 = load i64, i64* %o, align 8
  %and = and i64 %16, 7
  %conv = trunc i64 %and to i32
  %cmp42 = icmp eq i32 %conv, 3
  br i1 %cmp42, label %while.body, label %while.end.81

while.body:                                       ; preds = %while.cond
  %17 = load i64, i64* %o, align 8
  %sub = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 0
  %20 = load i64, i64* %car, align 8
  store i64 %20, i64* %sym, align 8
  %21 = load i64, i64* %o, align 8
  %sub44 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub44 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %24 = load i64, i64* %cdr, align 8
  store i64 %24, i64* %o, align 8
  %25 = load i64, i64* %o, align 8
  call void @CHECK_CONS(i64 %25)
  %26 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %plist45 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 6
  %27 = load i64, i64* %plist45, align 8
  store i64 %27, i64* %val, align 8
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.64, %while.body
  %28 = load i64, i64* %val, align 8
  %and47 = and i64 %28, 7
  %conv48 = trunc i64 %and47 to i32
  %cmp49 = icmp eq i32 %conv48, 3
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.46
  %29 = load i64, i64* %val, align 8
  %sub51 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub51 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car52, align 8
  %33 = load i64, i64* %sym, align 8
  %cmp53 = icmp eq i64 %32, %33
  %lnot = xor i1 %cmp53, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.46
  %34 = phi i1 [ false, %while.cond.46 ], [ %lnot, %land.rhs ]
  br i1 %34, label %while.body.55, label %while.end

while.body.55:                                    ; preds = %land.end
  %35 = load i64, i64* %val, align 8
  %sub56 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub56 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %u57 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 1
  %cdr58 = bitcast %union.anon.0* %u57 to i64*
  %38 = load i64, i64* %cdr58, align 8
  store i64 %38, i64* %val, align 8
  %39 = load i64, i64* %val, align 8
  %and59 = and i64 %39, 7
  %conv60 = trunc i64 %and59 to i32
  %cmp61 = icmp eq i32 %conv60, 3
  br i1 %cmp61, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %while.body.55
  br label %while.end

if.end.64:                                        ; preds = %while.body.55
  %40 = load i64, i64* %val, align 8
  %sub65 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub65 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr67 = bitcast %union.anon.0* %u66 to i64*
  %43 = load i64, i64* %cdr67, align 8
  store i64 %43, i64* %val, align 8
  br label %while.cond.46

while.end:                                        ; preds = %if.then.63, %land.end
  %44 = load i64, i64* %val, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %44, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %while.end
  %45 = load i64, i64* %o, align 8
  %sub72 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub72 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %car73 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 0
  %48 = load i64, i64* %car73, align 8
  store i64 %48, i64* %val, align 8
  %49 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %50 = load i64, i64* %sym, align 8
  %51 = load i64, i64* %val, align 8
  %52 = load %struct.interval*, %struct.interval** %target.addr, align 8
  %plist74 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 6
  %53 = load i64, i64* %plist74, align 8
  %call75 = call i64 @Fcons(i64 %51, i64 %53)
  %call76 = call i64 @Fcons(i64 %50, i64 %call75)
  call void @set_interval_plist(%struct.interval* %49, i64 %call76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %while.end
  %54 = load i64, i64* %o, align 8
  %sub78 = sub nsw i64 %54, 3
  %55 = inttoptr i64 %sub78 to i8*
  %56 = bitcast i8* %55 to %struct.Lisp_Cons*
  %u79 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %56, i32 0, i32 1
  %cdr80 = bitcast %union.anon.0* %u79 to i64*
  %57 = load i64, i64* %cdr80, align 8
  store i64 %57, i64* %o, align 8
  br label %while.cond

while.end.81:                                     ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @textget(i64 %plist, i64 %prop) #0 {
entry:
  %plist.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  %1 = load i64, i64* %prop.addr, align 8
  %call = call i64 @lookup_char_property(i64 %0, i64 %1, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @lookup_char_property(i64 %plist, i64 %prop, i1 zeroext %textprop) #0 {
entry:
  %retval = alloca i64, align 8
  %plist.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %textprop.addr = alloca i8, align 1
  %tail = alloca i64, align 8
  %fallback = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %frombool = zext i1 %textprop to i8
  store i8 %frombool, i8* %textprop.addr, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %fallback, align 8
  %0 = load i64, i64* %plist.addr, align 8
  store i64 %0, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %tem, align 8
  %6 = load i64, i64* %prop.addr, align 8
  %7 = load i64, i64* %tem, align 8
  %cmp2 = icmp eq i64 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %tail, align 8
  %sub4 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub4 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %call5 = call i64 @Fcar(i64 %11)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %12 = load i64, i64* %tem, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 241)
  %cmp7 = icmp eq i64 %12, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end
  %13 = load i64, i64* %tail, align 8
  %sub10 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub10 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %u11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 1
  %cdr12 = bitcast %union.anon.0* %u11 to i64*
  %16 = load i64, i64* %cdr12, align 8
  %call13 = call i64 @Fcar(i64 %16)
  store i64 %call13, i64* %tem, align 8
  %17 = load i64, i64* %tem, align 8
  %and14 = and i64 %17, 7
  %conv15 = trunc i64 %and14 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.9
  %18 = load i64, i64* %tem, align 8
  %19 = load i64, i64* %prop.addr, align 8
  %call19 = call i64 @Fget(i64 %18, i64 %19)
  store i64 %call19, i64* %fallback, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.9
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %20 = load i64, i64* %tail, align 8
  %sub22 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub22 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr24 = bitcast %union.anon.0* %u23 to i64*
  %23 = load i64, i64* %cdr24, align 8
  %call25 = call i64 @Fcdr(i64 %23)
  store i64 %call25, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i64, i64* %fallback, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %24, %call26
  br i1 %cmp27, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %25 = load i64, i64* %fallback, align 8
  store i64 %25, i64* %retval
  br label %return

if.end.30:                                        ; preds = %for.end
  %26 = load i64, i64* %prop.addr, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 26), align 8
  %call31 = call i64 @Fassq(i64 %26, i64 %27)
  store i64 %call31, i64* %tail, align 8
  %28 = load i64, i64* %tail, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %28, %call32
  br i1 %cmp33, label %if.end.56, label %if.then.35

if.then.35:                                       ; preds = %if.end.30
  %29 = load i64, i64* %tail, align 8
  %sub36 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub36 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %u37 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 1
  %cdr38 = bitcast %union.anon.0* %u37 to i64*
  %32 = load i64, i64* %cdr38, align 8
  store i64 %32, i64* %tail, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.51, %if.then.35
  %33 = load i64, i64* %fallback, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %33, %call40
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.39
  %34 = load i64, i64* %tail, align 8
  %and43 = and i64 %34, 7
  %conv44 = trunc i64 %and43 to i32
  %cmp45 = icmp eq i32 %conv44, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.39
  %35 = phi i1 [ false, %for.cond.39 ], [ %cmp45, %land.rhs ]
  br i1 %35, label %for.body.47, label %for.end.55

for.body.47:                                      ; preds = %land.end
  %36 = load i64, i64* %plist.addr, align 8
  %37 = load i64, i64* %tail, align 8
  %sub48 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub48 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car49 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car49, align 8
  %call50 = call i64 @Fplist_get(i64 %36, i64 %40)
  store i64 %call50, i64* %fallback, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %41 = load i64, i64* %tail, align 8
  %sub52 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub52 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 1
  %cdr54 = bitcast %union.anon.0* %u53 to i64*
  %44 = load i64, i64* %cdr54, align 8
  store i64 %44, i64* %tail, align 8
  br label %for.cond.39

for.end.55:                                       ; preds = %land.end
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %if.end.30
  %45 = load i8, i8* %textprop.addr, align 1
  %tobool = trunc i8 %45 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.56
  %46 = load i64, i64* %fallback, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %46, %call58
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.68

land.lhs.true.61:                                 ; preds = %land.lhs.true
  %47 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 63), align 8
  %and62 = and i64 %47, 7
  %conv63 = trunc i64 %and62 to i32
  %cmp64 = icmp eq i32 %conv63, 3
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %land.lhs.true.61
  %48 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 63), align 8
  %49 = load i64, i64* %prop.addr, align 8
  %call67 = call i64 @Fplist_get(i64 %48, i64 %49)
  store i64 %call67, i64* %fallback, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %land.lhs.true.61, %land.lhs.true, %if.end.56
  %50 = load i64, i64* %fallback, align 8
  store i64 %50, i64* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.29, %if.then
  %51 = load i64, i64* %retval
  ret i64 %51
}

declare i64 @Fcar(i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @Fplist_get(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @temp_set_point_both(%struct.buffer* %buffer, i64 %charpos, i64 %bytepos) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 75
  store i64 %0, i64* %pt, align 8
  %2 = load i64, i64* %bytepos.addr, align 8
  %3 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 76
  store i64 %2, i64* %pt_byte, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @temp_set_point(%struct.buffer* %buffer, i64 %charpos) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  %charpos.addr = alloca i64, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %1 = load i64, i64* %charpos.addr, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %3 = load i64, i64* %charpos.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %2, i64 %3)
  call void @temp_set_point_both(%struct.buffer* %0, i64 %1, i64 %call)
  ret void
}

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

; Function Attrs: nounwind uwtable
define void @set_point(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = load i64, i64* %charpos.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %1, i64 %2)
  call void @set_point_both(i64 %0, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_point_both(i64 %charpos, i64 %bytepos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %to = alloca %struct.interval*, align 8
  %from = alloca %struct.interval*, align 8
  %toprev = alloca %struct.interval*, align 8
  %fromprev = alloca %struct.interval*, align 8
  %buffer_point = alloca i64, align 8
  %old_position = alloca i64, align 8
  %backwards = alloca i8, align 1
  %have_overlays = alloca i8, align 1
  %original_position = alloca i64, align 8
  %pos = alloca i64, align 8
  %intangible_propval = alloca i64, align 8
  %leave_after = alloca i64, align 8
  %leave_before = alloca i64, align 8
  %enter_after = alloca i64, align 8
  %enter_before = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %old_position, align 8
  %2 = load i64, i64* %charpos.addr, align 8
  %3 = load i64, i64* %old_position, align 8
  %cmp = icmp slt i64 %2, %3
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %backwards, align 1
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_point_before_scroll(%struct.buffer* %4, i64 %call)
  %5 = load i64, i64* %charpos.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %7, 0
  %cmp3 = icmp eq i64 %5, %add2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.238

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @buffer_has_overlays()
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %have_overlays, align 1
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call6 = call %struct.interval* @buffer_intervals(%struct.buffer* %8)
  %tobool = icmp ne %struct.interval* %call6, null
  br i1 %tobool, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8, i8* %have_overlays, align 1
  %tobool7 = trunc i8 %9 to i1
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %11 = load i64, i64* %charpos.addr, align 8
  %12 = load i64, i64* %bytepos.addr, align 8
  call void @temp_set_point_both(%struct.buffer* %10, i64 %11, i64 %12)
  br label %if.end.238

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call10 = call %struct.interval* @buffer_intervals(%struct.buffer* %13)
  %14 = load i64, i64* %charpos.addr, align 8
  %call11 = call %struct.interval* @find_interval(%struct.interval* %call10, i64 %14)
  store %struct.interval* %call11, %struct.interval** %to, align 8
  %15 = load i64, i64* %charpos.addr, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 77
  %17 = load i64, i64* %begv, align 8
  %cmp12 = icmp eq i64 %15, %17
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  store %struct.interval* null, %struct.interval** %toprev, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.9
  %18 = load %struct.interval*, %struct.interval** %to, align 8
  %tobool14 = icmp ne %struct.interval* %18, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.else.19

land.lhs.true.15:                                 ; preds = %if.else
  %19 = load %struct.interval*, %struct.interval** %to, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 1
  %20 = load i64, i64* %position, align 8
  %21 = load i64, i64* %charpos.addr, align 8
  %cmp16 = icmp eq i64 %20, %21
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %land.lhs.true.15
  %22 = load %struct.interval*, %struct.interval** %to, align 8
  %call18 = call %struct.interval* @previous_interval(%struct.interval* %22)
  store %struct.interval* %call18, %struct.interval** %toprev, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %land.lhs.true.15, %if.else
  %23 = load %struct.interval*, %struct.interval** %to, align 8
  store %struct.interval* %23, %struct.interval** %toprev, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.13
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt22 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 75
  %25 = load i64, i64* %pt22, align 8
  %add23 = add nsw i64 %25, 0
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 79
  %27 = load i64, i64* %zv, align 8
  %cmp24 = icmp eq i64 %add23, %27
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv25 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 79
  %29 = load i64, i64* %zv25, align 8
  %sub = sub nsw i64 %29, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt26 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 75
  %31 = load i64, i64* %pt26, align 8
  %add27 = add nsw i64 %31, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %add27, %cond.false ]
  store i64 %cond, i64* %buffer_point, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call28 = call %struct.interval* @buffer_intervals(%struct.buffer* %32)
  %33 = load i64, i64* %buffer_point, align 8
  %call29 = call %struct.interval* @find_interval(%struct.interval* %call28, i64 %33)
  store %struct.interval* %call29, %struct.interval** %from, align 8
  %34 = load i64, i64* %buffer_point, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv30 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 77
  %36 = load i64, i64* %begv30, align 8
  %cmp31 = icmp eq i64 %34, %36
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %cond.end
  store %struct.interval* null, %struct.interval** %fromprev, align 8
  br label %if.end.50

if.else.33:                                       ; preds = %cond.end
  %37 = load %struct.interval*, %struct.interval** %from, align 8
  %tobool34 = icmp ne %struct.interval* %37, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.42

land.lhs.true.35:                                 ; preds = %if.else.33
  %38 = load %struct.interval*, %struct.interval** %from, align 8
  %position36 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 1
  %39 = load i64, i64* %position36, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt37 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 75
  %41 = load i64, i64* %pt37, align 8
  %add38 = add nsw i64 %41, 0
  %cmp39 = icmp eq i64 %39, %add38
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true.35
  %42 = load %struct.interval*, %struct.interval** %from, align 8
  %call41 = call %struct.interval* @previous_interval(%struct.interval* %42)
  store %struct.interval* %call41, %struct.interval** %fromprev, align 8
  br label %if.end.49

if.else.42:                                       ; preds = %land.lhs.true.35, %if.else.33
  %43 = load i64, i64* %buffer_point, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt43 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 75
  %45 = load i64, i64* %pt43, align 8
  %add44 = add nsw i64 %45, 0
  %cmp45 = icmp ne i64 %43, %add44
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.42
  %46 = load %struct.interval*, %struct.interval** %from, align 8
  store %struct.interval* %46, %struct.interval** %fromprev, align 8
  store %struct.interval* null, %struct.interval** %from, align 8
  br label %if.end.48

if.else.47:                                       ; preds = %if.else.42
  %47 = load %struct.interval*, %struct.interval** %from, align 8
  store %struct.interval* %47, %struct.interval** %fromprev, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.32
  %48 = load %struct.interval*, %struct.interval** %to, align 8
  %49 = load %struct.interval*, %struct.interval** %from, align 8
  %cmp51 = icmp eq %struct.interval* %48, %49
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.64

land.lhs.true.52:                                 ; preds = %if.end.50
  %50 = load %struct.interval*, %struct.interval** %toprev, align 8
  %51 = load %struct.interval*, %struct.interval** %fromprev, align 8
  %cmp53 = icmp eq %struct.interval* %50, %51
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.64

land.lhs.true.54:                                 ; preds = %land.lhs.true.52
  %52 = load %struct.interval*, %struct.interval** %to, align 8
  %tobool55 = icmp ne %struct.interval* %52, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.64

land.lhs.true.56:                                 ; preds = %land.lhs.true.54
  %53 = load %struct.interval*, %struct.interval** %to, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 6
  %54 = load i64, i64* %plist, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 574)
  %call58 = call i64 @textget(i64 %54, i64 %call57)
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %call58, %call59
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.64

land.lhs.true.61:                                 ; preds = %land.lhs.true.56
  %55 = load i8, i8* %have_overlays, align 1
  %tobool62 = trunc i8 %55 to i1
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.61
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %57 = load i64, i64* %charpos.addr, align 8
  %58 = load i64, i64* %bytepos.addr, align 8
  call void @temp_set_point_both(%struct.buffer* %56, i64 %57, i64 %58)
  br label %if.end.238

if.end.64:                                        ; preds = %land.lhs.true.61, %land.lhs.true.56, %land.lhs.true.54, %land.lhs.true.52, %if.end.50
  %59 = load i64, i64* %charpos.addr, align 8
  store i64 %59, i64* %original_position, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 137), align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %60, %call65
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.136

land.lhs.true.67:                                 ; preds = %if.end.64
  %61 = load %struct.interval*, %struct.interval** %to, align 8
  %tobool68 = icmp ne %struct.interval* %61, null
  br i1 %tobool68, label %land.lhs.true.69, label %lor.lhs.false

land.lhs.true.69:                                 ; preds = %land.lhs.true.67
  %62 = load %struct.interval*, %struct.interval** %toprev, align 8
  %tobool70 = icmp ne %struct.interval* %62, null
  br i1 %tobool70, label %land.lhs.true.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.69, %land.lhs.true.67
  %63 = load i8, i8* %have_overlays, align 1
  %tobool71 = trunc i8 %63 to i1
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.136

land.lhs.true.72:                                 ; preds = %lor.lhs.false, %land.lhs.true.69
  %64 = load i64, i64* %charpos.addr, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv73 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 77
  %66 = load i64, i64* %begv73, align 8
  %cmp74 = icmp ne i64 %64, %66
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.136

land.lhs.true.75:                                 ; preds = %land.lhs.true.72
  %67 = load i64, i64* %charpos.addr, align 8
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv76 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 79
  %69 = load i64, i64* %zv76, align 8
  %cmp77 = icmp ne i64 %67, %69
  br i1 %cmp77, label %if.then.78, label %if.end.136

if.then.78:                                       ; preds = %land.lhs.true.75
  %70 = load i8, i8* %backwards, align 1
  %tobool79 = trunc i8 %70 to i1
  br i1 %tobool79, label %if.then.80, label %if.else.104

if.then.80:                                       ; preds = %if.then.78
  %71 = load i64, i64* %charpos.addr, align 8
  %call81 = call i64 @adjust_for_invis_intang(i64 %71, i64 -1, i64 -1, i1 zeroext true)
  store i64 %call81, i64* %charpos.addr, align 8
  %72 = load i64, i64* %charpos.addr, align 8
  %shl = shl i64 %72, 2
  %add82 = add i64 %shl, 2
  store i64 %add82, i64* %pos, align 8
  %73 = load i64, i64* %pos, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 556)
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %call85 = call i64 @Fget_char_property(i64 %73, i64 %call83, i64 %call84)
  store i64 %call85, i64* %intangible_propval, align 8
  %74 = load i64, i64* %intangible_propval, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %74, %call86
  br i1 %cmp87, label %if.end.103, label %if.then.88

if.then.88:                                       ; preds = %if.then.80
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.88
  %75 = load i64, i64* %pos, align 8
  %shr = ashr i64 %75, 2
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv89 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 77
  %77 = load i64, i64* %begv89, align 8
  %cmp90 = icmp sgt i64 %shr, %77
  br i1 %cmp90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %78 = load i64, i64* %pos, align 8
  %shr91 = ashr i64 %78, 2
  %sub92 = sub nsw i64 %shr91, 1
  %shl93 = shl i64 %sub92, 2
  %add94 = add i64 %shl93, 2
  %call95 = call i64 @builtin_lisp_symbol(i32 556)
  %call96 = call i64 @builtin_lisp_symbol(i32 0)
  %call97 = call i64 @Fget_char_property(i64 %add94, i64 %call95, i64 %call96)
  %79 = load i64, i64* %intangible_propval, align 8
  %cmp98 = icmp eq i64 %call97, %79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp98, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %81 = load i64, i64* %pos, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %call100 = call i64 @Fprevious_char_property_change(i64 %81, i64 %call99)
  store i64 %call100, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %82 = load i64, i64* %pos, align 8
  %shr101 = ashr i64 %82, 2
  %call102 = call i64 @adjust_for_invis_intang(i64 %shr101, i64 0, i64 -1, i1 zeroext false)
  store i64 %call102, i64* %charpos.addr, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %while.end, %if.then.80
  br label %if.end.134

if.else.104:                                      ; preds = %if.then.78
  %83 = load i64, i64* %charpos.addr, align 8
  %call105 = call i64 @adjust_for_invis_intang(i64 %83, i64 0, i64 1, i1 zeroext true)
  store i64 %call105, i64* %charpos.addr, align 8
  %84 = load i64, i64* %charpos.addr, align 8
  %shl106 = shl i64 %84, 2
  %add107 = add i64 %shl106, 2
  store i64 %add107, i64* %pos, align 8
  %85 = load i64, i64* %charpos.addr, align 8
  %sub108 = sub nsw i64 %85, 1
  %shl109 = shl i64 %sub108, 2
  %add110 = add i64 %shl109, 2
  %call111 = call i64 @builtin_lisp_symbol(i32 556)
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %call113 = call i64 @Fget_char_property(i64 %add110, i64 %call111, i64 %call112)
  store i64 %call113, i64* %intangible_propval, align 8
  %86 = load i64, i64* %intangible_propval, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp115 = icmp eq i64 %86, %call114
  br i1 %cmp115, label %if.end.133, label %if.then.116

if.then.116:                                      ; preds = %if.else.104
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.127, %if.then.116
  %87 = load i64, i64* %pos, align 8
  %shr118 = ashr i64 %87, 2
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv119 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 79
  %89 = load i64, i64* %zv119, align 8
  %cmp120 = icmp slt i64 %shr118, %89
  br i1 %cmp120, label %land.rhs.121, label %land.end.126

land.rhs.121:                                     ; preds = %while.cond.117
  %90 = load i64, i64* %pos, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 556)
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %call124 = call i64 @Fget_char_property(i64 %90, i64 %call122, i64 %call123)
  %91 = load i64, i64* %intangible_propval, align 8
  %cmp125 = icmp eq i64 %call124, %91
  br label %land.end.126

land.end.126:                                     ; preds = %land.rhs.121, %while.cond.117
  %92 = phi i1 [ false, %while.cond.117 ], [ %cmp125, %land.rhs.121 ]
  br i1 %92, label %while.body.127, label %while.end.130

while.body.127:                                   ; preds = %land.end.126
  %93 = load i64, i64* %pos, align 8
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %call129 = call i64 @Fnext_char_property_change(i64 %93, i64 %call128)
  store i64 %call129, i64* %pos, align 8
  br label %while.cond.117

while.end.130:                                    ; preds = %land.end.126
  %94 = load i64, i64* %pos, align 8
  %shr131 = ashr i64 %94, 2
  %call132 = call i64 @adjust_for_invis_intang(i64 %shr131, i64 -1, i64 1, i1 zeroext false)
  store i64 %call132, i64* %charpos.addr, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %while.end.130, %if.else.104
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.103
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %96 = load i64, i64* %charpos.addr, align 8
  %call135 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %95, i64 %96)
  store i64 %call135, i64* %bytepos.addr, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.134, %land.lhs.true.75, %land.lhs.true.72, %lor.lhs.false, %if.end.64
  %97 = load i64, i64* %charpos.addr, align 8
  %98 = load i64, i64* %original_position, align 8
  %cmp137 = icmp ne i64 %97, %98
  br i1 %cmp137, label %if.then.138, label %if.end.154

if.then.138:                                      ; preds = %if.end.136
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call139 = call %struct.interval* @buffer_intervals(%struct.buffer* %99)
  %100 = load i64, i64* %charpos.addr, align 8
  %call140 = call %struct.interval* @find_interval(%struct.interval* %call139, i64 %100)
  store %struct.interval* %call140, %struct.interval** %to, align 8
  %101 = load i64, i64* %charpos.addr, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv141 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 77
  %103 = load i64, i64* %begv141, align 8
  %cmp142 = icmp eq i64 %101, %103
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.then.138
  store %struct.interval* null, %struct.interval** %toprev, align 8
  br label %if.end.153

if.else.144:                                      ; preds = %if.then.138
  %104 = load %struct.interval*, %struct.interval** %to, align 8
  %tobool145 = icmp ne %struct.interval* %104, null
  br i1 %tobool145, label %land.lhs.true.146, label %if.else.151

land.lhs.true.146:                                ; preds = %if.else.144
  %105 = load %struct.interval*, %struct.interval** %to, align 8
  %position147 = getelementptr inbounds %struct.interval, %struct.interval* %105, i32 0, i32 1
  %106 = load i64, i64* %position147, align 8
  %107 = load i64, i64* %charpos.addr, align 8
  %cmp148 = icmp eq i64 %106, %107
  br i1 %cmp148, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %land.lhs.true.146
  %108 = load %struct.interval*, %struct.interval** %to, align 8
  %call150 = call %struct.interval* @previous_interval(%struct.interval* %108)
  store %struct.interval* %call150, %struct.interval** %toprev, align 8
  br label %if.end.152

if.else.151:                                      ; preds = %land.lhs.true.146, %if.else.144
  %109 = load %struct.interval*, %struct.interval** %to, align 8
  store %struct.interval* %109, %struct.interval** %toprev, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.151, %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.143
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.136
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %111 = load i64, i64* %charpos.addr, align 8
  %112 = load i64, i64* %bytepos.addr, align 8
  call void @temp_set_point_both(%struct.buffer* %110, i64 %111, i64 %112)
  %113 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 137), align 8
  %call155 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp156 = icmp eq i64 %113, %call155
  br i1 %cmp156, label %land.lhs.true.157, label %if.end.238

land.lhs.true.157:                                ; preds = %if.end.154
  %114 = load %struct.interval*, %struct.interval** %from, align 8
  %115 = load %struct.interval*, %struct.interval** %to, align 8
  %call158 = call zeroext i1 @intervals_equal(%struct.interval* %114, %struct.interval* %115)
  br i1 %call158, label %lor.lhs.false.159, label %if.then.161

lor.lhs.false.159:                                ; preds = %land.lhs.true.157
  %116 = load %struct.interval*, %struct.interval** %fromprev, align 8
  %117 = load %struct.interval*, %struct.interval** %toprev, align 8
  %call160 = call zeroext i1 @intervals_equal(%struct.interval* %116, %struct.interval* %117)
  br i1 %call160, label %if.end.238, label %if.then.161

if.then.161:                                      ; preds = %lor.lhs.false.159, %land.lhs.true.157
  %118 = load %struct.interval*, %struct.interval** %fromprev, align 8
  %tobool162 = icmp ne %struct.interval* %118, null
  br i1 %tobool162, label %if.then.163, label %if.else.167

if.then.163:                                      ; preds = %if.then.161
  %119 = load %struct.interval*, %struct.interval** %fromprev, align 8
  %plist164 = getelementptr inbounds %struct.interval, %struct.interval* %119, i32 0, i32 6
  %120 = load i64, i64* %plist164, align 8
  %call165 = call i64 @builtin_lisp_symbol(i32 756)
  %call166 = call i64 @textget(i64 %120, i64 %call165)
  store i64 %call166, i64* %leave_before, align 8
  br label %if.end.169

if.else.167:                                      ; preds = %if.then.161
  %call168 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call168, i64* %leave_before, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.167, %if.then.163
  %121 = load %struct.interval*, %struct.interval** %from, align 8
  %tobool170 = icmp ne %struct.interval* %121, null
  br i1 %tobool170, label %if.then.171, label %if.else.175

if.then.171:                                      ; preds = %if.end.169
  %122 = load %struct.interval*, %struct.interval** %from, align 8
  %plist172 = getelementptr inbounds %struct.interval, %struct.interval* %122, i32 0, i32 6
  %123 = load i64, i64* %plist172, align 8
  %call173 = call i64 @builtin_lisp_symbol(i32 756)
  %call174 = call i64 @textget(i64 %123, i64 %call173)
  store i64 %call174, i64* %leave_after, align 8
  br label %if.end.177

if.else.175:                                      ; preds = %if.end.169
  %call176 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call176, i64* %leave_after, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.175, %if.then.171
  %124 = load %struct.interval*, %struct.interval** %toprev, align 8
  %tobool178 = icmp ne %struct.interval* %124, null
  br i1 %tobool178, label %if.then.179, label %if.else.183

if.then.179:                                      ; preds = %if.end.177
  %125 = load %struct.interval*, %struct.interval** %toprev, align 8
  %plist180 = getelementptr inbounds %struct.interval, %struct.interval* %125, i32 0, i32 6
  %126 = load i64, i64* %plist180, align 8
  %call181 = call i64 @builtin_lisp_symbol(i32 755)
  %call182 = call i64 @textget(i64 %126, i64 %call181)
  store i64 %call182, i64* %enter_before, align 8
  br label %if.end.185

if.else.183:                                      ; preds = %if.end.177
  %call184 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call184, i64* %enter_before, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.then.179
  %127 = load %struct.interval*, %struct.interval** %to, align 8
  %tobool186 = icmp ne %struct.interval* %127, null
  br i1 %tobool186, label %if.then.187, label %if.else.191

if.then.187:                                      ; preds = %if.end.185
  %128 = load %struct.interval*, %struct.interval** %to, align 8
  %plist188 = getelementptr inbounds %struct.interval, %struct.interval* %128, i32 0, i32 6
  %129 = load i64, i64* %plist188, align 8
  %call189 = call i64 @builtin_lisp_symbol(i32 755)
  %call190 = call i64 @textget(i64 %129, i64 %call189)
  store i64 %call190, i64* %enter_after, align 8
  br label %if.end.193

if.else.191:                                      ; preds = %if.end.185
  %call192 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call192, i64* %enter_after, align 8
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.187
  %130 = load i64, i64* %leave_before, align 8
  %131 = load i64, i64* %enter_before, align 8
  %cmp194 = icmp eq i64 %130, %131
  br i1 %cmp194, label %if.end.204, label %land.lhs.true.195

land.lhs.true.195:                                ; preds = %if.end.193
  %132 = load i64, i64* %leave_before, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp197 = icmp eq i64 %132, %call196
  br i1 %cmp197, label %if.end.204, label %if.then.198

if.then.198:                                      ; preds = %land.lhs.true.195
  %133 = load i64, i64* %leave_before, align 8
  %134 = load i64, i64* %old_position, align 8
  %shl199 = shl i64 %134, 2
  %add200 = add i64 %shl199, 2
  %135 = load i64, i64* %charpos.addr, align 8
  %shl201 = shl i64 %135, 2
  %add202 = add i64 %shl201, 2
  %call203 = call i64 @call2(i64 %133, i64 %add200, i64 %add202)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.198, %land.lhs.true.195, %if.end.193
  %136 = load i64, i64* %leave_after, align 8
  %137 = load i64, i64* %enter_after, align 8
  %cmp205 = icmp eq i64 %136, %137
  br i1 %cmp205, label %if.end.215, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %if.end.204
  %138 = load i64, i64* %leave_after, align 8
  %call207 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp208 = icmp eq i64 %138, %call207
  br i1 %cmp208, label %if.end.215, label %if.then.209

if.then.209:                                      ; preds = %land.lhs.true.206
  %139 = load i64, i64* %leave_after, align 8
  %140 = load i64, i64* %old_position, align 8
  %shl210 = shl i64 %140, 2
  %add211 = add i64 %shl210, 2
  %141 = load i64, i64* %charpos.addr, align 8
  %shl212 = shl i64 %141, 2
  %add213 = add i64 %shl212, 2
  %call214 = call i64 @call2(i64 %139, i64 %add211, i64 %add213)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.209, %land.lhs.true.206, %if.end.204
  %142 = load i64, i64* %enter_before, align 8
  %143 = load i64, i64* %leave_before, align 8
  %cmp216 = icmp eq i64 %142, %143
  br i1 %cmp216, label %if.end.226, label %land.lhs.true.217

land.lhs.true.217:                                ; preds = %if.end.215
  %144 = load i64, i64* %enter_before, align 8
  %call218 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp219 = icmp eq i64 %144, %call218
  br i1 %cmp219, label %if.end.226, label %if.then.220

if.then.220:                                      ; preds = %land.lhs.true.217
  %145 = load i64, i64* %enter_before, align 8
  %146 = load i64, i64* %old_position, align 8
  %shl221 = shl i64 %146, 2
  %add222 = add i64 %shl221, 2
  %147 = load i64, i64* %charpos.addr, align 8
  %shl223 = shl i64 %147, 2
  %add224 = add i64 %shl223, 2
  %call225 = call i64 @call2(i64 %145, i64 %add222, i64 %add224)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.220, %land.lhs.true.217, %if.end.215
  %148 = load i64, i64* %enter_after, align 8
  %149 = load i64, i64* %leave_after, align 8
  %cmp227 = icmp eq i64 %148, %149
  br i1 %cmp227, label %if.end.237, label %land.lhs.true.228

land.lhs.true.228:                                ; preds = %if.end.226
  %150 = load i64, i64* %enter_after, align 8
  %call229 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp230 = icmp eq i64 %150, %call229
  br i1 %cmp230, label %if.end.237, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.228
  %151 = load i64, i64* %enter_after, align 8
  %152 = load i64, i64* %old_position, align 8
  %shl232 = shl i64 %152, 2
  %add233 = add i64 %shl232, 2
  %153 = load i64, i64* %charpos.addr, align 8
  %shl234 = shl i64 %153, 2
  %add235 = add i64 %shl234, 2
  %call236 = call i64 @call2(i64 %151, i64 %add233, i64 %add235)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.231, %land.lhs.true.228, %if.end.226
  br label %if.end.238

if.end.238:                                       ; preds = %if.then, %if.then.8, %if.then.63, %if.end.237, %lor.lhs.false.159, %if.end.154
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_point_from_marker(i64 %marker) #0 {
entry:
  %marker.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %0)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call, i32 0, i32 1
  %1 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp ne %struct.buffer* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %marker.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i64 %3) #4
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 77
  %5 = load i64, i64* %begv, align 8
  %6 = load i64, i64* %marker.addr, align 8
  %call1 = call i64 @marker_position(i64 %6)
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 79
  %8 = load i64, i64* %zv, align 8
  %call2 = call i64 @clip_to_bounds(i64 %5, i64 %call1, i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 78
  %10 = load i64, i64* %begv_byte, align 8
  %11 = load i64, i64* %marker.addr, align 8
  %call3 = call i64 @marker_byte_position(i64 %11)
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 80
  %13 = load i64, i64* %zv_byte, align 8
  %call4 = call i64 @clip_to_bounds(i64 %10, i64 %call3, i64 %13)
  call void @set_point_both(i64 %call2, i64 %call4)
  ret void
}

declare %struct.Lisp_Marker* @XMARKER(i64) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare i64 @clip_to_bounds(i64, i64, i64) #1

declare i64 @marker_position(i64) #1

declare i64 @marker_byte_position(i64) #1

declare void @bset_point_before_scroll(%struct.buffer*, i64) #1

declare zeroext i1 @buffer_has_overlays() #1

; Function Attrs: nounwind uwtable
define internal i64 @adjust_for_invis_intang(i64 %pos, i64 %test_offs, i64 %adj, i1 zeroext %test_intang) #0 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %test_offs.addr = alloca i64, align 8
  %adj.addr = alloca i64, align 8
  %test_intang.addr = alloca i8, align 1
  %invis_propval = alloca i64, align 8
  %invis_overlay = alloca i64, align 8
  %test_pos = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %test_offs, i64* %test_offs.addr, align 8
  store i64 %adj, i64* %adj.addr, align 8
  %frombool = zext i1 %test_intang to i8
  store i8 %frombool, i8* %test_intang.addr, align 1
  %0 = load i64, i64* %adj.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load i64, i64* %adj.addr, align 8
  %add = add nsw i64 %1, %2
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 77
  %4 = load i64, i64* %begv, align 8
  %cmp1 = icmp slt i64 %add, %4
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %adj.addr, align 8
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %pos.addr, align 8
  %7 = load i64, i64* %adj.addr, align 8
  %add4 = add nsw i64 %6, %7
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 79
  %9 = load i64, i64* %zv, align 8
  %cmp5 = icmp sgt i64 %add4, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %10 = load i64, i64* %pos.addr, align 8
  store i64 %10, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %lor.lhs.false
  %11 = load i64, i64* %pos.addr, align 8
  %12 = load i64, i64* %test_offs.addr, align 8
  %add6 = add nsw i64 %11, %12
  %shl = shl i64 %add6, 2
  %add7 = add i64 %shl, 2
  store i64 %add7, i64* %test_pos, align 8
  %13 = load i64, i64* %test_pos, align 8
  %call = call i64 @builtin_lisp_symbol(i32 574)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @get_char_property_and_overlay(i64 %13, i64 %call, i64 %call8, i64* %invis_overlay)
  store i64 %call9, i64* %invis_propval, align 8
  %14 = load i8, i8* %test_intang.addr, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %lor.lhs.false.10, label %land.lhs.true.16

lor.lhs.false.10:                                 ; preds = %if.end
  %15 = load i64, i64* %test_pos, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 556)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fget_char_property(i64 %15, i64 %call11, i64 %call12)
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %call13, %call14
  br i1 %cmp15, label %if.end.53, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %lor.lhs.false.10, %if.end
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_ = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 50
  %17 = load i64, i64* %invisibility_spec_, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp18 = icmp eq i64 %17, %call17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %18 = load i64, i64* %invis_propval, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %18, %call19
  br i1 %cmp20, label %if.end.53, label %land.lhs.true.24

cond.false:                                       ; preds = %land.lhs.true.16
  %19 = load i64, i64* %invis_propval, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_21 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 50
  %21 = load i64, i64* %invisibility_spec_21, align 8
  %call22 = call i32 @invisible_prop(i64 %19, i64 %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.53

land.lhs.true.24:                                 ; preds = %cond.false, %cond.true
  %22 = load i64, i64* %invis_overlay, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %22, %call25
  br i1 %cmp26, label %cond.true.27, label %cond.false.35

cond.true.27:                                     ; preds = %land.lhs.true.24
  %call28 = call i64 @builtin_lisp_symbol(i32 574)
  %23 = load i64, i64* %pos.addr, align 8
  %shl29 = shl i64 %23, 2
  %add30 = add i64 %shl29, 2
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %call32 = call i32 @text_property_stickiness(i64 %call28, i64 %add30, i64 %call31)
  %24 = load i64, i64* %test_offs.addr, align 8
  %cmp33 = icmp eq i64 %24, 0
  %cond = select i1 %cmp33, i32 1, i32 -1
  %cmp34 = icmp eq i32 %call32, %cond
  br i1 %cmp34, label %if.then.51, label %if.end.53

cond.false.35:                                    ; preds = %land.lhs.true.24
  %25 = load i64, i64* %test_offs.addr, align 8
  %cmp36 = icmp eq i64 %25, 0
  br i1 %cmp36, label %cond.true.37, label %cond.false.42

cond.true.37:                                     ; preds = %cond.false.35
  %26 = load i64, i64* %invis_overlay, align 8
  %call38 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %26)
  %start = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call38, i32 0, i32 2
  %27 = load i64, i64* %start, align 8
  %call39 = call %struct.Lisp_Marker* @XMARKER(i64 %27)
  %28 = bitcast %struct.Lisp_Marker* %call39 to i32*
  %bf.load = load i32, i32* %28, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i1
  %conv = zext i1 %bf.cast to i32
  %cmp40 = icmp eq i32 %conv, 0
  br i1 %cmp40, label %if.then.51, label %if.end.53

cond.false.42:                                    ; preds = %cond.false.35
  %29 = load i64, i64* %invis_overlay, align 8
  %call43 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %29)
  %end = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call43, i32 0, i32 3
  %30 = load i64, i64* %end, align 8
  %call44 = call %struct.Lisp_Marker* @XMARKER(i64 %30)
  %31 = bitcast %struct.Lisp_Marker* %call44 to i32*
  %bf.load45 = load i32, i32* %31, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 31
  %bf.cast47 = trunc i32 %bf.lshr46 to i1
  %conv48 = zext i1 %bf.cast47 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %cond.false.42, %cond.true.37, %cond.true.27
  %32 = load i64, i64* %adj.addr, align 8
  %33 = load i64, i64* %pos.addr, align 8
  %add52 = add nsw i64 %33, %32
  store i64 %add52, i64* %pos.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %cond.false.42, %cond.true.37, %cond.true.27, %cond.false, %cond.true, %lor.lhs.false.10
  %34 = load i64, i64* %pos.addr, align 8
  store i64 %34, i64* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then
  %35 = load i64, i64* %retval
  ret i64 %35
}

declare i64 @Fget_char_property(i64, i64, i64) #1

declare i64 @Fprevious_char_property_change(i64, i64) #1

declare i64 @Fnext_char_property_change(i64, i64) #1

declare i64 @call2(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @move_if_not_intangible(i64 %position) #0 {
entry:
  %position.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %intangible_propval = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %pos, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 137), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.66

if.else:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 75
  %3 = load i64, i64* %pt, align 8
  %add1 = add nsw i64 %3, 0
  %4 = load i64, i64* %position.addr, align 8
  %cmp2 = icmp slt i64 %add1, %4
  br i1 %cmp2, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else
  %5 = load i64, i64* %pos, align 8
  %shr = ashr i64 %5, 2
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  %cmp3 = icmp slt i64 %shr, %7
  br i1 %cmp3, label %if.then.4, label %if.else.22

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load i64, i64* %pos, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 556)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @Fget_char_property(i64 %8, i64 %call5, i64 %call6)
  store i64 %call7, i64* %intangible_propval, align 8
  %9 = load i64, i64* %intangible_propval, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.10
  %10 = load i64, i64* %pos, align 8
  %shr11 = ashr i64 %10, 2
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 77
  %12 = load i64, i64* %begv, align 8
  %cmp12 = icmp sgt i64 %shr11, %12
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i64, i64* %pos, align 8
  %shr13 = ashr i64 %13, 2
  %sub = sub nsw i64 %shr13, 1
  %shl14 = shl i64 %sub, 2
  %add15 = add i64 %shl14, 2
  %call16 = call i64 @builtin_lisp_symbol(i32 556)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Fget_char_property(i64 %add15, i64 %call16, i64 %call17)
  %14 = load i64, i64* %intangible_propval, align 8
  %cmp19 = icmp eq i64 %call18, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i64, i64* %pos, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %call21 = call i64 @Fprevious_char_property_change(i64 %16, i64 %call20)
  store i64 %call21, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.4
  br label %if.end.65

if.else.22:                                       ; preds = %land.lhs.true, %if.else
  %17 = load i64, i64* %pos, align 8
  %shr23 = ashr i64 %17, 2
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv24 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 77
  %19 = load i64, i64* %begv24, align 8
  %cmp25 = icmp sgt i64 %shr23, %19
  br i1 %cmp25, label %if.then.26, label %if.else.52

if.then.26:                                       ; preds = %if.else.22
  %20 = load i64, i64* %pos, align 8
  %shr27 = ashr i64 %20, 2
  %sub28 = sub nsw i64 %shr27, 1
  %shl29 = shl i64 %sub28, 2
  %add30 = add i64 %shl29, 2
  %call31 = call i64 @builtin_lisp_symbol(i32 556)
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @Fget_char_property(i64 %add30, i64 %call31, i64 %call32)
  store i64 %call33, i64* %intangible_propval, align 8
  %21 = load i64, i64* %intangible_propval, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %21, %call34
  br i1 %cmp35, label %if.end.51, label %if.then.36

if.then.36:                                       ; preds = %if.then.26
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.47, %if.then.36
  %22 = load i64, i64* %pos, align 8
  %shr38 = ashr i64 %22, 2
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv39 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv39, align 8
  %cmp40 = icmp slt i64 %shr38, %24
  br i1 %cmp40, label %land.rhs.41, label %land.end.46

land.rhs.41:                                      ; preds = %while.cond.37
  %25 = load i64, i64* %pos, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 556)
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %call44 = call i64 @Fget_char_property(i64 %25, i64 %call42, i64 %call43)
  %26 = load i64, i64* %intangible_propval, align 8
  %cmp45 = icmp eq i64 %call44, %26
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.41, %while.cond.37
  %27 = phi i1 [ false, %while.cond.37 ], [ %cmp45, %land.rhs.41 ]
  br i1 %27, label %while.body.47, label %while.end.50

while.body.47:                                    ; preds = %land.end.46
  %28 = load i64, i64* %pos, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %call49 = call i64 @Fnext_char_property_change(i64 %28, i64 %call48)
  store i64 %call49, i64* %pos, align 8
  br label %while.cond.37

while.end.50:                                     ; preds = %land.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %while.end.50, %if.then.26
  br label %if.end.64

if.else.52:                                       ; preds = %if.else.22
  %29 = load i64, i64* %position.addr, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv53 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 77
  %31 = load i64, i64* %begv53, align 8
  %cmp54 = icmp slt i64 %29, %31
  br i1 %cmp54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.else.52
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv56 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 77
  %33 = load i64, i64* %begv56, align 8
  store i64 %33, i64* %position.addr, align 8
  br label %if.end.63

if.else.57:                                       ; preds = %if.else.52
  %34 = load i64, i64* %position.addr, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv58 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 79
  %36 = load i64, i64* %zv58, align 8
  %cmp59 = icmp sgt i64 %34, %36
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.else.57
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv61 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv61, align 8
  store i64 %38, i64* %position.addr, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.51
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then
  %39 = load i64, i64* %pos, align 8
  %shr67 = ashr i64 %39, 2
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt68 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 75
  %41 = load i64, i64* %pt68, align 8
  %add69 = add nsw i64 %41, 0
  %cmp70 = icmp ne i64 %shr67, %add69
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.66
  %42 = load i64, i64* %position.addr, align 8
  call void @set_point(i64 %42)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.66
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @get_property_and_range(i64 %pos, i64 %prop, i64* %val, i64* %start, i64* %end, i64 %object) #0 {
entry:
  %retval = alloca i1, align 1
  %pos.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %val.addr = alloca i64*, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %prev = alloca %struct.interval*, align 8
  %next = alloca %struct.interval*, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64* %val, i64** %val.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1 = call %struct.interval* @buffer_intervals(%struct.buffer* %1)
  %2 = load i64, i64* %pos.addr, align 8
  %call2 = call %struct.interval* @find_interval(%struct.interval* %call1, i64 %2)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %object.addr, align 8
  %call3 = call zeroext i1 @BUFFERP(i64 %3)
  br i1 %call3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %4 = load i64, i64* %object.addr, align 8
  %call5 = call %struct.buffer* @XBUFFER(i64 %4)
  %call6 = call %struct.interval* @buffer_intervals(%struct.buffer* %call5)
  %5 = load i64, i64* %pos.addr, align 8
  %call7 = call %struct.interval* @find_interval(%struct.interval* %call6, i64 %5)
  store %struct.interval* %call7, %struct.interval** %i, align 8
  br label %if.end.14

if.else.8:                                        ; preds = %if.else
  %6 = load i64, i64* %object.addr, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else.8
  %7 = load i64, i64* %object.addr, align 8
  %call11 = call %struct.interval* @string_intervals(i64 %7)
  %8 = load i64, i64* %pos.addr, align 8
  %call12 = call %struct.interval* @find_interval(%struct.interval* %call11, i64 %8)
  store %struct.interval* %call12, %struct.interval** %i, align 8
  br label %if.end

if.else.13:                                       ; preds = %if.else.8
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %9 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %if.end.15
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 1
  %11 = load i64, i64* %position, align 8
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp16 = icmp eq %struct.interval* %12, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end.35

cond.false:                                       ; preds = %lor.lhs.false
  %13 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp17 = icmp eq %struct.interval* %13, null
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 0
  %15 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.18
  %cond = phi i64 [ 0, %cond.true.18 ], [ %15, %cond.false.19 ]
  %16 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp20 = icmp eq %struct.interval* %17, null
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %right23 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 3
  %19 = load %struct.interval*, %struct.interval** %right23, align 8
  %total_length24 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 0
  %20 = load i64, i64* %total_length24, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.21
  %cond26 = phi i64 [ 0, %cond.true.21 ], [ %20, %cond.false.22 ]
  %sub = sub nsw i64 %cond, %cond26
  %21 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 2
  %22 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp27 = icmp eq %struct.interval* %22, null
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.25
  br label %cond.end.32

cond.false.29:                                    ; preds = %cond.end.25
  %23 = load %struct.interval*, %struct.interval** %i, align 8
  %left30 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 2
  %24 = load %struct.interval*, %struct.interval** %left30, align 8
  %total_length31 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 0
  %25 = load i64, i64* %total_length31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i64 [ 0, %cond.true.28 ], [ %25, %cond.false.29 ]
  %sub34 = sub nsw i64 %sub, %cond33
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.32, %cond.true
  %cond36 = phi i64 [ 0, %cond.true ], [ %sub34, %cond.end.32 ]
  %add = add nsw i64 %11, %cond36
  %26 = load i64, i64* %pos.addr, align 8
  %cmp37 = icmp sle i64 %add, %26
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %cond.end.35, %if.end.15
  store i1 false, i1* %retval
  br label %return

if.end.39:                                        ; preds = %cond.end.35
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 6
  %28 = load i64, i64* %plist, align 8
  %29 = load i64, i64* %prop.addr, align 8
  %call40 = call i64 @textget(i64 %28, i64 %29)
  %30 = load i64*, i64** %val.addr, align 8
  store i64 %call40, i64* %30, align 8
  %31 = load i64*, i64** %val.addr, align 8
  %32 = load i64, i64* %31, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %32, %call41
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  store i1 false, i1* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %33, %struct.interval** %next, align 8
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %call45 = call %struct.interval* @previous_interval(%struct.interval* %34)
  store %struct.interval* %call45, %struct.interval** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.44
  %35 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool46 = icmp ne %struct.interval* %35, null
  br i1 %tobool46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %36 = load i64*, i64** %val.addr, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist47 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 6
  %39 = load i64, i64* %plist47, align 8
  %40 = load i64, i64* %prop.addr, align 8
  %call48 = call i64 @textget(i64 %39, i64 %40)
  %cmp49 = icmp eq i64 %37, %call48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %cmp49, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load %struct.interval*, %struct.interval** %prev, align 8
  store %struct.interval* %42, %struct.interval** %i, align 8
  %43 = load %struct.interval*, %struct.interval** %prev, align 8
  %call50 = call %struct.interval* @previous_interval(%struct.interval* %43)
  store %struct.interval* %call50, %struct.interval** %prev, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load %struct.interval*, %struct.interval** %i, align 8
  %position51 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 1
  %45 = load i64, i64* %position51, align 8
  %46 = load i64*, i64** %start.addr, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.interval*, %struct.interval** %i, align 8
  %call52 = call %struct.interval* @next_interval(%struct.interval* %47)
  store %struct.interval* %call52, %struct.interval** %next, align 8
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.60, %while.end
  %48 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool54 = icmp ne %struct.interval* %48, null
  br i1 %tobool54, label %land.rhs.55, label %land.end.59

land.rhs.55:                                      ; preds = %while.cond.53
  %49 = load i64*, i64** %val.addr, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.interval*, %struct.interval** %next, align 8
  %plist56 = getelementptr inbounds %struct.interval, %struct.interval* %51, i32 0, i32 6
  %52 = load i64, i64* %plist56, align 8
  %53 = load i64, i64* %prop.addr, align 8
  %call57 = call i64 @textget(i64 %52, i64 %53)
  %cmp58 = icmp eq i64 %50, %call57
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.55, %while.cond.53
  %54 = phi i1 [ false, %while.cond.53 ], [ %cmp58, %land.rhs.55 ]
  br i1 %54, label %while.body.60, label %while.end.62

while.body.60:                                    ; preds = %land.end.59
  %55 = load %struct.interval*, %struct.interval** %next, align 8
  store %struct.interval* %55, %struct.interval** %i, align 8
  %56 = load %struct.interval*, %struct.interval** %next, align 8
  %call61 = call %struct.interval* @next_interval(%struct.interval* %56)
  store %struct.interval* %call61, %struct.interval** %next, align 8
  br label %while.cond.53

while.end.62:                                     ; preds = %land.end.59
  %57 = load %struct.interval*, %struct.interval** %i, align 8
  %position63 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 1
  %58 = load i64, i64* %position63, align 8
  %59 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp64 = icmp eq %struct.interval* %59, null
  br i1 %cmp64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %while.end.62
  br label %cond.end.91

cond.false.66:                                    ; preds = %while.end.62
  %60 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp67 = icmp eq %struct.interval* %60, null
  br i1 %cmp67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.false.66
  br label %cond.end.71

cond.false.69:                                    ; preds = %cond.false.66
  %61 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length70 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 0
  %62 = load i64, i64* %total_length70, align 8
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.68
  %cond72 = phi i64 [ 0, %cond.true.68 ], [ %62, %cond.false.69 ]
  %63 = load %struct.interval*, %struct.interval** %i, align 8
  %right73 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 3
  %64 = load %struct.interval*, %struct.interval** %right73, align 8
  %cmp74 = icmp eq %struct.interval* %64, null
  br i1 %cmp74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.71
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.end.71
  %65 = load %struct.interval*, %struct.interval** %i, align 8
  %right77 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 3
  %66 = load %struct.interval*, %struct.interval** %right77, align 8
  %total_length78 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 0
  %67 = load i64, i64* %total_length78, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.75
  %cond80 = phi i64 [ 0, %cond.true.75 ], [ %67, %cond.false.76 ]
  %sub81 = sub nsw i64 %cond72, %cond80
  %68 = load %struct.interval*, %struct.interval** %i, align 8
  %left82 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 2
  %69 = load %struct.interval*, %struct.interval** %left82, align 8
  %cmp83 = icmp eq %struct.interval* %69, null
  br i1 %cmp83, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.79
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.end.79
  %70 = load %struct.interval*, %struct.interval** %i, align 8
  %left86 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 2
  %71 = load %struct.interval*, %struct.interval** %left86, align 8
  %total_length87 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length87, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.84
  %cond89 = phi i64 [ 0, %cond.true.84 ], [ %72, %cond.false.85 ]
  %sub90 = sub nsw i64 %sub81, %cond89
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.88, %cond.true.65
  %cond92 = phi i64 [ 0, %cond.true.65 ], [ %sub90, %cond.end.88 ]
  %add93 = add nsw i64 %58, %cond92
  %73 = load i64*, i64** %end.addr, align 8
  store i64 %add93, i64* %73, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %cond.end.91, %if.then.43, %if.then.38
  %74 = load i1, i1* %retval
  ret i1 %74
}

declare %struct.interval* @string_intervals(i64) #1

; Function Attrs: nounwind uwtable
define i64 @get_local_map(i64 %position, %struct.buffer* %buffer, i64 %type) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %buffer.addr = alloca %struct.buffer*, align 8
  %type.addr = alloca i64, align 8
  %prop = alloca i64, align 8
  %lispy_position = alloca i64, align 8
  %lispy_buffer = alloca i64, align 8
  %old_begv = alloca i64, align 8
  %old_zv = alloca i64, align 8
  %old_begv_byte = alloca i64, align 8
  %old_zv_byte = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp eq %struct.buffer* %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 77
  %3 = load i64, i64* %begv, align 8
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 46
  %5 = load i64, i64* %begv_marker_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %5, %call
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.false
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv3 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 77
  %7 = load i64, i64* %begv3, align 8
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %8 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_5 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 46
  %9 = load i64, i64* %begv_marker_5, align 8
  %call6 = call i64 @marker_position(i64 %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.2
  %cond = phi i64 [ %7, %cond.true.2 ], [ %call6, %cond.false.4 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ %3, %cond.true ], [ %cond, %cond.end ]
  %10 = load i64, i64* %position.addr, align 8
  %11 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp9 = icmp eq %struct.buffer* %11, %12
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.7
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 79
  %14 = load i64, i64* %zv, align 8
  br label %cond.end.21

cond.false.11:                                    ; preds = %cond.end.7
  %15 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 47
  %16 = load i64, i64* %zv_marker_, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %16, %call12
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.false.11
  %17 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv15 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 79
  %18 = load i64, i64* %zv15, align 8
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.false.11
  %19 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_17 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 47
  %20 = load i64, i64* %zv_marker_17, align 8
  %call18 = call i64 @marker_position(i64 %20)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.14
  %cond20 = phi i64 [ %18, %cond.true.14 ], [ %call18, %cond.false.16 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true.10
  %cond22 = phi i64 [ %14, %cond.true.10 ], [ %cond20, %cond.end.19 ]
  %call23 = call i64 @clip_to_bounds(i64 %cond8, i64 %10, i64 %cond22)
  store i64 %call23, i64* %position.addr, align 8
  %21 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp24 = icmp eq %struct.buffer* %21, %22
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.21
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv26 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 77
  %24 = load i64, i64* %begv26, align 8
  br label %cond.end.38

cond.false.27:                                    ; preds = %cond.end.21
  %25 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_28 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 46
  %26 = load i64, i64* %begv_marker_28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %26, %call29
  br i1 %cmp30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.false.27
  %27 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv32 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 77
  %28 = load i64, i64* %begv32, align 8
  br label %cond.end.36

cond.false.33:                                    ; preds = %cond.false.27
  %29 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_34 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 46
  %30 = load i64, i64* %begv_marker_34, align 8
  %call35 = call i64 @marker_position(i64 %30)
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.31
  %cond37 = phi i64 [ %28, %cond.true.31 ], [ %call35, %cond.false.33 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.25
  %cond39 = phi i64 [ %24, %cond.true.25 ], [ %cond37, %cond.end.36 ]
  store i64 %cond39, i64* %old_begv, align 8
  %31 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp40 = icmp eq %struct.buffer* %31, %32
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.38
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv42 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 79
  %34 = load i64, i64* %zv42, align 8
  br label %cond.end.54

cond.false.43:                                    ; preds = %cond.end.38
  %35 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_44 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 47
  %36 = load i64, i64* %zv_marker_44, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %36, %call45
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %cond.false.43
  %37 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv48 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv48, align 8
  br label %cond.end.52

cond.false.49:                                    ; preds = %cond.false.43
  %39 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_50 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 47
  %40 = load i64, i64* %zv_marker_50, align 8
  %call51 = call i64 @marker_position(i64 %40)
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.47
  %cond53 = phi i64 [ %38, %cond.true.47 ], [ %call51, %cond.false.49 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.41
  %cond55 = phi i64 [ %34, %cond.true.41 ], [ %cond53, %cond.end.52 ]
  store i64 %cond55, i64* %old_zv, align 8
  %41 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp56 = icmp eq %struct.buffer* %41, %42
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.54
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 78
  %44 = load i64, i64* %begv_byte, align 8
  br label %cond.end.69

cond.false.58:                                    ; preds = %cond.end.54
  %45 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_59 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 46
  %46 = load i64, i64* %begv_marker_59, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %46, %call60
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.false.58
  %47 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_byte63 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 78
  %48 = load i64, i64* %begv_byte63, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.false.58
  %49 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_marker_65 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 46
  %50 = load i64, i64* %begv_marker_65, align 8
  %call66 = call i64 @marker_byte_position(i64 %50)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.62
  %cond68 = phi i64 [ %48, %cond.true.62 ], [ %call66, %cond.false.64 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.57
  %cond70 = phi i64 [ %44, %cond.true.57 ], [ %cond68, %cond.end.67 ]
  store i64 %cond70, i64* %old_begv_byte, align 8
  %51 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp71 = icmp eq %struct.buffer* %51, %52
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.69
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 80
  %54 = load i64, i64* %zv_byte, align 8
  br label %cond.end.84

cond.false.73:                                    ; preds = %cond.end.69
  %55 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_74 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 47
  %56 = load i64, i64* %zv_marker_74, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp76 = icmp eq i64 %56, %call75
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.false.73
  %57 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_byte78 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 80
  %58 = load i64, i64* %zv_byte78, align 8
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.73
  %59 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_marker_80 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 47
  %60 = load i64, i64* %zv_marker_80, align 8
  %call81 = call i64 @marker_byte_position(i64 %60)
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.77
  %cond83 = phi i64 [ %58, %cond.true.77 ], [ %call81, %cond.false.79 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.72
  %cond85 = phi i64 [ %54, %cond.true.72 ], [ %cond83, %cond.end.82 ]
  store i64 %cond85, i64* %old_zv_byte, align 8
  %61 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv86 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 77
  store i64 1, i64* %begv86, align 8
  %62 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_byte87 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 78
  store i64 1, i64* %begv_byte87, align 8
  %63 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 73
  %64 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %64, i32 0, i32 2
  %65 = load i64, i64* %z, align 8
  %66 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv88 = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 79
  store i64 %65, i64* %zv88, align 8
  %67 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %text89 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 73
  %68 = load %struct.buffer_text*, %struct.buffer_text** %text89, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %68, i32 0, i32 4
  %69 = load i64, i64* %z_byte, align 8
  %70 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_byte90 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 80
  store i64 %69, i64* %zv_byte90, align 8
  %71 = load i64, i64* %position.addr, align 8
  %call91 = call i64 @make_natnum(i64 %71)
  store i64 %call91, i64* %lispy_position, align 8
  %72 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %73 = bitcast %struct.buffer* %72 to i8*
  %call92 = call i64 @make_lisp_ptr(i8* %73, i32 5)
  store i64 %call92, i64* %lispy_buffer, align 8
  %74 = load i64, i64* %lispy_position, align 8
  %75 = load i64, i64* %type.addr, align 8
  %76 = load i64, i64* %lispy_buffer, align 8
  %call93 = call i64 @Fget_char_property(i64 %74, i64 %75, i64 %76)
  store i64 %call93, i64* %prop, align 8
  %77 = load i64, i64* %prop, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp95 = icmp eq i64 %77, %call94
  br i1 %cmp95, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.84
  %78 = load i64, i64* %lispy_position, align 8
  %79 = load i64, i64* %type.addr, align 8
  %80 = load i64, i64* %lispy_buffer, align 8
  %call96 = call i64 @Fget_pos_property(i64 %78, i64 %79, i64 %80)
  store i64 %call96, i64* %prop, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.84
  %81 = load i64, i64* %old_begv, align 8
  %82 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv97 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 77
  store i64 %81, i64* %begv97, align 8
  %83 = load i64, i64* %old_begv_byte, align 8
  %84 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %begv_byte98 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 78
  store i64 %83, i64* %begv_byte98, align 8
  %85 = load i64, i64* %old_zv, align 8
  %86 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv99 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 79
  store i64 %85, i64* %zv99, align 8
  %87 = load i64, i64* %old_zv_byte, align 8
  %88 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %zv_byte100 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 80
  store i64 %87, i64* %zv_byte100, align 8
  %89 = load i64, i64* %prop, align 8
  %call101 = call i64 @get_keymap(i64 %89, i1 zeroext false, i1 zeroext false)
  store i64 %call101, i64* %prop, align 8
  %90 = load i64, i64* %prop, align 8
  %and = and i64 %90, 7
  %conv = trunc i64 %and to i32
  %cmp102 = icmp eq i32 %conv, 3
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end
  %91 = load i64, i64* %prop, align 8
  store i64 %91, i64* %retval
  br label %return

if.end.105:                                       ; preds = %if.end
  %92 = load i64, i64* %type.addr, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp107 = icmp eq i64 %92, %call106
  br i1 %cmp107, label %if.then.109, label %if.else

if.then.109:                                      ; preds = %if.end.105
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call110, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.105
  %93 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %keymap_ = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 14
  %94 = load i64, i64* %keymap_, align 8
  store i64 %94, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.109, %if.then.104
  %95 = load i64, i64* %retval
  ret i64 %95
}

declare i64 @make_natnum(i64) #1

declare i64 @Fget_pos_property(i64, i64, i64) #1

declare i64 @get_keymap(i64, i1 zeroext, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define %struct.interval* @copy_intervals(%struct.interval* %tree, i64 %start, i64 %length) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %tree.addr = alloca %struct.interval*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %new = alloca %struct.interval*, align 8
  %t = alloca %struct.interval*, align 8
  %got = alloca i64, align 8
  %prevlen = alloca i64, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp sle i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %3 = load i64, i64* %start.addr, align 8
  %call = call %struct.interval* @find_interval(%struct.interval* %2, i64 %3)
  store %struct.interval* %call, %struct.interval** %i, align 8
  %4 = load i64, i64* %start.addr, align 8
  %5 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 1
  %6 = load i64, i64* %position, align 8
  %sub = sub nsw i64 %4, %6
  %add = add nsw i64 %sub, 1
  %7 = load i64, i64* %length.addr, align 8
  %add1 = add nsw i64 %add, %7
  %8 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp2 = icmp eq %struct.interval* %8, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.22

cond.false:                                       ; preds = %if.end
  %9 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp3 = icmp eq %struct.interval* %9, null
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 0
  %11 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i64 [ 0, %cond.true.4 ], [ %11, %cond.false.5 ]
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %13 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp6 = icmp eq %struct.interval* %13, null
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.8:                                     ; preds = %cond.end
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %right9 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right9, align 8
  %total_length10 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 0
  %16 = load i64, i64* %total_length10, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.8, %cond.true.7
  %cond12 = phi i64 [ 0, %cond.true.7 ], [ %16, %cond.false.8 ]
  %sub13 = sub nsw i64 %cond, %cond12
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp14 = icmp eq %struct.interval* %18, null
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end.11
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end.11
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %left17 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left17, align 8
  %total_length18 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 0
  %21 = load i64, i64* %total_length18, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i64 [ 0, %cond.true.15 ], [ %21, %cond.false.16 ]
  %sub21 = sub nsw i64 %sub13, %cond20
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.19, %cond.true
  %cond23 = phi i64 [ 0, %cond.true ], [ %sub21, %cond.end.19 ]
  %cmp24 = icmp slt i64 %add1, %cond23
  br i1 %cmp24, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %cond.end.22
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool25 = icmp ne %struct.interval* %22, null
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.29

lor.lhs.false.26:                                 ; preds = %land.lhs.true
  %23 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 6
  %24 = load i64, i64* %plist, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %24, %call27
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.26, %land.lhs.true
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.26, %cond.end.22
  %call31 = call %struct.interval* @make_interval()
  store %struct.interval* %call31, %struct.interval** %new, align 8
  %25 = load %struct.interval*, %struct.interval** %new, align 8
  %position32 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 1
  store i64 0, i64* %position32, align 8
  %26 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp33 = icmp eq %struct.interval* %26, null
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.end.30
  br label %cond.end.60

cond.false.35:                                    ; preds = %if.end.30
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp36 = icmp eq %struct.interval* %27, null
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false.35
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.false.35
  %28 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length39 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length39, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.37
  %cond41 = phi i64 [ 0, %cond.true.37 ], [ %29, %cond.false.38 ]
  %30 = load %struct.interval*, %struct.interval** %i, align 8
  %right42 = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 3
  %31 = load %struct.interval*, %struct.interval** %right42, align 8
  %cmp43 = icmp eq %struct.interval* %31, null
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.40
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.end.40
  %32 = load %struct.interval*, %struct.interval** %i, align 8
  %right46 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 3
  %33 = load %struct.interval*, %struct.interval** %right46, align 8
  %total_length47 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length47, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i64 [ 0, %cond.true.44 ], [ %34, %cond.false.45 ]
  %sub50 = sub nsw i64 %cond41, %cond49
  %35 = load %struct.interval*, %struct.interval** %i, align 8
  %left51 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 2
  %36 = load %struct.interval*, %struct.interval** %left51, align 8
  %cmp52 = icmp eq %struct.interval* %36, null
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.48
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.end.48
  %37 = load %struct.interval*, %struct.interval** %i, align 8
  %left55 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 2
  %38 = load %struct.interval*, %struct.interval** %left55, align 8
  %total_length56 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length56, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i64 [ 0, %cond.true.53 ], [ %39, %cond.false.54 ]
  %sub59 = sub nsw i64 %sub50, %cond58
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.57, %cond.true.34
  %cond61 = phi i64 [ 0, %cond.true.34 ], [ %sub59, %cond.end.57 ]
  %40 = load i64, i64* %start.addr, align 8
  %41 = load %struct.interval*, %struct.interval** %i, align 8
  %position62 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 1
  %42 = load i64, i64* %position62, align 8
  %sub63 = sub nsw i64 %40, %42
  %sub64 = sub nsw i64 %cond61, %sub63
  store i64 %sub64, i64* %got, align 8
  %43 = load i64, i64* %length.addr, align 8
  %44 = load %struct.interval*, %struct.interval** %new, align 8
  %total_length65 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 0
  store i64 %43, i64* %total_length65, align 8
  %45 = load %struct.interval*, %struct.interval** %i, align 8
  %46 = load %struct.interval*, %struct.interval** %new, align 8
  call void @copy_properties(%struct.interval* %45, %struct.interval* %46)
  %47 = load %struct.interval*, %struct.interval** %new, align 8
  store %struct.interval* %47, %struct.interval** %t, align 8
  %48 = load i64, i64* %got, align 8
  store i64 %48, i64* %prevlen, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.96, %cond.end.60
  %49 = load i64, i64* %got, align 8
  %50 = load i64, i64* %length.addr, align 8
  %cmp66 = icmp slt i64 %49, %50
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load %struct.interval*, %struct.interval** %i, align 8
  %call67 = call %struct.interval* @next_interval(%struct.interval* %51)
  store %struct.interval* %call67, %struct.interval** %i, align 8
  %52 = load %struct.interval*, %struct.interval** %t, align 8
  %53 = load i64, i64* %prevlen, align 8
  %call68 = call %struct.interval* @split_interval_right(%struct.interval* %52, i64 %53)
  store %struct.interval* %call68, %struct.interval** %t, align 8
  %54 = load %struct.interval*, %struct.interval** %i, align 8
  %55 = load %struct.interval*, %struct.interval** %t, align 8
  call void @copy_properties(%struct.interval* %54, %struct.interval* %55)
  %56 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp69 = icmp eq %struct.interval* %56, null
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %while.body
  br label %cond.end.96

cond.false.71:                                    ; preds = %while.body
  %57 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp72 = icmp eq %struct.interval* %57, null
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.71
  br label %cond.end.76

cond.false.74:                                    ; preds = %cond.false.71
  %58 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length75 = getelementptr inbounds %struct.interval, %struct.interval* %58, i32 0, i32 0
  %59 = load i64, i64* %total_length75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.74, %cond.true.73
  %cond77 = phi i64 [ 0, %cond.true.73 ], [ %59, %cond.false.74 ]
  %60 = load %struct.interval*, %struct.interval** %i, align 8
  %right78 = getelementptr inbounds %struct.interval, %struct.interval* %60, i32 0, i32 3
  %61 = load %struct.interval*, %struct.interval** %right78, align 8
  %cmp79 = icmp eq %struct.interval* %61, null
  br i1 %cmp79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end.76
  br label %cond.end.84

cond.false.81:                                    ; preds = %cond.end.76
  %62 = load %struct.interval*, %struct.interval** %i, align 8
  %right82 = getelementptr inbounds %struct.interval, %struct.interval* %62, i32 0, i32 3
  %63 = load %struct.interval*, %struct.interval** %right82, align 8
  %total_length83 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 0
  %64 = load i64, i64* %total_length83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.true.80
  %cond85 = phi i64 [ 0, %cond.true.80 ], [ %64, %cond.false.81 ]
  %sub86 = sub nsw i64 %cond77, %cond85
  %65 = load %struct.interval*, %struct.interval** %i, align 8
  %left87 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 2
  %66 = load %struct.interval*, %struct.interval** %left87, align 8
  %cmp88 = icmp eq %struct.interval* %66, null
  br i1 %cmp88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.84
  br label %cond.end.93

cond.false.90:                                    ; preds = %cond.end.84
  %67 = load %struct.interval*, %struct.interval** %i, align 8
  %left91 = getelementptr inbounds %struct.interval, %struct.interval* %67, i32 0, i32 2
  %68 = load %struct.interval*, %struct.interval** %left91, align 8
  %total_length92 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 0
  %69 = load i64, i64* %total_length92, align 8
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.true.89
  %cond94 = phi i64 [ 0, %cond.true.89 ], [ %69, %cond.false.90 ]
  %sub95 = sub nsw i64 %sub86, %cond94
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.93, %cond.true.70
  %cond97 = phi i64 [ 0, %cond.true.70 ], [ %sub95, %cond.end.93 ]
  store i64 %cond97, i64* %prevlen, align 8
  %70 = load i64, i64* %prevlen, align 8
  %71 = load i64, i64* %got, align 8
  %add98 = add nsw i64 %71, %70
  store i64 %add98, i64* %got, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load %struct.interval*, %struct.interval** %new, align 8
  %call99 = call %struct.interval* @balance_an_interval(%struct.interval* %72)
  store %struct.interval* %call99, %struct.interval** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.29, %if.then
  %73 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %73
}

; Function Attrs: nounwind uwtable
define void @copy_intervals_to_string(i64 %string, %struct.buffer* %buffer, i64 %position, i64 %length) #0 {
entry:
  %string.addr = alloca i64, align 8
  %buffer.addr = alloca %struct.buffer*, align 8
  %position.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %interval_copy = alloca %struct.interval*, align 8
  store i64 %string, i64* %string.addr, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  %1 = load i64, i64* %position.addr, align 8
  %2 = load i64, i64* %length.addr, align 8
  %call1 = call %struct.interval* @copy_intervals(%struct.interval* %call, i64 %1, i64 %2)
  store %struct.interval* %call1, %struct.interval** %interval_copy, align 8
  %3 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  %tobool = icmp ne %struct.interval* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  %5 = load i64, i64* %string.addr, align 8
  call void @set_interval_object(%struct.interval* %4, i64 %5)
  %6 = load i64, i64* %string.addr, align 8
  %7 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  call void @set_string_intervals(i64 %6, %struct.interval* %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @compare_string_intervals(i64 %s1, i64 %s2) #0 {
entry:
  %retval = alloca i1, align 1
  %s1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %i1 = alloca %struct.interval*, align 8
  %i2 = alloca %struct.interval*, align 8
  %pos = alloca i64, align 8
  %end = alloca i64, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %distance = alloca i64, align 8
  store i64 %s1, i64* %s1.addr, align 8
  store i64 %s2, i64* %s2.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i64, i64* %s1.addr, align 8
  %call = call i64 @SCHARS(i64 %0)
  store i64 %call, i64* %end, align 8
  %1 = load i64, i64* %s1.addr, align 8
  %call1 = call %struct.interval* @string_intervals(i64 %1)
  %call2 = call %struct.interval* @find_interval(%struct.interval* %call1, i64 0)
  store %struct.interval* %call2, %struct.interval** %i1, align 8
  %2 = load i64, i64* %s2.addr, align 8
  %call3 = call %struct.interval* @string_intervals(i64 %2)
  %call4 = call %struct.interval* @find_interval(%struct.interval* %call3, i64 0)
  store %struct.interval* %call4, %struct.interval** %i2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %entry
  %3 = load i64, i64* %pos, align 8
  %4 = load i64, i64* %end, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.interval*, %struct.interval** %i1, align 8
  %cmp5 = icmp ne %struct.interval* %5, null
  br i1 %cmp5, label %cond.true, label %cond.false.28

cond.true:                                        ; preds = %while.body
  %6 = load %struct.interval*, %struct.interval** %i1, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 1
  %7 = load i64, i64* %position, align 8
  %8 = load %struct.interval*, %struct.interval** %i1, align 8
  %cmp6 = icmp eq %struct.interval* %8, null
  br i1 %cmp6, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  br label %cond.end.26

cond.false:                                       ; preds = %cond.true
  %9 = load %struct.interval*, %struct.interval** %i1, align 8
  %cmp8 = icmp eq %struct.interval* %9, null
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %10 = load %struct.interval*, %struct.interval** %i1, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 0
  %11 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi i64 [ 0, %cond.true.9 ], [ %11, %cond.false.10 ]
  %12 = load %struct.interval*, %struct.interval** %i1, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %13 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp11 = icmp eq %struct.interval* %13, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.16

cond.false.13:                                    ; preds = %cond.end
  %14 = load %struct.interval*, %struct.interval** %i1, align 8
  %right14 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 0
  %16 = load i64, i64* %total_length15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i64 [ 0, %cond.true.12 ], [ %16, %cond.false.13 ]
  %sub = sub nsw i64 %cond, %cond17
  %17 = load %struct.interval*, %struct.interval** %i1, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp18 = icmp eq %struct.interval* %18, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.16
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end.16
  %19 = load %struct.interval*, %struct.interval** %i1, align 8
  %left21 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left21, align 8
  %total_length22 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 0
  %21 = load i64, i64* %total_length22, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.19
  %cond24 = phi i64 [ 0, %cond.true.19 ], [ %21, %cond.false.20 ]
  %sub25 = sub nsw i64 %sub, %cond24
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.23, %cond.true.7
  %cond27 = phi i64 [ 0, %cond.true.7 ], [ %sub25, %cond.end.23 ]
  %add = add nsw i64 %7, %cond27
  br label %cond.end.29

cond.false.28:                                    ; preds = %while.body
  %22 = load i64, i64* %end, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.end.26
  %cond30 = phi i64 [ %add, %cond.end.26 ], [ %22, %cond.false.28 ]
  %23 = load i64, i64* %pos, align 8
  %sub31 = sub nsw i64 %cond30, %23
  store i64 %sub31, i64* %len1, align 8
  %24 = load %struct.interval*, %struct.interval** %i2, align 8
  %cmp32 = icmp ne %struct.interval* %24, null
  br i1 %cmp32, label %cond.true.33, label %cond.false.65

cond.true.33:                                     ; preds = %cond.end.29
  %25 = load %struct.interval*, %struct.interval** %i2, align 8
  %position34 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 1
  %26 = load i64, i64* %position34, align 8
  %27 = load %struct.interval*, %struct.interval** %i2, align 8
  %cmp35 = icmp eq %struct.interval* %27, null
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.true.33
  br label %cond.end.62

cond.false.37:                                    ; preds = %cond.true.33
  %28 = load %struct.interval*, %struct.interval** %i2, align 8
  %cmp38 = icmp eq %struct.interval* %28, null
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.false.37
  %29 = load %struct.interval*, %struct.interval** %i2, align 8
  %total_length41 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 0
  %30 = load i64, i64* %total_length41, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  %cond43 = phi i64 [ 0, %cond.true.39 ], [ %30, %cond.false.40 ]
  %31 = load %struct.interval*, %struct.interval** %i2, align 8
  %right44 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 3
  %32 = load %struct.interval*, %struct.interval** %right44, align 8
  %cmp45 = icmp eq %struct.interval* %32, null
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end.42
  br label %cond.end.50

cond.false.47:                                    ; preds = %cond.end.42
  %33 = load %struct.interval*, %struct.interval** %i2, align 8
  %right48 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 3
  %34 = load %struct.interval*, %struct.interval** %right48, align 8
  %total_length49 = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 0
  %35 = load i64, i64* %total_length49, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.46
  %cond51 = phi i64 [ 0, %cond.true.46 ], [ %35, %cond.false.47 ]
  %sub52 = sub nsw i64 %cond43, %cond51
  %36 = load %struct.interval*, %struct.interval** %i2, align 8
  %left53 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 2
  %37 = load %struct.interval*, %struct.interval** %left53, align 8
  %cmp54 = icmp eq %struct.interval* %37, null
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.50
  br label %cond.end.59

cond.false.56:                                    ; preds = %cond.end.50
  %38 = load %struct.interval*, %struct.interval** %i2, align 8
  %left57 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 2
  %39 = load %struct.interval*, %struct.interval** %left57, align 8
  %total_length58 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 0
  %40 = load i64, i64* %total_length58, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.56, %cond.true.55
  %cond60 = phi i64 [ 0, %cond.true.55 ], [ %40, %cond.false.56 ]
  %sub61 = sub nsw i64 %sub52, %cond60
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.59, %cond.true.36
  %cond63 = phi i64 [ 0, %cond.true.36 ], [ %sub61, %cond.end.59 ]
  %add64 = add nsw i64 %26, %cond63
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end.29
  %41 = load i64, i64* %end, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.end.62
  %cond67 = phi i64 [ %add64, %cond.end.62 ], [ %41, %cond.false.65 ]
  %42 = load i64, i64* %pos, align 8
  %sub68 = sub nsw i64 %cond67, %42
  store i64 %sub68, i64* %len2, align 8
  %43 = load i64, i64* %len1, align 8
  %44 = load i64, i64* %len2, align 8
  %cmp69 = icmp slt i64 %43, %44
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.66
  %45 = load i64, i64* %len1, align 8
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.66
  %46 = load i64, i64* %len2, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi i64 [ %45, %cond.true.70 ], [ %46, %cond.false.71 ]
  store i64 %cond73, i64* %distance, align 8
  %47 = load %struct.interval*, %struct.interval** %i1, align 8
  %48 = load %struct.interval*, %struct.interval** %i2, align 8
  %call74 = call zeroext i1 @intervals_equal(%struct.interval* %47, %struct.interval* %48)
  br i1 %call74, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.72
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %cond.end.72
  %49 = load i64, i64* %distance, align 8
  %50 = load i64, i64* %pos, align 8
  %add75 = add nsw i64 %50, %49
  store i64 %add75, i64* %pos, align 8
  %51 = load i64, i64* %len1, align 8
  %52 = load i64, i64* %distance, align 8
  %cmp76 = icmp eq i64 %51, %52
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end
  %53 = load %struct.interval*, %struct.interval** %i1, align 8
  %call78 = call %struct.interval* @next_interval(%struct.interval* %53)
  store %struct.interval* %call78, %struct.interval** %i1, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end
  %54 = load i64, i64* %len2, align 8
  %55 = load i64, i64* %distance, align 8
  %cmp80 = icmp eq i64 %54, %55
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %56 = load %struct.interval*, %struct.interval** %i2, align 8
  %call82 = call %struct.interval* @next_interval(%struct.interval* %56)
  store %struct.interval* %call82, %struct.interval** %i2, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %57 = load i1, i1* %retval
  ret i1 %57
}

; Function Attrs: nounwind uwtable
define void @set_intervals_multibyte(i1 zeroext %multi_flag) #0 {
entry:
  %multi_flag.addr = alloca i8, align 1
  %i = alloca %struct.interval*, align 8
  %frombool = zext i1 %multi_flag to i8
  store i8 %frombool, i8* %multi_flag.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  store %struct.interval* %call, %struct.interval** %i, align 8
  %1 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %i, align 8
  %3 = load i8, i8* %multi_flag.addr, align 1
  %tobool1 = trunc i8 %3 to i1
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 2
  %6 = load i64, i64* %z, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 4
  %9 = load i64, i64* %z_byte, align 8
  call void @set_intervals_multibyte_1(%struct.interval* %2, i1 zeroext %tobool1, i64 1, i64 1, i64 %6, i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_intervals_multibyte_1(%struct.interval* %i, i1 zeroext %multi_flag, i64 %start, i64 %start_byte, i64 %end, i64 %end_byte) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %multi_flag.addr = alloca i8, align 1
  %start.addr = alloca i64, align 8
  %start_byte.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %end_byte.addr = alloca i64, align 8
  %left_end = alloca i64, align 8
  %left_end_byte = alloca i64, align 8
  %temp = alloca i64, align 8
  %right_start_byte = alloca i64, align 8
  %right_start = alloca i64, align 8
  %temp46 = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %frombool = zext i1 %multi_flag to i8
  store i8 %frombool, i8* %multi_flag.addr, align 1
  store i64 %start, i64* %start.addr, align 8
  store i64 %start_byte, i64* %start_byte.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %end_byte, i64* %end_byte.addr, align 8
  %0 = load i8, i8* %multi_flag.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %end.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %1, %2
  %3 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 0
  store i64 %sub, i64* %total_length, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %end_byte.addr, align 8
  %5 = load i64, i64* %start_byte.addr, align 8
  %sub1 = sub nsw i64 %4, %5
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length2 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 0
  store i64 %sub1, i64* %total_length2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp = icmp eq %struct.interval* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length3 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 0
  %9 = load i64, i64* %total_length3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %9, %cond.false ]
  %cmp4 = icmp eq i64 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %10 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @delete_interval(%struct.interval* %10)
  br label %if.end.119

if.end.6:                                         ; preds = %cond.end
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool7 = icmp ne %struct.interval* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.41

if.then.8:                                        ; preds = %if.end.6
  %13 = load i8, i8* %multi_flag.addr, align 1
  %tobool9 = trunc i8 %13 to i1
  br i1 %tobool9, label %if.then.10, label %if.else.27

if.then.10:                                       ; preds = %if.then.8
  %14 = load i64, i64* %start_byte.addr, align 8
  %15 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left11 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 2
  %16 = load %struct.interval*, %struct.interval** %left11, align 8
  %tobool12 = icmp ne %struct.interval* %16, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %if.then.10
  %17 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left14 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 0
  %19 = load i64, i64* %total_length15, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.then.10
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.13
  %cond18 = phi i64 [ %19, %cond.true.13 ], [ 0, %cond.false.16 ]
  %add = add nsw i64 %14, %cond18
  store i64 %add, i64* %left_end_byte, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %21 = load i64, i64* %left_end_byte, align 8
  %call = call i64 @buf_bytepos_to_charpos(%struct.buffer* %20, i64 %21)
  store i64 %call, i64* %left_end, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %23 = load i64, i64* %left_end, align 8
  %call19 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %22, i64 %23)
  store i64 %call19, i64* %temp, align 8
  %24 = load i64, i64* %left_end_byte, align 8
  %25 = load i64, i64* %temp, align 8
  %cmp20 = icmp sgt i64 %24, %25
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end.17
  %26 = load i64, i64* %temp, align 8
  store i64 %26, i64* %left_end_byte, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end.17
  %27 = load i64, i64* %left_end_byte, align 8
  %28 = load i64, i64* %temp, align 8
  %cmp23 = icmp slt i64 %27, %28
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %29 = load i64, i64* %left_end, align 8
  %dec = add nsw i64 %29, -1
  store i64 %dec, i64* %left_end, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %31 = load i64, i64* %left_end, align 8
  %call25 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %30, i64 %31)
  store i64 %call25, i64* %left_end_byte, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.38

if.else.27:                                       ; preds = %if.then.8
  %32 = load i64, i64* %start.addr, align 8
  %33 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left28 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 2
  %34 = load %struct.interval*, %struct.interval** %left28, align 8
  %tobool29 = icmp ne %struct.interval* %34, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %if.else.27
  %35 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left31 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 2
  %36 = load %struct.interval*, %struct.interval** %left31, align 8
  %total_length32 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 0
  %37 = load i64, i64* %total_length32, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.else.27
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.30
  %cond35 = phi i64 [ %37, %cond.true.30 ], [ 0, %cond.false.33 ]
  %add36 = add nsw i64 %32, %cond35
  store i64 %add36, i64* %left_end, align 8
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %39 = load i64, i64* %left_end, align 8
  %call37 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %38, i64 %39)
  store i64 %call37, i64* %left_end_byte, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.34, %if.end.26
  %40 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left39 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 2
  %41 = load %struct.interval*, %struct.interval** %left39, align 8
  %42 = load i8, i8* %multi_flag.addr, align 1
  %tobool40 = trunc i8 %42 to i1
  %43 = load i64, i64* %start.addr, align 8
  %44 = load i64, i64* %start_byte.addr, align 8
  %45 = load i64, i64* %left_end, align 8
  %46 = load i64, i64* %left_end_byte, align 8
  call void @set_intervals_multibyte_1(%struct.interval* %41, i1 zeroext %tobool40, i64 %43, i64 %44, i64 %45, i64 %46)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %if.end.6
  %47 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 3
  %48 = load %struct.interval*, %struct.interval** %right, align 8
  %tobool42 = icmp ne %struct.interval* %48, null
  br i1 %tobool42, label %if.then.43, label %if.end.79

if.then.43:                                       ; preds = %if.end.41
  %49 = load i8, i8* %multi_flag.addr, align 1
  %tobool44 = trunc i8 %49 to i1
  br i1 %tobool44, label %if.then.45, label %if.else.65

if.then.45:                                       ; preds = %if.then.43
  %50 = load i64, i64* %end_byte.addr, align 8
  %51 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right47 = getelementptr inbounds %struct.interval, %struct.interval* %51, i32 0, i32 3
  %52 = load %struct.interval*, %struct.interval** %right47, align 8
  %tobool48 = icmp ne %struct.interval* %52, null
  br i1 %tobool48, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %if.then.45
  %53 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right50 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 3
  %54 = load %struct.interval*, %struct.interval** %right50, align 8
  %total_length51 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 0
  %55 = load i64, i64* %total_length51, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.then.45
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.49
  %cond54 = phi i64 [ %55, %cond.true.49 ], [ 0, %cond.false.52 ]
  %sub55 = sub nsw i64 %50, %cond54
  store i64 %sub55, i64* %right_start_byte, align 8
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %57 = load i64, i64* %right_start_byte, align 8
  %call56 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %56, i64 %57)
  store i64 %call56, i64* %right_start, align 8
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %59 = load i64, i64* %right_start, align 8
  %call57 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %58, i64 %59)
  store i64 %call57, i64* %temp46, align 8
  %60 = load i64, i64* %right_start_byte, align 8
  %61 = load i64, i64* %temp46, align 8
  %cmp58 = icmp slt i64 %60, %61
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %cond.end.53
  %62 = load i64, i64* %temp46, align 8
  store i64 %62, i64* %right_start_byte, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %cond.end.53
  %63 = load i64, i64* %right_start_byte, align 8
  %64 = load i64, i64* %temp46, align 8
  %cmp61 = icmp sgt i64 %63, %64
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %65 = load i64, i64* %right_start, align 8
  %inc = add nsw i64 %65, 1
  store i64 %inc, i64* %right_start, align 8
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %67 = load i64, i64* %right_start, align 8
  %call63 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %66, i64 %67)
  store i64 %call63, i64* %right_start_byte, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.60
  br label %if.end.76

if.else.65:                                       ; preds = %if.then.43
  %68 = load i64, i64* %end.addr, align 8
  %69 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right66 = getelementptr inbounds %struct.interval, %struct.interval* %69, i32 0, i32 3
  %70 = load %struct.interval*, %struct.interval** %right66, align 8
  %tobool67 = icmp ne %struct.interval* %70, null
  br i1 %tobool67, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %if.else.65
  %71 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right69 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 3
  %72 = load %struct.interval*, %struct.interval** %right69, align 8
  %total_length70 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 0
  %73 = load i64, i64* %total_length70, align 8
  br label %cond.end.72

cond.false.71:                                    ; preds = %if.else.65
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.68
  %cond73 = phi i64 [ %73, %cond.true.68 ], [ 0, %cond.false.71 ]
  %sub74 = sub nsw i64 %68, %cond73
  store i64 %sub74, i64* %right_start, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %75 = load i64, i64* %right_start, align 8
  %call75 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %74, i64 %75)
  store i64 %call75, i64* %right_start_byte, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.72, %if.end.64
  %76 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right77 = getelementptr inbounds %struct.interval, %struct.interval* %76, i32 0, i32 3
  %77 = load %struct.interval*, %struct.interval** %right77, align 8
  %78 = load i8, i8* %multi_flag.addr, align 1
  %tobool78 = trunc i8 %78 to i1
  %79 = load i64, i64* %right_start, align 8
  %80 = load i64, i64* %right_start_byte, align 8
  %81 = load i64, i64* %end.addr, align 8
  %82 = load i64, i64* %end_byte.addr, align 8
  call void @set_intervals_multibyte_1(%struct.interval* %77, i1 zeroext %tobool78, i64 %79, i64 %80, i64 %81, i64 %82)
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.76, %if.end.41
  %83 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left80 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 2
  %84 = load %struct.interval*, %struct.interval** %left80, align 8
  %tobool81 = icmp ne %struct.interval* %84, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.end.79
  %85 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left83 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 2
  %86 = load %struct.interval*, %struct.interval** %left83, align 8
  %total_length84 = getelementptr inbounds %struct.interval, %struct.interval* %86, i32 0, i32 0
  %87 = load i64, i64* %total_length84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.end.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i64 [ %87, %cond.true.82 ], [ 0, %cond.false.85 ]
  %88 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right88 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 3
  %89 = load %struct.interval*, %struct.interval** %right88, align 8
  %tobool89 = icmp ne %struct.interval* %89, null
  br i1 %tobool89, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %cond.end.86
  %90 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right91 = getelementptr inbounds %struct.interval, %struct.interval* %90, i32 0, i32 3
  %91 = load %struct.interval*, %struct.interval** %right91, align 8
  %total_length92 = getelementptr inbounds %struct.interval, %struct.interval* %91, i32 0, i32 0
  %92 = load i64, i64* %total_length92, align 8
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.86
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.90
  %cond95 = phi i64 [ %92, %cond.true.90 ], [ 0, %cond.false.93 ]
  %add96 = add nsw i64 %cond87, %cond95
  %93 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp97 = icmp eq %struct.interval* %93, null
  br i1 %cmp97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.94
  br label %cond.end.101

cond.false.99:                                    ; preds = %cond.end.94
  %94 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length100 = getelementptr inbounds %struct.interval, %struct.interval* %94, i32 0, i32 0
  %95 = load i64, i64* %total_length100, align 8
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.98
  %cond102 = phi i64 [ 0, %cond.true.98 ], [ %95, %cond.false.99 ]
  %cmp103 = icmp sge i64 %add96, %cond102
  br i1 %cmp103, label %if.then.104, label %if.end.119

if.then.104:                                      ; preds = %cond.end.101
  %96 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left105 = getelementptr inbounds %struct.interval, %struct.interval* %96, i32 0, i32 2
  %97 = load %struct.interval*, %struct.interval** %left105, align 8
  %tobool106 = icmp ne %struct.interval* %97, null
  br i1 %tobool106, label %if.then.107, label %if.else.112

if.then.107:                                      ; preds = %if.then.104
  %98 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %99 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left108 = getelementptr inbounds %struct.interval, %struct.interval* %99, i32 0, i32 2
  %100 = load %struct.interval*, %struct.interval** %left108, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %100, i32 0, i32 6
  %101 = load i64, i64* %plist, align 8
  call void @set_interval_plist(%struct.interval* %98, i64 %101)
  %102 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left109 = getelementptr inbounds %struct.interval, %struct.interval* %102, i32 0, i32 2
  %103 = load %struct.interval*, %struct.interval** %left109, align 8
  %total_length110 = getelementptr inbounds %struct.interval, %struct.interval* %103, i32 0, i32 0
  store i64 0, i64* %total_length110, align 8
  %104 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left111 = getelementptr inbounds %struct.interval, %struct.interval* %104, i32 0, i32 2
  %105 = load %struct.interval*, %struct.interval** %left111, align 8
  call void @delete_interval(%struct.interval* %105)
  br label %if.end.118

if.else.112:                                      ; preds = %if.then.104
  %106 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %107 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right113 = getelementptr inbounds %struct.interval, %struct.interval* %107, i32 0, i32 3
  %108 = load %struct.interval*, %struct.interval** %right113, align 8
  %plist114 = getelementptr inbounds %struct.interval, %struct.interval* %108, i32 0, i32 6
  %109 = load i64, i64* %plist114, align 8
  call void @set_interval_plist(%struct.interval* %106, i64 %109)
  %110 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right115 = getelementptr inbounds %struct.interval, %struct.interval* %110, i32 0, i32 3
  %111 = load %struct.interval*, %struct.interval** %right115, align 8
  %total_length116 = getelementptr inbounds %struct.interval, %struct.interval* %111, i32 0, i32 0
  store i64 0, i64* %total_length116, align 8
  %112 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right117 = getelementptr inbounds %struct.interval, %struct.interval* %112, i32 0, i32 3
  %113 = load %struct.interval*, %struct.interval** %right117, align 8
  call void @delete_interval(%struct.interval* %113)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.112, %if.then.107
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.5, %if.end.118, %cond.end.101
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @rotate_right(%struct.interval* %A) #0 {
entry:
  %A.addr = alloca %struct.interval*, align 8
  %B = alloca %struct.interval*, align 8
  %c = alloca %struct.interval*, align 8
  %old_total = alloca i64, align 8
  store %struct.interval* %A, %struct.interval** %A.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 2
  %1 = load %struct.interval*, %struct.interval** %left, align 8
  store %struct.interval* %1, %struct.interval** %B, align 8
  %2 = load %struct.interval*, %struct.interval** %B, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 3
  %3 = load %struct.interval*, %struct.interval** %right, align 8
  store %struct.interval* %3, %struct.interval** %c, align 8
  %4 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 0
  %5 = load i64, i64* %total_length, align 8
  store i64 %5, i64* %old_total, align 8
  %6 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %8 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp = icmp eq %struct.interval* %8, null
  br i1 %cmp, label %if.end.18, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %9 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up_obj1 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 5
  %bf.load2 = load i8, i8* %up_obj1, align 8
  %bf.clear3 = and i8 %bf.load2, 1
  %bf.cast4 = trunc i8 %bf.clear3 to i1
  br i1 %bf.cast4, label %if.else, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.then
  %10 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up6 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 4
  %interval7 = bitcast %union.anon* %up6 to %struct.interval**
  %11 = load %struct.interval*, %struct.interval** %interval7, align 8
  %cmp8 = icmp eq %struct.interval* %11, null
  br i1 %cmp8, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.5
  %12 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up9 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 4
  %interval10 = bitcast %union.anon* %up9 to %struct.interval**
  %13 = load %struct.interval*, %struct.interval** %interval10, align 8
  %left11 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 2
  %14 = load %struct.interval*, %struct.interval** %left11, align 8
  %15 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %cmp12 = icmp eq %struct.interval* %14, %15
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %16 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up14 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 4
  %interval15 = bitcast %union.anon* %up14 to %struct.interval**
  %17 = load %struct.interval*, %struct.interval** %interval15, align 8
  %18 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_left(%struct.interval* %17, %struct.interval* %18)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.5, %if.then
  %19 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up16 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 4
  %interval17 = bitcast %union.anon* %up16 to %struct.interval**
  %20 = load %struct.interval*, %struct.interval** %interval17, align 8
  %21 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_right(%struct.interval* %20, %struct.interval* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %lor.lhs.false, %entry
  %22 = load %struct.interval*, %struct.interval** %B, align 8
  %23 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @copy_interval_parent(%struct.interval* %22, %struct.interval* %23)
  %24 = load %struct.interval*, %struct.interval** %B, align 8
  %25 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @set_interval_right(%struct.interval* %24, %struct.interval* %25)
  %26 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %27 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_parent(%struct.interval* %26, %struct.interval* %27)
  %28 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %29 = load %struct.interval*, %struct.interval** %c, align 8
  call void @set_interval_left(%struct.interval* %28, %struct.interval* %29)
  %30 = load %struct.interval*, %struct.interval** %c, align 8
  %tobool = icmp ne %struct.interval* %30, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.18
  %31 = load %struct.interval*, %struct.interval** %c, align 8
  %32 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @set_interval_parent(%struct.interval* %31, %struct.interval* %32)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.18
  %33 = load %struct.interval*, %struct.interval** %B, align 8
  %total_length21 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length21, align 8
  %35 = load %struct.interval*, %struct.interval** %c, align 8
  %cmp22 = icmp eq %struct.interval* %35, null
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %36 = load %struct.interval*, %struct.interval** %c, align 8
  %total_length23 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 0
  %37 = load i64, i64* %total_length23, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %37, %cond.false ]
  %sub = sub nsw i64 %34, %cond
  %38 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %total_length24 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length24, align 8
  %sub25 = sub nsw i64 %39, %sub
  store i64 %sub25, i64* %total_length24, align 8
  %40 = load i64, i64* %old_total, align 8
  %41 = load %struct.interval*, %struct.interval** %B, align 8
  %total_length26 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 0
  store i64 %40, i64* %total_length26, align 8
  %42 = load %struct.interval*, %struct.interval** %B, align 8
  ret %struct.interval* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @rotate_left(%struct.interval* %A) #0 {
entry:
  %A.addr = alloca %struct.interval*, align 8
  %B = alloca %struct.interval*, align 8
  %c = alloca %struct.interval*, align 8
  %old_total = alloca i64, align 8
  store %struct.interval* %A, %struct.interval** %A.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 3
  %1 = load %struct.interval*, %struct.interval** %right, align 8
  store %struct.interval* %1, %struct.interval** %B, align 8
  %2 = load %struct.interval*, %struct.interval** %B, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 2
  %3 = load %struct.interval*, %struct.interval** %left, align 8
  store %struct.interval* %3, %struct.interval** %c, align 8
  %4 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 0
  %5 = load i64, i64* %total_length, align 8
  store i64 %5, i64* %old_total, align 8
  %6 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %8 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp = icmp eq %struct.interval* %8, null
  br i1 %cmp, label %if.end.18, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %9 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up_obj1 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 5
  %bf.load2 = load i8, i8* %up_obj1, align 8
  %bf.clear3 = and i8 %bf.load2, 1
  %bf.cast4 = trunc i8 %bf.clear3 to i1
  br i1 %bf.cast4, label %if.else, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.then
  %10 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up6 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 4
  %interval7 = bitcast %union.anon* %up6 to %struct.interval**
  %11 = load %struct.interval*, %struct.interval** %interval7, align 8
  %cmp8 = icmp eq %struct.interval* %11, null
  br i1 %cmp8, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.5
  %12 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up9 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 4
  %interval10 = bitcast %union.anon* %up9 to %struct.interval**
  %13 = load %struct.interval*, %struct.interval** %interval10, align 8
  %left11 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 2
  %14 = load %struct.interval*, %struct.interval** %left11, align 8
  %15 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %cmp12 = icmp eq %struct.interval* %14, %15
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %16 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up14 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 4
  %interval15 = bitcast %union.anon* %up14 to %struct.interval**
  %17 = load %struct.interval*, %struct.interval** %interval15, align 8
  %18 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_left(%struct.interval* %17, %struct.interval* %18)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.5, %if.then
  %19 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %up16 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 4
  %interval17 = bitcast %union.anon* %up16 to %struct.interval**
  %20 = load %struct.interval*, %struct.interval** %interval17, align 8
  %21 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_right(%struct.interval* %20, %struct.interval* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %lor.lhs.false, %entry
  %22 = load %struct.interval*, %struct.interval** %B, align 8
  %23 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @copy_interval_parent(%struct.interval* %22, %struct.interval* %23)
  %24 = load %struct.interval*, %struct.interval** %B, align 8
  %25 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @set_interval_left(%struct.interval* %24, %struct.interval* %25)
  %26 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %27 = load %struct.interval*, %struct.interval** %B, align 8
  call void @set_interval_parent(%struct.interval* %26, %struct.interval* %27)
  %28 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %29 = load %struct.interval*, %struct.interval** %c, align 8
  call void @set_interval_right(%struct.interval* %28, %struct.interval* %29)
  %30 = load %struct.interval*, %struct.interval** %c, align 8
  %tobool = icmp ne %struct.interval* %30, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.18
  %31 = load %struct.interval*, %struct.interval** %c, align 8
  %32 = load %struct.interval*, %struct.interval** %A.addr, align 8
  call void @set_interval_parent(%struct.interval* %31, %struct.interval* %32)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.18
  %33 = load %struct.interval*, %struct.interval** %B, align 8
  %total_length21 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length21, align 8
  %35 = load %struct.interval*, %struct.interval** %c, align 8
  %cmp22 = icmp eq %struct.interval* %35, null
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %36 = load %struct.interval*, %struct.interval** %c, align 8
  %total_length23 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 0
  %37 = load i64, i64* %total_length23, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %37, %cond.false ]
  %sub = sub nsw i64 %34, %cond
  %38 = load %struct.interval*, %struct.interval** %A.addr, align 8
  %total_length24 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length24, align 8
  %sub25 = sub nsw i64 %39, %sub
  store i64 %sub25, i64* %total_length24, align 8
  %40 = load i64, i64* %old_total, align 8
  %41 = load %struct.interval*, %struct.interval** %B, align 8
  %total_length26 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 0
  store i64 %40, i64* %total_length26, align 8
  %42 = load %struct.interval*, %struct.interval** %B, align 8
  ret %struct.interval* %42
}

; Function Attrs: nounwind uwtable
define internal void @copy_interval_parent(%struct.interval* %d, %struct.interval* %s) #0 {
entry:
  %d.addr = alloca %struct.interval*, align 8
  %s.addr = alloca %struct.interval*, align 8
  store %struct.interval* %d, %struct.interval** %d.addr, align 8
  store %struct.interval* %s, %struct.interval** %s.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %d.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 4
  %1 = load %struct.interval*, %struct.interval** %s.addr, align 8
  %up1 = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 4
  %2 = bitcast %union.anon* %up to i8*
  %3 = bitcast %union.anon* %up1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %struct.interval*, %struct.interval** %s.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %5 = load %struct.interval*, %struct.interval** %d.addr, align 8
  %up_obj2 = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 5
  %6 = zext i1 %bf.cast to i8
  %bf.load3 = load i8, i8* %up_obj2, align 8
  %bf.clear4 = and i8 %bf.load3, -2
  %bf.set = or i8 %bf.clear4, %6
  store i8 %bf.set, i8* %up_obj2, align 8
  %tobool = trunc i8 %6 to i1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @Fmemq(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @merge_properties_sticky(i64 %pleft, i64 %pright) #0 {
entry:
  %pleft.addr = alloca i64, align 8
  %pright.addr = alloca i64, align 8
  %props = alloca i64, align 8
  %front = alloca i64, align 8
  %rear = alloca i64, align 8
  %lfront = alloca i64, align 8
  %lrear = alloca i64, align 8
  %rfront = alloca i64, align 8
  %rrear = alloca i64, align 8
  %tail1 = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %sym = alloca i64, align 8
  %lval = alloca i64, align 8
  %rval = alloca i64, align 8
  %cat = alloca i64, align 8
  %use_left = alloca i8, align 1
  %use_right = alloca i8, align 1
  %lpresent = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp207 = alloca i64, align 8
  store i64 %pleft, i64* %pleft.addr, align 8
  store i64 %pright, i64* %pright.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %props, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %front, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %rear, align 8
  %0 = load i64, i64* %pleft.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 468)
  %call4 = call i64 @textget(i64 %0, i64 %call3)
  store i64 %call4, i64* %lfront, align 8
  %1 = load i64, i64* %pleft.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 794)
  %call6 = call i64 @textget(i64 %1, i64 %call5)
  store i64 %call6, i64* %lrear, align 8
  %2 = load i64, i64* %pright.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 468)
  %call8 = call i64 @textget(i64 %2, i64 %call7)
  store i64 %call8, i64* %rfront, align 8
  %3 = load i64, i64* %pright.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 794)
  %call10 = call i64 @textget(i64 %3, i64 %call9)
  store i64 %call10, i64* %rrear, align 8
  %4 = load i64, i64* %pright.addr, align 8
  store i64 %4, i64* %tail1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.194, %entry
  %5 = load i64, i64* %tail1, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.199

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %sym, align 8
  %10 = load i64, i64* %sym, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 794)
  %cmp13 = icmp eq i64 %10, %call12
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i64, i64* %sym, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 468)
  %cmp16 = icmp eq i64 %11, %call15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.194

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i64, i64* %tail1, align 8
  %sub18 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub18 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  %call19 = call i64 @Fcar(i64 %15)
  store i64 %call19, i64* %rval, align 8
  %16 = load i64, i64* %pleft.addr, align 8
  store i64 %16, i64* %tail2, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end
  %17 = load i64, i64* %tail2, align 8
  %and21 = and i64 %17, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.20
  %18 = load i64, i64* %sym, align 8
  %19 = load i64, i64* %tail2, align 8
  %sub26 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub26 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car27, align 8
  %cmp28 = icmp eq i64 %18, %22
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.25
  br label %for.end

if.end.31:                                        ; preds = %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %23 = load i64, i64* %tail2, align 8
  %sub32 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub32 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr34 = bitcast %union.anon.0* %u33 to i64*
  %26 = load i64, i64* %cdr34, align 8
  %call35 = call i64 @Fcdr(i64 %26)
  store i64 %call35, i64* %tail2, align 8
  br label %for.cond.20

for.end:                                          ; preds = %if.then.30, %for.cond.20
  %27 = load i64, i64* %tail2, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %27, %call36
  %lnot = xor i1 %cmp37, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %lpresent, align 1
  %28 = load i64, i64* %tail2, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %28, %call39
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %29 = load i64, i64* %tail2, align 8
  %call43 = call i64 @Fcdr(i64 %29)
  %call44 = call i64 @Fcar(i64 %call43)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call42, %cond.true ], [ %call44, %cond.false ]
  store i64 %cond, i64* %lval, align 8
  %30 = load i64, i64* %sym, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  %call45 = call i64 @Fassq(i64 %30, i64 %31)
  store i64 %call45, i64* %tmp, align 8
  %32 = load i8, i8* %lpresent, align 1
  %tobool = trunc i8 %32 to i1
  br i1 %tobool, label %land.rhs, label %land.end.73

land.rhs:                                         ; preds = %cond.end
  %33 = load i64, i64* %lrear, align 8
  %and47 = and i64 %33, 7
  %conv48 = trunc i64 %and47 to i32
  %cmp49 = icmp eq i32 %conv48, 3
  br i1 %cmp49, label %cond.true.51, label %cond.false.56

cond.true.51:                                     ; preds = %land.rhs
  %34 = load i64, i64* %sym, align 8
  %35 = load i64, i64* %lrear, align 8
  %call52 = call i64 @Fmemq(i64 %34, i64 %35)
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %call52, %call53
  br i1 %cmp54, label %lor.rhs, label %lor.end

cond.false.56:                                    ; preds = %land.rhs
  %36 = load i64, i64* %lrear, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %36, %call57
  br i1 %cmp58, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.false.56, %cond.true.51
  %37 = load i64, i64* %tmp, align 8
  %and60 = and i64 %37, 7
  %conv61 = trunc i64 %and60 to i32
  %cmp62 = icmp eq i32 %conv61, 3
  br i1 %cmp62, label %land.rhs.64, label %land.end

land.rhs.64:                                      ; preds = %lor.rhs
  %38 = load i64, i64* %tmp, align 8
  %sub65 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub65 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr67 = bitcast %union.anon.0* %u66 to i64*
  %41 = load i64, i64* %cdr67, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %41, %call68
  %lnot71 = xor i1 %cmp69, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.64, %lor.rhs
  %42 = phi i1 [ false, %lor.rhs ], [ %lnot71, %land.rhs.64 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %cond.false.56, %cond.true.51
  %43 = phi i1 [ true, %cond.false.56 ], [ true, %cond.true.51 ], [ %42, %land.end ]
  %lnot72 = xor i1 %43, true
  br label %land.end.73

land.end.73:                                      ; preds = %lor.end, %cond.end
  %44 = phi i1 [ false, %cond.end ], [ %lnot72, %lor.end ]
  %frombool74 = zext i1 %44 to i8
  store i8 %frombool74, i8* %use_left, align 1
  %45 = load i64, i64* %rfront, align 8
  %and75 = and i64 %45, 7
  %conv76 = trunc i64 %and75 to i32
  %cmp77 = icmp eq i32 %conv76, 3
  br i1 %cmp77, label %cond.true.79, label %cond.false.84

cond.true.79:                                     ; preds = %land.end.73
  %46 = load i64, i64* %sym, align 8
  %47 = load i64, i64* %rfront, align 8
  %call80 = call i64 @Fmemq(i64 %46, i64 %47)
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp82 = icmp eq i64 %call80, %call81
  br i1 %cmp82, label %lor.rhs.88, label %lor.end.101

cond.false.84:                                    ; preds = %land.end.73
  %48 = load i64, i64* %rfront, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp86 = icmp eq i64 %48, %call85
  br i1 %cmp86, label %lor.rhs.88, label %lor.end.101

lor.rhs.88:                                       ; preds = %cond.false.84, %cond.true.79
  %49 = load i64, i64* %tmp, align 8
  %and89 = and i64 %49, 7
  %conv90 = trunc i64 %and89 to i32
  %cmp91 = icmp eq i32 %conv90, 3
  br i1 %cmp91, label %land.rhs.93, label %land.end.100

land.rhs.93:                                      ; preds = %lor.rhs.88
  %50 = load i64, i64* %tmp, align 8
  %sub94 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub94 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u95 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr96 = bitcast %union.anon.0* %u95 to i64*
  %53 = load i64, i64* %cdr96, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %53, %call97
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.93, %lor.rhs.88
  %54 = phi i1 [ false, %lor.rhs.88 ], [ %cmp98, %land.rhs.93 ]
  br label %lor.end.101

lor.end.101:                                      ; preds = %land.end.100, %cond.false.84, %cond.true.79
  %55 = phi i1 [ true, %cond.false.84 ], [ true, %cond.true.79 ], [ %54, %land.end.100 ]
  %frombool102 = zext i1 %55 to i8
  store i8 %frombool102, i8* %use_right, align 1
  %56 = load i8, i8* %use_left, align 1
  %tobool103 = trunc i8 %56 to i1
  br i1 %tobool103, label %land.lhs.true, label %if.end.118

land.lhs.true:                                    ; preds = %lor.end.101
  %57 = load i8, i8* %use_right, align 1
  %tobool105 = trunc i8 %57 to i1
  br i1 %tobool105, label %if.then.107, label %if.end.118

if.then.107:                                      ; preds = %land.lhs.true
  %58 = load i64, i64* %lval, align 8
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp109 = icmp eq i64 %58, %call108
  br i1 %cmp109, label %if.then.111, label %if.else

if.then.111:                                      ; preds = %if.then.107
  store i8 0, i8* %use_left, align 1
  br label %if.end.117

if.else:                                          ; preds = %if.then.107
  %59 = load i64, i64* %rval, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp113 = icmp eq i64 %59, %call112
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else
  store i8 0, i8* %use_right, align 1
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.else
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.111
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true, %lor.end.101
  %60 = load i8, i8* %use_left, align 1
  %tobool119 = trunc i8 %60 to i1
  br i1 %tobool119, label %if.then.120, label %if.else.155

if.then.120:                                      ; preds = %if.end.118
  %61 = load i64, i64* %lval, align 8
  %62 = load i64, i64* %sym, align 8
  %63 = load i64, i64* %props, align 8
  %call121 = call i64 @Fcons(i64 %62, i64 %63)
  %call122 = call i64 @Fcons(i64 %61, i64 %call121)
  store i64 %call122, i64* %props, align 8
  %64 = load i64, i64* %lfront, align 8
  %and123 = and i64 %64, 7
  %conv124 = trunc i64 %and123 to i32
  %cmp125 = icmp eq i32 %conv124, 3
  br i1 %cmp125, label %cond.true.127, label %cond.false.132

cond.true.127:                                    ; preds = %if.then.120
  %65 = load i64, i64* %sym, align 8
  %66 = load i64, i64* %lfront, align 8
  %call128 = call i64 @Fmemq(i64 %65, i64 %66)
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp130 = icmp eq i64 %call128, %call129
  br i1 %cmp130, label %if.end.138, label %if.then.136

cond.false.132:                                   ; preds = %if.then.120
  %67 = load i64, i64* %lfront, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp134 = icmp eq i64 %67, %call133
  br i1 %cmp134, label %if.end.138, label %if.then.136

if.then.136:                                      ; preds = %cond.false.132, %cond.true.127
  %68 = load i64, i64* %sym, align 8
  %69 = load i64, i64* %front, align 8
  %call137 = call i64 @Fcons(i64 %68, i64 %69)
  store i64 %call137, i64* %front, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %cond.false.132, %cond.true.127
  %70 = load i64, i64* %lrear, align 8
  %and139 = and i64 %70, 7
  %conv140 = trunc i64 %and139 to i32
  %cmp141 = icmp eq i32 %conv140, 3
  br i1 %cmp141, label %cond.true.143, label %cond.false.148

cond.true.143:                                    ; preds = %if.end.138
  %71 = load i64, i64* %sym, align 8
  %72 = load i64, i64* %lrear, align 8
  %call144 = call i64 @Fmemq(i64 %71, i64 %72)
  %call145 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp146 = icmp eq i64 %call144, %call145
  br i1 %cmp146, label %if.end.154, label %if.then.152

cond.false.148:                                   ; preds = %if.end.138
  %73 = load i64, i64* %lrear, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %73, %call149
  br i1 %cmp150, label %if.end.154, label %if.then.152

if.then.152:                                      ; preds = %cond.false.148, %cond.true.143
  %74 = load i64, i64* %sym, align 8
  %75 = load i64, i64* %rear, align 8
  %call153 = call i64 @Fcons(i64 %74, i64 %75)
  store i64 %call153, i64* %rear, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %cond.false.148, %cond.true.143
  br label %if.end.193

if.else.155:                                      ; preds = %if.end.118
  %76 = load i8, i8* %use_right, align 1
  %tobool156 = trunc i8 %76 to i1
  br i1 %tobool156, label %if.then.157, label %if.end.192

if.then.157:                                      ; preds = %if.else.155
  %77 = load i64, i64* %rval, align 8
  %78 = load i64, i64* %sym, align 8
  %79 = load i64, i64* %props, align 8
  %call158 = call i64 @Fcons(i64 %78, i64 %79)
  %call159 = call i64 @Fcons(i64 %77, i64 %call158)
  store i64 %call159, i64* %props, align 8
  %80 = load i64, i64* %rfront, align 8
  %and160 = and i64 %80, 7
  %conv161 = trunc i64 %and160 to i32
  %cmp162 = icmp eq i32 %conv161, 3
  br i1 %cmp162, label %cond.true.164, label %cond.false.169

cond.true.164:                                    ; preds = %if.then.157
  %81 = load i64, i64* %sym, align 8
  %82 = load i64, i64* %rfront, align 8
  %call165 = call i64 @Fmemq(i64 %81, i64 %82)
  %call166 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp167 = icmp eq i64 %call165, %call166
  br i1 %cmp167, label %if.end.175, label %if.then.173

cond.false.169:                                   ; preds = %if.then.157
  %83 = load i64, i64* %rfront, align 8
  %call170 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp171 = icmp eq i64 %83, %call170
  br i1 %cmp171, label %if.end.175, label %if.then.173

if.then.173:                                      ; preds = %cond.false.169, %cond.true.164
  %84 = load i64, i64* %sym, align 8
  %85 = load i64, i64* %front, align 8
  %call174 = call i64 @Fcons(i64 %84, i64 %85)
  store i64 %call174, i64* %front, align 8
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %cond.false.169, %cond.true.164
  %86 = load i64, i64* %rrear, align 8
  %and176 = and i64 %86, 7
  %conv177 = trunc i64 %and176 to i32
  %cmp178 = icmp eq i32 %conv177, 3
  br i1 %cmp178, label %cond.true.180, label %cond.false.185

cond.true.180:                                    ; preds = %if.end.175
  %87 = load i64, i64* %sym, align 8
  %88 = load i64, i64* %rrear, align 8
  %call181 = call i64 @Fmemq(i64 %87, i64 %88)
  %call182 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp183 = icmp eq i64 %call181, %call182
  br i1 %cmp183, label %if.end.191, label %if.then.189

cond.false.185:                                   ; preds = %if.end.175
  %89 = load i64, i64* %rrear, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp187 = icmp eq i64 %89, %call186
  br i1 %cmp187, label %if.end.191, label %if.then.189

if.then.189:                                      ; preds = %cond.false.185, %cond.true.180
  %90 = load i64, i64* %sym, align 8
  %91 = load i64, i64* %rear, align 8
  %call190 = call i64 @Fcons(i64 %90, i64 %91)
  store i64 %call190, i64* %rear, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %cond.false.185, %cond.true.180
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.else.155
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.154
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193, %if.then
  %92 = load i64, i64* %tail1, align 8
  %sub195 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub195 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %u196 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 1
  %cdr197 = bitcast %union.anon.0* %u196 to i64*
  %95 = load i64, i64* %cdr197, align 8
  %call198 = call i64 @Fcdr(i64 %95)
  store i64 %call198, i64* %tail1, align 8
  br label %for.cond

for.end.199:                                      ; preds = %for.cond
  %96 = load i64, i64* %pleft.addr, align 8
  store i64 %96, i64* %tail2, align 8
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.337, %for.end.199
  %97 = load i64, i64* %tail2, align 8
  %and201 = and i64 %97, 7
  %conv202 = trunc i64 %and201 to i32
  %cmp203 = icmp eq i32 %conv202, 3
  br i1 %cmp203, label %for.body.205, label %for.end.342

for.body.205:                                     ; preds = %for.cond.200
  %98 = load i64, i64* %tail2, align 8
  %sub208 = sub nsw i64 %98, 3
  %99 = inttoptr i64 %sub208 to i8*
  %100 = bitcast i8* %99 to %struct.Lisp_Cons*
  %car209 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %100, i32 0, i32 0
  %101 = load i64, i64* %car209, align 8
  store i64 %101, i64* %sym, align 8
  %102 = load i64, i64* %sym, align 8
  %call210 = call i64 @builtin_lisp_symbol(i32 794)
  %cmp211 = icmp eq i64 %102, %call210
  br i1 %cmp211, label %if.then.217, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %for.body.205
  %103 = load i64, i64* %sym, align 8
  %call214 = call i64 @builtin_lisp_symbol(i32 468)
  %cmp215 = icmp eq i64 %103, %call214
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %lor.lhs.false.213, %for.body.205
  br label %for.inc.337

if.end.218:                                       ; preds = %lor.lhs.false.213
  %104 = load i64, i64* %pright.addr, align 8
  store i64 %104, i64* %tail1, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.231, %if.end.218
  %105 = load i64, i64* %tail1, align 8
  %and220 = and i64 %105, 7
  %conv221 = trunc i64 %and220 to i32
  %cmp222 = icmp eq i32 %conv221, 3
  br i1 %cmp222, label %for.body.224, label %for.end.236

for.body.224:                                     ; preds = %for.cond.219
  %106 = load i64, i64* %sym, align 8
  %107 = load i64, i64* %tail1, align 8
  %sub225 = sub nsw i64 %107, 3
  %108 = inttoptr i64 %sub225 to i8*
  %109 = bitcast i8* %108 to %struct.Lisp_Cons*
  %car226 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %109, i32 0, i32 0
  %110 = load i64, i64* %car226, align 8
  %cmp227 = icmp eq i64 %106, %110
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %for.body.224
  br label %for.end.236

if.end.230:                                       ; preds = %for.body.224
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %111 = load i64, i64* %tail1, align 8
  %sub232 = sub nsw i64 %111, 3
  %112 = inttoptr i64 %sub232 to i8*
  %113 = bitcast i8* %112 to %struct.Lisp_Cons*
  %u233 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %113, i32 0, i32 1
  %cdr234 = bitcast %union.anon.0* %u233 to i64*
  %114 = load i64, i64* %cdr234, align 8
  %call235 = call i64 @Fcdr(i64 %114)
  store i64 %call235, i64* %tail1, align 8
  br label %for.cond.219

for.end.236:                                      ; preds = %if.then.229, %for.cond.219
  %115 = load i64, i64* %tail1, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp238 = icmp eq i64 %115, %call237
  br i1 %cmp238, label %if.end.241, label %if.then.240

if.then.240:                                      ; preds = %for.end.236
  br label %for.inc.337

if.end.241:                                       ; preds = %for.end.236
  %116 = load i64, i64* %tail2, align 8
  %sub242 = sub nsw i64 %116, 3
  %117 = inttoptr i64 %sub242 to i8*
  %118 = bitcast i8* %117 to %struct.Lisp_Cons*
  %u243 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %118, i32 0, i32 1
  %cdr244 = bitcast %union.anon.0* %u243 to i64*
  %119 = load i64, i64* %cdr244, align 8
  %call245 = call i64 @Fcar(i64 %119)
  store i64 %call245, i64* %lval, align 8
  %120 = load i64, i64* %sym, align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  %call246 = call i64 @Fassq(i64 %120, i64 %121)
  store i64 %call246, i64* %tmp207, align 8
  %122 = load i64, i64* %lrear, align 8
  %and247 = and i64 %122, 7
  %conv248 = trunc i64 %and247 to i32
  %cmp249 = icmp eq i32 %conv248, 3
  br i1 %cmp249, label %cond.true.251, label %cond.false.256

cond.true.251:                                    ; preds = %if.end.241
  %123 = load i64, i64* %sym, align 8
  %124 = load i64, i64* %lrear, align 8
  %call252 = call i64 @Fmemq(i64 %123, i64 %124)
  %call253 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp254 = icmp eq i64 %call252, %call253
  br i1 %cmp254, label %lor.lhs.false.260, label %if.else.291

cond.false.256:                                   ; preds = %if.end.241
  %125 = load i64, i64* %lrear, align 8
  %call257 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp258 = icmp eq i64 %125, %call257
  br i1 %cmp258, label %lor.lhs.false.260, label %if.else.291

lor.lhs.false.260:                                ; preds = %cond.false.256, %cond.true.251
  %126 = load i64, i64* %tmp207, align 8
  %and261 = and i64 %126, 7
  %conv262 = trunc i64 %and261 to i32
  %cmp263 = icmp eq i32 %conv262, 3
  br i1 %cmp263, label %land.lhs.true.265, label %if.then.272

land.lhs.true.265:                                ; preds = %lor.lhs.false.260
  %127 = load i64, i64* %tmp207, align 8
  %sub266 = sub nsw i64 %127, 3
  %128 = inttoptr i64 %sub266 to i8*
  %129 = bitcast i8* %128 to %struct.Lisp_Cons*
  %u267 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %129, i32 0, i32 1
  %cdr268 = bitcast %union.anon.0* %u267 to i64*
  %130 = load i64, i64* %cdr268, align 8
  %call269 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp270 = icmp eq i64 %130, %call269
  br i1 %cmp270, label %if.then.272, label %if.else.291

if.then.272:                                      ; preds = %land.lhs.true.265, %lor.lhs.false.260
  %131 = load i64, i64* %lval, align 8
  %132 = load i64, i64* %sym, align 8
  %133 = load i64, i64* %props, align 8
  %call273 = call i64 @Fcons(i64 %132, i64 %133)
  %call274 = call i64 @Fcons(i64 %131, i64 %call273)
  store i64 %call274, i64* %props, align 8
  %134 = load i64, i64* %lfront, align 8
  %and275 = and i64 %134, 7
  %conv276 = trunc i64 %and275 to i32
  %cmp277 = icmp eq i32 %conv276, 3
  br i1 %cmp277, label %cond.true.279, label %cond.false.284

cond.true.279:                                    ; preds = %if.then.272
  %135 = load i64, i64* %sym, align 8
  %136 = load i64, i64* %lfront, align 8
  %call280 = call i64 @Fmemq(i64 %135, i64 %136)
  %call281 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp282 = icmp eq i64 %call280, %call281
  br i1 %cmp282, label %if.end.290, label %if.then.288

cond.false.284:                                   ; preds = %if.then.272
  %137 = load i64, i64* %lfront, align 8
  %call285 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp286 = icmp eq i64 %137, %call285
  br i1 %cmp286, label %if.end.290, label %if.then.288

if.then.288:                                      ; preds = %cond.false.284, %cond.true.279
  %138 = load i64, i64* %sym, align 8
  %139 = load i64, i64* %front, align 8
  %call289 = call i64 @Fcons(i64 %138, i64 %139)
  store i64 %call289, i64* %front, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %cond.false.284, %cond.true.279
  br label %if.end.336

if.else.291:                                      ; preds = %land.lhs.true.265, %cond.false.256, %cond.true.251
  %140 = load i64, i64* %rfront, align 8
  %and292 = and i64 %140, 7
  %conv293 = trunc i64 %and292 to i32
  %cmp294 = icmp eq i32 %conv293, 3
  br i1 %cmp294, label %cond.true.296, label %cond.false.301

cond.true.296:                                    ; preds = %if.else.291
  %141 = load i64, i64* %sym, align 8
  %142 = load i64, i64* %rfront, align 8
  %call297 = call i64 @Fmemq(i64 %141, i64 %142)
  %call298 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp299 = icmp eq i64 %call297, %call298
  br i1 %cmp299, label %lor.lhs.false.305, label %if.then.317

cond.false.301:                                   ; preds = %if.else.291
  %143 = load i64, i64* %rfront, align 8
  %call302 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp303 = icmp eq i64 %143, %call302
  br i1 %cmp303, label %lor.lhs.false.305, label %if.then.317

lor.lhs.false.305:                                ; preds = %cond.false.301, %cond.true.296
  %144 = load i64, i64* %tmp207, align 8
  %and306 = and i64 %144, 7
  %conv307 = trunc i64 %and306 to i32
  %cmp308 = icmp eq i32 %conv307, 3
  br i1 %cmp308, label %land.lhs.true.310, label %if.end.335

land.lhs.true.310:                                ; preds = %lor.lhs.false.305
  %145 = load i64, i64* %tmp207, align 8
  %sub311 = sub nsw i64 %145, 3
  %146 = inttoptr i64 %sub311 to i8*
  %147 = bitcast i8* %146 to %struct.Lisp_Cons*
  %u312 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %147, i32 0, i32 1
  %cdr313 = bitcast %union.anon.0* %u312 to i64*
  %148 = load i64, i64* %cdr313, align 8
  %call314 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp315 = icmp eq i64 %148, %call314
  br i1 %cmp315, label %if.then.317, label %if.end.335

if.then.317:                                      ; preds = %land.lhs.true.310, %cond.false.301, %cond.true.296
  %149 = load i64, i64* %sym, align 8
  %150 = load i64, i64* %front, align 8
  %call318 = call i64 @Fcons(i64 %149, i64 %150)
  store i64 %call318, i64* %front, align 8
  %151 = load i64, i64* %rrear, align 8
  %and319 = and i64 %151, 7
  %conv320 = trunc i64 %and319 to i32
  %cmp321 = icmp eq i32 %conv320, 3
  br i1 %cmp321, label %cond.true.323, label %cond.false.328

cond.true.323:                                    ; preds = %if.then.317
  %152 = load i64, i64* %sym, align 8
  %153 = load i64, i64* %rrear, align 8
  %call324 = call i64 @Fmemq(i64 %152, i64 %153)
  %call325 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp326 = icmp eq i64 %call324, %call325
  br i1 %cmp326, label %if.end.334, label %if.then.332

cond.false.328:                                   ; preds = %if.then.317
  %154 = load i64, i64* %rrear, align 8
  %call329 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp330 = icmp eq i64 %154, %call329
  br i1 %cmp330, label %if.end.334, label %if.then.332

if.then.332:                                      ; preds = %cond.false.328, %cond.true.323
  %155 = load i64, i64* %sym, align 8
  %156 = load i64, i64* %rear, align 8
  %call333 = call i64 @Fcons(i64 %155, i64 %156)
  store i64 %call333, i64* %rear, align 8
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %cond.false.328, %cond.true.323
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %land.lhs.true.310, %lor.lhs.false.305
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.290
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336, %if.then.240, %if.then.217
  %157 = load i64, i64* %tail2, align 8
  %sub338 = sub nsw i64 %157, 3
  %158 = inttoptr i64 %sub338 to i8*
  %159 = bitcast i8* %158 to %struct.Lisp_Cons*
  %u339 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %159, i32 0, i32 1
  %cdr340 = bitcast %union.anon.0* %u339 to i64*
  %160 = load i64, i64* %cdr340, align 8
  %call341 = call i64 @Fcdr(i64 %160)
  store i64 %call341, i64* %tail2, align 8
  br label %for.cond.200

for.end.342:                                      ; preds = %for.cond.200
  %161 = load i64, i64* %props, align 8
  %call343 = call i64 @Fnreverse(i64 %161)
  store i64 %call343, i64* %props, align 8
  %162 = load i64, i64* %rear, align 8
  %call344 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp345 = icmp eq i64 %162, %call344
  br i1 %cmp345, label %if.end.352, label %if.then.347

if.then.347:                                      ; preds = %for.end.342
  %call348 = call i64 @builtin_lisp_symbol(i32 794)
  %163 = load i64, i64* %rear, align 8
  %call349 = call i64 @Fnreverse(i64 %163)
  %164 = load i64, i64* %props, align 8
  %call350 = call i64 @Fcons(i64 %call349, i64 %164)
  %call351 = call i64 @Fcons(i64 %call348, i64 %call350)
  store i64 %call351, i64* %props, align 8
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.347, %for.end.342
  %165 = load i64, i64* %props, align 8
  %call353 = call i64 @builtin_lisp_symbol(i32 241)
  %call354 = call i64 @textget(i64 %165, i64 %call353)
  store i64 %call354, i64* %cat, align 8
  %166 = load i64, i64* %front, align 8
  %call355 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp356 = icmp eq i64 %166, %call355
  br i1 %cmp356, label %if.end.378, label %land.lhs.true.358

land.lhs.true.358:                                ; preds = %if.end.352
  %167 = load i64, i64* %cat, align 8
  %call359 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp360 = icmp eq i64 %167, %call359
  br i1 %cmp360, label %if.then.373, label %land.lhs.true.362

land.lhs.true.362:                                ; preds = %land.lhs.true.358
  %168 = load i64, i64* %cat, align 8
  %and363 = and i64 %168, 7
  %conv364 = trunc i64 %and363 to i32
  %cmp365 = icmp eq i32 %conv364, 0
  br i1 %cmp365, label %land.lhs.true.367, label %if.then.373

land.lhs.true.367:                                ; preds = %land.lhs.true.362
  %169 = load i64, i64* %cat, align 8
  %call368 = call i64 @builtin_lisp_symbol(i32 468)
  %call369 = call i64 @Fget(i64 %169, i64 %call368)
  %call370 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp371 = icmp eq i64 %call369, %call370
  br i1 %cmp371, label %if.end.378, label %if.then.373

if.then.373:                                      ; preds = %land.lhs.true.367, %land.lhs.true.362, %land.lhs.true.358
  %call374 = call i64 @builtin_lisp_symbol(i32 468)
  %170 = load i64, i64* %front, align 8
  %call375 = call i64 @Fnreverse(i64 %170)
  %171 = load i64, i64* %props, align 8
  %call376 = call i64 @Fcons(i64 %call375, i64 %171)
  %call377 = call i64 @Fcons(i64 %call374, i64 %call376)
  store i64 %call377, i64* %props, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.373, %land.lhs.true.367, %if.end.352
  %172 = load i64, i64* %props, align 8
  ret i64 %172
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @merge_interval_right(%struct.interval* %i) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %i.addr = alloca %struct.interval*, align 8
  %absorb = alloca i64, align 8
  %successor = alloca %struct.interval*, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp = icmp eq %struct.interval* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp1 = icmp eq %struct.interval* %1, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 0
  %3 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 0, %cond.true.2 ], [ %3, %cond.false.3 ]
  %4 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp4 = icmp eq %struct.interval* %5, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right7 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 3
  %7 = load %struct.interval*, %struct.interval** %right7, align 8
  %total_length8 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 0
  %8 = load i64, i64* %total_length8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i64 [ 0, %cond.true.5 ], [ %8, %cond.false.6 ]
  %sub = sub nsw i64 %cond, %cond10
  %9 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 2
  %10 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp11 = icmp eq %struct.interval* %10, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  br label %cond.end.16

cond.false.13:                                    ; preds = %cond.end.9
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left14 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i64, i64* %total_length15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i64 [ 0, %cond.true.12 ], [ %13, %cond.false.13 ]
  %sub18 = sub nsw i64 %sub, %cond17
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.16, %cond.true
  %cond20 = phi i64 [ 0, %cond.true ], [ %sub18, %cond.end.16 ]
  store i64 %cond20, i64* %absorb, align 8
  %14 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right21 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right21, align 8
  %cmp22 = icmp eq %struct.interval* %15, null
  br i1 %cmp22, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.19
  %16 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right23 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right23, align 8
  store %struct.interval* %17, %struct.interval** %successor, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %18 = load %struct.interval*, %struct.interval** %successor, align 8
  %left24 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 2
  %19 = load %struct.interval*, %struct.interval** %left24, align 8
  %cmp25 = icmp eq %struct.interval* %19, null
  %lnot = xor i1 %cmp25, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i64, i64* %absorb, align 8
  %21 = load %struct.interval*, %struct.interval** %successor, align 8
  %total_length26 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 0
  %22 = load i64, i64* %total_length26, align 8
  %add = add nsw i64 %22, %20
  store i64 %add, i64* %total_length26, align 8
  %23 = load %struct.interval*, %struct.interval** %successor, align 8
  %left27 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 2
  %24 = load %struct.interval*, %struct.interval** %left27, align 8
  store %struct.interval* %24, %struct.interval** %successor, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i64, i64* %absorb, align 8
  %26 = load %struct.interval*, %struct.interval** %successor, align 8
  %total_length28 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 0
  %27 = load i64, i64* %total_length28, align 8
  %add29 = add nsw i64 %27, %25
  store i64 %add29, i64* %total_length28, align 8
  %28 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @delete_interval(%struct.interval* %28)
  %29 = load %struct.interval*, %struct.interval** %successor, align 8
  store %struct.interval* %29, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %cond.end.19
  %30 = load i64, i64* %absorb, align 8
  %31 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length30 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 0
  %32 = load i64, i64* %total_length30, align 8
  %sub31 = sub nsw i64 %32, %30
  store i64 %sub31, i64* %total_length30, align 8
  %33 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %33, %struct.interval** %successor, align 8
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.50, %if.end
  %34 = load %struct.interval*, %struct.interval** %successor, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.32
  %35 = load %struct.interval*, %struct.interval** %successor, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 4
  %interval = bitcast %union.anon* %up to %struct.interval**
  %36 = load %struct.interval*, %struct.interval** %interval, align 8
  %cmp33 = icmp eq %struct.interval* %36, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.32
  %37 = phi i1 [ true, %while.cond.32 ], [ %cmp33, %lor.rhs ]
  %lnot34 = xor i1 %37, true
  br i1 %lnot34, label %while.body.35, label %while.end.55

while.body.35:                                    ; preds = %lor.end
  %38 = load %struct.interval*, %struct.interval** %successor, align 8
  %up_obj36 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 5
  %bf.load37 = load i8, i8* %up_obj36, align 8
  %bf.clear38 = and i8 %bf.load37, 1
  %bf.cast39 = trunc i8 %bf.clear38 to i1
  br i1 %bf.cast39, label %if.end.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.35
  %39 = load %struct.interval*, %struct.interval** %successor, align 8
  %up40 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 4
  %interval41 = bitcast %union.anon* %up40 to %struct.interval**
  %40 = load %struct.interval*, %struct.interval** %interval41, align 8
  %cmp42 = icmp eq %struct.interval* %40, null
  br i1 %cmp42, label %if.end.50, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %41 = load %struct.interval*, %struct.interval** %successor, align 8
  %up43 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 4
  %interval44 = bitcast %union.anon* %up43 to %struct.interval**
  %42 = load %struct.interval*, %struct.interval** %interval44, align 8
  %left45 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 2
  %43 = load %struct.interval*, %struct.interval** %left45, align 8
  %44 = load %struct.interval*, %struct.interval** %successor, align 8
  %cmp46 = icmp eq %struct.interval* %43, %44
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %land.lhs.true
  %45 = load %struct.interval*, %struct.interval** %successor, align 8
  %up48 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 4
  %interval49 = bitcast %union.anon* %up48 to %struct.interval**
  %46 = load %struct.interval*, %struct.interval** %interval49, align 8
  store %struct.interval* %46, %struct.interval** %successor, align 8
  %47 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @delete_interval(%struct.interval* %47)
  %48 = load %struct.interval*, %struct.interval** %successor, align 8
  store %struct.interval* %48, %struct.interval** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true, %lor.lhs.false, %while.body.35
  %49 = load %struct.interval*, %struct.interval** %successor, align 8
  %up51 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 4
  %interval52 = bitcast %union.anon* %up51 to %struct.interval**
  %50 = load %struct.interval*, %struct.interval** %interval52, align 8
  store %struct.interval* %50, %struct.interval** %successor, align 8
  %51 = load i64, i64* %absorb, align 8
  %52 = load %struct.interval*, %struct.interval** %successor, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 0
  %53 = load i64, i64* %total_length53, align 8
  %sub54 = sub nsw i64 %53, %51
  store i64 %sub54, i64* %total_length53, align 8
  br label %while.cond.32

while.end.55:                                     ; preds = %lor.end
  call void @emacs_abort() #4
  unreachable

return:                                           ; preds = %if.then.47, %while.end
  %54 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %54
}

declare i64 @Fcons(i64, i64) #1

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @interval_deletion_adjustment(%struct.interval* %tree, i64 %from, i64 %amount) #0 {
entry:
  %retval = alloca i64, align 8
  %tree.addr = alloca %struct.interval*, align 8
  %from.addr = alloca i64, align 8
  %amount.addr = alloca i64, align 8
  %relative_position = alloca i64, align 8
  %subtract = alloca i64, align 8
  %subtract22 = alloca i64, align 8
  %my_amount = alloca i64, align 8
  store %struct.interval* %tree, %struct.interval** %tree.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %amount, i64* %amount.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  store i64 %0, i64* %relative_position, align 8
  %1 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %relative_position, align 8
  %3 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 2
  %4 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool1 = icmp ne %struct.interval* %4, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left2 = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 2
  %6 = load %struct.interval*, %struct.interval** %left2, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 0
  %7 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ 0, %cond.false ]
  %cmp = icmp slt i64 %2, %cond
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %cond.end
  %8 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left4 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 2
  %9 = load %struct.interval*, %struct.interval** %left4, align 8
  %10 = load i64, i64* %relative_position, align 8
  %11 = load i64, i64* %amount.addr, align 8
  %call = call i64 @interval_deletion_adjustment(%struct.interval* %9, i64 %10, i64 %11)
  store i64 %call, i64* %subtract, align 8
  %12 = load i64, i64* %subtract, align 8
  %13 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length5 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i64, i64* %total_length5, align 8
  %sub = sub nsw i64 %14, %12
  store i64 %sub, i64* %total_length5, align 8
  %15 = load i64, i64* %subtract, align 8
  store i64 %15, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %16 = load i64, i64* %relative_position, align 8
  %17 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp6 = icmp eq %struct.interval* %17, null
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.else
  br label %cond.end.10

cond.false.8:                                     ; preds = %if.else
  %18 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 0
  %19 = load i64, i64* %total_length9, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i64 [ 0, %cond.true.7 ], [ %19, %cond.false.8 ]
  %20 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 3
  %21 = load %struct.interval*, %struct.interval** %right, align 8
  %tobool12 = icmp ne %struct.interval* %21, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.end.10
  %22 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right14 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 3
  %23 = load %struct.interval*, %struct.interval** %right14, align 8
  %total_length15 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length15, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end.10
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.13
  %cond18 = phi i64 [ %24, %cond.true.13 ], [ 0, %cond.false.16 ]
  %sub19 = sub nsw i64 %cond11, %cond18
  %cmp20 = icmp sge i64 %16, %sub19
  br i1 %cmp20, label %if.then.21, label %if.else.38

if.then.21:                                       ; preds = %cond.end.17
  %25 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length23 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 0
  %26 = load i64, i64* %total_length23, align 8
  %27 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right24 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 3
  %28 = load %struct.interval*, %struct.interval** %right24, align 8
  %tobool25 = icmp ne %struct.interval* %28, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %if.then.21
  %29 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right27 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 3
  %30 = load %struct.interval*, %struct.interval** %right27, align 8
  %total_length28 = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 0
  %31 = load i64, i64* %total_length28, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.21
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.26
  %cond31 = phi i64 [ %31, %cond.true.26 ], [ 0, %cond.false.29 ]
  %sub32 = sub nsw i64 %26, %cond31
  %32 = load i64, i64* %relative_position, align 8
  %sub33 = sub nsw i64 %32, %sub32
  store i64 %sub33, i64* %relative_position, align 8
  %33 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right34 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 3
  %34 = load %struct.interval*, %struct.interval** %right34, align 8
  %35 = load i64, i64* %relative_position, align 8
  %36 = load i64, i64* %amount.addr, align 8
  %call35 = call i64 @interval_deletion_adjustment(%struct.interval* %34, i64 %35, i64 %36)
  store i64 %call35, i64* %subtract22, align 8
  %37 = load i64, i64* %subtract22, align 8
  %38 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length36 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length36, align 8
  %sub37 = sub nsw i64 %39, %37
  store i64 %sub37, i64* %total_length36, align 8
  %40 = load i64, i64* %subtract22, align 8
  store i64 %40, i64* %retval
  br label %return

if.else.38:                                       ; preds = %cond.end.17
  %41 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length39 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 0
  %42 = load i64, i64* %total_length39, align 8
  %43 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right40 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 3
  %44 = load %struct.interval*, %struct.interval** %right40, align 8
  %tobool41 = icmp ne %struct.interval* %44, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %if.else.38
  %45 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right43 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 3
  %46 = load %struct.interval*, %struct.interval** %right43, align 8
  %total_length44 = getelementptr inbounds %struct.interval, %struct.interval* %46, i32 0, i32 0
  %47 = load i64, i64* %total_length44, align 8
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.else.38
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.42
  %cond47 = phi i64 [ %47, %cond.true.42 ], [ 0, %cond.false.45 ]
  %sub48 = sub nsw i64 %42, %cond47
  %48 = load i64, i64* %relative_position, align 8
  %sub49 = sub nsw i64 %sub48, %48
  store i64 %sub49, i64* %my_amount, align 8
  %49 = load i64, i64* %amount.addr, align 8
  %50 = load i64, i64* %my_amount, align 8
  %cmp50 = icmp sgt i64 %49, %50
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %cond.end.46
  %51 = load i64, i64* %my_amount, align 8
  store i64 %51, i64* %amount.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %cond.end.46
  %52 = load i64, i64* %amount.addr, align 8
  %53 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 0
  %54 = load i64, i64* %total_length53, align 8
  %sub54 = sub nsw i64 %54, %52
  store i64 %sub54, i64* %total_length53, align 8
  %55 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp55 = icmp eq %struct.interval* %55, null
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.52
  br label %cond.end.82

cond.false.57:                                    ; preds = %if.end.52
  %56 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %cmp58 = icmp eq %struct.interval* %56, null
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.57
  br label %cond.end.62

cond.false.60:                                    ; preds = %cond.false.57
  %57 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %total_length61 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 0
  %58 = load i64, i64* %total_length61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i64 [ 0, %cond.true.59 ], [ %58, %cond.false.60 ]
  %59 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right64 = getelementptr inbounds %struct.interval, %struct.interval* %59, i32 0, i32 3
  %60 = load %struct.interval*, %struct.interval** %right64, align 8
  %cmp65 = icmp eq %struct.interval* %60, null
  br i1 %cmp65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end.62
  br label %cond.end.70

cond.false.67:                                    ; preds = %cond.end.62
  %61 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %right68 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 3
  %62 = load %struct.interval*, %struct.interval** %right68, align 8
  %total_length69 = getelementptr inbounds %struct.interval, %struct.interval* %62, i32 0, i32 0
  %63 = load i64, i64* %total_length69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.true.66
  %cond71 = phi i64 [ 0, %cond.true.66 ], [ %63, %cond.false.67 ]
  %sub72 = sub nsw i64 %cond63, %cond71
  %64 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left73 = getelementptr inbounds %struct.interval, %struct.interval* %64, i32 0, i32 2
  %65 = load %struct.interval*, %struct.interval** %left73, align 8
  %cmp74 = icmp eq %struct.interval* %65, null
  br i1 %cmp74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.70
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.end.70
  %66 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  %left77 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 2
  %67 = load %struct.interval*, %struct.interval** %left77, align 8
  %total_length78 = getelementptr inbounds %struct.interval, %struct.interval* %67, i32 0, i32 0
  %68 = load i64, i64* %total_length78, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.75
  %cond80 = phi i64 [ 0, %cond.true.75 ], [ %68, %cond.false.76 ]
  %sub81 = sub nsw i64 %sub72, %cond80
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.79, %cond.true.56
  %cond83 = phi i64 [ 0, %cond.true.56 ], [ %sub81, %cond.end.79 ]
  %cmp84 = icmp eq i64 %cond83, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %cond.end.82
  %69 = load %struct.interval*, %struct.interval** %tree.addr, align 8
  call void @delete_interval(%struct.interval* %69)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %cond.end.82
  %70 = load i64, i64* %amount.addr, align 8
  store i64 %70, i64* %retval
  br label %return

return:                                           ; preds = %if.end.86, %cond.end.30, %if.then.3, %if.then
  %71 = load i64, i64* %retval
  ret i64 %71
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @delete_node(%struct.interval* %i) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %i.addr = alloca %struct.interval*, align 8
  %migrate = alloca %struct.interval*, align 8
  %this = alloca %struct.interval*, align 8
  %migrate_amt = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 2
  %1 = load %struct.interval*, %struct.interval** %left, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 3
  %3 = load %struct.interval*, %struct.interval** %right, align 8
  store %struct.interval* %3, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right1 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 3
  %5 = load %struct.interval*, %struct.interval** %right1, align 8
  %tobool2 = icmp ne %struct.interval* %5, null
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left4 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 2
  %7 = load %struct.interval*, %struct.interval** %left4, align 8
  store %struct.interval* %7, %struct.interval** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left6 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 2
  %9 = load %struct.interval*, %struct.interval** %left6, align 8
  store %struct.interval* %9, %struct.interval** %migrate, align 8
  %10 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left7 = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 2
  %11 = load %struct.interval*, %struct.interval** %left7, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i64, i64* %total_length, align 8
  store i64 %12, i64* %migrate_amt, align 8
  %13 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right8 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 3
  %14 = load %struct.interval*, %struct.interval** %right8, align 8
  store %struct.interval* %14, %struct.interval** %this, align 8
  %15 = load i64, i64* %migrate_amt, align 8
  %16 = load %struct.interval*, %struct.interval** %this, align 8
  %total_length9 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 0
  %17 = load i64, i64* %total_length9, align 8
  %add = add nsw i64 %17, %15
  store i64 %add, i64* %total_length9, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %18 = load %struct.interval*, %struct.interval** %this, align 8
  %left10 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 2
  %19 = load %struct.interval*, %struct.interval** %left10, align 8
  %tobool11 = icmp ne %struct.interval* %19, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.interval*, %struct.interval** %this, align 8
  %left12 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 2
  %21 = load %struct.interval*, %struct.interval** %left12, align 8
  store %struct.interval* %21, %struct.interval** %this, align 8
  %22 = load i64, i64* %migrate_amt, align 8
  %23 = load %struct.interval*, %struct.interval** %this, align 8
  %total_length13 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length13, align 8
  %add14 = add nsw i64 %24, %22
  store i64 %add14, i64* %total_length13, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load %struct.interval*, %struct.interval** %this, align 8
  %26 = load %struct.interval*, %struct.interval** %migrate, align 8
  call void @set_interval_left(%struct.interval* %25, %struct.interval* %26)
  %27 = load %struct.interval*, %struct.interval** %migrate, align 8
  %28 = load %struct.interval*, %struct.interval** %this, align 8
  call void @set_interval_parent(%struct.interval* %27, %struct.interval* %28)
  %29 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right15 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 3
  %30 = load %struct.interval*, %struct.interval** %right15, align 8
  store %struct.interval* %30, %struct.interval** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %31 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %31
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @reproduce_interval(%struct.interval* %source) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %target = alloca %struct.interval*, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  %call = call %struct.interval* @make_interval()
  store %struct.interval* %call, %struct.interval** %target, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 0
  %1 = load i64, i64* %total_length, align 8
  %2 = load %struct.interval*, %struct.interval** %target, align 8
  %total_length1 = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 0
  store i64 %1, i64* %total_length1, align 8
  %3 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 1
  %4 = load i64, i64* %position, align 8
  %5 = load %struct.interval*, %struct.interval** %target, align 8
  %position2 = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 1
  store i64 %4, i64* %position2, align 8
  %6 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %7 = load %struct.interval*, %struct.interval** %target, align 8
  call void @copy_properties(%struct.interval* %6, %struct.interval* %7)
  %8 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 2
  %9 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp = icmp eq %struct.interval* %9, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.interval*, %struct.interval** %target, align 8
  %11 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %left3 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 2
  %12 = load %struct.interval*, %struct.interval** %left3, align 8
  %13 = load %struct.interval*, %struct.interval** %target, align 8
  %call4 = call %struct.interval* @reproduce_tree(%struct.interval* %12, %struct.interval* %13)
  call void @set_interval_left(%struct.interval* %10, %struct.interval* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp5 = icmp eq %struct.interval* %15, null
  br i1 %cmp5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.interval*, %struct.interval** %target, align 8
  %17 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %right7 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 3
  %18 = load %struct.interval*, %struct.interval** %right7, align 8
  %19 = load %struct.interval*, %struct.interval** %target, align 8
  %call8 = call %struct.interval* @reproduce_tree(%struct.interval* %18, %struct.interval* %19)
  call void @set_interval_right(%struct.interval* %16, %struct.interval* %call8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %20 = load %struct.interval*, %struct.interval** %target, align 8
  ret %struct.interval* %20
}

; Function Attrs: nounwind uwtable
define internal %struct.interval* @reproduce_tree(%struct.interval* %source, %struct.interval* %parent) #0 {
entry:
  %source.addr = alloca %struct.interval*, align 8
  %parent.addr = alloca %struct.interval*, align 8
  %target = alloca %struct.interval*, align 8
  store %struct.interval* %source, %struct.interval** %source.addr, align 8
  store %struct.interval* %parent, %struct.interval** %parent.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %source.addr, align 8
  %call = call %struct.interval* @reproduce_interval(%struct.interval* %0)
  store %struct.interval* %call, %struct.interval** %target, align 8
  %1 = load %struct.interval*, %struct.interval** %target, align 8
  %2 = load %struct.interval*, %struct.interval** %parent.addr, align 8
  call void @set_interval_parent(%struct.interval* %1, %struct.interval* %2)
  %3 = load %struct.interval*, %struct.interval** %target, align 8
  ret %struct.interval* %3
}

declare void @CHECK_CONS(i64) #1

declare i64 @get_char_property_and_overlay(i64, i64, i64, i64*) #1

declare i32 @invisible_prop(i64, i64) #1

declare i32 @text_property_stickiness(i64, i64, i64) #1

declare %struct.Lisp_Overlay* @XOVERLAY(i64) #1

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
