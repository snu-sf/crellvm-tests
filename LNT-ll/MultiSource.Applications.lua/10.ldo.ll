; ModuleID = './MultiSource.Applications.lua/10.ldo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type { %struct.lua_longjmp*, [1 x %struct.__jmp_buf_tag], i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, i8* }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"attempt to yield across metamethod/C-call boundary\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @luaD_seterrorobj(%struct.lua_State* %L, i32 %errcode, %struct.lua_TValue* %oldtop) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %errcode.addr = alloca i32, align 4
  %oldtop.addr = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %i_o2 = alloca %struct.lua_TValue*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %errcode, i32* %errcode.addr, align 4
  store %struct.lua_TValue* %oldtop, %struct.lua_TValue** %oldtop.addr, align 8
  %0 = load i32, i32* %errcode.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 3, label %sw.bb.7
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop.addr, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %union.TString* @luaS_newlstr(%struct.lua_State* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 17)
  %3 = bitcast %union.TString* %call to %union.GCObject*
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %3, %union.GCObject** %gc, align 8
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop.addr, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %i_o2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call %union.TString* @luaS_newlstr(%struct.lua_State* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i64 23)
  %8 = bitcast %union.TString* %call3 to %union.GCObject*
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o2, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %gc5 = bitcast %union.Value* %value4 to %union.GCObject**
  store %union.GCObject* %8, %union.GCObject** %gc5, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o2, align 8
  %tt6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  store i32 4, i32* %tt6, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o2, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop.addr, align 8
  store %struct.lua_TValue* %13, %struct.lua_TValue** %o1, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %16 = bitcast %union.Value* %value8 to i8*
  %17 = bitcast %union.Value* %value9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  %19 = load i32, i32* %tt10, align 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  store i32 %19, i32* %tt11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.7, %sw.bb.1, %sw.bb
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 1
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr12, %struct.lua_TValue** %top13, align 8
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define hidden void @luaD_throw(%struct.lua_State* %L, i32 %errcode) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %errcode.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %errcode, i32* %errcode.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 26
  %1 = load %struct.lua_longjmp*, %struct.lua_longjmp** %errorJmp, align 8
  %tobool = icmp ne %struct.lua_longjmp* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %errcode.addr, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 26
  %4 = load %struct.lua_longjmp*, %struct.lua_longjmp** %errorJmp1, align 8
  %status = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i32 0, i32 2
  store volatile i32 %2, i32* %status, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 26
  %6 = load %struct.lua_longjmp*, %struct.lua_longjmp** %errorJmp2, align 8
  %b = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %b, i32 0, i32 0
  call void @_longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 1) #6
  unreachable

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %errcode.addr, align 4
  %conv = trunc i32 %7 to i8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 3
  store i8 %conv, i8* %status3, align 1
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %panic = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 19
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %panic, align 8
  %tobool4 = icmp ne i32 (%struct.lua_State*)* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %errcode.addr, align 4
  call void @resetstack(%struct.lua_State* %12, i32 %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %l_G6, align 8
  %panic7 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 19
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %panic7, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 %16(%struct.lua_State* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_longjmp(%struct.__jmp_buf_tag*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @resetstack(%struct.lua_State* %L, i32 %status) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %status.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 12
  %1 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 7
  store %struct.CallInfo* %1, %struct.CallInfo** %ci, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 7
  %4 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i32 0, i32 0
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  store %struct.lua_TValue* %5, %struct.lua_TValue** %base2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 5
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %base3, align 8
  call void @luaF_close(%struct.lua_State* %7, %struct.lua_TValue* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i32, i32* %status.addr, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %base4, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %10, i32 %11, %struct.lua_TValue* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %baseCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 16
  %15 = load i16, i16* %baseCcalls, align 2
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 15
  store i16 %15, i16* %nCcalls, align 2
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 18
  store i8 1, i8* %allowhook, align 1
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @restore_stack_limit(%struct.lua_State* %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 27
  store i64 0, i64* %errfunc, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 26
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %errorJmp, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_rawrunprotected(%struct.lua_State* %L, void (%struct.lua_State*, i8*)* %f, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca void (%struct.lua_State*, i8*)*, align 8
  %ud.addr = alloca i8*, align 8
  %lj = alloca %struct.lua_longjmp, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store void (%struct.lua_State*, i8*)* %f, void (%struct.lua_State*, i8*)** %f.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %status = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %lj, i32 0, i32 2
  store volatile i32 0, i32* %status, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 26
  %1 = load %struct.lua_longjmp*, %struct.lua_longjmp** %errorJmp, align 8
  %previous = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %lj, i32 0, i32 0
  store %struct.lua_longjmp* %1, %struct.lua_longjmp** %previous, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 26
  store %struct.lua_longjmp* %lj, %struct.lua_longjmp** %errorJmp1, align 8
  %b = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %lj, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %b, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %f.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i8*, i8** %ud.addr, align 8
  call void %3(%struct.lua_State* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %previous2 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %lj, i32 0, i32 0
  %6 = load %struct.lua_longjmp*, %struct.lua_longjmp** %previous2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errorJmp3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 26
  store %struct.lua_longjmp* %6, %struct.lua_longjmp** %errorJmp3, align 8
  %status4 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %lj, i32 0, i32 2
  %8 = load volatile i32, i32* %status4, align 4
  ret i32 %8
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #4

; Function Attrs: nounwind uwtable
define hidden void @luaD_reallocstack(%struct.lua_State* %L, i32 %newsize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %newsize.addr = alloca i32, align 4
  %oldstack = alloca %struct.lua_TValue*, align 8
  %realsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 10
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %oldstack, align 8
  %2 = load i32, i32* %newsize.addr, align 4
  %add = add nsw i32 %2, 1
  %add1 = add nsw i32 %add, 5
  store i32 %add1, i32* %realsize, align 4
  %3 = load i32, i32* %realsize, align 4
  %add2 = add nsw i32 %3, 1
  %conv = sext i32 %add2 to i64
  %cmp = icmp ule i64 %conv, 1152921504606846975
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 10
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %stack4, align 8
  %7 = bitcast %struct.lua_TValue* %6 to i8*
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 13
  %9 = load i32, i32* %stacksize, align 4
  %conv5 = sext i32 %9 to i64
  %mul = mul i64 %conv5, 16
  %10 = load i32, i32* %realsize, align 4
  %conv6 = sext i32 %10 to i64
  %mul7 = mul i64 %conv6, 16
  %call = call i8* @luaM_realloc_(%struct.lua_State* %4, i8* %7, i64 %mul, i64 %mul7)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call8 = call i8* @luaM_toobig(%struct.lua_State* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call8, %cond.false ]
  %12 = bitcast i8* %cond to %struct.lua_TValue*
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 10
  store %struct.lua_TValue* %12, %struct.lua_TValue** %stack9, align 8
  %14 = load i32, i32* %realsize, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 13
  store i32 %14, i32* %stacksize10, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 10
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %stack11, align 8
  %18 = load i32, i32* %newsize.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %idx.ext
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 9
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %stack_last, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack, align 8
  call void @correctstack(%struct.lua_State* %20, %struct.lua_TValue* %21)
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden i8* @luaM_toobig(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define internal void @correctstack(%struct.lua_State* %L, %struct.lua_TValue* %oldstack) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %oldstack.addr = alloca %struct.lua_TValue*, align 8
  %ci = alloca %struct.CallInfo*, align 8
  %up = alloca %union.GCObject*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %oldstack, %struct.lua_TValue** %oldstack.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.lua_TValue* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.lua_TValue* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 10
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 %sub.ptr.div
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top1, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %openupval = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 24
  %7 = load %union.GCObject*, %union.GCObject** %openupval, align 8
  store %union.GCObject* %7, %union.GCObject** %up, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %union.GCObject*, %union.GCObject** %up, align 8
  %cmp = icmp ne %union.GCObject* %8, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %union.GCObject*, %union.GCObject** %up, align 8
  %uv = bitcast %union.GCObject* %9 to %struct.UpVal*
  %v = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uv, i32 0, i32 3
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %v, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast2 = ptrtoint %struct.lua_TValue* %10 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.lua_TValue* %11 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 16
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 10
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %stack6, align 8
  %add.ptr7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %sub.ptr.div5
  %14 = load %union.GCObject*, %union.GCObject** %up, align 8
  %uv8 = bitcast %union.GCObject* %14 to %struct.UpVal*
  %v9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %uv8, i32 0, i32 3
  store %struct.lua_TValue* %add.ptr7, %struct.lua_TValue** %v9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %union.GCObject*, %union.GCObject** %up, align 8
  %gch = bitcast %union.GCObject* %15 to %struct.GCheader*
  %next = getelementptr inbounds %struct.GCheader, %struct.GCheader* %gch, i32 0, i32 0
  %16 = load %union.GCObject*, %union.GCObject** %next, align 8
  store %union.GCObject* %16, %union.GCObject** %up, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 12
  %18 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  store %struct.CallInfo* %18, %struct.CallInfo** %ci, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.36, %for.end
  %19 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 7
  %21 = load %struct.CallInfo*, %struct.CallInfo** %ci11, align 8
  %cmp12 = icmp ule %struct.CallInfo* %19, %21
  br i1 %cmp12, label %for.body.13, label %for.end.37

for.body.13:                                      ; preds = %for.cond.10
  %22 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 2
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %top14, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast15 = ptrtoint %struct.lua_TValue* %23 to i64
  %sub.ptr.rhs.cast16 = ptrtoint %struct.lua_TValue* %24 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 16
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 10
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %stack19, align 8
  %add.ptr20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 %sub.ptr.div18
  %27 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr20, %struct.lua_TValue** %top21, align 8
  %28 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i32 0, i32 0
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast22 = ptrtoint %struct.lua_TValue* %29 to i64
  %sub.ptr.rhs.cast23 = ptrtoint %struct.lua_TValue* %30 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %sub.ptr.div25 = sdiv exact i64 %sub.ptr.sub24, 16
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 10
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %stack26, align 8
  %add.ptr27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 %sub.ptr.div25
  %33 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %base28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 0
  store %struct.lua_TValue* %add.ptr27, %struct.lua_TValue** %base28, align 8
  %34 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 1
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.lua_TValue* %35 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.lua_TValue* %36 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 16
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 10
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %stack33, align 8
  %add.ptr34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %sub.ptr.div32
  %39 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 1
  store %struct.lua_TValue* %add.ptr34, %struct.lua_TValue** %func35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.13
  %40 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %40, i32 1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci, align 8
  br label %for.cond.10

for.end.37:                                       ; preds = %for.cond.10
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 5
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %base38, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %oldstack.addr, align 8
  %sub.ptr.lhs.cast39 = ptrtoint %struct.lua_TValue* %42 to i64
  %sub.ptr.rhs.cast40 = ptrtoint %struct.lua_TValue* %43 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 16
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 10
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %stack43, align 8
  %add.ptr44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i64 %sub.ptr.div42
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 5
  store %struct.lua_TValue* %add.ptr44, %struct.lua_TValue** %base45, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_reallocCI(%struct.lua_State* %L, i32 %newsize) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %newsize.addr = alloca i32, align 4
  %oldci = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 12
  %1 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %oldci, align 8
  %2 = load i32, i32* %newsize.addr, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %cmp = icmp ule i64 %conv, 461168601842738790
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 12
  %5 = load %struct.CallInfo*, %struct.CallInfo** %base_ci2, align 8
  %6 = bitcast %struct.CallInfo* %5 to i8*
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 14
  %8 = load i32, i32* %size_ci, align 4
  %conv3 = sext i32 %8 to i64
  %mul = mul i64 %conv3, 40
  %9 = load i32, i32* %newsize.addr, align 4
  %conv4 = sext i32 %9 to i64
  %mul5 = mul i64 %conv4, 40
  %call = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %6, i64 %mul, i64 %mul5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i8* @luaM_toobig(%struct.lua_State* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call6, %cond.false ]
  %11 = bitcast i8* %cond to %struct.CallInfo*
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 12
  store %struct.CallInfo* %11, %struct.CallInfo** %base_ci7, align 8
  %13 = load i32, i32* %newsize.addr, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 14
  store i32 %13, i32* %size_ci8, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %oldci, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.CallInfo* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.CallInfo* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 12
  %19 = load %struct.CallInfo*, %struct.CallInfo** %base_ci9, align 8
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 %sub.ptr.div
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 7
  store %struct.CallInfo* %add.ptr, %struct.CallInfo** %ci10, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 12
  %22 = load %struct.CallInfo*, %struct.CallInfo** %base_ci11, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 14
  %24 = load i32, i32* %size_ci12, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr13, i64 -1
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %end_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 11
  store %struct.CallInfo* %add.ptr14, %struct.CallInfo** %end_ci, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_growstack(%struct.lua_State* %L, i32 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 13
  %2 = load i32, i32* %stacksize, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 13
  %5 = load i32, i32* %stacksize1, align 4
  %mul = mul nsw i32 2, %5
  call void @luaD_reallocstack(%struct.lua_State* %3, i32 %mul)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stacksize2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 13
  %8 = load i32, i32* %stacksize2, align 4
  %9 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %8, %9
  call void @luaD_reallocstack(%struct.lua_State* %6, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_callhook(%struct.lua_State* %L, i32 %event, i32 %line) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %event.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %hook = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %top = alloca i64, align 8
  %ci_top = alloca i64, align 8
  %ar = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hook1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 21
  %1 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook1, align 8
  store void (%struct.lua_State*, %struct.lua_Debug*)* %1, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %2 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %tobool = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 18
  %4 = load i8, i8* %allowhook, align 1
  %conv = zext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %7 = bitcast %struct.lua_TValue* %6 to i8*
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %10 = bitcast %struct.lua_TValue* %9 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %top, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %12 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %top4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  %14 = bitcast %struct.lua_TValue* %13 to i8*
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 10
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %stack5, align 8
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %sub.ptr.lhs.cast6 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %17 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  store i64 %sub.ptr.sub8, i64* %ci_top, align 8
  %18 = load i32, i32* %event.addr, align 4
  %event9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 0
  store i32 %18, i32* %event9, align 4
  %19 = load i32, i32* %line.addr, align 4
  %currentline = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 5
  store i32 %19, i32* %currentline, align 4
  %20 = load i32, i32* %event.addr, align 4
  %cmp = icmp eq i32 %20, 4
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %i_ci = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 10
  store i32 0, i32* %i_ci, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 7
  %22 = load %struct.CallInfo*, %struct.CallInfo** %ci12, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 12
  %24 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %sub.ptr.lhs.cast13 = ptrtoint %struct.CallInfo* %22 to i64
  %sub.ptr.rhs.cast14 = ptrtoint %struct.CallInfo* %24 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub15, 40
  %conv16 = trunc i64 %sub.ptr.div to i32
  %i_ci17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %ar, i32 0, i32 10
  store i32 %conv16, i32* %i_ci17, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 9
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %27 = bitcast %struct.lua_TValue* %26 to i8*
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %top18, align 8
  %30 = bitcast %struct.lua_TValue* %29 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %30 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %cmp22 = icmp sle i64 %sub.ptr.sub21, 320
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %31, i32 20)
  br label %if.end.26

if.else.25:                                       ; preds = %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 4
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %top27, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 20
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 7
  %35 = load %struct.CallInfo*, %struct.CallInfo** %ci28, align 8
  %top29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %35, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %top29, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 18
  store i8 0, i8* %allowhook30, align 1
  %37 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void %37(%struct.lua_State* %38, %struct.lua_Debug* %ar)
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 18
  store i8 1, i8* %allowhook31, align 1
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 10
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %stack32, align 8
  %42 = bitcast %struct.lua_TValue* %41 to i8*
  %43 = load i64, i64* %ci_top, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %42, i64 %43
  %44 = bitcast i8* %add.ptr33 to %struct.lua_TValue*
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 7
  %46 = load %struct.CallInfo*, %struct.CallInfo** %ci34, align 8
  %top35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i32 0, i32 2
  store %struct.lua_TValue* %44, %struct.lua_TValue** %top35, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 10
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %stack36, align 8
  %49 = bitcast %struct.lua_TValue* %48 to i8*
  %50 = load i64, i64* %top, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %49, i64 %50
  %51 = bitcast i8* %add.ptr37 to %struct.lua_TValue*
  %52 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 4
  store %struct.lua_TValue* %51, %struct.lua_TValue** %top38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.26, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_precall(%struct.lua_State* %L, %struct.lua_TValue* %func, i32 %nresults) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca %struct.lua_TValue*, align 8
  %nresults.addr = alloca i32, align 4
  %cl = alloca %struct.LClosure*, align 8
  %funcr = alloca i64, align 8
  %ci4 = alloca %struct.CallInfo*, align 8
  %st = alloca %struct.lua_TValue*, align 8
  %base = alloca %struct.lua_TValue*, align 8
  %p = alloca %struct.Proto*, align 8
  %nargs = alloca i32, align 4
  %ci75 = alloca %struct.CallInfo*, align 8
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %func, %struct.lua_TValue** %func.addr, align 8
  store i32 %nresults, i32* %nresults.addr, align 4
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %call = call %struct.lua_TValue* @tryfuncTM(%struct.lua_State* %2, %struct.lua_TValue* %3)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %func.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 10
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %8 = bitcast %struct.lua_TValue* %7 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %funcr, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %10 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl1 = bitcast %union.GCObject* %10 to %union.Closure*
  %l = bitcast %union.Closure* %cl1 to %struct.LClosure*
  store %struct.LClosure* %l, %struct.LClosure** %cl, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 8
  %12 = load i32*, i32** %savedpc, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %14 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %savedpc2 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 3
  store i32* %12, i32** %savedpc2, align 8
  %15 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %isC = getelementptr inbounds %struct.LClosure, %struct.LClosure* %15, i32 0, i32 3
  %16 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.else.74, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %17 = load %struct.LClosure*, %struct.LClosure** %cl, align 8
  %p5 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i32 0, i32 7
  %18 = load %struct.Proto*, %struct.Proto** %p5, align 8
  store %struct.Proto* %18, %struct.Proto** %p, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 9
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %21 = bitcast %struct.lua_TValue* %20 to i8*
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %24 = bitcast %struct.lua_TValue* %23 to i8*
  %sub.ptr.lhs.cast6 = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %24 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %25 = load %struct.Proto*, %struct.Proto** %p, align 8
  %maxstacksize = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 22
  %26 = load i8, i8* %maxstacksize, align 1
  %conv = zext i8 %26 to i32
  %mul = mul nsw i32 %conv, 16
  %conv9 = sext i32 %mul to i64
  %cmp10 = icmp sle i64 %sub.ptr.sub8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.3
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load %struct.Proto*, %struct.Proto** %p, align 8
  %maxstacksize13 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 22
  %29 = load i8, i8* %maxstacksize13, align 1
  %conv14 = zext i8 %29 to i32
  call void @luaD_growstack(%struct.lua_State* %27, i32 %conv14)
  br label %if.end.15

if.else:                                          ; preds = %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 10
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %stack16, align 8
  %32 = bitcast %struct.lua_TValue* %31 to i8*
  %33 = load i64, i64* %funcr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33
  %34 = bitcast i8* %add.ptr to %struct.lua_TValue*
  store %struct.lua_TValue* %34, %struct.lua_TValue** %func.addr, align 8
  %35 = load %struct.Proto*, %struct.Proto** %p, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 21
  %36 = load i8, i8* %is_vararg, align 1
  %tobool17 = icmp ne i8 %36, 0
  br i1 %tobool17, label %if.else.32, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1
  store %struct.lua_TValue* %add.ptr19, %struct.lua_TValue** %base, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 4
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %top20, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %41 = load %struct.Proto*, %struct.Proto** %p, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 20
  %42 = load i8, i8* %numparams, align 1
  %conv21 = zext i8 %42 to i32
  %idx.ext = sext i32 %conv21 to i64
  %add.ptr22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 %idx.ext
  %cmp23 = icmp ugt %struct.lua_TValue* %39, %add.ptr22
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.18
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %44 = load %struct.Proto*, %struct.Proto** %p, align 8
  %numparams26 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 20
  %45 = load i8, i8* %numparams26, align 1
  %conv27 = zext i8 %45 to i32
  %idx.ext28 = sext i32 %conv27 to i64
  %add.ptr29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 %idx.ext28
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 4
  store %struct.lua_TValue* %add.ptr29, %struct.lua_TValue** %top30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.41

if.else.32:                                       ; preds = %if.end.15
  %47 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %top33, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %sub.ptr.lhs.cast34 = ptrtoint %struct.lua_TValue* %48 to i64
  %sub.ptr.rhs.cast35 = ptrtoint %struct.lua_TValue* %49 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub36, 16
  %conv37 = trunc i64 %sub.ptr.div to i32
  %sub = sub nsw i32 %conv37, 1
  store i32 %sub, i32* %nargs, align 4
  %50 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %51 = load %struct.Proto*, %struct.Proto** %p, align 8
  %52 = load i32, i32* %nargs, align 4
  %call38 = call %struct.lua_TValue* @adjust_varargs(%struct.lua_State* %50, %struct.Proto* %51, i32 %52)
  store %struct.lua_TValue* %call38, %struct.lua_TValue** %base, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 10
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %stack39, align 8
  %55 = bitcast %struct.lua_TValue* %54 to i8*
  %56 = load i64, i64* %funcr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %55, i64 %56
  %57 = bitcast i8* %add.ptr40 to %struct.lua_TValue*
  store %struct.lua_TValue* %57, %struct.lua_TValue** %func.addr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.32, %if.end.31
  %58 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 7
  %59 = load %struct.CallInfo*, %struct.CallInfo** %ci42, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %end_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 11
  %61 = load %struct.CallInfo*, %struct.CallInfo** %end_ci, align 8
  %cmp43 = icmp eq %struct.CallInfo* %59, %61
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %62 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call45 = call %struct.CallInfo* @growCI(%struct.lua_State* %62)
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  %63 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 7
  %64 = load %struct.CallInfo*, %struct.CallInfo** %ci46, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %64, i32 1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci46, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.CallInfo* [ %call45, %cond.true ], [ %incdec.ptr, %cond.false ]
  store %struct.CallInfo* %cond, %struct.CallInfo** %ci4, align 8
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %66 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %func47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %66, i32 0, i32 1
  store %struct.lua_TValue* %65, %struct.lua_TValue** %func47, align 8
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %68 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %base48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i32 0, i32 0
  store %struct.lua_TValue* %67, %struct.lua_TValue** %base48, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 5
  store %struct.lua_TValue* %67, %struct.lua_TValue** %base49, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 5
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %base50, align 8
  %72 = load %struct.Proto*, %struct.Proto** %p, align 8
  %maxstacksize51 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i32 0, i32 22
  %73 = load i8, i8* %maxstacksize51, align 1
  %conv52 = zext i8 %73 to i32
  %idx.ext53 = sext i32 %conv52 to i64
  %add.ptr54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %idx.ext53
  %74 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %top55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %74, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr54, %struct.lua_TValue** %top55, align 8
  %75 = load %struct.Proto*, %struct.Proto** %p, align 8
  %code = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i32 0, i32 4
  %76 = load i32*, i32** %code, align 8
  %77 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %77, i32 0, i32 8
  store i32* %76, i32** %savedpc56, align 8
  %78 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %tailcalls = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %78, i32 0, i32 5
  store i32 0, i32* %tailcalls, align 4
  %79 = load i32, i32* %nresults.addr, align 4
  %80 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %nresults57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %80, i32 0, i32 4
  store i32 %79, i32* %nresults57, align 4
  %81 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 4
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %top58, align 8
  store %struct.lua_TValue* %82, %struct.lua_TValue** %st, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %st, align 8
  %84 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %top59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %84, i32 0, i32 2
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %top59, align 8
  %cmp60 = icmp ult %struct.lua_TValue* %83, %85
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %st, align 8
  %tt62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i32 0, i32 1
  store i32 0, i32* %tt62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %st, align 8
  %incdec.ptr63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i32 1
  store %struct.lua_TValue* %incdec.ptr63, %struct.lua_TValue** %st, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load %struct.CallInfo*, %struct.CallInfo** %ci4, align 8
  %top64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %88, i32 0, i32 2
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %top64, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %90, i32 0, i32 4
  store %struct.lua_TValue* %89, %struct.lua_TValue** %top65, align 8
  %91 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %91, i32 0, i32 17
  %92 = load i8, i8* %hookmask, align 1
  %conv66 = zext i8 %92 to i32
  %and = and i32 %conv66, 1
  %tobool67 = icmp ne i32 %and, 0
  br i1 %tobool67, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.end
  %93 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %93, i32 0, i32 8
  %94 = load i32*, i32** %savedpc69, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr70, i32** %savedpc69, align 8
  %95 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_callhook(%struct.lua_State* %95, i32 0, i32 -1)
  %96 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i32 0, i32 8
  %97 = load i32*, i32** %savedpc71, align 8
  %incdec.ptr72 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %incdec.ptr72, i32** %savedpc71, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %for.end
  store i32 0, i32* %retval
  br label %return

if.else.74:                                       ; preds = %if.end
  %98 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %98, i32 0, i32 9
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last76, align 8
  %100 = bitcast %struct.lua_TValue* %99 to i8*
  %101 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %101, i32 0, i32 4
  %102 = load %struct.lua_TValue*, %struct.lua_TValue** %top77, align 8
  %103 = bitcast %struct.lua_TValue* %102 to i8*
  %sub.ptr.lhs.cast78 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast79 = ptrtoint i8* %103 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %cmp81 = icmp sle i64 %sub.ptr.sub80, 320
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.74
  %104 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %104, i32 20)
  br label %if.end.85

if.else.84:                                       ; preds = %if.else.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.then.83
  %105 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %105, i32 0, i32 7
  %106 = load %struct.CallInfo*, %struct.CallInfo** %ci86, align 8
  %107 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %end_ci87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %107, i32 0, i32 11
  %108 = load %struct.CallInfo*, %struct.CallInfo** %end_ci87, align 8
  %cmp88 = icmp eq %struct.CallInfo* %106, %108
  br i1 %cmp88, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %if.end.85
  %109 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call91 = call %struct.CallInfo* @growCI(%struct.lua_State* %109)
  br label %cond.end.95

cond.false.92:                                    ; preds = %if.end.85
  %110 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %110, i32 0, i32 7
  %111 = load %struct.CallInfo*, %struct.CallInfo** %ci93, align 8
  %incdec.ptr94 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %111, i32 1
  store %struct.CallInfo* %incdec.ptr94, %struct.CallInfo** %ci93, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.90
  %cond96 = phi %struct.CallInfo* [ %call91, %cond.true.90 ], [ %incdec.ptr94, %cond.false.92 ]
  store %struct.CallInfo* %cond96, %struct.CallInfo** %ci75, align 8
  %112 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 10
  %113 = load %struct.lua_TValue*, %struct.lua_TValue** %stack97, align 8
  %114 = bitcast %struct.lua_TValue* %113 to i8*
  %115 = load i64, i64* %funcr, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %114, i64 %115
  %116 = bitcast i8* %add.ptr98 to %struct.lua_TValue*
  %117 = load %struct.CallInfo*, %struct.CallInfo** %ci75, align 8
  %func99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i32 0, i32 1
  store %struct.lua_TValue* %116, %struct.lua_TValue** %func99, align 8
  %118 = load %struct.CallInfo*, %struct.CallInfo** %ci75, align 8
  %func100 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %118, i32 0, i32 1
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %func100, align 8
  %add.ptr101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i64 1
  %120 = load %struct.CallInfo*, %struct.CallInfo** %ci75, align 8
  %base102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %120, i32 0, i32 0
  store %struct.lua_TValue* %add.ptr101, %struct.lua_TValue** %base102, align 8
  %121 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base103 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %121, i32 0, i32 5
  store %struct.lua_TValue* %add.ptr101, %struct.lua_TValue** %base103, align 8
  %122 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %122, i32 0, i32 4
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %top104, align 8
  %add.ptr105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 20
  %124 = load %struct.CallInfo*, %struct.CallInfo** %ci75, align 8
  %top106 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %124, i32 0, i32 2
  store %struct.lua_TValue* %add.ptr105, %struct.lua_TValue** %top106, align 8
  %125 = load i32, i32* %nresults.addr, align 4
  %126 = load %struct.CallInfo*, %struct.CallInfo** %ci75, align 8
  %nresults107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %126, i32 0, i32 4
  store i32 %125, i32* %nresults107, align 4
  %127 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask108 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %127, i32 0, i32 17
  %128 = load i8, i8* %hookmask108, align 1
  %conv109 = zext i8 %128 to i32
  %and110 = and i32 %conv109, 1
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %cond.end.95
  %129 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_callhook(%struct.lua_State* %129, i32 0, i32 -1)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %cond.end.95
  %130 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %130, i32 0, i32 7
  %131 = load %struct.CallInfo*, %struct.CallInfo** %ci114, align 8
  %func115 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %131, i32 0, i32 1
  %132 = load %struct.lua_TValue*, %struct.lua_TValue** %func115, align 8
  %value116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i32 0, i32 0
  %gc117 = bitcast %union.Value* %value116 to %union.GCObject**
  %133 = load %union.GCObject*, %union.GCObject** %gc117, align 8
  %cl118 = bitcast %union.GCObject* %133 to %union.Closure*
  %c = bitcast %union.Closure* %cl118 to %struct.CClosure*
  %f = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 7
  %134 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %f, align 8
  %135 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call119 = call i32 %134(%struct.lua_State* %135)
  store i32 %call119, i32* %n, align 4
  %136 = load i32, i32* %n, align 4
  %cmp120 = icmp slt i32 %136, 0
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.end.113
  store i32 2, i32* %retval
  br label %return

if.else.123:                                      ; preds = %if.end.113
  %137 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %138 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %138, i32 0, i32 4
  %139 = load %struct.lua_TValue*, %struct.lua_TValue** %top124, align 8
  %140 = load i32, i32* %n, align 4
  %idx.ext125 = sext i32 %140 to i64
  %idx.neg = sub i64 0, %idx.ext125
  %add.ptr126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %139, i64 %idx.neg
  %call127 = call i32 @luaD_poscall(%struct.lua_State* %137, %struct.lua_TValue* %add.ptr126)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.123, %if.then.122, %if.end.73
  %141 = load i32, i32* %retval
  ret i32 %141
}

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @tryfuncTM(%struct.lua_State* %L, %struct.lua_TValue* %func) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca %struct.lua_TValue*, align 8
  %tm = alloca %struct.lua_TValue*, align 8
  %p = alloca %struct.lua_TValue*, align 8
  %funcr = alloca i64, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %o216 = alloca %struct.lua_TValue*, align 8
  %o117 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %func, %struct.lua_TValue** %func.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %call = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %1, i32 16)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %tm, align 8
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %3 = bitcast %struct.lua_TValue* %2 to i8*
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 10
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %funcr, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %8 = load i32, i32* %tt, align 4
  %cmp = icmp eq i32 %8, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  call void @luaG_typeerror(%struct.lua_State* %9, %struct.lua_TValue* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %12, %struct.lua_TValue** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %cmp1 = icmp ugt %struct.lua_TValue* %13, %14
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 -1
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %o2, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  store %struct.lua_TValue* %16, %struct.lua_TValue** %o1, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %19 = bitcast %union.Value* %value to i8*
  %20 = bitcast %union.Value* %value2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  %22 = load i32, i32* %tt3, align 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  store i32 %22, i32* %tt4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 -1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 9
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %27 = bitcast %struct.lua_TValue* %26 to i8*
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %top5, align 8
  %30 = bitcast %struct.lua_TValue* %29 to i8*
  %sub.ptr.lhs.cast6 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %30 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %cmp9 = icmp sle i64 %sub.ptr.sub8, 16
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.end
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %31, i32 1)
  br label %if.end.11

if.else:                                          ; preds = %for.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 4
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %top12, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 1
  store %struct.lua_TValue* %incdec.ptr13, %struct.lua_TValue** %top12, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 10
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %stack14, align 8
  %36 = bitcast %struct.lua_TValue* %35 to i8*
  %37 = load i64, i64* %funcr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = bitcast i8* %add.ptr15 to %struct.lua_TValue*
  store %struct.lua_TValue* %38, %struct.lua_TValue** %func.addr, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %tm, align 8
  store %struct.lua_TValue* %39, %struct.lua_TValue** %o216, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  store %struct.lua_TValue* %40, %struct.lua_TValue** %o117, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %o117, align 8
  %value18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %o216, align 8
  %value19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %43 = bitcast %union.Value* %value18 to i8*
  %44 = bitcast %union.Value* %value19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %o216, align 8
  %tt20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 1
  %46 = load i32, i32* %tt20, align 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %o117, align 8
  %tt21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  store i32 %46, i32* %tt21, align 4
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  ret %struct.lua_TValue* %48
}

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @adjust_varargs(%struct.lua_State* %L, %struct.Proto* %p, i32 %actual) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p.addr = alloca %struct.Proto*, align 8
  %actual.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nfixargs = alloca i32, align 4
  %htab = alloca %struct.Table*, align 8
  %base = alloca %struct.lua_TValue*, align 8
  %fixed = alloca %struct.lua_TValue*, align 8
  %nvar = alloca i32, align 4
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %o236 = alloca %struct.lua_TValue*, align 8
  %o139 = alloca %struct.lua_TValue*, align 8
  %i_o54 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Proto* %p, %struct.Proto** %p.addr, align 8
  store i32 %actual, i32* %actual.addr, align 4
  %0 = load %struct.Proto*, %struct.Proto** %p.addr, align 8
  %numparams = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i32 0, i32 20
  %1 = load i8, i8* %numparams, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %nfixargs, align 4
  store %struct.Table* null, %struct.Table** %htab, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %actual.addr, align 4
  %3 = load i32, i32* %nfixargs, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  store i32 0, i32* %tt, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %actual.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %actual.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.Proto*, %struct.Proto** %p.addr, align 8
  %is_vararg = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 21
  %8 = load i8, i8* %is_vararg, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.end
  %9 = load i32, i32* %actual.addr, align 4
  %10 = load i32, i32* %nfixargs, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %nvar, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 14
  %13 = load i64, i64* %totalbytes, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %l_G3, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 13
  %16 = load i64, i64* %GCthreshold, align 8
  %cmp4 = icmp uge i64 %13, %16
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i32, i32* %nvar, align 4
  %call = call %struct.Table* @luaH_new(%struct.lua_State* %18, i32 %19, i32 1)
  store %struct.Table* %call, %struct.Table** %htab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %if.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nvar, align 4
  %cmp8 = icmp slt i32 %20, %21
  br i1 %cmp8, label %for.body.10, label %for.end.20

for.body.10:                                      ; preds = %for.cond.7
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %top11, align 8
  %24 = load i32, i32* %nvar, align 4
  %idx.ext = sext i32 %24 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %idx.neg
  %25 = load i32, i32* %i, align 4
  %idx.ext12 = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr, i64 %idx.ext12
  store %struct.lua_TValue* %add.ptr13, %struct.lua_TValue** %o2, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %27 = load %struct.Table*, %struct.Table** %htab, align 8
  %28 = load i32, i32* %i, align 4
  %add = add nsw i32 %28, 1
  %call14 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %26, %struct.Table* %27, i32 %add)
  store %struct.lua_TValue* %call14, %struct.lua_TValue** %o1, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %31 = bitcast %union.Value* %value to i8*
  %32 = bitcast %union.Value* %value15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %34 = load i32, i32* %tt16, align 4
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  store i32 %34, i32* %tt17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.10
  %36 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %36, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.7

for.end.20:                                       ; preds = %for.cond.7
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %38 = load %struct.Table*, %struct.Table** %htab, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call21 = call %union.TString* @luaS_newlstr(%struct.lua_State* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  %call22 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %37, %struct.Table* %38, %union.TString* %call21)
  store %struct.lua_TValue* %call22, %struct.lua_TValue** %i_o, align 8
  %40 = load i32, i32* %nvar, align 4
  %conv23 = sitofp i32 %40 to double
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %n = bitcast %union.Value* %value24 to double*
  store double %conv23, double* %n, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 1
  store i32 3, i32* %tt25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.20, %for.end
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 4
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %top27, align 8
  %45 = load i32, i32* %actual.addr, align 4
  %idx.ext28 = sext i32 %45 to i64
  %idx.neg29 = sub i64 0, %idx.ext28
  %add.ptr30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 %idx.neg29
  store %struct.lua_TValue* %add.ptr30, %struct.lua_TValue** %fixed, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %top31, align 8
  store %struct.lua_TValue* %47, %struct.lua_TValue** %base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.49, %if.end.26
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %nfixargs, align 4
  %cmp33 = icmp slt i32 %48, %49
  br i1 %cmp33, label %for.body.35, label %for.end.51

for.body.35:                                      ; preds = %for.cond.32
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %fixed, align 8
  %51 = load i32, i32* %i, align 4
  %idx.ext37 = sext i32 %51 to i64
  %add.ptr38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i64 %idx.ext37
  store %struct.lua_TValue* %add.ptr38, %struct.lua_TValue** %o236, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 4
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %top40, align 8
  %incdec.ptr41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 1
  store %struct.lua_TValue* %incdec.ptr41, %struct.lua_TValue** %top40, align 8
  store %struct.lua_TValue* %53, %struct.lua_TValue** %o139, align 8
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %o139, align 8
  %value42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 0
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %o236, align 8
  %value43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %56 = bitcast %union.Value* %value42 to i8*
  %57 = bitcast %union.Value* %value43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 8, i32 8, i1 false)
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %o236, align 8
  %tt44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  %59 = load i32, i32* %tt44, align 4
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %o139, align 8
  %tt45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 1
  store i32 %59, i32* %tt45, align 4
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %fixed, align 8
  %62 = load i32, i32* %i, align 4
  %idx.ext46 = sext i32 %62 to i64
  %add.ptr47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 %idx.ext46
  %tt48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr47, i32 0, i32 1
  store i32 0, i32* %tt48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.35
  %63 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %63, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.32

for.end.51:                                       ; preds = %for.cond.32
  %64 = load %struct.Table*, %struct.Table** %htab, align 8
  %tobool52 = icmp ne %struct.Table* %64, null
  br i1 %tobool52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %for.end.51
  %65 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 4
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %top55, align 8
  %incdec.ptr56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i32 1
  store %struct.lua_TValue* %incdec.ptr56, %struct.lua_TValue** %top55, align 8
  store %struct.lua_TValue* %66, %struct.lua_TValue** %i_o54, align 8
  %67 = load %struct.Table*, %struct.Table** %htab, align 8
  %68 = bitcast %struct.Table* %67 to %union.GCObject*
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o54, align 8
  %value57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i32 0, i32 0
  %gc = bitcast %union.Value* %value57 to %union.GCObject**
  store %union.GCObject* %68, %union.GCObject** %gc, align 8
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o54, align 8
  %tt58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 1
  store i32 5, i32* %tt58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %for.end.51
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  ret %struct.lua_TValue* %71
}

; Function Attrs: nounwind uwtable
define internal %struct.CallInfo* @growCI(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 14
  %1 = load i32, i32* %size_ci, align 4
  %cmp = icmp sgt i32 %1, 20000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_throw(%struct.lua_State* %2, i32 5)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 14
  %5 = load i32, i32* %size_ci1, align 4
  %mul = mul nsw i32 2, %5
  call void @luaD_reallocCI(%struct.lua_State* %3, i32 %mul)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 14
  %7 = load i32, i32* %size_ci2, align 4
  %cmp3 = icmp sgt i32 %7, 20000
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci, align 8
  ret %struct.CallInfo* %incdec.ptr
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_poscall(%struct.lua_State* %L, %struct.lua_TValue* %firstResult) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %firstResult.addr = alloca %struct.lua_TValue*, align 8
  %res = alloca %struct.lua_TValue*, align 8
  %wanted = alloca i32, align 4
  %i = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 8
  %o2 = alloca %struct.lua_TValue*, align 8
  %o1 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %firstResult, %struct.lua_TValue** %firstResult.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 17
  %1 = load i8, i8* %hookmask, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %firstResult.addr, align 8
  %call = call %struct.lua_TValue* @callrethooks(%struct.lua_State* %2, %struct.lua_TValue* %3)
  store %struct.lua_TValue* %call, %struct.lua_TValue** %firstResult.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  %incdec.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i32 -1
  store %struct.CallInfo* %incdec.ptr, %struct.CallInfo** %ci1, align 8
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 8
  %6 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i32 0, i32 1
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %res, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %nresults = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 4
  %9 = load i32, i32* %nresults, align 4
  store i32 %9, i32* %wanted, align 4
  %10 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %add.ptr = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i64 -1
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr, i32 0, i32 0
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  store %struct.lua_TValue* %11, %struct.lua_TValue** %base2, align 8
  %13 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %add.ptr3 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i64 -1
  %savedpc = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %add.ptr3, i32 0, i32 3
  %14 = load i32*, i32** %savedpc, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 8
  store i32* %14, i32** %savedpc4, align 8
  %16 = load i32, i32* %wanted, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %firstResult.addr, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %cmp6 = icmp ult %struct.lua_TValue* %18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %firstResult.addr, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 1
  store %struct.lua_TValue* %incdec.ptr8, %struct.lua_TValue** %firstResult.addr, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %o2, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %res, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 1
  store %struct.lua_TValue* %incdec.ptr9, %struct.lua_TValue** %res, align 8
  store %struct.lua_TValue* %23, %struct.lua_TValue** %o1, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %value10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %26 = bitcast %union.Value* %value to i8*
  %27 = bitcast %union.Value* %value10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %o2, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %29 = load i32, i32* %tt, align 4
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %o1, align 8
  %tt11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  store i32 %29, i32* %tt11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %32 = load i32, i32* %i, align 4
  %dec12 = add nsw i32 %32, -1
  store i32 %dec12, i32* %i, align 4
  %cmp13 = icmp sgt i32 %32, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %res, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 1
  store %struct.lua_TValue* %incdec.ptr15, %struct.lua_TValue** %res, align 8
  %tt16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  store i32 0, i32* %tt16, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %res, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 4
  store %struct.lua_TValue* %34, %struct.lua_TValue** %top17, align 8
  %36 = load i32, i32* %wanted, align 4
  %sub = sub nsw i32 %36, -1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal %struct.lua_TValue* @callrethooks(%struct.lua_State* %L, %struct.lua_TValue* %firstResult) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %firstResult.addr = alloca %struct.lua_TValue*, align 8
  %fr = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %firstResult, %struct.lua_TValue** %firstResult.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %firstResult.addr, align 8
  %1 = bitcast %struct.lua_TValue* %0 to i8*
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 10
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %fr, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_callhook(%struct.lua_State* %5, i32 1, i32 -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %7 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 1
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %9 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %9 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %10 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %hookmask = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 17
  %12 = load i8, i8* %hookmask, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %14 = load %struct.CallInfo*, %struct.CallInfo** %ci2, align 8
  %tailcalls = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 5
  %15 = load i32, i32* %tailcalls, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %tailcalls, align 4
  %tobool3 = icmp ne i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_callhook(%struct.lua_State* %17, i32 4, i32 -1)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 10
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %stack4, align 8
  %20 = bitcast %struct.lua_TValue* %19 to i8*
  %21 = load i64, i64* %fr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = bitcast i8* %add.ptr to %struct.lua_TValue*
  ret %struct.lua_TValue* %22
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_call(%struct.lua_State* %L, %struct.lua_TValue* %func, i32 %nResults) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca %struct.lua_TValue*, align 8
  %nResults.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.lua_TValue* %func, %struct.lua_TValue** %func.addr, align 8
  store i32 %nResults, i32* %nResults.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 15
  %1 = load i16, i16* %nCcalls, align 2
  %inc = add i16 %1, 1
  store i16 %inc, i16* %nCcalls, align 2
  %conv = zext i16 %inc to i32
  %cmp = icmp sge i32 %conv, 200
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 15
  %3 = load i16, i16* %nCcalls2, align 2
  %conv3 = zext i16 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 200
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 15
  %6 = load i16, i16* %nCcalls7, align 2
  %conv8 = zext i16 %6 to i32
  %cmp9 = icmp sge i32 %conv8, 225
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_throw(%struct.lua_State* %7, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %func.addr, align 8
  %10 = load i32, i32* %nResults.addr, align 4
  %call = call i32 @luaD_precall(%struct.lua_State* %8, %struct.lua_TValue* %9, i32 %10)
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaV_execute(%struct.lua_State* %11, i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 15
  %13 = load i16, i16* %nCcalls18, align 2
  %dec = add i16 %13, -1
  store i16 %dec, i16* %nCcalls18, align 2
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 14
  %16 = load i64, i64* %totalbytes, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 6
  %18 = load %struct.global_State*, %struct.global_State** %l_G19, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 13
  %19 = load i64, i64* %GCthreshold, align 8
  %cmp20 = icmp uge i64 %16, %19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  %20 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %20)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.17
  ret void
}

declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

declare hidden void @luaV_execute(%struct.lua_State*, i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: nounwind uwtable
define i32 @lua_resume(%struct.lua_State* %L, i32 %nargs) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %nargs.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nargs, i32* %nargs.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 3
  %1 = load i8, i8* %status1, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 3
  %3 = load i8, i8* %status3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %5 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 12
  %7 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %cmp7 = icmp ne %struct.CallInfo* %5, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @resume_error(%struct.lua_State* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 15
  %10 = load i16, i16* %nCcalls, align 2
  %conv9 = zext i16 %10 to i32
  %cmp10 = icmp sge i32 %conv9, 200
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call i32 @resume_error(%struct.lua_State* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 15
  %14 = load i16, i16* %nCcalls15, align 2
  %inc = add i16 %14, 1
  store i16 %inc, i16* %nCcalls15, align 2
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %baseCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 16
  store i16 %inc, i16* %baseCcalls, align 2
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %19 = load i32, i32* %nargs.addr, align 4
  %idx.ext = sext i32 %19 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %idx.neg
  %20 = bitcast %struct.lua_TValue* %add.ptr to i8*
  %call16 = call i32 @luaD_rawrunprotected(%struct.lua_State* %16, void (%struct.lua_State*, i8*)* @resume, i8* %20)
  store i32 %call16, i32* %status, align 4
  %21 = load i32, i32* %status, align 4
  %cmp17 = icmp ne i32 %21, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.14
  %22 = load i32, i32* %status, align 4
  %conv20 = trunc i32 %22 to i8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 3
  store i8 %conv20, i8* %status21, align 1
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %25 = load i32, i32* %status, align 4
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %top22, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %24, i32 %25, %struct.lua_TValue* %27)
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %top23, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 7
  %31 = load %struct.CallInfo*, %struct.CallInfo** %ci24, align 8
  %top25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 2
  store %struct.lua_TValue* %29, %struct.lua_TValue** %top25, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.14
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 3
  %33 = load i8, i8* %status26, align 1
  %conv27 = zext i8 %33 to i32
  store i32 %conv27, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.19
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 15
  %35 = load i16, i16* %nCcalls29, align 2
  %dec = add i16 %35, -1
  store i16 %dec, i16* %nCcalls29, align 2
  %36 = load i32, i32* %status, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.12, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @resume_error(%struct.lua_State* %L, i8* %msg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %msg.addr = alloca i8*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 7
  %1 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i32 0, i32 0
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  store %struct.lua_TValue* %2, %struct.lua_TValue** %top, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top1, align 8
  store %struct.lua_TValue* %5, %struct.lua_TValue** %i_o, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i8*, i8** %msg.addr, align 8
  %8 = load i8*, i8** %msg.addr, align 8
  %call = call i64 @strlen(i8* %8) #8
  %call2 = call %union.TString* @luaS_newlstr(%struct.lua_State* %6, i8* %7, i64 %call)
  %9 = bitcast %union.TString* %call2 to %union.GCObject*
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %9, %union.GCObject** %gc, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 9
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %14 = bitcast %struct.lua_TValue* %13 to i8*
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %18, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top4, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top4, align 8
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @resume(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %firstArg = alloca %struct.lua_TValue*, align 8
  %ci = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.lua_TValue*
  store %struct.lua_TValue* %1, %struct.lua_TValue** %firstArg, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 7
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci1, align 8
  store %struct.CallInfo* %3, %struct.CallInfo** %ci, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 3
  %5 = load i8, i8* %status, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %firstArg, align 8
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 -1
  %call = call i32 @luaD_precall(%struct.lua_State* %6, %struct.lua_TValue* %add.ptr, i32 -1)
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.18

if.else:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 3
  store i8 0, i8* %status6, align 1
  %9 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %func = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 1
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %func, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %11 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %cl = bitcast %union.GCObject* %11 to %union.Closure*
  %c = bitcast %union.Closure* %cl to %struct.CClosure*
  %isC = getelementptr inbounds %struct.CClosure, %struct.CClosure* %c, i32 0, i32 3
  %12 = load i8, i8* %isC, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %firstArg, align 8
  %call8 = call i32 @luaD_poscall(%struct.lua_State* %13, %struct.lua_TValue* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %ci11, align 8
  %top = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 2
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 4
  store %struct.lua_TValue* %17, %struct.lua_TValue** %top12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.17

if.else.14:                                       ; preds = %if.else
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 7
  %20 = load %struct.CallInfo*, %struct.CallInfo** %ci15, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i32 0, i32 0
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  store %struct.lua_TValue* %21, %struct.lua_TValue** %base16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 7
  %25 = load %struct.CallInfo*, %struct.CallInfo** %ci19, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 12
  %27 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.CallInfo* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.CallInfo* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv20 = trunc i64 %sub.ptr.div to i32
  call void @luaV_execute(%struct.lua_State* %23, i32 %conv20)
  br label %return

return:                                           ; preds = %if.end.18, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lua_yield(%struct.lua_State* %L, i32 %nresults) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %nresults.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %nresults, i32* %nresults.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i32 0, i32 15
  %2 = load i16, i16* %nCcalls, align 2
  %conv = zext i16 %2 to i32
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %baseCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 16
  %4 = load i16, i16* %baseCcalls, align 2
  %conv1 = zext i16 %4 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %8 = load i32, i32* %nresults.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %idx.neg
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 5
  store %struct.lua_TValue* %add.ptr, %struct.lua_TValue** %base, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %status = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 3
  store i8 1, i8* %status, align 1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_pcall(%struct.lua_State* %L, void (%struct.lua_State*, i8*)* %func, i8* %u, i64 %old_top, i64 %ef) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %func.addr = alloca void (%struct.lua_State*, i8*)*, align 8
  %u.addr = alloca i8*, align 8
  %old_top.addr = alloca i64, align 8
  %ef.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %oldnCcalls = alloca i16, align 2
  %old_ci = alloca i64, align 8
  %old_allowhooks = alloca i8, align 1
  %old_errfunc = alloca i64, align 8
  %oldtop = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store void (%struct.lua_State*, i8*)* %func, void (%struct.lua_State*, i8*)** %func.addr, align 8
  store i8* %u, i8** %u.addr, align 8
  store i64 %old_top, i64* %old_top.addr, align 8
  store i64 %ef, i64* %ef.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 15
  %1 = load i16, i16* %nCcalls, align 2
  store i16 %1, i16* %oldnCcalls, align 2
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 7
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %4 = bitcast %struct.CallInfo* %3 to i8*
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 12
  %6 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %7 = bitcast %struct.CallInfo* %6 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %old_ci, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 18
  %9 = load i8, i8* %allowhook, align 1
  store i8 %9, i8* %old_allowhooks, align 1
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 27
  %11 = load i64, i64* %errfunc, align 8
  store i64 %11, i64* %old_errfunc, align 8
  %12 = load i64, i64* %ef.addr, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 27
  store i64 %12, i64* %errfunc1, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %func.addr, align 8
  %16 = load i8*, i8** %u.addr, align 8
  %call = call i32 @luaD_rawrunprotected(%struct.lua_State* %14, void (%struct.lua_State*, i8*)* %15, i8* %16)
  store i32 %call, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 10
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %20 = bitcast %struct.lua_TValue* %19 to i8*
  %21 = load i64, i64* %old_top.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = bitcast i8* %add.ptr to %struct.lua_TValue*
  store %struct.lua_TValue* %22, %struct.lua_TValue** %oldtop, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop, align 8
  call void @luaF_close(%struct.lua_State* %23, %struct.lua_TValue* %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %26 = load i32, i32* %status, align 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %oldtop, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %25, i32 %26, %struct.lua_TValue* %27)
  %28 = load i16, i16* %oldnCcalls, align 2
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %nCcalls2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 15
  store i16 %28, i16* %nCcalls2, align 2
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 12
  %31 = load %struct.CallInfo*, %struct.CallInfo** %base_ci3, align 8
  %32 = bitcast %struct.CallInfo* %31 to i8*
  %33 = load i64, i64* %old_ci, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %32, i64 %33
  %34 = bitcast i8* %add.ptr4 to %struct.CallInfo*
  %35 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 7
  store %struct.CallInfo* %34, %struct.CallInfo** %ci5, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 7
  %37 = load %struct.CallInfo*, %struct.CallInfo** %ci6, align 8
  %base = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i32 0, i32 0
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  store %struct.lua_TValue* %38, %struct.lua_TValue** %base7, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 7
  %41 = load %struct.CallInfo*, %struct.CallInfo** %ci8, align 8
  %savedpc = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i32 0, i32 3
  %42 = load i32*, i32** %savedpc, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %savedpc9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 8
  store i32* %42, i32** %savedpc9, align 8
  %44 = load i8, i8* %old_allowhooks, align 1
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %allowhook10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 18
  store i8 %44, i8* %allowhook10, align 1
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @restore_stack_limit(%struct.lua_State* %46)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %47 = load i64, i64* %old_errfunc, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 27
  store i64 %47, i64* %errfunc11, align 8
  %49 = load i32, i32* %status, align 4
  ret i32 %49
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #1

; Function Attrs: nounwind uwtable
define internal void @restore_stack_limit(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %inuse = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %size_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 14
  %1 = load i32, i32* %size_ci, align 4
  %cmp = icmp sgt i32 %1, 20000
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2, i32 0, i32 7
  %3 = load %struct.CallInfo*, %struct.CallInfo** %ci, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base_ci = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 12
  %5 = load %struct.CallInfo*, %struct.CallInfo** %base_ci, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.CallInfo* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.CallInfo* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %inuse, align 4
  %6 = load i32, i32* %inuse, align 4
  %add = add nsw i32 %6, 1
  %cmp1 = icmp slt i32 %add, 20000
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_reallocCI(%struct.lua_State* %7, i32 20000)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaD_protectedparser(%struct.lua_State* %L, %struct.Zio* %z, i8* %name) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %z.addr = alloca %struct.Zio*, align 8
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.SParser, align 8
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.Zio* %z, %struct.Zio** %z.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.Zio*, %struct.Zio** %z.addr, align 8
  %z1 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 0
  store %struct.Zio* %0, %struct.Zio** %z1, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %name2 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 2
  store i8* %1, i8** %name2, align 8
  %buff = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff, i32 0, i32 0
  store i8* null, i8** %buffer, align 8
  %buff3 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffsize = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff3, i32 0, i32 2
  store i64 0, i64* %buffsize, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = bitcast %struct.SParser* %p to i8*
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 4
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 10
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %stack, align 8
  %9 = bitcast %struct.lua_TValue* %8 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %errfunc = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 27
  %11 = load i64, i64* %errfunc, align 8
  %call = call i32 @luaD_pcall(%struct.lua_State* %2, void (%struct.lua_State*, i8*)* @f_parser, i8* %3, i64 %sub.ptr.sub, i64 %11)
  store i32 %call, i32* %status, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %buff4 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffer5 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff4, i32 0, i32 0
  %13 = load i8*, i8** %buffer5, align 8
  %buff6 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffsize7 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff6, i32 0, i32 2
  %14 = load i64, i64* %buffsize7, align 8
  %mul = mul i64 %14, 1
  %call8 = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* %13, i64 %mul, i64 0)
  %buff9 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffer10 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff9, i32 0, i32 0
  store i8* %call8, i8** %buffer10, align 8
  %buff11 = getelementptr inbounds %struct.SParser, %struct.SParser* %p, i32 0, i32 1
  %buffsize12 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %buff11, i32 0, i32 2
  store i64 0, i64* %buffsize12, align 8
  %15 = load i32, i32* %status, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @f_parser(%struct.lua_State* %L, i8* %ud) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tf = alloca %struct.Proto*, align 8
  %cl = alloca %union.Closure*, align 8
  %p = alloca %struct.SParser*, align 8
  %c = alloca i32, align 4
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %0 = load i8*, i8** %ud.addr, align 8
  %1 = bitcast i8* %0 to %struct.SParser*
  store %struct.SParser* %1, %struct.SParser** %p, align 8
  %2 = load %struct.SParser*, %struct.SParser** %p, align 8
  %z = getelementptr inbounds %struct.SParser, %struct.SParser* %2, i32 0, i32 0
  %3 = load %struct.Zio*, %struct.Zio** %z, align 8
  %call = call i32 @luaZ_lookahead(%struct.Zio* %3)
  store i32 %call, i32* %c, align 4
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %5 = load %struct.global_State*, %struct.global_State** %l_G, align 8
  %totalbytes = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 14
  %6 = load i64, i64* %totalbytes, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_G1 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %l_G1, align 8
  %GCthreshold = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 13
  %9 = load i64, i64* %GCthreshold, align 8
  %cmp = icmp uge i64 %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaC_step(%struct.lua_State* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %c, align 4
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 0), align 1
  %conv = sext i8 %12 to i32
  %cmp2 = icmp eq i32 %11, %conv
  %cond = select i1 %cmp2, %struct.Proto* (%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*)* @luaU_undump, %struct.Proto* (%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*)* @luaY_parser
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load %struct.SParser*, %struct.SParser** %p, align 8
  %z4 = getelementptr inbounds %struct.SParser, %struct.SParser* %14, i32 0, i32 0
  %15 = load %struct.Zio*, %struct.Zio** %z4, align 8
  %16 = load %struct.SParser*, %struct.SParser** %p, align 8
  %buff = getelementptr inbounds %struct.SParser, %struct.SParser* %16, i32 0, i32 1
  %17 = load %struct.SParser*, %struct.SParser** %p, align 8
  %name = getelementptr inbounds %struct.SParser, %struct.SParser* %17, i32 0, i32 2
  %18 = load i8*, i8** %name, align 8
  %call5 = call %struct.Proto* %cond(%struct.lua_State* %13, %struct.Zio* %15, %struct.Mbuffer* %buff, i8* %18)
  store %struct.Proto* %call5, %struct.Proto** %tf, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct.Proto*, %struct.Proto** %tf, align 8
  %nups = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 19
  %21 = load i8, i8* %nups, align 1
  %conv6 = zext i8 %21 to i32
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %l_gt = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 22
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %l_gt, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %h = bitcast %union.GCObject* %23 to %struct.Table*
  %call7 = call %union.Closure* @luaF_newLclosure(%struct.lua_State* %19, i32 %conv6, %struct.Table* %h)
  store %union.Closure* %call7, %union.Closure** %cl, align 8
  %24 = load %struct.Proto*, %struct.Proto** %tf, align 8
  %25 = load %union.Closure*, %union.Closure** %cl, align 8
  %l = bitcast %union.Closure* %25 to %struct.LClosure*
  %p8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l, i32 0, i32 7
  store %struct.Proto* %24, %struct.Proto** %p8, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.Proto*, %struct.Proto** %tf, align 8
  %nups9 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 19
  %28 = load i8, i8* %nups9, align 1
  %conv10 = zext i8 %28 to i32
  %cmp11 = icmp slt i32 %26, %conv10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call13 = call %struct.UpVal* @luaF_newupval(%struct.lua_State* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %union.Closure*, %union.Closure** %cl, align 8
  %l14 = bitcast %union.Closure* %31 to %struct.LClosure*
  %upvals = getelementptr inbounds %struct.LClosure, %struct.LClosure* %l14, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %upvals, i32 0, i64 %idxprom
  store %struct.UpVal* %call13, %struct.UpVal** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %34, %struct.lua_TValue** %i_o, align 8
  %35 = load %union.Closure*, %union.Closure** %cl, align 8
  %36 = bitcast %union.Closure* %35 to %union.GCObject*
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %gc16 = bitcast %union.Value* %value15 to %union.GCObject**
  store %union.GCObject* %36, %union.GCObject** %gc16, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 1
  store i32 6, i32* %tt, align 4
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 9
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %top17, align 8
  %44 = bitcast %struct.lua_TValue* %43 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp18 = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %45, i32 1)
  br label %if.end.21

if.else:                                          ; preds = %for.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %46 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %top22, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top22, align 8
  ret void
}

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) #1

declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) #1

declare hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare hidden i32 @luaZ_lookahead(%struct.Zio*) #1

declare hidden %struct.Proto* @luaU_undump(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) #1

declare hidden %struct.Proto* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) #1

declare hidden %union.Closure* @luaF_newLclosure(%struct.lua_State*, i32, %struct.Table*) #1

declare hidden %struct.UpVal* @luaF_newupval(%struct.lua_State*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind returns_twice }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
