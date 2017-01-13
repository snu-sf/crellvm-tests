; ModuleID = './MultiSource.Applications.lua/19.lstrlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }
%struct.MatchState = type { i8*, i8*, %struct.lua_State*, i32, [32 x %struct.anon] }
%struct.anon = type { i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@strlib = internal constant [16 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @str_byte }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @str_char }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @str_dump }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @str_find }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @str_format }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @gfind_nodef }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @gmatch }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @str_gsub }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @str_len }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @str_lower }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @str_match }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @str_rep }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @str_reverse }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @str_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @str_upper }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"gfind\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"unable to dump given function\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"unbalanced pattern\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"invalid capture index\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"\5C000\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"'string.gfind' was renamed to 'string.gmatch'\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"__index\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_string(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([16 x %struct.luaL_Reg], [16 x %struct.luaL_Reg]* @strlib, i32 0, i32 0))
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %1, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @createmetatable(%struct.lua_State* %3)
  ret i32 1
}

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @createmetatable(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), i64 0)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %2, i32 -2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_setmetatable(%struct.lua_State* %3, i32 -2)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %4, i32 -2)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -2)
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 -2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @str_byte(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  %posi = alloca i64, align 8
  %pose = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_optinteger(%struct.lua_State* %1, i32 2, i64 1)
  %2 = load i64, i64* %l, align 8
  %call2 = call i64 @posrelat(i64 %call1, i64 %2)
  store i64 %call2, i64* %posi, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i64, i64* %posi, align 8
  %call3 = call i64 @luaL_optinteger(%struct.lua_State* %3, i32 3, i64 %4)
  %5 = load i64, i64* %l, align 8
  %call4 = call i64 @posrelat(i64 %call3, i64 %5)
  store i64 %call4, i64* %pose, align 8
  %6 = load i64, i64* %posi, align 8
  %cmp = icmp sle i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %posi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %pose, align 8
  %8 = load i64, i64* %l, align 8
  %cmp5 = icmp ugt i64 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load i64, i64* %l, align 8
  store i64 %9, i64* %pose, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %10 = load i64, i64* %posi, align 8
  %11 = load i64, i64* %pose, align 8
  %cmp8 = icmp sgt i64 %10, %11
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %12 = load i64, i64* %pose, align 8
  %13 = load i64, i64* %posi, align 8
  %sub = sub nsw i64 %12, %13
  %add = add nsw i64 %sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %n, align 4
  %14 = load i64, i64* %posi, align 8
  %15 = load i32, i32* %n, align 4
  %conv11 = sext i32 %15 to i64
  %add12 = add nsw i64 %14, %conv11
  %16 = load i64, i64* %pose, align 8
  %cmp13 = icmp sle i64 %add12, %16
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.10
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call16 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.10
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i32, i32* %n, align 4
  call void @luaL_checkstack(%struct.lua_State* %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i64, i64* %posi, align 8
  %24 = load i32, i32* %i, align 4
  %conv20 = sext i32 %24 to i64
  %add21 = add nsw i64 %23, %conv20
  %sub22 = sub nsw i64 %add21, 1
  %25 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %sub22
  %26 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %26 to i64
  call void @lua_pushinteger(%struct.lua_State* %22, i64 %conv23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %n, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @str_char(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 8
  %c = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %1, %struct.luaL_Buffer* %b)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 %5)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %conv2 = trunc i32 %6 to i8
  %conv3 = zext i8 %conv2 to i32
  %7 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %conv3, %7
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call6 = call i32 @luaL_argerror(%struct.lua_State* %8, i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  %tobool = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %10 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %11 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp7 = icmp ult i8* %11, %add.ptr
  br i1 %cmp7, label %lor.end.12, label %lor.rhs.9

lor.rhs.9:                                        ; preds = %lor.end
  %call10 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool11 = icmp ne i8* %call10, null
  br label %lor.end.12

lor.end.12:                                       ; preds = %lor.rhs.9, %lor.end
  %12 = phi i1 [ true, %lor.end ], [ %tobool11, %lor.rhs.9 ]
  %lor.ext13 = zext i1 %12 to i32
  %13 = load i32, i32* %c, align 4
  %conv14 = trunc i32 %13 to i8
  %p15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %14 = load i8*, i8** %p15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p15, align 8
  store i8 %conv14, i8* %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end.12
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_dump(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %1, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %2, %struct.luaL_Buffer* %b)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = bitcast %struct.luaL_Buffer* %b to i8*
  %call = call i32 @lua_dump(%struct.lua_State* %3, i32 (%struct.lua_State*, i8*, i64, i8*)* @writer, i8* %4)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_find(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @str_find_aux(%struct.lua_State* %0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @str_format(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %arg = alloca i32, align 4
  %sfl = alloca i64, align 8
  %strfrmt = alloca i8*, align 8
  %strfrmt_end = alloca i8*, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %form = alloca [18 x i8], align 16
  %buff = alloca [512 x i8], align 16
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 1, i32* %arg, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %arg, align 4
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %sfl)
  store i8* %call, i8** %strfrmt, align 8
  %2 = load i8*, i8** %strfrmt, align 8
  %3 = load i64, i64* %sfl, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %strfrmt_end, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %4, %struct.luaL_Buffer* %b)
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %if.then.65, %sw.bb.57, %entry
  %5 = load i8*, i8** %strfrmt, align 8
  %6 = load i8*, i8** %strfrmt_end, align 8
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %strfrmt, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 37
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %9 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp4 = icmp ult i8* %9, %add.ptr3
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %call6 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool = icmp ne i8* %call6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %10 = phi i1 [ true, %if.then ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %11 = load i8*, i8** %strfrmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %strfrmt, align 8
  %12 = load i8, i8* %11, align 1
  %p7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %13 = load i8*, i8** %p7, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr8, i8** %p7, align 8
  store i8 %12, i8* %13, align 1
  br label %if.end.76

if.else:                                          ; preds = %while.body
  %14 = load i8*, i8** %strfrmt, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %strfrmt, align 8
  %15 = load i8, i8* %incdec.ptr9, align 1
  %conv10 = sext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 37
  br i1 %cmp11, label %if.then.13, label %if.else.28

if.then.13:                                       ; preds = %if.else
  %p14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %16 = load i8*, i8** %p14, align 8
  %buffer15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer15, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 8192
  %cmp18 = icmp ult i8* %16, %add.ptr17
  br i1 %cmp18, label %lor.end.23, label %lor.rhs.20

lor.rhs.20:                                       ; preds = %if.then.13
  %call21 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool22 = icmp ne i8* %call21, null
  br label %lor.end.23

lor.end.23:                                       ; preds = %lor.rhs.20, %if.then.13
  %17 = phi i1 [ true, %if.then.13 ], [ %tobool22, %lor.rhs.20 ]
  %lor.ext24 = zext i1 %17 to i32
  %18 = load i8*, i8** %strfrmt, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr25, i8** %strfrmt, align 8
  %19 = load i8, i8* %18, align 1
  %p26 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %20 = load i8*, i8** %p26, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr27, i8** %p26, align 8
  store i8 %19, i8* %20, align 1
  br label %if.end

if.else.28:                                       ; preds = %if.else
  %21 = load i32, i32* %arg, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %arg, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i8*, i8** %strfrmt, align 8
  %arraydecay29 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %call30 = call i8* @scanformat(%struct.lua_State* %22, i8* %23, i8* %arraydecay29)
  store i8* %call30, i8** %strfrmt, align 8
  %24 = load i8*, i8** %strfrmt, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr31, i8** %strfrmt, align 8
  %25 = load i8, i8* %24, align 1
  %conv32 = sext i8 %25 to i32
  switch i32 %conv32, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb.38
    i32 105, label %sw.bb.38
    i32 111, label %sw.bb.45
    i32 117, label %sw.bb.45
    i32 120, label %sw.bb.45
    i32 88, label %sw.bb.45
    i32 101, label %sw.bb.52
    i32 69, label %sw.bb.52
    i32 102, label %sw.bb.52
    i32 103, label %sw.bb.52
    i32 71, label %sw.bb.52
    i32 113, label %sw.bb.57
    i32 115, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.else.28
  %arraydecay33 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %26 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %27 = load i32, i32* %arg, align 4
  %call35 = call double @luaL_checknumber(%struct.lua_State* %26, i32 %27)
  %conv36 = fptosi double %call35 to i32
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* %arraydecay34, i32 %conv36) #5
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.else.28, %if.else.28
  %arraydecay39 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  call void @addintlen(i8* %arraydecay39)
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %28 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %29 = load i32, i32* %arg, align 4
  %call42 = call double @luaL_checknumber(%struct.lua_State* %28, i32 %29)
  %conv43 = fptosi double %call42 to i64
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* %arraydecay41, i64 %conv43) #5
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.else.28, %if.else.28, %if.else.28, %if.else.28
  %arraydecay46 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  call void @addintlen(i8* %arraydecay46)
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %31 = load i32, i32* %arg, align 4
  %call49 = call double @luaL_checknumber(%struct.lua_State* %30, i32 %31)
  %conv50 = fptoui double %call49 to i64
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay47, i8* %arraydecay48, i64 %conv50) #5
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.else.28, %if.else.28, %if.else.28, %if.else.28, %if.else.28
  %arraydecay53 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %33 = load i32, i32* %arg, align 4
  %call55 = call double @luaL_checknumber(%struct.lua_State* %32, i32 %33)
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay53, i8* %arraydecay54, double %call55) #5
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.else.28
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load i32, i32* %arg, align 4
  call void @addquoted(%struct.lua_State* %34, %struct.luaL_Buffer* %b, i32 %35)
  br label %while.cond

sw.bb.58:                                         ; preds = %if.else.28
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %37 = load i32, i32* %arg, align 4
  %call59 = call i8* @luaL_checklstring(%struct.lua_State* %36, i32 %37, i64* %l)
  store i8* %call59, i8** %s, align 8
  %arraydecay60 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %call61 = call i8* @strchr(i8* %arraydecay60, i32 46) #6
  %tobool62 = icmp ne i8* %call61, null
  br i1 %tobool62, label %if.else.66, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.58
  %38 = load i64, i64* %l, align 8
  %cmp63 = icmp uge i64 %38, 100
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true
  %39 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %40 = load i32, i32* %arg, align 4
  call void @lua_pushvalue(%struct.lua_State* %39, i32 %40)
  call void @luaL_addvalue(%struct.luaL_Buffer* %b)
  br label %while.cond

if.else.66:                                       ; preds = %land.lhs.true, %sw.bb.58
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [18 x i8], [18 x i8]* %form, i32 0, i32 0
  %41 = load i8*, i8** %s, align 8
  %call69 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay67, i8* %arraydecay68, i8* %41) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.28
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %43 = load i8*, i8** %strfrmt, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %43, i64 -1
  %44 = load i8, i8* %add.ptr70, align 1
  %conv71 = sext i8 %44 to i32
  %call72 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i32 %conv71)
  store i32 %call72, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.else.66, %sw.bb.52, %sw.bb.45, %sw.bb.38, %sw.bb
  %arraydecay73 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call75 = call i64 @strlen(i8* %arraydecay74) #6
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %arraydecay73, i64 %call75)
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %lor.end.23
  br label %if.end.76

if.end.76:                                        ; preds = %if.end, %lor.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @gfind_nodef(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gmatch(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 2, i64* null)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %2, i32 2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushinteger(%struct.lua_State* %3, i64 0)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @gmatch_aux, i32 3)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_gsub(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %srcl = alloca i64, align 8
  %src = alloca i8*, align 8
  %p = alloca i8*, align 8
  %tr = alloca i32, align 4
  %max_s = alloca i32, align 4
  %anchor = alloca i32, align 4
  %n = alloca i32, align 4
  %ms = alloca %struct.MatchState, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %e = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %srcl)
  store i8* %call, i8** %src, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 2, i64* null)
  store i8* %call1, i8** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @lua_type(%struct.lua_State* %2, i32 3)
  store i32 %call2, i32* %tr, align 4
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i64, i64* %srcl, align 8
  %add = add i64 %4, 1
  %call3 = call i64 @luaL_optinteger(%struct.lua_State* %3, i32 4, i64 %add)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %max_s, align 4
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv4, 94
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %anchor, align 4
  store i32 0, i32* %n, align 4
  %8 = load i32, i32* %tr, align 4
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load i32, i32* %tr, align 4
  %cmp8 = icmp eq i32 %9, 4
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %tr, align 4
  %cmp11 = icmp eq i32 %10, 6
  br i1 %cmp11, label %lor.end, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %11 = load i32, i32* %tr, align 4
  %cmp14 = icmp eq i32 %11, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.13
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call16 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0))
  %tobool = icmp ne i32 %call16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false, %cond.end
  %13 = phi i1 [ true, %lor.lhs.false.13 ], [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false ], [ true, %cond.end ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %14, %struct.luaL_Buffer* %b)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %L17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 2
  store %struct.lua_State* %15, %struct.lua_State** %L17, align 8
  %16 = load i8*, i8** %src, align 8
  %src_init = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 0
  store i8* %16, i8** %src_init, align 8
  %17 = load i8*, i8** %src, align 8
  %18 = load i64, i64* %srcl, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %18
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  store i8* %add.ptr, i8** %src_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %lor.end
  %19 = load i32, i32* %n, align 4
  %20 = load i32, i32* %max_s, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 3
  store i32 0, i32* %level, align 4
  %21 = load i8*, i8** %src, align 8
  %22 = load i8*, i8** %p, align 8
  %call20 = call i8* @match(%struct.MatchState* %ms, i8* %21, i8* %22)
  store i8* %call20, i8** %e, align 8
  %23 = load i8*, i8** %e, align 8
  %tobool21 = icmp ne i8* %23, null
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %24 = load i32, i32* %n, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %n, align 4
  %25 = load i8*, i8** %src, align 8
  %26 = load i8*, i8** %e, align 8
  call void @add_value(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %25, i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %27 = load i8*, i8** %e, align 8
  %tobool22 = icmp ne i8* %27, null
  br i1 %tobool22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %28 = load i8*, i8** %e, align 8
  %29 = load i8*, i8** %src, align 8
  %cmp23 = icmp ugt i8* %28, %29
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true
  %30 = load i8*, i8** %e, align 8
  store i8* %30, i8** %src, align 8
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %if.end
  %31 = load i8*, i8** %src, align 8
  %src_end26 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  %32 = load i8*, i8** %src_end26, align 8
  %cmp27 = icmp ult i8* %31, %32
  br i1 %cmp27, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %if.else
  %p30 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %33 = load i8*, i8** %p30, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr31 = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp32 = icmp ult i8* %33, %add.ptr31
  br i1 %cmp32, label %lor.end.37, label %lor.rhs.34

lor.rhs.34:                                       ; preds = %if.then.29
  %call35 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool36 = icmp ne i8* %call35, null
  br label %lor.end.37

lor.end.37:                                       ; preds = %lor.rhs.34, %if.then.29
  %34 = phi i1 [ true, %if.then.29 ], [ %tobool36, %lor.rhs.34 ]
  %lor.ext38 = zext i1 %34 to i32
  %35 = load i8*, i8** %src, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr39, i8** %src, align 8
  %36 = load i8, i8* %35, align 1
  %p40 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %37 = load i8*, i8** %p40, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr41, i8** %p40, align 8
  store i8 %36, i8* %37, align 1
  br label %if.end.43

if.else.42:                                       ; preds = %if.else
  br label %while.end

if.end.43:                                        ; preds = %lor.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.25
  %38 = load i32, i32* %anchor, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  br label %while.end

if.end.47:                                        ; preds = %if.end.44
  br label %while.cond

while.end:                                        ; preds = %if.then.46, %if.else.42, %while.cond
  %39 = load i8*, i8** %src, align 8
  %src_end48 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  %40 = load i8*, i8** %src_end48, align 8
  %41 = load i8*, i8** %src, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %39, i64 %sub.ptr.sub)
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %43 = load i32, i32* %n, align 4
  %conv49 = sext i32 %43 to i64
  call void @lua_pushinteger(%struct.lua_State* %42, i64 %conv49)
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @str_len(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i64, i64* %l, align 8
  call void @lua_pushinteger(%struct.lua_State* %1, i64 %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_lower(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %i = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %1, %struct.luaL_Buffer* %b)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %l, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %4 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp1 = icmp ult i8* %4, %add.ptr
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %call2 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool = icmp ne i8* %call2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call3 = call i32 @tolower(i32 %conv) #5
  %conv4 = trunc i32 %call3 to i8
  %p5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %9 = load i8*, i8** %p5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p5, align 8
  store i8 %conv4, i8* %9, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_match(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @str_find_aux(%struct.lua_State* %0, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @str_rep(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %s = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %1, i32 2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %n, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %2, %struct.luaL_Buffer* %b)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %n, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i64, i64* %l, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %4, i64 %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_reverse(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %1, %struct.luaL_Buffer* %b)
  br label %while.cond

while.cond:                                       ; preds = %lor.end, %entry
  %2 = load i64, i64* %l, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %l, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %3 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp = icmp ult i8* %3, %add.ptr
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.body
  %call1 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.body
  %4 = phi i1 [ true, %while.body ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %5 = load i64, i64* %l, align 8
  %6 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx, align 1
  %p3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %8 = load i8*, i8** %p3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p3, align 8
  store i8 %7, i8* %8, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_sub(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i64 @luaL_checkinteger(%struct.lua_State* %1, i32 2)
  %2 = load i64, i64* %l, align 8
  %call2 = call i64 @posrelat(i64 %call1, i64 %2)
  store i64 %call2, i64* %start, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i64 @luaL_optinteger(%struct.lua_State* %3, i32 3, i64 -1)
  %4 = load i64, i64* %l, align 8
  %call4 = call i64 @posrelat(i64 %call3, i64 %4)
  store i64 %call4, i64* %end, align 8
  %5 = load i64, i64* %start, align 8
  %cmp = icmp slt i64 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %end, align 8
  %7 = load i64, i64* %l, align 8
  %cmp5 = icmp sgt i64 %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %8 = load i64, i64* %l, align 8
  store i64 %8, i64* %end, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %9 = load i64, i64* %start, align 8
  %10 = load i64, i64* %end, align 8
  %cmp8 = icmp sle i64 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load i8*, i8** %s, align 8
  %13 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %14 = load i64, i64* %end, align 8
  %15 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %14, %15
  %add = add nsw i64 %sub, 1
  call void @lua_pushlstring(%struct.lua_State* %11, i8* %add.ptr10, i64 %add)
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), i64 0)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_upper(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %l = alloca i64, align 8
  %i = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %1, %struct.luaL_Buffer* %b)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %l, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %4 = load i8*, i8** %p, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp1 = icmp ult i8* %4, %add.ptr
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %call2 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  %tobool = icmp ne i8* %call2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call3 = call i32 @toupper(i32 %conv) #5
  %conv4 = trunc i32 %call3 to i8
  %p5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %9 = load i8*, i8** %p5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p5, align 8
  store i8 %conv4, i8* %9, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  ret i32 1
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i64 @posrelat(i64 %pos, i64 %len) #0 {
entry:
  %pos.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %add = add nsw i64 %1, 1
  %2 = load i64, i64* %pos.addr, align 8
  %add1 = add nsw i64 %2, %add
  store i64 %add1, i64* %pos.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %pos.addr, align 8
  %cmp2 = icmp sge i64 %3, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %pos.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i8* @luaL_prepbuffer(%struct.luaL_Buffer*) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @writer(%struct.lua_State* %L, i8* %b, i64 %size, i8* %B) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %B.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %B.addr, align 8
  %2 = bitcast i8* %1 to %struct.luaL_Buffer*
  %3 = load i8*, i8** %b.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %2, i8* %3, i64 %4)
  ret i32 0
}

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @str_find_aux(%struct.lua_State* %L, i32 %find) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %find.addr = alloca i32, align 4
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %init = alloca i64, align 8
  %s2 = alloca i8*, align 8
  %ms = alloca %struct.MatchState, align 8
  %anchor = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %find, i32* %find.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* %l1)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_checklstring(%struct.lua_State* %1, i32 2, i64* %l2)
  store i8* %call1, i8** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 3, i64 1)
  %3 = load i64, i64* %l1, align 8
  %call3 = call i64 @posrelat(i64 %call2, i64 %3)
  %sub = sub nsw i64 %call3, 1
  store i64 %sub, i64* %init, align 8
  %4 = load i64, i64* %init, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %init, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %init, align 8
  %6 = load i64, i64* %l1, align 8
  %cmp4 = icmp ugt i64 %5, %6
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %7 = load i64, i64* %l1, align 8
  store i64 %7, i64* %init, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %find.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.end.6
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call i32 @lua_toboolean(%struct.lua_State* %9, i32 4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** %p, align 8
  %call9 = call i8* @strpbrk(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.else.21

if.then.11:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load i8*, i8** %s, align 8
  %12 = load i64, i64* %init, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i64, i64* %l1, align 8
  %14 = load i64, i64* %init, align 8
  %sub12 = sub i64 %13, %14
  %15 = load i8*, i8** %p, align 8
  %16 = load i64, i64* %l2, align 8
  %call13 = call i8* @lmemfind(i8* %add.ptr, i64 %sub12, i8* %15, i64 %16)
  store i8* %call13, i8** %s2, align 8
  %17 = load i8*, i8** %s2, align 8
  %tobool14 = icmp ne i8* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.then.11
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i8*, i8** %s2, align 8
  %20 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %add)
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %22 = load i8*, i8** %s2, align 8
  %23 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %23 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %24 = load i64, i64* %l2, align 8
  %add19 = add i64 %sub.ptr.sub18, %24
  call void @lua_pushinteger(%struct.lua_State* %21, i64 %add19)
  store i32 2, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.11
  br label %if.end.50

if.else.21:                                       ; preds = %lor.lhs.false, %if.end.6
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv, 94
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.21
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %anchor, align 4
  %28 = load i8*, i8** %s, align 8
  %29 = load i64, i64* %init, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %add.ptr24, i8** %s1, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %L25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 2
  store %struct.lua_State* %30, %struct.lua_State** %L25, align 8
  %31 = load i8*, i8** %s, align 8
  %src_init = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 0
  store i8* %31, i8** %src_init, align 8
  %32 = load i8*, i8** %s, align 8
  %33 = load i64, i64* %l1, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %32, i64 %33
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  store i8* %add.ptr26, i8** %src_end, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %cond.end
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 3
  store i32 0, i32* %level, align 4
  %34 = load i8*, i8** %s1, align 8
  %35 = load i8*, i8** %p, align 8
  %call27 = call i8* @match(%struct.MatchState* %ms, i8* %34, i8* %35)
  store i8* %call27, i8** %res, align 8
  %cmp28 = icmp ne i8* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %do.body
  %36 = load i32, i32* %find.addr, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then.32, label %if.else.42

if.then.32:                                       ; preds = %if.then.30
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %38 = load i8*, i8** %s1, align 8
  %39 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast33 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %39 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %add36 = add nsw i64 %sub.ptr.sub35, 1
  call void @lua_pushinteger(%struct.lua_State* %37, i64 %add36)
  %40 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %41 = load i8*, i8** %res, align 8
  %42 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %42 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  call void @lua_pushinteger(%struct.lua_State* %40, i64 %sub.ptr.sub39)
  %call40 = call i32 @push_captures(%struct.MatchState* %ms, i8* null, i8* null)
  %add41 = add nsw i32 %call40, 2
  store i32 %add41, i32* %retval
  br label %return

if.else.42:                                       ; preds = %if.then.30
  %43 = load i8*, i8** %s1, align 8
  %44 = load i8*, i8** %res, align 8
  %call43 = call i32 @push_captures(%struct.MatchState* %ms, i8* %43, i8* %44)
  store i32 %call43, i32* %retval
  br label %return

if.end.44:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %45 = load i8*, i8** %s1, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr45, i8** %s1, align 8
  %src_end46 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  %46 = load i8*, i8** %src_end46, align 8
  %cmp47 = icmp ult i8* %45, %46
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %47 = load i32, i32* %anchor, align 4
  %tobool49 = icmp ne i32 %47, 0
  %lnot = xor i1 %tobool49, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %48 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %48, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.50

if.end.50:                                        ; preds = %do.end, %if.end.20
  %49 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %49)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.else.42, %if.then.32, %if.then.15
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @lmemfind(i8* %s1, i64 %l1, i8* %s2, i64 %l2) #0 {
entry:
  %retval = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %l1.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %l2.addr = alloca i64, align 8
  %init = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %l1, i64* %l1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %l2, i64* %l2.addr, align 8
  %0 = load i64, i64* %l2.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s1.addr, align 8
  store i8* %1, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %l2.addr, align 8
  %3 = load i64, i64* %l1.addr, align 8
  %cmp1 = icmp ugt i64 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %4 = load i64, i64* %l2.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %l2.addr, align 8
  %5 = load i64, i64* %l1.addr, align 8
  %6 = load i64, i64* %l2.addr, align 8
  %sub = sub i64 %5, %6
  store i64 %sub, i64* %l1.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else.3
  %7 = load i64, i64* %l1.addr, align 8
  %cmp4 = icmp ugt i64 %7, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %s1.addr, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %11 = load i64, i64* %l1.addr, align 8
  %call = call i8* @memchr(i8* %8, i32 %conv, i64 %11) #6
  store i8* %call, i8** %init, align 8
  %cmp5 = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %init, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %init, align 8
  %14 = load i8*, i8** %init, align 8
  %15 = load i8*, i8** %s2.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i64, i64* %l2.addr, align 8
  %call7 = call i32 @memcmp(i8* %14, i8* %add.ptr, i64 %16) #6
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %while.body
  %17 = load i8*, i8** %init, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %add.ptr11, i8** %retval
  br label %return

if.else.12:                                       ; preds = %while.body
  %18 = load i8*, i8** %init, align 8
  %19 = load i8*, i8** %s1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = load i64, i64* %l1.addr, align 8
  %sub13 = sub i64 %20, %sub.ptr.sub
  store i64 %sub13, i64* %l1.addr, align 8
  %21 = load i8*, i8** %init, align 8
  store i8* %21, i8** %s1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then.2, %if.then
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define internal i8* @match(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %previous = alloca i8, align 1
  %ep72 = alloca i8*, align 8
  %m = alloca i32, align 4
  %res = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %init

init:                                             ; preds = %if.end.106, %if.end.89, %if.end.54, %if.end.41, %if.end, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default.71 [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.6
    i32 37, label %sw.bb.9
    i32 0, label %sw.bb.57
    i32 36, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %init
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %add.ptr, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %p.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 2
  %call = call i8* @start_capture(%struct.MatchState* %4, i8* %5, i8* %add.ptr3, i32 -2)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %7 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 1
  %call5 = call i8* @start_capture(%struct.MatchState* %7, i8* %8, i8* %add.ptr4, i32 -1)
  store i8* %call5, i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %init
  %10 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8*, i8** %p.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %12, i64 1
  %call8 = call i8* @end_capture(%struct.MatchState* %10, i8* %11, i8* %add.ptr7)
  store i8* %call8, i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %init
  %13 = load i8*, i8** %p.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %add.ptr10, align 1
  %conv11 = sext i8 %14 to i32
  switch i32 %conv11, label %sw.default [
    i32 98, label %sw.bb.12
    i32 102, label %sw.bb.19
  ]

sw.bb.12:                                         ; preds = %sw.bb.9
  %15 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %16 = load i8*, i8** %s.addr, align 8
  %17 = load i8*, i8** %p.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 2
  %call14 = call i8* @matchbalance(%struct.MatchState* %15, i8* %16, i8* %add.ptr13)
  store i8* %call14, i8** %s.addr, align 8
  %18 = load i8*, i8** %s.addr, align 8
  %cmp15 = icmp eq i8* %18, null
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %sw.bb.12
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.12
  %19 = load i8*, i8** %p.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr18, i8** %p.addr, align 8
  br label %init

sw.bb.19:                                         ; preds = %sw.bb.9
  %20 = load i8*, i8** %p.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr20, i8** %p.addr, align 8
  %21 = load i8*, i8** %p.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp ne i32 %conv21, 91
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.bb.19
  %23 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %23, i32 0, i32 2
  %24 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %sw.bb.19
  %25 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %26 = load i8*, i8** %p.addr, align 8
  %call27 = call i8* @classend(%struct.MatchState* %25, i8* %26)
  store i8* %call27, i8** %ep, align 8
  %27 = load i8*, i8** %s.addr, align 8
  %28 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_init = getelementptr inbounds %struct.MatchState, %struct.MatchState* %28, i32 0, i32 0
  %29 = load i8*, i8** %src_init, align 8
  %cmp28 = icmp eq i8* %27, %29
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  %30 = load i8*, i8** %s.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %30, i64 -1
  %31 = load i8, i8* %add.ptr30, align 1
  %conv31 = sext i8 %31 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv31, %cond.false ]
  %conv32 = trunc i32 %cond to i8
  store i8 %conv32, i8* %previous, align 1
  %32 = load i8, i8* %previous, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i8*, i8** %p.addr, align 8
  %34 = load i8*, i8** %ep, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %34, i64 -1
  %call35 = call i32 @matchbracketclass(i32 %conv33, i8* %33, i8* %add.ptr34)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %35 = load i8*, i8** %s.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv36 = zext i8 %36 to i32
  %37 = load i8*, i8** %p.addr, align 8
  %38 = load i8*, i8** %ep, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %38, i64 -1
  %call38 = call i32 @matchbracketclass(i32 %conv36, i8* %37, i8* %add.ptr37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false, %cond.end
  store i8* null, i8** %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false
  %39 = load i8*, i8** %ep, align 8
  store i8* %39, i8** %p.addr, align 8
  br label %init

sw.default:                                       ; preds = %sw.bb.9
  %40 = load i8*, i8** %p.addr, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %add.ptr42, align 1
  %conv43 = zext i8 %41 to i32
  %idxprom = sext i32 %conv43 to i64
  %call44 = call i16** @__ctype_b_loc() #7
  %42 = load i16*, i16** %call44, align 8
  %arrayidx = getelementptr inbounds i16, i16* %42, i64 %idxprom
  %43 = load i16, i16* %arrayidx, align 2
  %conv45 = zext i16 %43 to i32
  %and = and i32 %conv45, 2048
  %tobool46 = icmp ne i32 %and, 0
  br i1 %tobool46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %sw.default
  %44 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %45 = load i8*, i8** %s.addr, align 8
  %46 = load i8*, i8** %p.addr, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %add.ptr48, align 1
  %conv49 = zext i8 %47 to i32
  %call50 = call i8* @match_capture(%struct.MatchState* %44, i8* %45, i32 %conv49)
  store i8* %call50, i8** %s.addr, align 8
  %48 = load i8*, i8** %s.addr, align 8
  %cmp51 = icmp eq i8* %48, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.47
  store i8* null, i8** %retval
  br label %return

if.end.54:                                        ; preds = %if.then.47
  %49 = load i8*, i8** %p.addr, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %add.ptr55, i8** %p.addr, align 8
  br label %init

if.end.56:                                        ; preds = %sw.default
  br label %dflt

sw.bb.57:                                         ; preds = %init
  %50 = load i8*, i8** %s.addr, align 8
  store i8* %50, i8** %retval
  br label %return

sw.bb.58:                                         ; preds = %init
  %51 = load i8*, i8** %p.addr, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %add.ptr59, align 1
  %conv60 = sext i8 %52 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %sw.bb.58
  %53 = load i8*, i8** %s.addr, align 8
  %54 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %54, i32 0, i32 1
  %55 = load i8*, i8** %src_end, align 8
  %cmp64 = icmp eq i8* %53, %55
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %if.then.63
  %56 = load i8*, i8** %s.addr, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.63
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.66
  %cond69 = phi i8* [ %56, %cond.true.66 ], [ null, %cond.false.67 ]
  store i8* %cond69, i8** %retval
  br label %return

if.else.70:                                       ; preds = %sw.bb.58
  br label %dflt

sw.default.71:                                    ; preds = %init
  br label %dflt

dflt:                                             ; preds = %sw.default.71, %if.else.70, %if.end.56
  %57 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %58 = load i8*, i8** %p.addr, align 8
  %call73 = call i8* @classend(%struct.MatchState* %57, i8* %58)
  store i8* %call73, i8** %ep72, align 8
  %59 = load i8*, i8** %s.addr, align 8
  %60 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end74 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %60, i32 0, i32 1
  %61 = load i8*, i8** %src_end74, align 8
  %cmp75 = icmp ult i8* %59, %61
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %dflt
  %62 = load i8*, i8** %s.addr, align 8
  %63 = load i8, i8* %62, align 1
  %conv77 = zext i8 %63 to i32
  %64 = load i8*, i8** %p.addr, align 8
  %65 = load i8*, i8** %ep72, align 8
  %call78 = call i32 @singlematch(i32 %conv77, i8* %64, i8* %65)
  %tobool79 = icmp ne i32 %call78, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %dflt
  %66 = phi i1 [ false, %dflt ], [ %tobool79, %land.rhs ]
  %land.ext = zext i1 %66 to i32
  store i32 %land.ext, i32* %m, align 4
  %67 = load i8*, i8** %ep72, align 8
  %68 = load i8, i8* %67, align 1
  %conv80 = sext i8 %68 to i32
  switch i32 %conv80, label %sw.default.103 [
    i32 63, label %sw.bb.81
    i32 42, label %sw.bb.91
    i32 43, label %sw.bb.93
    i32 45, label %sw.bb.101
  ]

sw.bb.81:                                         ; preds = %land.end
  %69 = load i32, i32* %m, align 4
  %tobool82 = icmp ne i32 %69, 0
  br i1 %tobool82, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %sw.bb.81
  %70 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %71 = load i8*, i8** %s.addr, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8*, i8** %ep72, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %72, i64 1
  %call85 = call i8* @match(%struct.MatchState* %70, i8* %add.ptr83, i8* %add.ptr84)
  store i8* %call85, i8** %res, align 8
  %cmp86 = icmp ne i8* %call85, null
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true
  %73 = load i8*, i8** %res, align 8
  store i8* %73, i8** %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true, %sw.bb.81
  %74 = load i8*, i8** %ep72, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %add.ptr90, i8** %p.addr, align 8
  br label %init

sw.bb.91:                                         ; preds = %land.end
  %75 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %76 = load i8*, i8** %s.addr, align 8
  %77 = load i8*, i8** %p.addr, align 8
  %78 = load i8*, i8** %ep72, align 8
  %call92 = call i8* @max_expand(%struct.MatchState* %75, i8* %76, i8* %77, i8* %78)
  store i8* %call92, i8** %retval
  br label %return

sw.bb.93:                                         ; preds = %land.end
  %79 = load i32, i32* %m, align 4
  %tobool94 = icmp ne i32 %79, 0
  br i1 %tobool94, label %cond.true.95, label %cond.false.98

cond.true.95:                                     ; preds = %sw.bb.93
  %80 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %81 = load i8*, i8** %s.addr, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8*, i8** %p.addr, align 8
  %83 = load i8*, i8** %ep72, align 8
  %call97 = call i8* @max_expand(%struct.MatchState* %80, i8* %add.ptr96, i8* %82, i8* %83)
  br label %cond.end.99

cond.false.98:                                    ; preds = %sw.bb.93
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.95
  %cond100 = phi i8* [ %call97, %cond.true.95 ], [ null, %cond.false.98 ]
  store i8* %cond100, i8** %retval
  br label %return

sw.bb.101:                                        ; preds = %land.end
  %84 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %85 = load i8*, i8** %s.addr, align 8
  %86 = load i8*, i8** %p.addr, align 8
  %87 = load i8*, i8** %ep72, align 8
  %call102 = call i8* @min_expand(%struct.MatchState* %84, i8* %85, i8* %86, i8* %87)
  store i8* %call102, i8** %retval
  br label %return

sw.default.103:                                   ; preds = %land.end
  %88 = load i32, i32* %m, align 4
  %tobool104 = icmp ne i32 %88, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %sw.default.103
  store i8* null, i8** %retval
  br label %return

if.end.106:                                       ; preds = %sw.default.103
  %89 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %90 = load i8*, i8** %ep72, align 8
  store i8* %90, i8** %p.addr, align 8
  br label %init

return:                                           ; preds = %if.then.105, %sw.bb.101, %cond.end.99, %sw.bb.91, %if.then.88, %cond.end.68, %sw.bb.57, %if.then.53, %if.then.40, %if.then.17, %sw.bb.6, %if.else, %if.then
  %91 = load i8*, i8** %retval
  ret i8* %91
}

; Function Attrs: nounwind uwtable
define internal i32 @push_captures(%struct.MatchState* %ms, i8* %s, i8* %e) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %nlevels = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i32 0, i32 3
  %1 = load i32, i32* %level, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level1 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 3
  %4 = load i32, i32* %level1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %nlevels, align 4
  %5 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i32 0, i32 2
  %6 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %7 = load i32, i32* %nlevels, align 4
  call void @luaL_checkstack(%struct.lua_State* %6, i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nlevels, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8*, i8** %e.addr, align 8
  call void @push_onecapture(%struct.MatchState* %10, i32 %11, i8* %12, i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %nlevels, align 4
  ret i32 %15
}

declare void @lua_pushnil(%struct.lua_State*) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @start_capture(%struct.MatchState* %ms, i8* %s, i8* %p, i32 %what) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %what.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  %level = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level1 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i32 0, i32 3
  %1 = load i32, i32* %level1, align 4
  store i32 %1, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %cmp = icmp sge i32 %2, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 2
  %4 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %level, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %7, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %init = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store i8* %5, i8** %init, align 8
  %8 = load i32, i32* %what.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = load i32, i32* %level, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture3 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %10, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture3, i32 0, i64 %idxprom2
  %len = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 1
  store i64 %conv, i64* %len, align 8
  %11 = load i32, i32* %level, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 3
  store i32 %add, i32* %level5, align 4
  %13 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8*, i8** %p.addr, align 8
  %call6 = call i8* @match(%struct.MatchState* %13, i8* %14, i8* %15)
  store i8* %call6, i8** %res, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %16, i32 0, i32 3
  %17 = load i32, i32* %level10, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %level10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %18 = load i8*, i8** %res, align 8
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @end_capture(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %res = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %call = call i32 @capture_to_close(%struct.MatchState* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i32, i32* %l, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %init = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %init, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load i32, i32* %l, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture2 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture2, i32 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %len, align 8
  %7 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %call4 = call i8* @match(%struct.MatchState* %7, i8* %8, i8* %9)
  store i8* %call4, i8** %res, align 8
  %cmp = icmp eq i8* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %l, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %11, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture6, i32 0, i64 %idxprom5
  %len8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 1
  store i64 -1, i64* %len8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** %res, align 8
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @matchbalance(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %cont = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i32 0, i32 2
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %8 = load i8*, i8** %p.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv5, %conv6
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  store i32 %conv10, i32* %b, align 4
  %12 = load i8*, i8** %p.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %add.ptr11, align 1
  %conv12 = sext i8 %13 to i32
  store i32 %conv12, i32* %e, align 4
  store i32 1, i32* %cont, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.else
  %14 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %15 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %15, i32 0, i32 1
  %16 = load i8*, i8** %src_end, align 8
  %cmp13 = icmp ult i8* %incdec.ptr, %16
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %19 = load i32, i32* %e, align 4
  %cmp16 = icmp eq i32 %conv15, %19
  br i1 %cmp16, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %while.body
  %20 = load i32, i32* %cont, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %cont, align 4
  %cmp19 = icmp eq i32 %dec, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %21 = load i8*, i8** %s.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %add.ptr22, i8** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  br label %if.end.30

if.else.24:                                       ; preds = %while.body
  %22 = load i8*, i8** %s.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv25 = sext i8 %23 to i32
  %24 = load i32, i32* %b, align 4
  %cmp26 = icmp eq i32 %conv25, %24
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  %25 = load i32, i32* %cont, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %cont, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.23
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.31

if.end.31:                                        ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.21, %if.then.9
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define internal i8* @classend(%struct.MatchState* %ms, i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %p.addr = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 37, label %sw.bb
    i32 91, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i32 0, i32 2
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 94
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %sw.bb.3
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %p.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %sw.bb.3
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.9
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.body
  %12 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 2
  %13 = load %struct.lua_State*, %struct.lua_State** %L14, align 8
  %call15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.body
  %14 = load i8*, i8** %p.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr17, i8** %p.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 37
  br i1 %cmp19, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.16
  %16 = load i8*, i8** %p.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %p.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr25, i8** %p.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %19 = load i8*, i8** %p.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp ne i32 %conv27, 93
  br i1 %cmp28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i8*, i8** %p.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %add.ptr30, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %22 = load i8*, i8** %p.addr, align 8
  store i8* %22, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %do.end, %if.end
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal i32 @matchbracketclass(i32 %c, i8* %p, i8* %ec) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %ec.addr = alloca i8*, align 8
  %sig = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8* %ec, i8** %ec.addr, align 8
  store i32 1, i32* %sig, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %sig, align 4
  %2 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end
  %3 = load i8*, i8** %p.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %p.addr, align 8
  %4 = load i8*, i8** %ec.addr, align 8
  %cmp3 = icmp ult i8* %incdec.ptr2, %4
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 37
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %7 = load i8*, i8** %p.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr9, i8** %p.addr, align 8
  %8 = load i32, i32* %c.addr, align 4
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = zext i8 %10 to i32
  %call = call i32 @match_class(i32 %8, i32 %conv10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %11 = load i32, i32* %sig, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.39

if.else:                                          ; preds = %while.body
  %12 = load i8*, i8** %p.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %add.ptr13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else
  %14 = load i8*, i8** %p.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8*, i8** %ec.addr, align 8
  %cmp18 = icmp ult i8* %add.ptr17, %15
  br i1 %cmp18, label %if.then.20, label %if.else.32

if.then.20:                                       ; preds = %land.lhs.true
  %16 = load i8*, i8** %p.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %add.ptr21, i8** %p.addr, align 8
  %17 = load i8*, i8** %p.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %17, i64 -2
  %18 = load i8, i8* %add.ptr22, align 1
  %conv23 = zext i8 %18 to i32
  %19 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp sle i32 %conv23, %19
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.31

land.lhs.true.26:                                 ; preds = %if.then.20
  %20 = load i32, i32* %c.addr, align 4
  %21 = load i8*, i8** %p.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv27 = zext i8 %22 to i32
  %cmp28 = icmp sle i32 %20, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.26
  %23 = load i32, i32* %sig, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.26, %if.then.20
  br label %if.end.38

if.else.32:                                       ; preds = %land.lhs.true, %if.else
  %24 = load i8*, i8** %p.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv33 = zext i8 %25 to i32
  %26 = load i32, i32* %c.addr, align 4
  %cmp34 = icmp eq i32 %conv33, %26
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.32
  %27 = load i32, i32* %sig, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %sig, align 4
  %tobool40 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool40, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.36, %if.then.30, %if.then.11
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define internal i8* @match_capture(%struct.MatchState* %ms, i8* %s, i32 %l) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %1 = load i32, i32* %l.addr, align 4
  %call = call i32 @check_capture(%struct.MatchState* %0, i32 %1)
  store i32 %call, i32* %l.addr, align 4
  %2 = load i32, i32* %l.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %len1 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %4 = load i64, i64* %len1, align 8
  store i64 %4, i64* %len, align 8
  %5 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i32 0, i32 1
  %6 = load i8*, i8** %src_end, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %sub.ptr.sub, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %l.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture3 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %10, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture3, i32 0, i64 %idxprom2
  %init = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 0
  %11 = load i8*, i8** %init, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i64, i64* %len, align 8
  %call5 = call i32 @memcmp(i8* %11, i8* %12, i64 %13) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %add.ptr, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @singlematch(i32 %c, i8* %p, i8* %ep) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %ep.addr = alloca i8*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8* %ep, i8** %ep.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 46, label %sw.bb
    i32 37, label %sw.bb.1
    i32 91, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %add.ptr, align 1
  %conv2 = zext i8 %4 to i32
  %call = call i32 @match_class(i32 %2, i32 %conv2)
  store i32 %call, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i8*, i8** %ep.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 -1
  %call5 = call i32 @matchbracketclass(i32 %5, i8* %6, i8* %add.ptr4)
  store i32 %call5, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %8 = load i8*, i8** %p.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = zext i8 %9 to i32
  %10 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %conv6, %10
  %conv7 = zext i1 %cmp to i32
  store i32 %conv7, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %sw.bb
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i8* @max_expand(%struct.MatchState* %ms, i8* %s, i8* %p, i8* %ep) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %ep.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %res = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ep, i8** %ep.addr, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i32 0, i32 1
  %3 = load i8*, i8** %src_end, align 8
  %cmp = icmp ult i8* %add.ptr, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64, i64* %i, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %add.ptr1, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i8*, i8** %ep.addr, align 8
  %call = call i32 @singlematch(i32 %conv, i8* %7, i8* %8)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i64, i64* %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.end
  %11 = load i64, i64* %i, align 8
  %cmp3 = icmp sge i64 %11, 0
  br i1 %cmp3, label %while.body.5, label %while.end.10

while.body.5:                                     ; preds = %while.cond.2
  %12 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %ep.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 1
  %call8 = call i8* @match(%struct.MatchState* %12, i8* %add.ptr6, i8* %add.ptr7)
  store i8* %call8, i8** %res, align 8
  %16 = load i8*, i8** %res, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.5
  %17 = load i8*, i8** %res, align 8
  store i8* %17, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body.5
  %18 = load i64, i64* %i, align 8
  %dec = add nsw i64 %18, -1
  store i64 %dec, i64* %i, align 8
  br label %while.cond.2

while.end.10:                                     ; preds = %while.cond.2
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end.10, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i8* @min_expand(%struct.MatchState* %ms, i8* %s, i8* %p, i8* %ep) #0 {
entry:
  %retval = alloca i8*, align 8
  %ms.addr = alloca %struct.MatchState*, align 8
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %ep.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ep, i8** %ep.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.5, %entry
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %ep.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %call = call i8* @match(%struct.MatchState* %0, i8* %1, i8* %add.ptr)
  store i8* %call, i8** %res, align 8
  %3 = load i8*, i8** %res, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %4 = load i8*, i8** %res, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %for.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i32 0, i32 1
  %7 = load i8*, i8** %src_end, align 8
  %cmp1 = icmp ult i8* %5, %7
  br i1 %cmp1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8*, i8** %ep.addr, align 8
  %call2 = call i32 @singlematch(i32 %conv, i8* %10, i8* %11)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.else.4, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @capture_to_close(%struct.MatchState* %ms) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca %struct.MatchState*, align 8
  %level = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level1 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i32 0, i32 3
  %1 = load i32, i32* %level1, align 4
  store i32 %1, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %level, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %level, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %cmp2 = icmp eq i64 %6, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %level, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %level, align 4
  %dec3 = add nsw i32 %8, -1
  store i32 %dec3, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %9, i32 0, i32 2
  %10 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @match_class(i32 %c, i32 %cl) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %cl.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %cl, i32* %cl.addr, align 4
  %0 = load i32, i32* %cl.addr, align 4
  %call = call i32 @tolower(i32 %0) #5
  switch i32 %call, label %sw.default [
    i32 97, label %sw.bb
    i32 99, label %sw.bb.2
    i32 100, label %sw.bb.8
    i32 108, label %sw.bb.14
    i32 112, label %sw.bb.20
    i32 115, label %sw.bb.26
    i32 117, label %sw.bb.32
    i32 119, label %sw.bb.38
    i32 120, label %sw.bb.44
    i32 122, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call1 = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1024
  store i32 %and, i32* %res, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %call4 = call i16** @__ctype_b_loc() #7
  %5 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 %idxprom3
  %6 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %6 to i32
  %and7 = and i32 %conv6, 2
  store i32 %and7, i32* %res, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %7 = load i32, i32* %c.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %call10 = call i16** @__ctype_b_loc() #7
  %8 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %9 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %9 to i32
  %and13 = and i32 %conv12, 2048
  store i32 %and13, i32* %res, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %10 = load i32, i32* %c.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %11 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %11, i64 %idxprom15
  %12 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %12 to i32
  %and19 = and i32 %conv18, 512
  store i32 %and19, i32* %res, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %13 = load i32, i32* %c.addr, align 4
  %idxprom21 = sext i32 %13 to i64
  %call22 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %14, i64 %idxprom21
  %15 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %15 to i32
  %and25 = and i32 %conv24, 4
  store i32 %and25, i32* %res, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %16 = load i32, i32* %c.addr, align 4
  %idxprom27 = sext i32 %16 to i64
  %call28 = call i16** @__ctype_b_loc() #7
  %17 = load i16*, i16** %call28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %17, i64 %idxprom27
  %18 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %18 to i32
  %and31 = and i32 %conv30, 8192
  store i32 %and31, i32* %res, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %19 = load i32, i32* %c.addr, align 4
  %idxprom33 = sext i32 %19 to i64
  %call34 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %call34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %20, i64 %idxprom33
  %21 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %21 to i32
  %and37 = and i32 %conv36, 256
  store i32 %and37, i32* %res, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %22 = load i32, i32* %c.addr, align 4
  %idxprom39 = sext i32 %22 to i64
  %call40 = call i16** @__ctype_b_loc() #7
  %23 = load i16*, i16** %call40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %23, i64 %idxprom39
  %24 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %24 to i32
  %and43 = and i32 %conv42, 8
  store i32 %and43, i32* %res, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %25 = load i32, i32* %c.addr, align 4
  %idxprom45 = sext i32 %25 to i64
  %call46 = call i16** @__ctype_b_loc() #7
  %26 = load i16*, i16** %call46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %26, i64 %idxprom45
  %27 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %27 to i32
  %and49 = and i32 %conv48, 4096
  store i32 %and49, i32* %res, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %28 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %28, 0
  %conv51 = zext i1 %cmp to i32
  store i32 %conv51, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load i32, i32* %cl.addr, align 4
  %30 = load i32, i32* %c.addr, align 4
  %cmp52 = icmp eq i32 %29, %30
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.50, %sw.bb.44, %sw.bb.38, %sw.bb.32, %sw.bb.26, %sw.bb.20, %sw.bb.14, %sw.bb.8, %sw.bb.2, %sw.bb
  %31 = load i32, i32* %cl.addr, align 4
  %idxprom54 = sext i32 %31 to i64
  %call55 = call i16** @__ctype_b_loc() #7
  %32 = load i16*, i16** %call55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %32, i64 %idxprom54
  %33 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %33 to i32
  %and58 = and i32 %conv57, 512
  %tobool = icmp ne i32 %and58, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %34 = load i32, i32* %res, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %35 = load i32, i32* %res, align 4
  %tobool59 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool59, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %lnot.ext, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %sw.default
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_capture(%struct.MatchState* %ms, i32 %l) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca %struct.MatchState*, align 8
  %l.addr = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %0, 49
  store i32 %sub, i32* %l.addr, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %l.addr, align 4
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %3, i32 0, i32 3
  %4 = load i32, i32* %level, align 4
  %cmp1 = icmp sge i32 %2, %4
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %l.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %8, i32 0, i32 2
  %9 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %10 = load i32, i32* %l.addr, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @push_onecapture(%struct.MatchState* %ms, i32 %i, i8* %s, i8* %e) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %i.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %l = alloca i64, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %0 = load i32, i32* %i.addr, align 4
  %1 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %1, i32 0, i32 3
  %2 = load i32, i32* %level, align 4
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i32 0, i32 2
  %5 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8*, i8** %e.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %5, i8* %6, i64 %sub.ptr.sub)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L3 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %9, i32 0, i32 2
  %10 = load %struct.lua_State*, %struct.lua_State** %L3, align 8
  %call = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.26

if.else.4:                                        ; preds = %entry
  %11 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture = getelementptr inbounds %struct.MatchState, %struct.MatchState* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture, i32 0, i64 %idxprom
  %len = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %13 = load i64, i64* %len, align 8
  store i64 %13, i64* %l, align 8
  %14 = load i64, i64* %l, align 8
  %cmp5 = icmp eq i64 %14, -1
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.else.4
  %15 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L7 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %15, i32 0, i32 2
  %16 = load %struct.lua_State*, %struct.lua_State** %L7, align 8
  %call8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.else.4
  %17 = load i64, i64* %l, align 8
  %cmp10 = icmp eq i64 %17, -2
  br i1 %cmp10, label %if.then.11, label %if.else.19

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %18, i32 0, i32 2
  %19 = load %struct.lua_State*, %struct.lua_State** %L12, align 8
  %20 = load i32, i32* %i.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture14 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %21, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture14, i32 0, i64 %idxprom13
  %init = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx15, i32 0, i32 0
  %22 = load i8*, i8** %init, align 8
  %23 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %src_init = getelementptr inbounds %struct.MatchState, %struct.MatchState* %23, i32 0, i32 0
  %24 = load i8*, i8** %src_init, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %24 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %add = add nsw i64 %sub.ptr.sub18, 1
  call void @lua_pushinteger(%struct.lua_State* %19, i64 %add)
  br label %if.end.25

if.else.19:                                       ; preds = %if.end.9
  %25 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %25, i32 0, i32 2
  %26 = load %struct.lua_State*, %struct.lua_State** %L20, align 8
  %27 = load i32, i32* %i.addr, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %capture22 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %28, i32 0, i32 4
  %arrayidx23 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %capture22, i32 0, i64 %idxprom21
  %init24 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx23, i32 0, i32 0
  %29 = load i8*, i8** %init24, align 8
  %30 = load i64, i64* %l, align 8
  call void @lua_pushlstring(%struct.lua_State* %26, i8* %29, i64 %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.19, %if.then.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @scanformat(%struct.lua_State* %L, i8* %strfrmt, i8* %form) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %strfrmt.addr = alloca i8*, align 8
  %form.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i8* %strfrmt, i8** %strfrmt.addr, align 8
  store i8* %form, i8** %form.addr, align 8
  %0 = load i8*, i8** %strfrmt.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %conv2) #6
  %cmp3 = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %strfrmt.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp uge i64 %sub.ptr.sub, 6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = zext i8 %11 to i32
  %idxprom = sext i32 %conv8 to i64
  %call9 = call i16** @__ctype_b_loc() #7
  %12 = load i16*, i16** %call9, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv10 = zext i16 %13 to i32
  %and = and i32 %conv10, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = zext i8 %16 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %17 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %17, i64 %idxprom15
  %18 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %18 to i32
  %and19 = and i32 %conv18, 2048
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.13
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.13
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 46
  br i1 %cmp25, label %if.then.27, label %if.end.49

if.then.27:                                       ; preds = %if.end.23
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv29 = zext i8 %24 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %call31 = call i16** @__ctype_b_loc() #7
  %25 = load i16*, i16** %call31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %25, i64 %idxprom30
  %26 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %26 to i32
  %and34 = and i32 %conv33, 2048
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.27
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.27
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv39 = zext i8 %29 to i32
  %idxprom40 = sext i32 %conv39 to i64
  %call41 = call i16** @__ctype_b_loc() #7
  %30 = load i16*, i16** %call41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %30, i64 %idxprom40
  %31 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %31 to i32
  %and44 = and i32 %conv43, 2048
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.38
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.23
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %conv50 = zext i8 %34 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %call52 = call i16** @__ctype_b_loc() #7
  %35 = load i16*, i16** %call52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %35, i64 %idxprom51
  %36 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %36 to i32
  %and55 = and i32 %conv54, 2048
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.49
  %37 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call58 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.49
  %38 = load i8*, i8** %form.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr60, i8** %form.addr, align 8
  store i8 37, i8* %38, align 1
  %39 = load i8*, i8** %form.addr, align 8
  %40 = load i8*, i8** %strfrmt.addr, align 8
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %strfrmt.addr, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %42 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %add = add nsw i64 %sub.ptr.sub63, 1
  %call64 = call i8* @strncpy(i8* %39, i8* %40, i64 %add) #5
  %43 = load i8*, i8** %p, align 8
  %44 = load i8*, i8** %strfrmt.addr, align 8
  %sub.ptr.lhs.cast65 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %44 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %add68 = add nsw i64 %sub.ptr.sub67, 1
  %45 = load i8*, i8** %form.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %add68
  store i8* %add.ptr, i8** %form.addr, align 8
  %46 = load i8*, i8** %form.addr, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %p, align 8
  ret i8* %47
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare double @luaL_checknumber(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @addintlen(i8* %form) #0 {
entry:
  %form.addr = alloca i8*, align 8
  %l = alloca i64, align 8
  %spec = alloca i8, align 1
  store i8* %form, i8** %form.addr, align 8
  %0 = load i8*, i8** %form.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %l, align 8
  %1 = load i64, i64* %l, align 8
  %sub = sub i64 %1, 1
  %2 = load i8*, i8** %form.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %spec, align 1
  %4 = load i8*, i8** %form.addr, align 8
  %5 = load i64, i64* %l, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call2 = call i8* @strcpy(i8* %add.ptr1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %6 = load i8, i8* %spec, align 1
  %7 = load i64, i64* %l, align 8
  %add = add i64 %7, 2
  %sub3 = sub i64 %add, 2
  %8 = load i8*, i8** %form.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %sub3
  store i8 %6, i8* %arrayidx4, align 1
  %9 = load i64, i64* %l, align 8
  %add5 = add i64 %9, 2
  %sub6 = sub i64 %add5, 1
  %10 = load i8*, i8** %form.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %sub6
  store i8 0, i8* %arrayidx7, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addquoted(%struct.lua_State* %L, %struct.luaL_Buffer* %b, i32 %arg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %b.addr = alloca %struct.luaL_Buffer*, align 8
  %arg.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %b.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %arg.addr, align 4
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %l)
  store i8* %call, i8** %s, align 8
  %2 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %p, align 8
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp = icmp ult i8* %3, %add.ptr
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call1 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %5)
  %tobool = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %8 = load i8*, i8** %p2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p2, align 8
  store i8 34, i8* %8, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %lor.end
  %9 = load i64, i64* %l, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %l, align 8
  %tobool3 = icmp ne i64 %9, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb.30
    i32 0, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %12 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %12, i32 0, i32 0
  %13 = load i8*, i8** %p4, align 8
  %14 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %14, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer5, i32 0, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay6, i64 8192
  %cmp8 = icmp ult i8* %13, %add.ptr7
  br i1 %cmp8, label %lor.end.13, label %lor.rhs.10

lor.rhs.10:                                       ; preds = %sw.bb
  %15 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call11 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %15)
  %tobool12 = icmp ne i8* %call11, null
  br label %lor.end.13

lor.end.13:                                       ; preds = %lor.rhs.10, %sw.bb
  %16 = phi i1 [ true, %sw.bb ], [ %tobool12, %lor.rhs.10 ]
  %lor.ext14 = zext i1 %16 to i32
  %17 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %17, i32 0, i32 0
  %18 = load i8*, i8** %p15, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr16, i8** %p15, align 8
  store i8 92, i8* %18, align 1
  %19 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %19, i32 0, i32 0
  %20 = load i8*, i8** %p17, align 8
  %21 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %21, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer18, i32 0, i32 0
  %add.ptr20 = getelementptr inbounds i8, i8* %arraydecay19, i64 8192
  %cmp21 = icmp ult i8* %20, %add.ptr20
  br i1 %cmp21, label %lor.end.26, label %lor.rhs.23

lor.rhs.23:                                       ; preds = %lor.end.13
  %22 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call24 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %22)
  %tobool25 = icmp ne i8* %call24, null
  br label %lor.end.26

lor.end.26:                                       ; preds = %lor.rhs.23, %lor.end.13
  %23 = phi i1 [ true, %lor.end.13 ], [ %tobool25, %lor.rhs.23 ]
  %lor.ext27 = zext i1 %23 to i32
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %26, i32 0, i32 0
  %27 = load i8*, i8** %p28, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr29, i8** %p28, align 8
  store i8 %25, i8* %27, align 1
  br label %sw.epilog

sw.bb.30:                                         ; preds = %while.body
  %28 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i64 2)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  %29 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i64 4)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %30 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p32 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %30, i32 0, i32 0
  %31 = load i8*, i8** %p32, align 8
  %32 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %32, i32 0, i32 3
  %arraydecay34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer33, i32 0, i32 0
  %add.ptr35 = getelementptr inbounds i8, i8* %arraydecay34, i64 8192
  %cmp36 = icmp ult i8* %31, %add.ptr35
  br i1 %cmp36, label %lor.end.41, label %lor.rhs.38

lor.rhs.38:                                       ; preds = %sw.default
  %33 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call39 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %33)
  %tobool40 = icmp ne i8* %call39, null
  br label %lor.end.41

lor.end.41:                                       ; preds = %lor.rhs.38, %sw.default
  %34 = phi i1 [ true, %sw.default ], [ %tobool40, %lor.rhs.38 ]
  %lor.ext42 = zext i1 %34 to i32
  %35 = load i8*, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p43 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %37, i32 0, i32 0
  %38 = load i8*, i8** %p43, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr44, i8** %p43, align 8
  store i8 %36, i8* %38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.end.41, %sw.bb.31, %sw.bb.30, %lor.end.26
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr45, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p46 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %40, i32 0, i32 0
  %41 = load i8*, i8** %p46, align 8
  %42 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer47 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %42, i32 0, i32 3
  %arraydecay48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer47, i32 0, i32 0
  %add.ptr49 = getelementptr inbounds i8, i8* %arraydecay48, i64 8192
  %cmp50 = icmp ult i8* %41, %add.ptr49
  br i1 %cmp50, label %lor.end.55, label %lor.rhs.52

lor.rhs.52:                                       ; preds = %while.end
  %43 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call53 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %43)
  %tobool54 = icmp ne i8* %call53, null
  br label %lor.end.55

lor.end.55:                                       ; preds = %lor.rhs.52, %while.end
  %44 = phi i1 [ true, %while.end ], [ %tobool54, %lor.rhs.52 ]
  %lor.ext56 = zext i1 %44 to i32
  %45 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p57 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %45, i32 0, i32 0
  %46 = load i8*, i8** %p57, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr58, i8** %p57, align 8
  store i8 34, i8* %46, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gmatch_aux(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %ms = alloca %struct.MatchState, align 8
  %ls = alloca i64, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %src = alloca i8*, align 8
  %e = alloca i8*, align 8
  %newstart = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10003, i64* %ls)
  store i8* %call, i8** %s, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -10004, i64* null)
  store i8* %call1, i8** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %L2 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 2
  store %struct.lua_State* %2, %struct.lua_State** %L2, align 8
  %3 = load i8*, i8** %s, align 8
  %src_init = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 0
  store i8* %3, i8** %src_init, align 8
  %4 = load i8*, i8** %s, align 8
  %5 = load i64, i64* %ls, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %src_end = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  store i8* %add.ptr, i8** %src_end, align 8
  %6 = load i8*, i8** %s, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i64 @lua_tointeger(%struct.lua_State* %7, i32 -10005)
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 %call3
  store i8* %add.ptr4, i8** %src, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8*, i8** %src, align 8
  %src_end5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 1
  %9 = load i8*, i8** %src_end5, align 8
  %cmp = icmp ule i8* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %level = getelementptr inbounds %struct.MatchState, %struct.MatchState* %ms, i32 0, i32 3
  store i32 0, i32* %level, align 4
  %10 = load i8*, i8** %src, align 8
  %11 = load i8*, i8** %p, align 8
  %call6 = call i8* @match(%struct.MatchState* %ms, i8* %10, i8* %11)
  store i8* %call6, i8** %e, align 8
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %12 = load i8*, i8** %e, align 8
  %13 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %newstart, align 8
  %14 = load i8*, i8** %e, align 8
  %15 = load i8*, i8** %src, align 8
  %cmp8 = icmp eq i8* %14, %15
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %16 = load i64, i64* %newstart, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %newstart, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load i64, i64* %newstart, align 8
  call void @lua_pushinteger(%struct.lua_State* %17, i64 %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_replace(%struct.lua_State* %19, i32 -10005)
  %20 = load i8*, i8** %src, align 8
  %21 = load i8*, i8** %e, align 8
  %call10 = call i32 @push_captures(%struct.MatchState* %ms, i8* %20, i8* %21)
  store i32 %call10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i64 @lua_tointeger(%struct.lua_State*, i32) #1

declare void @lua_replace(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @add_value(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %s, i8* %e) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %b.addr = alloca %struct.luaL_Buffer*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %L = alloca %struct.lua_State*, align 8
  %n = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %b.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L1 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i32 0, i32 2
  %1 = load %struct.lua_State*, %struct.lua_State** %L1, align 8
  store %struct.lua_State* %1, %struct.lua_State** %L, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i32 @lua_type(%struct.lua_State* %2, i32 3)
  switch i32 %call, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb.2
    i32 5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %e.addr, align 8
  call void @add_s(%struct.MatchState* %3, %struct.luaL_Buffer* %4, i8* %5, i8* %6)
  br label %return

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_pushvalue(%struct.lua_State* %7, i32 3)
  %8 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8*, i8** %e.addr, align 8
  %call3 = call i32 @push_captures(%struct.MatchState* %8, i8* %9, i8* %10)
  store i32 %call3, i32* %n, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %12 = load i32, i32* %n, align 4
  call void @lua_call(%struct.lua_State* %11, i32 %12, i32 1)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8*, i8** %e.addr, align 8
  call void @push_onecapture(%struct.MatchState* %13, i32 0, i8* %14, i8* %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_gettable(%struct.lua_State* %16, i32 3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.2
  %17 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call5 = call i32 @lua_toboolean(%struct.lua_State* %17, i32 -1)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  %18 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 -2)
  %19 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8*, i8** %e.addr, align 8
  %22 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @lua_pushlstring(%struct.lua_State* %19, i8* %20, i64 %sub.ptr.sub)
  br label %if.end.12

if.else:                                          ; preds = %sw.epilog
  %23 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call6 = call i32 @lua_isstring(%struct.lua_State* %23, i32 -1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %24 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call9 = call i32 @lua_type(%struct.lua_State* %26, i32 -1)
  %call10 = call i8* @lua_typename(%struct.lua_State* %25, i32 %call9)
  %call11 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8* %call10)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %27 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %27)
  br label %return

return:                                           ; preds = %if.end.12, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_s(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %s, i8* %e) #0 {
entry:
  %ms.addr = alloca %struct.MatchState*, align 8
  %b.addr = alloca %struct.luaL_Buffer*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %l = alloca i64, align 8
  %i = alloca i64, align 8
  %news = alloca i8*, align 8
  store %struct.MatchState* %ms, %struct.MatchState** %ms.addr, align 8
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %b.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %0 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %L = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i32 0, i32 2
  %1 = load %struct.lua_State*, %struct.lua_State** %L, align 8
  %call = call i8* @lua_tolstring(%struct.lua_State* %1, i32 3, i64* %l)
  store i8* %call, i8** %news, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %l, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %news, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 37
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %8 = load i8*, i8** %p, align 8
  %9 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 8192
  %cmp3 = icmp ult i8* %8, %add.ptr
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %10 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call5 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %10)
  %tobool = icmp ne i8* %call5, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %11 = phi i1 [ true, %if.then ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  %12 = load i64, i64* %i, align 8
  %13 = load i8*, i8** %news, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %12
  %14 = load i8, i8* %arrayidx6, align 1
  %15 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %15, i32 0, i32 0
  %16 = load i8*, i8** %p7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p7, align 8
  store i8 %14, i8* %16, align 1
  br label %if.end.39

if.else:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  %18 = load i64, i64* %i, align 8
  %19 = load i8*, i8** %news, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %19, i64 %18
  %20 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %20 to i32
  %idxprom = sext i32 %conv9 to i64
  %call10 = call i16** @__ctype_b_loc() #7
  %21 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %22 to i32
  %and = and i32 %conv12, 2048
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.else.29, label %if.then.14

if.then.14:                                       ; preds = %if.else
  %23 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %23, i32 0, i32 0
  %24 = load i8*, i8** %p15, align 8
  %25 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %buffer16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %25, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer16, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 8192
  %cmp19 = icmp ult i8* %24, %add.ptr18
  br i1 %cmp19, label %lor.end.24, label %lor.rhs.21

lor.rhs.21:                                       ; preds = %if.then.14
  %26 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %call22 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %26)
  %tobool23 = icmp ne i8* %call22, null
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.rhs.21, %if.then.14
  %27 = phi i1 [ true, %if.then.14 ], [ %tobool23, %lor.rhs.21 ]
  %lor.ext25 = zext i1 %27 to i32
  %28 = load i64, i64* %i, align 8
  %29 = load i8*, i8** %news, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %28
  %30 = load i8, i8* %arrayidx26, align 1
  %31 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %p27 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %31, i32 0, i32 0
  %32 = load i8*, i8** %p27, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr28, i8** %p27, align 8
  store i8 %30, i8* %32, align 1
  br label %if.end.38

if.else.29:                                       ; preds = %if.else
  %33 = load i64, i64* %i, align 8
  %34 = load i8*, i8** %news, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 %33
  %35 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %35 to i32
  %cmp32 = icmp eq i32 %conv31, 48
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.29
  %36 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  %37 = load i8*, i8** %s.addr, align 8
  %38 = load i8*, i8** %e.addr, align 8
  %39 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @luaL_addlstring(%struct.luaL_Buffer* %36, i8* %37, i64 %sub.ptr.sub)
  br label %if.end

if.else.35:                                       ; preds = %if.else.29
  %40 = load %struct.MatchState*, %struct.MatchState** %ms.addr, align 8
  %41 = load i64, i64* %i, align 8
  %42 = load i8*, i8** %news, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 %41
  %43 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %43 to i32
  %sub = sub nsw i32 %conv37, 49
  %44 = load i8*, i8** %s.addr, align 8
  %45 = load i8*, i8** %e.addr, align 8
  call void @push_onecapture(%struct.MatchState* %40, i32 %sub, i8* %44, i8* %45)
  %46 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %b.addr, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* %46)
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %lor.end.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %47 = load i64, i64* %i, align 8
  %inc40 = add i64 %47, 1
  store i64 %inc40, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @lua_call(%struct.lua_State*, i32, i32) #1

declare void @lua_gettable(%struct.lua_State*, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare i32 @toupper(i32) #4

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
