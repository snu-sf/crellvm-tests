; ModuleID = './MultiSource.Applications.lua/2.liolib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 16
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tostring }, %struct.luaL_Reg zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@f_seek.mode = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@f_setvbuf.mode = internal constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@fnames = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_io(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @createmeta(%struct.lua_State* %0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @newfenv(%struct.lua_State* %1, i32 (%struct.lua_State*)* @io_fclose)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_replace(%struct.lua_State* %2, i32 -10001)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i32 0, i32 0))
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @newfenv(%struct.lua_State* %4, i32 (%struct.lua_State*)* @io_noclose)
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @createstdfile(%struct.lua_State* %5, %struct._IO_FILE* %6, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @createstdfile(%struct.lua_State* %7, %struct._IO_FILE* %8, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @createstdfile(%struct.lua_State* %9, %struct._IO_FILE* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %11, i32 -2)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %12, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @newfenv(%struct.lua_State* %13, i32 (%struct.lua_State*)* @io_pclose)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_setfenv(%struct.lua_State* %14, i32 -2)
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 -2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @createmeta(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %1, i32 -1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_register(%struct.lua_State* %3, i8* null, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @flib, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @newfenv(%struct.lua_State* %L, i32 (%struct.lua_State*)* %cls) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %cls.addr = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 (%struct.lua_State*)* %cls, i32 (%struct.lua_State*)** %cls.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %cls.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* %2, i32 0)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_setfield(%struct.lua_State* %3, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @io_fclose(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p = alloca %struct._IO_FILE**, align 8
  %ok = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %p, align 8
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %p, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %3)
  %cmp = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %ok, align 4
  %4 = load %struct._IO_FILE**, %struct._IO_FILE*** %p, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i32, i32* %ok, align 4
  %call2 = call i32 @pushresult(%struct.lua_State* %5, i32 %6, i8* null)
  ret i32 %call2
}

declare void @lua_replace(%struct.lua_State*, i32) #1

declare void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) #1

; Function Attrs: nounwind uwtable
define internal i32 @io_noclose(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i64 26)
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @createstdfile(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %k, i8* %fname) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %k.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE** @newfile(%struct.lua_State* %1)
  store %struct._IO_FILE* %0, %struct._IO_FILE** %call, align 8
  %2 = load i32, i32* %k.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %3, i32 -1)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %5 = load i32, i32* %k.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %4, i32 -10001, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -2)
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_setfenv(%struct.lua_State* %7, i32 -2)
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i8*, i8** %fname.addr, align 8
  call void @lua_setfield(%struct.lua_State* %8, i32 -3, i8* %9)
  ret void
}

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_getfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @io_pclose(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %p = alloca %struct._IO_FILE**, align 8
  %ok = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %p, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %p, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %call1 = call i32 @pclose(%struct._IO_FILE* %4)
  %cmp = icmp ne i32 %call1, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %ok, align 4
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %p, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %ok, align 4
  %call2 = call i32 @pushresult(%struct.lua_State* %6, i32 %7, i8* null)
  ret i32 %call2
}

declare i32 @lua_setfenv(%struct.lua_State*, i32) #1

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @io_close(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawgeti(%struct.lua_State* %1, i32 -10001, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call %struct._IO_FILE* @tofile(%struct.lua_State* %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @aux_close(%struct.lua_State* %3)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @f_flush(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %1)
  %call1 = call i32 @fflush(%struct._IO_FILE* %call)
  %cmp = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @pushresult(%struct.lua_State* %0, i32 %conv, i8* null)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @f_lines(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @aux_lines(%struct.lua_State* %1, i32 1, i32 0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f_read(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %1)
  %call1 = call i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %call, i32 2)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @f_seek(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %op = alloca i32, align 4
  %offset = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_checkoption(%struct.lua_State* %1, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i32 0, i32 0))
  store i32 %call1, i32* %op, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 3, i64 0)
  store i64 %call2, i64* %offset, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load i64, i64* %offset, align 8
  %5 = load i32, i32* %op, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 @fseek(%struct._IO_FILE* %3, i64 %4, i32 %6)
  store i32 %call3, i32* %op, align 4
  %7 = load i32, i32* %op, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call4 = call i32 @pushresult(%struct.lua_State* %8, i32 0, i8* null)
  store i32 %call4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %10)
  call void @lua_pushinteger(%struct.lua_State* %9, i64 %call5)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @f_setvbuf(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %op = alloca i32, align 4
  %sz = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @luaL_checkoption(%struct.lua_State* %1, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i32 0, i32 0))
  store i32 %call1, i32* %op, align 4
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 3, i64 8192)
  store i64 %call2, i64* %sz, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load i32, i32* %op, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i64, i64* %sz, align 8
  %call3 = call i32 @setvbuf(%struct._IO_FILE* %3, i8* null, i32 %5, i64 %6) #5
  store i32 %call3, i32* %res, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %8 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %8, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @pushresult(%struct.lua_State* %7, i32 %conv, i8* null)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @f_write(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @tofile(%struct.lua_State* %1)
  %call1 = call i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %call, i32 2)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_gc(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._IO_FILE**
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp ne %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @aux_close(%struct.lua_State* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @io_tostring(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._IO_FILE**
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i64 13)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare void @lua_rawgeti(%struct.lua_State*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @tofile(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %f, align 8
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %f, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %6
}

; Function Attrs: nounwind uwtable
define internal i32 @aux_close(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfenv(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %1, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %2, i32 -1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 %call(%struct.lua_State* %3)
  ret i32 %call1
}

declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare void @lua_getfenv(%struct.lua_State*, i32) #1

declare i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pushresult(%struct.lua_State* %L, i32 %i, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %i.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %en = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call i32* @__errno_location() #6
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %en, align 4
  %1 = load i32, i32* %i.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushboolean(%struct.lua_State* %2, i32 1)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %3)
  %4 = load i8*, i8** %filename.addr, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i32, i32* %en, align 4
  %call3 = call i8* @strerror(i32 %7) #5
  %call4 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %6, i8* %call3)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i32, i32* %en, align 4
  %call6 = call i8* @strerror(i32 %9) #5
  %call7 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %11 = load i32, i32* %en, align 4
  %conv = sext i32 %11 to i64
  call void @lua_pushinteger(%struct.lua_State* %10, i64 %conv)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @aux_lines(%struct.lua_State* %L, i32 %idx, i32 %toclose) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %idx.addr = alloca i32, align 4
  %toclose.addr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %toclose, i32* %toclose.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %toclose.addr, align 4
  call void @lua_pushboolean(%struct.lua_State* %2, i32 %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @io_readline, i32 2)
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @io_readline(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %sucess = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003)
  %1 = bitcast i8* %call to %struct._IO_FILE**
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 @read_line(%struct.lua_State* %5, %struct._IO_FILE* %6)
  store i32 %call2, i32* %sucess, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @ferror(%struct._IO_FILE* %7) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call5 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call5, align 4
  %call6 = call i8* @strerror(i32 %9) #5
  %call7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %call6)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load i32, i32* %sucess, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.8
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call11 = call i32 @lua_toboolean(%struct.lua_State* %11, i32 -10004)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 0)
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %13, i32 -10003)
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call14 = call i32 @aux_close(%struct.lua_State* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.10, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_line(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %l = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* %b)
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %entry
  %call = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %2)
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i64 @lua_objlen(%struct.lua_State* %3, i32 -1)
  %cmp3 = icmp ugt i64 %call2, 0
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %call4 = call i64 @strlen(i8* %4) #7
  store i64 %call4, i64* %l, align 8
  %5 = load i64, i64* %l, align 8
  %cmp5 = icmp eq i64 %5, 0
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %l, align 8
  %sub = sub i64 %6, 1
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %sub
  %8 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %9 = load i64, i64* %l, align 8
  %p11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %10 = load i8*, i8** %p11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr, i8** %p11, align 8
  br label %if.end.15

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i64, i64* %l, align 8
  %sub12 = sub i64 %11, 1
  %p13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %12 = load i8*, i8** %p13, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 %sub12
  store i8* %add.ptr14, i8** %p13, align 8
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  br label %for.cond

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i8* @luaL_prepbuffer(%struct.luaL_Buffer*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

declare i64 @lua_objlen(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @g_read(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %first.addr = alloca i32, align 4
  %nargs = alloca i32, align 4
  %success = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %nargs, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  call void @clearerr(%struct._IO_FILE* %1) #5
  %2 = load i32, i32* %nargs, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @read_line(%struct.lua_State* %3, %struct._IO_FILE* %4)
  store i32 %call1, i32* %success, align 4
  %5 = load i32, i32* %first.addr, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %n, align 4
  br label %if.end.26

if.else:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %nargs, align 4
  %add2 = add nsw i32 %7, 20
  call void @luaL_checkstack(%struct.lua_State* %6, i32 %add2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %success, align 4
  %8 = load i32, i32* %first.addr, align 4
  store i32 %8, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %nargs, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %nargs, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, i32* %success, align 4
  %tobool3 = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %13 = load i32, i32* %n, align 4
  %call4 = call i32 @lua_type(%struct.lua_State* %12, i32 %13)
  %cmp5 = icmp eq i32 %call4, 3
  br i1 %cmp5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %for.body
  %14 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %15 = load i32, i32* %n, align 4
  %call7 = call i64 @lua_tointeger(%struct.lua_State* %14, i32 %15)
  store i64 %call7, i64* %l, align 8
  %16 = load i64, i64* %l, align 8
  %cmp8 = icmp eq i64 %16, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %17 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call9 = call i32 @test_eof(%struct.lua_State* %17, %struct._IO_FILE* %18)
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %21 = load i64, i64* %l, align 8
  %call10 = call i32 @read_chars(%struct.lua_State* %19, %struct._IO_FILE* %20, i64 %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call9, %cond.true ], [ %call10, %cond.false ]
  store i32 %cond, i32* %success, align 4
  br label %if.end

if.else.11:                                       ; preds = %for.body
  %22 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %23 = load i32, i32* %n, align 4
  %call12 = call i8* @lua_tolstring(%struct.lua_State* %22, i32 %23, i64* null)
  store i8* %call12, i8** %p, align 8
  %24 = load i8*, i8** %p, align 8
  %tobool13 = icmp ne i8* %24, null
  br i1 %tobool13, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.else.11
  %25 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %26 to i32
  %cmp14 = icmp eq i32 %conv, 42
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.else.11
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %28 = load i32, i32* %n, align 4
  %call16 = call i32 @luaL_argerror(%struct.lua_State* %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %29 = phi i1 [ true, %land.lhs.true ], [ %tobool17, %lor.rhs ]
  %lor.ext = zext i1 %29 to i32
  %30 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %31 to i32
  switch i32 %conv19, label %sw.default [
    i32 110, label %sw.bb
    i32 108, label %sw.bb.21
    i32 97, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %lor.end
  %32 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call20 = call i32 @read_number(%struct.lua_State* %32, %struct._IO_FILE* %33)
  store i32 %call20, i32* %success, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %lor.end
  %34 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call22 = call i32 @read_line(%struct.lua_State* %34, %struct._IO_FILE* %35)
  store i32 %call22, i32* %success, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %lor.end
  %36 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call24 = call i32 @read_chars(%struct.lua_State* %36, %struct._IO_FILE* %37, i64 -1)
  store i32 1, i32* %success, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %lor.end
  %38 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %39 = load i32, i32* %n, align 4
  %call25 = call i32 @luaL_argerror(%struct.lua_State* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  store i32 %call25, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.23, %sw.bb.21, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %n, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.then
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call27 = call i32 @ferror(%struct._IO_FILE* %41) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %42 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call30 = call i32 @pushresult(%struct.lua_State* %42, i32 0, i8* null)
  store i32 %call30, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %43 = load i32, i32* %success, align 4
  %tobool32 = icmp ne i32 %43, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %44 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_settop(%struct.lua_State* %44, i32 -2)
  %45 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %45)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %46 = load i32, i32* %n, align 4
  %47 = load i32, i32* %first.addr, align 4
  %sub35 = sub nsw i32 %46, %47
  store i32 %sub35, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.29, %sw.default
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #3

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare i64 @lua_tointeger(%struct.lua_State*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_eof(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @ungetc(i32 %1, %struct._IO_FILE* %2)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %3, i8* null, i64 0)
  %4 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %4, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @read_chars(%struct.lua_State* %L, %struct._IO_FILE* %f, i64 %n) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca i64, align 8
  %rlen = alloca i64, align 8
  %nr = alloca i64, align 8
  %b = alloca %struct.luaL_Buffer, align 8
  %p = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* %b)
  store i64 8192, i64* %rlen, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* %b)
  store i8* %call, i8** %p, align 8
  %1 = load i64, i64* %rlen, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ugt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i64, i64* %n.addr, align 8
  store i64 %3, i64* %rlen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %4 = load i8*, i8** %p, align 8
  %5 = load i64, i64* %rlen, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fread(i8* %4, i64 1, i64 %5, %struct._IO_FILE* %6)
  store i64 %call1, i64* %nr, align 8
  %7 = load i64, i64* %nr, align 8
  %p2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %b, i32 0, i32 0
  %8 = load i8*, i8** %p2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %add.ptr, i8** %p2, align 8
  %9 = load i64, i64* %nr, align 8
  %10 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %10, %9
  store i64 %sub, i64* %n.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp ugt i64 %11, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %12 = load i64, i64* %nr, align 8
  %13 = load i64, i64* %rlen, align 8
  %cmp4 = icmp eq i64 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %cmp4, %land.rhs ]
  br i1 %14, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  call void @luaL_pushresult(%struct.luaL_Buffer* %b)
  %15 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp eq i64 %15, 0
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call6 = call i64 @lua_objlen(%struct.lua_State* %16, i32 -1)
  %cmp7 = icmp ugt i64 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %17 = phi i1 [ true, %do.end ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  ret i32 %lor.ext
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_number(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), double* %d)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %2 = load double, double* %d, align 8
  call void @lua_pushnumber(%struct.lua_State* %1, double %2)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare void @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @g_write(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %arg) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %arg.addr = alloca i32, align 4
  %nargs = alloca i32, align 4
  %status = alloca i32, align 4
  %l = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_gettop(%struct.lua_State* %0)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %nargs, align 4
  store i32 1, i32* %status, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %nargs, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %nargs, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %3 = load i32, i32* %arg.addr, align 4
  %call1 = call i32 @lua_type(%struct.lua_State* %2, i32 %3)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %status, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %arg.addr, align 4
  %call3 = call double @lua_tonumber(%struct.lua_State* %6, i32 %7)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), double %call3)
  %cmp5 = icmp sgt i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %8 = phi i1 [ false, %if.then ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %status, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i32, i32* %arg.addr, align 4
  %call6 = call i8* @luaL_checklstring(%struct.lua_State* %9, i32 %10, i64* %l)
  store i8* %call6, i8** %s, align 8
  %11 = load i32, i32* %status, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %land.rhs.8, label %land.end.11

land.rhs.8:                                       ; preds = %if.else
  %12 = load i8*, i8** %s, align 8
  %13 = load i64, i64* %l, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call9 = call i64 @fwrite(i8* %12, i64 1, i64 %13, %struct._IO_FILE* %14)
  %15 = load i64, i64* %l, align 8
  %cmp10 = icmp eq i64 %call9, %15
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.8, %if.else
  %16 = phi i1 [ false, %if.else ], [ %cmp10, %land.rhs.8 ]
  %land.ext12 = zext i1 %16 to i32
  store i32 %land.ext12, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.11, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %arg.addr, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %arg.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %19 = load i32, i32* %status, align 4
  %call13 = call i32 @pushresult(%struct.lua_State* %18, i32 %19, i8* null)
  ret i32 %call13
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare double @lua_tonumber(%struct.lua_State*, i32) #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @io_flush(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @getiofile(%struct.lua_State* %1, i32 2)
  %call1 = call i32 @fflush(%struct._IO_FILE* %call)
  %cmp = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @pushresult(%struct.lua_State* %0, i32 %conv, i8* null)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @io_input(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @g_iofile(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @io_lines(%struct.lua_State* %L) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %filename = alloca i8*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_rawgeti(%struct.lua_State* %1, i32 -10001, i32 1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @f_lines(%struct.lua_State* %2)
  store i32 %call1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i64* null)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call %struct._IO_FILE** @newfile(%struct.lua_State* %4)
  store %struct._IO_FILE** %call3, %struct._IO_FILE*** %pf, align 8
  %5 = load i8*, i8** %filename, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %6, align 8
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %filename, align 8
  call void @fileerror(%struct.lua_State* %9, i32 1, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call i32 @lua_gettop(%struct.lua_State* %12)
  call void @aux_lines(%struct.lua_State* %11, i32 %call7, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @io_open(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %filename = alloca i8*, align 8
  %mode = alloca i8*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %filename, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64* null)
  store i8* %call1, i8** %mode, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call %struct._IO_FILE** @newfile(%struct.lua_State* %2)
  store %struct._IO_FILE** %call2, %struct._IO_FILE*** %pf, align 8
  %3 = load i8*, i8** %filename, align 8
  %4 = load i8*, i8** %mode, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %3, i8* %4)
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %5, align 8
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %cmp = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %9 = load i8*, i8** %filename, align 8
  %call4 = call i32 @pushresult(%struct.lua_State* %8, i32 0, i8* %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ 1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @io_output(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @g_iofile(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @io_popen(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %filename = alloca i8*, align 8
  %mode = alloca i8*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null)
  store i8* %call, i8** %filename, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @luaL_optlstring(%struct.lua_State* %1, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64* null)
  store i8* %call1, i8** %mode, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call %struct._IO_FILE** @newfile(%struct.lua_State* %2)
  store %struct._IO_FILE** %call2, %struct._IO_FILE*** %pf, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* null)
  %4 = load i8*, i8** %filename, align 8
  %5 = load i8*, i8** %mode, align 8
  %call4 = call %struct._IO_FILE* @popen(i8* %4, i8* %5)
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %6, align 8
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %cmp = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %filename, align 8
  %call5 = call i32 @pushresult(%struct.lua_State* %9, i32 0, i8* %10)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ 1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @io_read(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @getiofile(%struct.lua_State* %1, i32 1)
  %call1 = call i32 @g_read(%struct.lua_State* %0, %struct._IO_FILE* %call, i32 1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_tmpfile(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE** @newfile(%struct.lua_State* %0)
  store %struct._IO_FILE** %call, %struct._IO_FILE*** %pf, align 8
  %call1 = call %struct._IO_FILE* @tmpfile()
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call2 = call i32 @pushresult(%struct.lua_State* %4, i32 0, i8* null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ 1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @io_type(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %ud = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @luaL_checkany(%struct.lua_State* %0, i32 1)
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_touserdata(%struct.lua_State* %1, i32 1)
  store i8* %call, i8** %ud, align 8
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %2, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %3 = load i8*, i8** %ud, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_getmetatable(%struct.lua_State* %4, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i32 @lua_rawequal(%struct.lua_State* %5, i32 -2, i32 -1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushnil(%struct.lua_State* %6)
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false.2
  %7 = load i8*, i8** %ud, align 8
  %8 = bitcast i8* %7 to %struct._IO_FILE**
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %10 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i64 11)
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushlstring(%struct.lua_State* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i64 4)
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @io_write(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call %struct._IO_FILE* @getiofile(%struct.lua_State* %1, i32 2)
  %call1 = call i32 @g_write(%struct.lua_State* %0, %struct._IO_FILE* %call, i32 1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @getiofile(%struct.lua_State* %L, i32 %findex) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %findex.addr = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %findex, i32* %findex.addr, align 4
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i32, i32* %findex.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 %1)
  %2 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_touserdata(%struct.lua_State* %2, i32 -1)
  %3 = bitcast i8* %call to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %f, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %7 = load i32, i32* %findex.addr, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @fnames, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  ret %struct._IO_FILE* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @g_iofile(%struct.lua_State* %L, i32 %f, i8* %mode) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %f.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %f, i32* %f.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 1, i64* null)
  store i8* %call1, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call %struct._IO_FILE** @newfile(%struct.lua_State* %3)
  store %struct._IO_FILE** %call3, %struct._IO_FILE*** %pf, align 8
  %4 = load i8*, i8** %filename, align 8
  %5 = load i8*, i8** %mode.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %4, i8* %5)
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %6, align 8
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %10 = load i8*, i8** %filename, align 8
  call void @fileerror(%struct.lua_State* %9, i32 1, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.2
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call7 = call %struct._IO_FILE* @tofile(%struct.lua_State* %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_pushvalue(%struct.lua_State* %12, i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %13 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %14 = load i32, i32* %f.addr, align 4
  call void @lua_rawseti(%struct.lua_State* %13, i32 -10001, i32 %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %16 = load i32, i32* %f.addr, align 4
  call void @lua_rawgeti(%struct.lua_State* %15, i32 -10001, i32 %16)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE** @newfile(%struct.lua_State* %L) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %pf = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call = call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8)
  %1 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %pf, align 8
  %2 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  call void @lua_getfield(%struct.lua_State* %3, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call1 = call i32 @lua_setmetatable(%struct.lua_State* %4, i32 -2)
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %pf, align 8
  ret %struct._IO_FILE** %5
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fileerror(%struct.lua_State* %L, i32 %arg, i8* %filename) #0 {
entry:
  %L.addr = alloca %struct.lua_State*, align 8
  %arg.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32* @__errno_location() #6
  %2 = load i32, i32* %call, align 4
  %call1 = call i8* @strerror(i32 %2) #5
  %call2 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %1, i8* %call1)
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %4 = load i32, i32* %arg.addr, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8
  %call3 = call i8* @lua_tolstring(%struct.lua_State* %5, i32 -1, i64* null)
  %call4 = call i32 @luaL_argerror(%struct.lua_State* %3, i32 %4, i8* %call3)
  ret void
}

declare void @lua_rawseti(%struct.lua_State*, i32, i32) #1

declare i8* @lua_newuserdata(%struct.lua_State*, i64) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare %struct._IO_FILE* @popen(i8*, i8*) #1

declare %struct._IO_FILE* @tmpfile() #1

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #1

declare i32 @pclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
