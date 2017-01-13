; ModuleID = './MultiSource.Applications.lua/29.lobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaO_nilobject_ = hidden constant %struct.lua_TValue zeroinitializer, align 8
@luaO_log2.log_2 = internal constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_int2fb(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %e, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp uge i32 %0, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %x.addr, align 4
  %add = add i32 %1, 1
  %shr = lshr i32 %add, 1
  store i32 %shr, i32* %x.addr, align 4
  %2 = load i32, i32* %e, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %e, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp ult i32 %3, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %4 = load i32, i32* %x.addr, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %5 = load i32, i32* %e, align 4
  %add2 = add nsw i32 %5, 1
  %shl = shl i32 %add2, 3
  %6 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %6, 8
  %or = or i32 %shl, %sub
  store i32 %or, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_fb2int(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %0, 3
  %and = and i32 %shr, 31
  store i32 %and, i32* %e, align 4
  %1 = load i32, i32* %e, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %3, 7
  %add = add nsw i32 %and1, 8
  %4 = load i32, i32* %e, align 4
  %sub = sub nsw i32 %4, 1
  %shl = shl i32 %add, %sub
  store i32 %shl, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_log2(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 -1, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp uge i32 %0, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %l, align 4
  %add = add nsw i32 %1, 8
  store i32 %add, i32* %l, align 4
  %2 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %2, 8
  store i32 %shr, i32* %x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %l, align 4
  %4 = load i32, i32* %x.addr, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_log2.log_2, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add1 = add nsw i32 %3, %conv
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_rawequalObj(%struct.lua_TValue* %t1, %struct.lua_TValue* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.lua_TValue*, align 8
  %t2.addr = alloca %struct.lua_TValue*, align 8
  store %struct.lua_TValue* %t1, %struct.lua_TValue** %t1.addr, align 8
  store %struct.lua_TValue* %t2, %struct.lua_TValue** %t2.addr, align 8
  %0 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i32 0, i32 1
  %1 = load i32, i32* %tt, align 4
  %2 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %tt1 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i32 0, i32 1
  %3 = load i32, i32* %tt1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %tt2 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i32 0, i32 1
  %5 = load i32, i32* %tt2, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.3
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %n = bitcast %union.Value* %value to double*
  %7 = load double, double* %n, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 0
  %n5 = bitcast %union.Value* %value4 to double*
  %9 = load double, double* %n5, align 8
  %cmp6 = fcmp oeq double %7, %9
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.else
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %b = bitcast %union.Value* %value8 to i32*
  %11 = load i32, i32* %b, align 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %b10 = bitcast %union.Value* %value9 to i32*
  %13 = load i32, i32* %b10, align 4
  %cmp11 = icmp eq i32 %11, %13
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %if.else
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %p = bitcast %union.Value* %value14 to i8**
  %15 = load i8*, i8** %p, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %p16 = bitcast %union.Value* %value15 to i8**
  %17 = load i8*, i8** %p16, align 8
  %cmp17 = icmp eq i8* %15, %17
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %t1.addr, align 8
  %value19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %gc = bitcast %union.Value* %value19 to %union.GCObject**
  %19 = load %union.GCObject*, %union.GCObject** %gc, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %t2.addr, align 8
  %value20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %gc21 = bitcast %union.Value* %value20 to %union.GCObject**
  %21 = load %union.GCObject*, %union.GCObject** %gc21, align 8
  %cmp22 = icmp eq %union.GCObject* %19, %21
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.13, %sw.bb.7, %sw.bb.3, %sw.bb, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_str2d(i8* %s, double* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %result.addr = alloca double*, align 8
  %endptr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store double* %result, double** %result.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call double @strtod(i8* %0, i8** %endptr) #5
  %1 = load double*, double** %result.addr, align 8
  store double %call, double* %1, align 8
  %2 = load i8*, i8** %endptr, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %endptr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 120
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8*, i8** %endptr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 88
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load i8*, i8** %s.addr, align 8
  %call7 = call i64 @strtoul(i8* %8, i8** %endptr, i32 16) #5
  %conv8 = uitofp i64 %call7 to double
  %9 = load double*, double** %result.addr, align 8
  store double %conv8, double* %9, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %lor.lhs.false
  %10 = load i8*, i8** %endptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %12 = load i8*, i8** %endptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv15 = zext i8 %13 to i32
  %idxprom = sext i32 %conv15 to i64
  %call16 = call i16** @__ctype_b_loc() #6
  %14 = load i16*, i16** %call16, align 8
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv17 = zext i16 %15 to i32
  %and = and i32 %conv17, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %endptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %endptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %endptr, align 8
  %18 = load i8, i8* %17, align 1
  %conv18 = sext i8 %18 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.13, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define hidden i8* @luaO_pushvfstring(%struct.lua_State* %L, i8* %fmt, %struct.__va_list_tag* %argp) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fmt.addr = alloca i8*, align 8
  %argp.addr = alloca %struct.__va_list_tag*, align 8
  %n = alloca i32, align 4
  %e = alloca i8*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  %s = alloca i8*, align 8
  %buff = alloca [2 x i8], align 1
  %i_o29 = alloca %struct.lua_TValue*, align 8
  %i_o59 = alloca %struct.lua_TValue*, align 8
  %buff85 = alloca [40 x i8], align 16
  %buff101 = alloca [3 x i8], align 1
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %argp, %struct.__va_list_tag** %argp.addr, align 8
  store i32 1, i32* %n, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @pushstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 37) #7
  store i8* %call, i8** %e, align 8
  %2 = load i8*, i8** %e, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %i_o, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i8*, i8** %fmt.addr, align 8
  %7 = load i8*, i8** %e, align 8
  %8 = load i8*, i8** %fmt.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call %union.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %6, i64 %sub.ptr.sub)
  %9 = bitcast %union.TString* %call1 to %union.GCObject*
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
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %sub.ptr.lhs.cast3 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %17 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %cmp6 = icmp sle i64 %sub.ptr.sub5, 16
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %18, i32 1)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %top9, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top9, align 8
  %21 = load i8*, i8** %e, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %22 to i32
  switch i32 %conv, label %sw.default [
    i32 115, label %sw.bb
    i32 99, label %sw.bb.14
    i32 100, label %sw.bb.28
    i32 102, label %sw.bb.58
    i32 112, label %sw.bb.84
    i32 37, label %sw.bb.100
  ]

sw.bb:                                            ; preds = %if.end.8
  %23 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %reg_save_area = load i8*, i8** %24
  %25 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %26 = bitcast i8* %25 to i8**
  %27 = add i32 %gp_offset, 8
  store i32 %27, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %28 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %26, %vaarg.in_reg ], [ %28, %vaarg.in_mem ]
  %29 = load i8*, i8** %vaarg.addr
  store i8* %29, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %cmp10 = icmp eq i8* %30, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %vaarg.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %s, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %vaarg.end
  %31 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %32 = load i8*, i8** %s, align 8
  call void @pushstr(%struct.lua_State* %31, i8* %32)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.8
  %33 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %gp_offset_p15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 0
  %gp_offset16 = load i32, i32* %gp_offset_p15
  %fits_in_gp17 = icmp ule i32 %gp_offset16, 40
  br i1 %fits_in_gp17, label %vaarg.in_reg.18, label %vaarg.in_mem.20

vaarg.in_reg.18:                                  ; preds = %sw.bb.14
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 3
  %reg_save_area19 = load i8*, i8** %34
  %35 = getelementptr i8, i8* %reg_save_area19, i32 %gp_offset16
  %36 = bitcast i8* %35 to i32*
  %37 = add i32 %gp_offset16, 8
  store i32 %37, i32* %gp_offset_p15
  br label %vaarg.end.24

vaarg.in_mem.20:                                  ; preds = %sw.bb.14
  %overflow_arg_area_p21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 2
  %overflow_arg_area22 = load i8*, i8** %overflow_arg_area_p21
  %38 = bitcast i8* %overflow_arg_area22 to i32*
  %overflow_arg_area.next23 = getelementptr i8, i8* %overflow_arg_area22, i32 8
  store i8* %overflow_arg_area.next23, i8** %overflow_arg_area_p21
  br label %vaarg.end.24

vaarg.end.24:                                     ; preds = %vaarg.in_mem.20, %vaarg.in_reg.18
  %vaarg.addr25 = phi i32* [ %36, %vaarg.in_reg.18 ], [ %38, %vaarg.in_mem.20 ]
  %39 = load i32, i32* %vaarg.addr25
  %conv26 = trunc i32 %39 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buff, i32 0, i64 0
  store i8 %conv26, i8* %arrayidx, align 1
  %arrayidx27 = getelementptr inbounds [2 x i8], [2 x i8]* %buff, i32 0, i64 1
  store i8 0, i8* %arrayidx27, align 1
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buff, i32 0, i32 0
  call void @pushstr(%struct.lua_State* %40, i8* %arraydecay)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.8
  %41 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 4
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %top30, align 8
  store %struct.lua_TValue* %42, %struct.lua_TValue** %i_o29, align 8
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %gp_offset_p31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0
  %gp_offset32 = load i32, i32* %gp_offset_p31
  %fits_in_gp33 = icmp ule i32 %gp_offset32, 40
  br i1 %fits_in_gp33, label %vaarg.in_reg.34, label %vaarg.in_mem.36

vaarg.in_reg.34:                                  ; preds = %sw.bb.28
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3
  %reg_save_area35 = load i8*, i8** %44
  %45 = getelementptr i8, i8* %reg_save_area35, i32 %gp_offset32
  %46 = bitcast i8* %45 to i32*
  %47 = add i32 %gp_offset32, 8
  store i32 %47, i32* %gp_offset_p31
  br label %vaarg.end.40

vaarg.in_mem.36:                                  ; preds = %sw.bb.28
  %overflow_arg_area_p37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2
  %overflow_arg_area38 = load i8*, i8** %overflow_arg_area_p37
  %48 = bitcast i8* %overflow_arg_area38 to i32*
  %overflow_arg_area.next39 = getelementptr i8, i8* %overflow_arg_area38, i32 8
  store i8* %overflow_arg_area.next39, i8** %overflow_arg_area_p37
  br label %vaarg.end.40

vaarg.end.40:                                     ; preds = %vaarg.in_mem.36, %vaarg.in_reg.34
  %vaarg.addr41 = phi i32* [ %46, %vaarg.in_reg.34 ], [ %48, %vaarg.in_mem.36 ]
  %49 = load i32, i32* %vaarg.addr41
  %conv42 = sitofp i32 %49 to double
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o29, align 8
  %value43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %n44 = bitcast %union.Value* %value43 to double*
  store double %conv42, double* %n44, align 8
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o29, align 8
  %tt45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i32 0, i32 1
  store i32 3, i32* %tt45, align 4
  %52 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 9
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last46, align 8
  %54 = bitcast %struct.lua_TValue* %53 to i8*
  %55 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 4
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %top47, align 8
  %57 = bitcast %struct.lua_TValue* %56 to i8*
  %sub.ptr.lhs.cast48 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast49 = ptrtoint i8* %57 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %cmp51 = icmp sle i64 %sub.ptr.sub50, 16
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %vaarg.end.40
  %58 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %58, i32 1)
  br label %if.end.55

if.else.54:                                       ; preds = %vaarg.end.40
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.53
  %59 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 4
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %top56, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 1
  store %struct.lua_TValue* %incdec.ptr57, %struct.lua_TValue** %top56, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.8
  %61 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 4
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %top60, align 8
  store %struct.lua_TValue* %62, %struct.lua_TValue** %i_o59, align 8
  %63 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.61, label %vaarg.in_mem.63

vaarg.in_reg.61:                                  ; preds = %sw.bb.58
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 3
  %reg_save_area62 = load i8*, i8** %64
  %65 = getelementptr i8, i8* %reg_save_area62, i32 %fp_offset
  %66 = bitcast i8* %65 to double*
  %67 = add i32 %fp_offset, 16
  store i32 %67, i32* %fp_offset_p
  br label %vaarg.end.67

vaarg.in_mem.63:                                  ; preds = %sw.bb.58
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 2
  %overflow_arg_area65 = load i8*, i8** %overflow_arg_area_p64
  %68 = bitcast i8* %overflow_arg_area65 to double*
  %overflow_arg_area.next66 = getelementptr i8, i8* %overflow_arg_area65, i32 8
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p64
  br label %vaarg.end.67

vaarg.end.67:                                     ; preds = %vaarg.in_mem.63, %vaarg.in_reg.61
  %vaarg.addr68 = phi double* [ %66, %vaarg.in_reg.61 ], [ %68, %vaarg.in_mem.63 ]
  %69 = load double, double* %vaarg.addr68
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o59, align 8
  %value69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 0
  %n70 = bitcast %union.Value* %value69 to double*
  store double %69, double* %n70, align 8
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o59, align 8
  %tt71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 0, i32 1
  store i32 3, i32* %tt71, align 4
  %72 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 9
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last72, align 8
  %74 = bitcast %struct.lua_TValue* %73 to i8*
  %75 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 4
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %top73, align 8
  %77 = bitcast %struct.lua_TValue* %76 to i8*
  %sub.ptr.lhs.cast74 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %77 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %cmp77 = icmp sle i64 %sub.ptr.sub76, 16
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %vaarg.end.67
  %78 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %78, i32 1)
  br label %if.end.81

if.else.80:                                       ; preds = %vaarg.end.67
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.79
  %79 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 4
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %top82, align 8
  %incdec.ptr83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i32 1
  store %struct.lua_TValue* %incdec.ptr83, %struct.lua_TValue** %top82, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.8
  %arraydecay86 = getelementptr inbounds [40 x i8], [40 x i8]* %buff85, i32 0, i32 0
  %81 = load %struct.__va_list_tag*, %struct.__va_list_tag** %argp.addr, align 8
  %gp_offset_p87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 0
  %gp_offset88 = load i32, i32* %gp_offset_p87
  %fits_in_gp89 = icmp ule i32 %gp_offset88, 40
  br i1 %fits_in_gp89, label %vaarg.in_reg.90, label %vaarg.in_mem.92

vaarg.in_reg.90:                                  ; preds = %sw.bb.84
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 3
  %reg_save_area91 = load i8*, i8** %82
  %83 = getelementptr i8, i8* %reg_save_area91, i32 %gp_offset88
  %84 = bitcast i8* %83 to i8**
  %85 = add i32 %gp_offset88, 8
  store i32 %85, i32* %gp_offset_p87
  br label %vaarg.end.96

vaarg.in_mem.92:                                  ; preds = %sw.bb.84
  %overflow_arg_area_p93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 2
  %overflow_arg_area94 = load i8*, i8** %overflow_arg_area_p93
  %86 = bitcast i8* %overflow_arg_area94 to i8**
  %overflow_arg_area.next95 = getelementptr i8, i8* %overflow_arg_area94, i32 8
  store i8* %overflow_arg_area.next95, i8** %overflow_arg_area_p93
  br label %vaarg.end.96

vaarg.end.96:                                     ; preds = %vaarg.in_mem.92, %vaarg.in_reg.90
  %vaarg.addr97 = phi i8** [ %84, %vaarg.in_reg.90 ], [ %86, %vaarg.in_mem.92 ]
  %87 = load i8*, i8** %vaarg.addr97
  %call98 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %87) #5
  %88 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay99 = getelementptr inbounds [40 x i8], [40 x i8]* %buff85, i32 0, i32 0
  call void @pushstr(%struct.lua_State* %88, i8* %arraydecay99)
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.8
  %89 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @pushstr(%struct.lua_State* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %arrayidx102 = getelementptr inbounds [3 x i8], [3 x i8]* %buff101, i32 0, i64 0
  store i8 37, i8* %arrayidx102, align 1
  %90 = load i8*, i8** %e, align 8
  %add.ptr103 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %add.ptr103, align 1
  %arrayidx104 = getelementptr inbounds [3 x i8], [3 x i8]* %buff101, i32 0, i64 1
  store i8 %91, i8* %arrayidx104, align 1
  %arrayidx105 = getelementptr inbounds [3 x i8], [3 x i8]* %buff101, i32 0, i64 2
  store i8 0, i8* %arrayidx105, align 1
  %92 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %arraydecay106 = getelementptr inbounds [3 x i8], [3 x i8]* %buff101, i32 0, i32 0
  call void @pushstr(%struct.lua_State* %92, i8* %arraydecay106)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.100, %vaarg.end.96, %if.end.81, %if.end.55, %vaarg.end.24, %if.end.13
  %93 = load i32, i32* %n, align 4
  %add = add nsw i32 %93, 2
  store i32 %add, i32* %n, align 4
  %94 = load i8*, i8** %e, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %add.ptr107, i8** %fmt.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %95 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %96 = load i8*, i8** %fmt.addr, align 8
  call void @pushstr(%struct.lua_State* %95, i8* %96)
  %97 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %98 = load i32, i32* %n, align 4
  %add108 = add nsw i32 %98, 1
  %99 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %99, i32 0, i32 4
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %top109, align 8
  %101 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %base = getelementptr inbounds %struct.lua_State, %struct.lua_State* %101, i32 0, i32 5
  %102 = load %struct.lua_TValue*, %struct.lua_TValue** %base, align 8
  %sub.ptr.lhs.cast110 = ptrtoint %struct.lua_TValue* %100 to i64
  %sub.ptr.rhs.cast111 = ptrtoint %struct.lua_TValue* %102 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub112, 16
  %conv113 = trunc i64 %sub.ptr.div to i32
  %sub = sub nsw i32 %conv113, 1
  call void @luaV_concat(%struct.lua_State* %97, i32 %add108, i32 %sub)
  %103 = load i32, i32* %n, align 4
  %104 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %104, i32 0, i32 4
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %top114, align 8
  %idx.ext = sext i32 %103 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 %idx.neg
  store %struct.lua_TValue* %add.ptr115, %struct.lua_TValue** %top114, align 8
  %106 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %106, i32 0, i32 4
  %107 = load %struct.lua_TValue*, %struct.lua_TValue** %top116, align 8
  %add.ptr117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %107, i64 -1
  %value118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %add.ptr117, i32 0, i32 0
  %gc119 = bitcast %union.Value* %value118 to %union.GCObject**
  %108 = load %union.GCObject*, %union.GCObject** %gc119, align 8
  %ts = bitcast %union.GCObject* %108 to %union.TString*
  %add.ptr120 = getelementptr inbounds %union.TString, %union.TString* %ts, i64 1
  %109 = bitcast %union.TString* %add.ptr120 to i8*
  ret i8* %109
}

; Function Attrs: nounwind uwtable
define internal void @pushstr(%struct.lua_State* %L, i8* %str) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %str.addr = alloca i8*, align 8
  %i_o = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i32 0, i32 4
  %1 = load %struct.lua_TValue*, %struct.lua_TValue** %top, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %i_o, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %4) #7
  %call1 = call %union.TString* @luaS_newlstr(%struct.lua_State* %2, i8* %3, i64 %call)
  %5 = bitcast %union.TString* %call1 to %union.GCObject*
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %value = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %gc = bitcast %union.Value* %value to %union.GCObject**
  store %union.GCObject* %5, %union.GCObject** %gc, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %i_o, align 8
  %tt = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  store i32 4, i32* %tt, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %stack_last = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 9
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %stack_last, align 8
  %10 = bitcast %struct.lua_TValue* %9 to i8*
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %top2, align 8
  %13 = bitcast %struct.lua_TValue* %12 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sle i64 %sub.ptr.sub, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaD_growstack(%struct.lua_State* %14, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %top3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 4
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %top3, align 8
  %incdec.ptr = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 1
  store %struct.lua_TValue* %incdec.ptr, %struct.lua_TValue** %top3, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #4

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) #4

; Function Attrs: nounwind uwtable
define hidden i8* @luaO_pushfstring(%struct.lua_State* %L, i8* %fmt, ...) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %fmt.addr = alloca i8*, align 8
  %msg = alloca i8*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %call = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %msg, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i8*, i8** %msg, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define hidden void @luaO_chunkid(i8* %out, i8* %source, i64 %bufflen) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  %bufflen.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i64 %bufflen, i64* %bufflen.addr, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %out.addr, align 8
  %3 = load i8*, i8** %source.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i64, i64* %bufflen.addr, align 8
  %call = call i8* @strncpy(i8* %2, i8* %add.ptr, i64 %4) #5
  %5 = load i64, i64* %bufflen.addr, align 8
  %sub = sub i64 %5, 1
  %6 = load i8*, i8** %out.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.36

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %source.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 64
  br i1 %cmp3, label %if.then.5, label %if.else.16

if.then.5:                                        ; preds = %if.else
  %9 = load i8*, i8** %source.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8
  %10 = load i64, i64* %bufflen.addr, align 8
  %sub6 = sub i64 %10, 8
  store i64 %sub6, i64* %bufflen.addr, align 8
  %11 = load i8*, i8** %source.addr, align 8
  %call7 = call i64 @strlen(i8* %11) #7
  store i64 %call7, i64* %l, align 8
  %12 = load i8*, i8** %out.addr, align 8
  %call8 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #5
  %13 = load i64, i64* %l, align 8
  %14 = load i64, i64* %bufflen.addr, align 8
  %cmp9 = icmp ugt i64 %13, %14
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.5
  %15 = load i64, i64* %l, align 8
  %16 = load i64, i64* %bufflen.addr, align 8
  %sub12 = sub i64 %15, %16
  %17 = load i8*, i8** %source.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %sub12
  store i8* %add.ptr13, i8** %source.addr, align 8
  %18 = load i8*, i8** %out.addr, align 8
  %call14 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.5
  %19 = load i8*, i8** %out.addr, align 8
  %20 = load i8*, i8** %source.addr, align 8
  %call15 = call i8* @strcat(i8* %19, i8* %20) #5
  br label %if.end.35

if.else.16:                                       ; preds = %if.else
  %21 = load i8*, i8** %source.addr, align 8
  %call17 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  store i64 %call17, i64* %len, align 8
  %22 = load i64, i64* %bufflen.addr, align 8
  %sub18 = sub i64 %22, 17
  store i64 %sub18, i64* %bufflen.addr, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i64, i64* %bufflen.addr, align 8
  %cmp19 = icmp ugt i64 %23, %24
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.16
  %25 = load i64, i64* %bufflen.addr, align 8
  store i64 %25, i64* %len, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.16
  %26 = load i8*, i8** %out.addr, align 8
  %call23 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #5
  %27 = load i64, i64* %len, align 8
  %28 = load i8*, i8** %source.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %29 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.end.22
  %30 = load i8*, i8** %out.addr, align 8
  %31 = load i8*, i8** %source.addr, align 8
  %32 = load i64, i64* %len, align 8
  %call29 = call i8* @strncat(i8* %30, i8* %31, i64 %32) #5
  %33 = load i8*, i8** %out.addr, align 8
  %call30 = call i8* @strcat(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.33

if.else.31:                                       ; preds = %if.end.22
  %34 = load i8*, i8** %out.addr, align 8
  %35 = load i8*, i8** %source.addr, align 8
  %call32 = call i8* @strcat(i8* %34, i8* %35) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.28
  %36 = load i8*, i8** %out.addr, align 8
  %call34 = call i8* @strcat(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %if.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
