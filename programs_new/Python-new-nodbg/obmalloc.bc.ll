; ModuleID = './obmalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMemAllocator = type { i8*, i8* (i8*, i64)*, i8* (i8*, i8*, i64)*, void (i8*, i8*)* }
%struct.PyObjectArenaAllocator = type { i8*, i8* (i8*, i64)*, void (i8*, i8*, i64)* }
%struct.arena_object = type { i64, i8*, i32, i32, %struct.pool_header*, %struct.arena_object*, %struct.arena_object* }
%struct.pool_header = type { %union.anon, i8*, %struct.pool_header*, %struct.pool_header*, i32, i32, i32, i32 }
%union.anon = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_PyMem_Raw = internal global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyMem_RawMalloc, i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, void (i8*, i8*)* @_PyMem_RawFree }, align 8
@_PyMem = internal global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyMem_RawMalloc, i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, void (i8*, i8*)* @_PyMem_RawFree }, align 8
@_PyObject = internal global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyObject_Malloc, i8* (i8*, i8*, i64)* @_PyObject_Realloc, void (i8*, i8*)* @_PyObject_Free }, align 8
@_PyObject_Arena = internal global %struct.PyObjectArenaAllocator { i8* null, i8* (i8*, i64)* @_PyObject_ArenaMmap, void (i8*, i8*, i64)* @_PyObject_ArenaMunmap }, align 8
@_Py_AllocatedBlocks = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%d %ss * %zd bytes each\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%48s \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Small block threshold = %d, in %u size classes.\0A\00", align 1
@maxarenas = internal global i32 0, align 4
@arenas = internal global %struct.arena_object* null, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"class   size   num pools   blocks in use  avail blocks\0A-----   ----   ---------   -------------  ------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%5u %6u %11zu %15zu %13zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"# arenas allocated total\00", align 1
@ntimes_arena_allocated = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"# arenas reclaimed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"# arenas highwater mark\00", align 1
@narenas_highwater = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"# arenas allocated current\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%zu arenas * %d bytes/arena\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"# bytes in allocated blocks\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"# bytes in available blocks\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%u unused pools * %d bytes\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"# bytes lost to pool headers\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"# bytes lost to quantization\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"# bytes lost to arena alignment\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@usedpools = internal global [128 x %struct.pool_header*] [%struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 -16) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 -16) to %struct.pool_header*), %struct.pool_header* bitcast ([128 x %struct.pool_header*]* @usedpools to %struct.pool_header*), %struct.pool_header* bitcast ([128 x %struct.pool_header*]* @usedpools to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 16) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 16) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 32) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 32) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 48) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 48) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 64) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 64) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 80) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 80) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 96) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 96) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 112) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 112) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 128) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 128) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 144) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 144) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 160) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 160) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 176) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 176) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 192) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 192) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 208) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 208) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 224) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 224) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 240) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 240) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 256) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 256) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 272) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 272) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 288) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 288) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 304) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 304) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 320) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 320) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 336) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 336) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 352) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 352) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 368) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 368) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 384) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 384) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 400) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 400) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 416) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 416) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 432) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 432) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 448) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 448) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 464) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 464) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 480) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 480) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 496) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 496) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 512) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 512) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 528) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 528) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 544) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 544) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 560) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 560) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 576) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 576) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 592) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 592) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 608) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 608) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 624) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 624) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 640) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 640) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 656) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 656) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 672) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 672) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 688) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 688) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 704) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 704) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 720) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 720) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 736) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 736) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 752) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 752) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 768) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 768) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 784) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 784) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 800) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 800) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 816) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 816) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 832) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 832) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 848) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 848) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 864) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 864) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 880) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 880) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 896) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 896) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 912) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 912) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 928) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 928) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 944) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 944) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 960) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 960) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 976) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 976) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 992) to %struct.pool_header*), %struct.pool_header* bitcast (i8* getelementptr (i8, i8* bitcast ([128 x %struct.pool_header*]* @usedpools to i8*), i64 992) to %struct.pool_header*)], align 16
@usable_arenas = internal global %struct.arena_object* null, align 8
@unused_arena_objects = internal global %struct.arena_object* null, align 8
@narenas_currently_allocated = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @PyMem_SetupDebugHooks() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyMem_GetAllocator(i32 %domain, %struct.PyMemAllocator* %allocator) #0 {
entry:
  %domain.addr = alloca i32, align 4
  %allocator.addr = alloca %struct.PyMemAllocator*, align 8
  store i32 %domain, i32* %domain.addr, align 4
  store %struct.PyMemAllocator* %allocator, %struct.PyMemAllocator** %allocator.addr, align 8
  %0 = load i32, i32* %domain.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %7, i32 0, i32 0
  store i8* null, i8** %ctx, align 8
  %8 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %8, i32 0, i32 1
  store i8* (i8*, i64)* null, i8* (i8*, i64)** %malloc, align 8
  %9 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %9, i32 0, i32 2
  store i8* (i8*, i8*, i64)* null, i8* (i8*, i8*, i64)** %realloc, align 8
  %10 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %10, i32 0, i32 3
  store void (i8*, i8*)* null, void (i8*, i8*)** %free, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @PyMem_SetAllocator(i32 %domain, %struct.PyMemAllocator* %allocator) #0 {
entry:
  %domain.addr = alloca i32, align 4
  %allocator.addr = alloca %struct.PyMemAllocator*, align 8
  store i32 %domain, i32* %domain.addr, align 4
  store %struct.PyMemAllocator* %allocator, %struct.PyMemAllocator** %allocator.addr, align 8
  %0 = load i32, i32* %domain.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i8* %2, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i8* %4, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i8* %6, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyObject_GetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyObject_SetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i8* %1, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawMalloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 1), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i8* %1(i8* %2, i64 %3)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawRealloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i64, i64* %new_size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 2), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %new_size.addr, align 8
  %call = call i8* %1(i8* %2, i8* %3, i64 %4)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @PyMem_RawFree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 3), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  call void %0(i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 1), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i8* %1(i8* %2, i64 %3)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i64, i64* %new_size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 2), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %new_size.addr, align 8
  %call = call i8* %1(i8* %2, i8* %3, i64 %4)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @PyMem_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 3), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  call void %0(i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_PyMem_RawStrdup(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %copy = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  store i64 %add, i64* %size, align 8
  %1 = load i64, i64* %size, align 8
  %call1 = call i8* @PyMem_RawMalloc(i64 %1)
  store i8* %call1, i8** %copy, align 8
  %2 = load i8*, i8** %copy, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %copy, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i8*, i8** %copy, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @_PyMem_Strdup(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %copy = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  store i64 %add, i64* %size, align 8
  %1 = load i64, i64* %size, align 8
  %call1 = call i8* @PyMem_Malloc(i64 %1)
  store i8* %call1, i8** %copy, align 8
  %2 = load i8*, i8** %copy, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %copy, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i8*, i8** %copy, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 1), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i8* %1(i8* %2, i64 %3)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i64, i64* %new_size.addr, align 8
  %cmp = icmp ugt i64 %0, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 2), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %new_size.addr, align 8
  %call = call i8* %1(i8* %2, i8* %3, i64 %4)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @PyObject_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 3), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  call void %0(i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @_Py_GetAllocatedBlocks() #0 {
entry:
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @_PyDebugAllocatorStats(%struct._IO_FILE* %out, i8* %block_name, i32 %num_blocks, i64 %sizeof_block) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %block_name.addr = alloca i8*, align 8
  %num_blocks.addr = alloca i32, align 4
  %sizeof_block.addr = alloca i64, align 8
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i8* %block_name, i8** %block_name.addr, align 8
  store i32 %num_blocks, i32* %num_blocks.addr, align 4
  store i64 %sizeof_block, i64* %sizeof_block.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0
  %0 = load i32, i32* %num_blocks.addr, align 4
  %1 = load i8*, i8** %block_name.addr, align 8
  %2 = load i64, i64* %sizeof_block.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %0, i8* %1, i64 %2)
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0
  %4 = load i32, i32* %num_blocks.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %sizeof_block.addr, align 8
  %mul = mul i64 %conv, %5
  %call5 = call i64 @printone(%struct._IO_FILE* %3, i8* %arraydecay4, i64 %mul)
  ret void
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @printone(%struct._IO_FILE* %out, i8* %msg, i64 %value) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %msg.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  %origvalue = alloca i64, align 8
  %nextvalue = alloca i64, align 8
  %digit = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  store i64 %0, i64* %origvalue, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  %3 = load i8*, i8** %msg.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call3 = call i32 @fputc(i32 32, %struct._IO_FILE* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call4 = call i32 @fputc(i32 61, %struct._IO_FILE* %7)
  store i32 22, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %9 = load i32, i32* %i, align 4
  %dec5 = add i32 %9, -1
  store i32 %dec5, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom6
  store i8 10, i8* %arrayidx7, align 1
  store i32 3, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %for.end
  %10 = load i64, i64* %value.addr, align 8
  %div = udiv i64 %10, 10
  store i64 %div, i64* %nextvalue, align 8
  %11 = load i64, i64* %value.addr, align 8
  %12 = load i64, i64* %nextvalue, align 8
  %mul = mul i64 %12, 10
  %sub = sub i64 %11, %mul
  %conv8 = trunc i64 %sub to i32
  store i32 %conv8, i32* %digit, align 4
  %13 = load i64, i64* %nextvalue, align 8
  store i64 %13, i64* %value.addr, align 8
  %14 = load i32, i32* %digit, align 4
  %add = add i32 %14, 48
  %conv9 = trunc i32 %add to i8
  %15 = load i32, i32* %i, align 4
  %dec10 = add i32 %15, -1
  store i32 %dec10, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom11
  store i8 %conv9, i8* %arrayidx12, align 1
  %16 = load i32, i32* %k, align 4
  %dec13 = add i32 %16, -1
  store i32 %dec13, i32* %k, align 4
  %17 = load i32, i32* %k, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %18 = load i64, i64* %value.addr, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %19 = load i32, i32* %i, align 4
  %cmp17 = icmp sge i32 %19, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  store i32 3, i32* %k, align 4
  %20 = load i32, i32* %i, align 4
  %dec19 = add i32 %20, -1
  store i32 %dec19, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom20
  store i8 44, i8* %arrayidx21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %21 = load i64, i64* %value.addr, align 8
  %tobool22 = icmp ne i64 %21, 0
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %22 = load i32, i32* %i, align 4
  %cmp23 = icmp sge i32 %22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %23 = phi i1 [ false, %do.cond ], [ %cmp23, %land.rhs ]
  br i1 %23, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %24 = load i32, i32* %i, align 4
  %cmp25 = icmp sge i32 %24, 0
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %i, align 4
  %dec27 = add i32 %25, -1
  store i32 %dec27, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom28
  store i8 32, i8* %arrayidx29, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call30 = call i32 @fputs(i8* %arraydecay, %struct._IO_FILE* %26)
  %27 = load i64, i64* %origvalue, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define void @_PyObject_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %numclasses = alloca i32, align 4
  %numpools = alloca [64 x i64], align 16
  %numblocks = alloca [64 x i64], align 16
  %numfreeblocks = alloca [64 x i64], align 16
  %allocated_bytes = alloca i64, align 8
  %available_bytes = alloca i64, align 8
  %numfreepools = alloca i32, align 4
  %arena_alignment = alloca i64, align 8
  %pool_header_bytes = alloca i64, align 8
  %quantization = alloca i64, align 8
  %narenas = alloca i64, align 8
  %total = alloca i64, align 8
  %buf = alloca [128 x i8], align 16
  %j = alloca i32, align 4
  %base = alloca i64, align 8
  %p = alloca %struct.pool_header*, align 8
  %sz = alloca i32, align 4
  %freeblocks = alloca i32, align 4
  %p58 = alloca i64, align 8
  %b = alloca i64, align 8
  %f = alloca i64, align 8
  %size = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i32 64, i32* %numclasses, align 4
  store i64 0, i64* %allocated_bytes, align 8
  store i64 0, i64* %available_bytes, align 8
  store i32 0, i32* %numfreepools, align 4
  store i64 0, i64* %arena_alignment, align 8
  store i64 0, i64* %pool_header_bytes, align 8
  store i64 0, i64* %quantization, align 8
  store i64 0, i64* %narenas, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 512, i32 64)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %4 to i64
  %arrayidx4 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom3
  store i64 0, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.49, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @maxarenas, align 4
  %cmp6 = icmp ult i32 %6, %7
  br i1 %cmp6, label %for.body.7, label %for.end.51

for.body.7:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %8 to i64
  %9 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx9 = getelementptr %struct.arena_object, %struct.arena_object* %9, i64 %idxprom8
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx9, i32 0, i32 0
  %10 = load i64, i64* %address, align 8
  store i64 %10, i64* %base, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %11 to i64
  %12 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx11 = getelementptr %struct.arena_object, %struct.arena_object* %12, i64 %idxprom10
  %address12 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx11, i32 0, i32 0
  %13 = load i64, i64* %address12, align 8
  %cmp13 = icmp eq i64 %13, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  br label %for.inc.49

if.end:                                           ; preds = %for.body.7
  %14 = load i64, i64* %narenas, align 8
  %add = add i64 %14, 1
  store i64 %add, i64* %narenas, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %15 to i64
  %16 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx15 = getelementptr %struct.arena_object, %struct.arena_object* %16, i64 %idxprom14
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx15, i32 0, i32 2
  %17 = load i32, i32* %nfreepools, align 4
  %18 = load i32, i32* %numfreepools, align 4
  %add16 = add i32 %18, %17
  store i32 %add16, i32* %numfreepools, align 4
  %19 = load i64, i64* %base, align 8
  %and = and i64 %19, 4095
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end
  %20 = load i64, i64* %arena_alignment, align 8
  %add18 = add i64 %20, 4096
  store i64 %add18, i64* %arena_alignment, align 8
  %21 = load i64, i64* %base, align 8
  %and19 = and i64 %21, -4096
  store i64 %and19, i64* %base, align 8
  %22 = load i64, i64* %base, align 8
  %add20 = add i64 %22, 4096
  store i64 %add20, i64* %base, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.45, %if.end.21
  %23 = load i64, i64* %base, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %24 to i64
  %25 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx24 = getelementptr %struct.arena_object, %struct.arena_object* %25, i64 %idxprom23
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx24, i32 0, i32 1
  %26 = load i8*, i8** %pool_address, align 8
  %27 = ptrtoint i8* %26 to i64
  %cmp25 = icmp ult i64 %23, %27
  br i1 %cmp25, label %for.body.26, label %for.end.48

for.body.26:                                      ; preds = %for.cond.22
  %28 = load i64, i64* %base, align 8
  %29 = inttoptr i64 %28 to %struct.pool_header*
  store %struct.pool_header* %29, %struct.pool_header** %p, align 8
  %30 = load %struct.pool_header*, %struct.pool_header** %p, align 8
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %30, i32 0, i32 5
  %31 = load i32, i32* %szidx, align 4
  store i32 %31, i32* %sz, align 4
  %32 = load %struct.pool_header*, %struct.pool_header** %p, align 8
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %32, i32 0, i32 0
  %count = bitcast %union.anon* %ref to i32*
  %33 = load i32, i32* %count, align 4
  %cmp27 = icmp eq i32 %33, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.26
  br label %for.inc.45

if.end.29:                                        ; preds = %for.body.26
  %34 = load i32, i32* %sz, align 4
  %idxprom30 = zext i32 %34 to i64
  %arrayidx31 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom30
  %35 = load i64, i64* %arrayidx31, align 8
  %inc32 = add i64 %35, 1
  store i64 %inc32, i64* %arrayidx31, align 8
  %36 = load %struct.pool_header*, %struct.pool_header** %p, align 8
  %ref33 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %36, i32 0, i32 0
  %count34 = bitcast %union.anon* %ref33 to i32*
  %37 = load i32, i32* %count34, align 4
  %conv = zext i32 %37 to i64
  %38 = load i32, i32* %sz, align 4
  %idxprom35 = zext i32 %38 to i64
  %arrayidx36 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom35
  %39 = load i64, i64* %arrayidx36, align 8
  %add37 = add i64 %39, %conv
  store i64 %add37, i64* %arrayidx36, align 8
  %40 = load i32, i32* %sz, align 4
  %add38 = add i32 %40, 1
  %shl = shl i32 %add38, 3
  %div = udiv i32 4048, %shl
  %41 = load %struct.pool_header*, %struct.pool_header** %p, align 8
  %ref39 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %41, i32 0, i32 0
  %count40 = bitcast %union.anon* %ref39 to i32*
  %42 = load i32, i32* %count40, align 4
  %sub = sub i32 %div, %42
  store i32 %sub, i32* %freeblocks, align 4
  %43 = load i32, i32* %freeblocks, align 4
  %conv41 = zext i32 %43 to i64
  %44 = load i32, i32* %sz, align 4
  %idxprom42 = zext i32 %44 to i64
  %arrayidx43 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom42
  %45 = load i64, i64* %arrayidx43, align 8
  %add44 = add i64 %45, %conv41
  store i64 %add44, i64* %arrayidx43, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.29, %if.then.28
  %46 = load i32, i32* %j, align 4
  %inc46 = add i32 %46, 1
  store i32 %inc46, i32* %j, align 4
  %47 = load i64, i64* %base, align 8
  %add47 = add i64 %47, 4096
  store i64 %add47, i64* %base, align 8
  br label %for.cond.22

for.end.48:                                       ; preds = %for.cond.22
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48, %if.then
  %48 = load i32, i32* %i, align 4
  %inc50 = add i32 %48, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.5

for.end.51:                                       ; preds = %for.cond.5
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call52 = call i32 @fputc(i32 10, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %50)
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.82, %for.end.51
  %51 = load i32, i32* %i, align 4
  %cmp55 = icmp ult i32 %51, 64
  br i1 %cmp55, label %for.body.57, label %for.end.84

for.body.57:                                      ; preds = %for.cond.54
  %52 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %52 to i64
  %arrayidx60 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom59
  %53 = load i64, i64* %arrayidx60, align 8
  store i64 %53, i64* %p58, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %54 to i64
  %arrayidx62 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom61
  %55 = load i64, i64* %arrayidx62, align 8
  store i64 %55, i64* %b, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom63 = zext i32 %56 to i64
  %arrayidx64 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom63
  %57 = load i64, i64* %arrayidx64, align 8
  store i64 %57, i64* %f, align 8
  %58 = load i32, i32* %i, align 4
  %add65 = add i32 %58, 1
  %shl66 = shl i32 %add65, 3
  store i32 %shl66, i32* %size, align 4
  %59 = load i64, i64* %p58, align 8
  %cmp67 = icmp eq i64 %59, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.57
  br label %for.inc.82

if.end.70:                                        ; preds = %for.body.57
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %size, align 4
  %63 = load i64, i64* %p58, align 8
  %64 = load i64, i64* %b, align 8
  %65 = load i64, i64* %f, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %61, i32 %62, i64 %63, i64 %64, i64 %65)
  %66 = load i64, i64* %b, align 8
  %67 = load i32, i32* %size, align 4
  %conv72 = zext i32 %67 to i64
  %mul = mul i64 %66, %conv72
  %68 = load i64, i64* %allocated_bytes, align 8
  %add73 = add i64 %68, %mul
  store i64 %add73, i64* %allocated_bytes, align 8
  %69 = load i64, i64* %f, align 8
  %70 = load i32, i32* %size, align 4
  %conv74 = zext i32 %70 to i64
  %mul75 = mul i64 %69, %conv74
  %71 = load i64, i64* %available_bytes, align 8
  %add76 = add i64 %71, %mul75
  store i64 %add76, i64* %available_bytes, align 8
  %72 = load i64, i64* %p58, align 8
  %mul77 = mul i64 %72, 48
  %73 = load i64, i64* %pool_header_bytes, align 8
  %add78 = add i64 %73, %mul77
  store i64 %add78, i64* %pool_header_bytes, align 8
  %74 = load i64, i64* %p58, align 8
  %75 = load i32, i32* %size, align 4
  %conv79 = zext i32 %75 to i64
  %rem = urem i64 4048, %conv79
  %mul80 = mul i64 %74, %rem
  %76 = load i64, i64* %quantization, align 8
  %add81 = add i64 %76, %mul80
  store i64 %add81, i64* %quantization, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.70, %if.then.69
  %77 = load i32, i32* %i, align 4
  %inc83 = add i32 %77, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.54

for.end.84:                                       ; preds = %for.cond.54
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call85 = call i32 @fputc(i32 10, %struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %80 = load i64, i64* @ntimes_arena_allocated, align 8
  %call86 = call i64 @printone(%struct._IO_FILE* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i64 %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %82 = load i64, i64* @ntimes_arena_allocated, align 8
  %83 = load i64, i64* %narenas, align 8
  %sub87 = sub i64 %82, %83
  %call88 = call i64 @printone(%struct._IO_FILE* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %sub87)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %85 = load i64, i64* @narenas_highwater, align 8
  %call89 = call i64 @printone(%struct._IO_FILE* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i64 %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %87 = load i64, i64* %narenas, align 8
  %call90 = call i64 @printone(%struct._IO_FILE* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 %87)
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %88 = load i64, i64* %narenas, align 8
  %call91 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i64 %88, i32 262144)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %arraydecay92 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %90 = load i64, i64* %narenas, align 8
  %mul93 = mul i64 %90, 262144
  %call94 = call i64 @printone(%struct._IO_FILE* %89, i8* %arraydecay92, i64 %mul93)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call95 = call i32 @fputc(i32 10, %struct._IO_FILE* %91)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %93 = load i64, i64* %allocated_bytes, align 8
  %call96 = call i64 @printone(%struct._IO_FILE* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i64 %93)
  store i64 %call96, i64* %total, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %95 = load i64, i64* %available_bytes, align 8
  %call97 = call i64 @printone(%struct._IO_FILE* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i64 %95)
  %96 = load i64, i64* %total, align 8
  %add98 = add i64 %96, %call97
  store i64 %add98, i64* %total, align 8
  %arraydecay99 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %97 = load i32, i32* %numfreepools, align 4
  %call100 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay99, i64 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %97, i32 4096)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %arraydecay101 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %99 = load i32, i32* %numfreepools, align 4
  %conv102 = zext i32 %99 to i64
  %mul103 = mul i64 %conv102, 4096
  %call104 = call i64 @printone(%struct._IO_FILE* %98, i8* %arraydecay101, i64 %mul103)
  %100 = load i64, i64* %total, align 8
  %add105 = add i64 %100, %call104
  store i64 %add105, i64* %total, align 8
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %102 = load i64, i64* %pool_header_bytes, align 8
  %call106 = call i64 @printone(%struct._IO_FILE* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i64 %102)
  %103 = load i64, i64* %total, align 8
  %add107 = add i64 %103, %call106
  store i64 %add107, i64* %total, align 8
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %105 = load i64, i64* %quantization, align 8
  %call108 = call i64 @printone(%struct._IO_FILE* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 %105)
  %106 = load i64, i64* %total, align 8
  %add109 = add i64 %106, %call108
  store i64 %add109, i64* %total, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %108 = load i64, i64* %arena_alignment, align 8
  %call110 = call i64 @printone(%struct._IO_FILE* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i64 %108)
  %109 = load i64, i64* %total, align 8
  %add111 = add i64 %109, %call110
  store i64 %add111, i64* %total, align 8
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %111 = load i64, i64* %total, align 8
  %call112 = call i64 @printone(%struct._IO_FILE* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 %111)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i8* @_PyMem_RawMalloc(i8* %ctx, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %1) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyMem_RawRealloc(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %1, i64 %2) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @_PyMem_RawFree(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_Malloc(i8* %ctx, i64 %nbytes) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %bp = alloca i8*, align 8
  %pool = alloca %struct.pool_header*, align 8
  %next = alloca %struct.pool_header*, align 8
  %size = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @_Py_AllocatedBlocks, align 8
  %1 = load i64, i64* %nbytes.addr, align 8
  %sub = sub i64 %1, 1
  %cmp = icmp ult i64 %sub, 512
  br i1 %cmp, label %if.then, label %if.end.96

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %nbytes.addr, align 8
  %sub1 = sub i64 %2, 1
  %conv = trunc i64 %sub1 to i32
  %shr = lshr i32 %conv, 3
  store i32 %shr, i32* %size, align 4
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %size, align 4
  %add = add i32 %3, %4
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom
  %5 = load %struct.pool_header*, %struct.pool_header** %arrayidx, align 8
  store %struct.pool_header* %5, %struct.pool_header** %pool, align 8
  %6 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %7 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %7, i32 0, i32 2
  %8 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8
  %cmp2 = icmp ne %struct.pool_header* %6, %8
  br i1 %cmp2, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %9, i32 0, i32 0
  %count = bitcast %union.anon* %ref to i32*
  %10 = load i32, i32* %count, align 4
  %inc5 = add i32 %10, 1
  store i32 %inc5, i32* %count, align 4
  %11 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i32 0, i32 1
  %12 = load i8*, i8** %freeblock, align 8
  store i8* %12, i8** %bp, align 8
  %13 = load i8*, i8** %bp, align 8
  %14 = bitcast i8* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock6 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %16, i32 0, i32 1
  store i8* %15, i8** %freeblock6, align 8
  %cmp7 = icmp ne i8* %15, null
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  %17 = load i8*, i8** %bp, align 8
  store i8* %17, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  %18 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %18, i32 0, i32 6
  %19 = load i32, i32* %nextoffset, align 4
  %20 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %maxnextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %20, i32 0, i32 7
  %21 = load i32, i32* %maxnextoffset, align 4
  %cmp10 = icmp ule i32 %19, %21
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %23 = bitcast %struct.pool_header* %22 to i8*
  %24 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextoffset13 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %24, i32 0, i32 6
  %25 = load i32, i32* %nextoffset13, align 4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr i8, i8* %23, i64 %idx.ext
  %26 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock14 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %26, i32 0, i32 1
  store i8* %add.ptr, i8** %freeblock14, align 8
  %27 = load i32, i32* %size, align 4
  %add15 = add i32 %27, 1
  %shl = shl i32 %add15, 3
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextoffset16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 6
  %29 = load i32, i32* %nextoffset16, align 4
  %add17 = add i32 %29, %shl
  store i32 %add17, i32* %nextoffset16, align 4
  %30 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock18 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %30, i32 0, i32 1
  %31 = load i8*, i8** %freeblock18, align 8
  %32 = bitcast i8* %31 to i8**
  store i8* null, i8** %32, align 8
  %33 = load i8*, i8** %bp, align 8
  store i8* %33, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 2
  %35 = load %struct.pool_header*, %struct.pool_header** %nextpool20, align 8
  store %struct.pool_header* %35, %struct.pool_header** %next, align 8
  %36 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %36, i32 0, i32 3
  %37 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8
  store %struct.pool_header* %37, %struct.pool_header** %pool, align 8
  %38 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %39 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %prevpool21 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %39, i32 0, i32 3
  store %struct.pool_header* %38, %struct.pool_header** %prevpool21, align 8
  %40 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %41 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool22 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %41, i32 0, i32 2
  store %struct.pool_header* %40, %struct.pool_header** %nextpool22, align 8
  %42 = load i8*, i8** %bp, align 8
  store i8* %42, i8** %retval
  br label %return

if.end.23:                                        ; preds = %if.then
  %43 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %cmp24 = icmp eq %struct.arena_object* %43, null
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.23
  %call = call %struct.arena_object* @new_arena()
  store %struct.arena_object* %call, %struct.arena_object** @usable_arenas, align 8
  %44 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %cmp27 = icmp eq %struct.arena_object* %44, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  br label %redirect

if.end.30:                                        ; preds = %if.then.26
  %45 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %45, i32 0, i32 6
  store %struct.arena_object* null, %struct.arena_object** %prevarena, align 8
  %46 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %46, i32 0, i32 5
  store %struct.arena_object* null, %struct.arena_object** %nextarena, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %47 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %47, i32 0, i32 4
  %48 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8
  store %struct.pool_header* %48, %struct.pool_header** %pool, align 8
  %49 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %cmp32 = icmp ne %struct.pool_header* %49, null
  br i1 %cmp32, label %if.then.34, label %if.end.78

if.then.34:                                       ; preds = %if.end.31
  %50 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool35 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %50, i32 0, i32 2
  %51 = load %struct.pool_header*, %struct.pool_header** %nextpool35, align 8
  %52 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %freepools36 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %52, i32 0, i32 4
  store %struct.pool_header* %51, %struct.pool_header** %freepools36, align 8
  %53 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 2
  %54 = load i32, i32* %nfreepools, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %nfreepools, align 4
  %55 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nfreepools37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %55, i32 0, i32 2
  %56 = load i32, i32* %nfreepools37, align 4
  %cmp38 = icmp eq i32 %56, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.34
  %57 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nextarena41 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 5
  %58 = load %struct.arena_object*, %struct.arena_object** %nextarena41, align 8
  store %struct.arena_object* %58, %struct.arena_object** @usable_arenas, align 8
  %59 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %cmp42 = icmp ne %struct.arena_object* %59, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.40
  %60 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %60, i32 0, i32 6
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.47

if.else:                                          ; preds = %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.end.46
  br label %init_pool

init_pool:                                        ; preds = %if.end.95, %if.end.47
  %61 = load i32, i32* %size, align 4
  %62 = load i32, i32* %size, align 4
  %add48 = add i32 %61, %62
  %idxprom49 = zext i32 %add48 to i64
  %arrayidx50 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom49
  %63 = load %struct.pool_header*, %struct.pool_header** %arrayidx50, align 8
  store %struct.pool_header* %63, %struct.pool_header** %next, align 8
  %64 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %65 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool51 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %65, i32 0, i32 2
  store %struct.pool_header* %64, %struct.pool_header** %nextpool51, align 8
  %66 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %67 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %prevpool52 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %67, i32 0, i32 3
  store %struct.pool_header* %66, %struct.pool_header** %prevpool52, align 8
  %68 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %69 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %nextpool53 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %69, i32 0, i32 2
  store %struct.pool_header* %68, %struct.pool_header** %nextpool53, align 8
  %70 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %71 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %prevpool54 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %71, i32 0, i32 3
  store %struct.pool_header* %70, %struct.pool_header** %prevpool54, align 8
  %72 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %ref55 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %72, i32 0, i32 0
  %count56 = bitcast %union.anon* %ref55 to i32*
  store i32 1, i32* %count56, align 4
  %73 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %73, i32 0, i32 5
  %74 = load i32, i32* %szidx, align 4
  %75 = load i32, i32* %size, align 4
  %cmp57 = icmp eq i32 %74, %75
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %init_pool
  %76 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock60 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %76, i32 0, i32 1
  %77 = load i8*, i8** %freeblock60, align 8
  store i8* %77, i8** %bp, align 8
  %78 = load i8*, i8** %bp, align 8
  %79 = bitcast i8* %78 to i8**
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock61 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %81, i32 0, i32 1
  store i8* %80, i8** %freeblock61, align 8
  %82 = load i8*, i8** %bp, align 8
  store i8* %82, i8** %retval
  br label %return

if.end.62:                                        ; preds = %init_pool
  %83 = load i32, i32* %size, align 4
  %84 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %szidx63 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %84, i32 0, i32 5
  store i32 %83, i32* %szidx63, align 4
  %85 = load i32, i32* %size, align 4
  %add64 = add i32 %85, 1
  %shl65 = shl i32 %add64, 3
  store i32 %shl65, i32* %size, align 4
  %86 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %87 = bitcast %struct.pool_header* %86 to i8*
  %add.ptr66 = getelementptr i8, i8* %87, i64 48
  store i8* %add.ptr66, i8** %bp, align 8
  %88 = load i32, i32* %size, align 4
  %shl67 = shl i32 %88, 1
  %conv68 = zext i32 %shl67 to i64
  %add69 = add i64 48, %conv68
  %conv70 = trunc i64 %add69 to i32
  %89 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextoffset71 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %89, i32 0, i32 6
  store i32 %conv70, i32* %nextoffset71, align 4
  %90 = load i32, i32* %size, align 4
  %sub72 = sub i32 4096, %90
  %91 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %maxnextoffset73 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %91, i32 0, i32 7
  store i32 %sub72, i32* %maxnextoffset73, align 4
  %92 = load i8*, i8** %bp, align 8
  %93 = load i32, i32* %size, align 4
  %idx.ext74 = zext i32 %93 to i64
  %add.ptr75 = getelementptr i8, i8* %92, i64 %idx.ext74
  %94 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock76 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %94, i32 0, i32 1
  store i8* %add.ptr75, i8** %freeblock76, align 8
  %95 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock77 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %95, i32 0, i32 1
  %96 = load i8*, i8** %freeblock77, align 8
  %97 = bitcast i8* %96 to i8**
  store i8* null, i8** %97, align 8
  %98 = load i8*, i8** %bp, align 8
  store i8* %98, i8** %retval
  br label %return

if.end.78:                                        ; preds = %if.end.31
  %99 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %99, i32 0, i32 1
  %100 = load i8*, i8** %pool_address, align 8
  %101 = bitcast i8* %100 to %struct.pool_header*
  store %struct.pool_header* %101, %struct.pool_header** %pool, align 8
  %102 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %103 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.arena_object* %102 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.arena_object* %103 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48
  %conv79 = trunc i64 %sub.ptr.div to i32
  %104 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %104, i32 0, i32 4
  store i32 %conv79, i32* %arenaindex, align 4
  %105 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %szidx80 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %105, i32 0, i32 5
  store i32 65535, i32* %szidx80, align 4
  %106 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %pool_address81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %106, i32 0, i32 1
  %107 = load i8*, i8** %pool_address81, align 8
  %add.ptr82 = getelementptr i8, i8* %107, i64 4096
  store i8* %add.ptr82, i8** %pool_address81, align 8
  %108 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nfreepools83 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %108, i32 0, i32 2
  %109 = load i32, i32* %nfreepools83, align 4
  %dec84 = add i32 %109, -1
  store i32 %dec84, i32* %nfreepools83, align 4
  %110 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nfreepools85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %110, i32 0, i32 2
  %111 = load i32, i32* %nfreepools85, align 4
  %cmp86 = icmp eq i32 %111, 0
  br i1 %cmp86, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.78
  %112 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %nextarena89 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 5
  %113 = load %struct.arena_object*, %struct.arena_object** %nextarena89, align 8
  store %struct.arena_object* %113, %struct.arena_object** @usable_arenas, align 8
  %114 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %cmp90 = icmp ne %struct.arena_object* %114, null
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.then.88
  %115 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %prevarena93 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %115, i32 0, i32 6
  store %struct.arena_object* null, %struct.arena_object** %prevarena93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.then.88
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.78
  br label %init_pool

if.end.96:                                        ; preds = %entry
  br label %redirect

redirect:                                         ; preds = %if.end.96, %if.then.29
  %116 = load i64, i64* %nbytes.addr, align 8
  %call97 = call i8* @PyMem_RawMalloc(i64 %116)
  store i8* %call97, i8** %result, align 8
  %117 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %117, null
  br i1 %tobool, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %redirect
  %118 = load i64, i64* @_Py_AllocatedBlocks, align 8
  %dec99 = add i64 %118, -1
  store i64 %dec99, i64* @_Py_AllocatedBlocks, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %redirect
  %119 = load i8*, i8** %result, align 8
  store i8* %119, i8** %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.end.62, %if.then.59, %if.end.19, %if.then.12, %if.then.9
  %120 = load i8*, i8** %retval
  ret i8* %120
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_Realloc(i8* %ctx, i8* %p, i64 %nbytes) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %bp = alloca i8*, align 8
  %pool = alloca %struct.pool_header*, align 8
  %size = alloca i64, align 8
  %arenaindex_temp = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  %call = call i8* @_PyObject_Malloc(i8* %1, i64 %2)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  %and = and i64 %4, -4096
  %5 = inttoptr i64 %and to i8*
  %6 = bitcast i8* %5 to %struct.pool_header*
  store %struct.pool_header* %6, %struct.pool_header** %pool, align 8
  %7 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %7, i32 0, i32 4
  %8 = load i32, i32* %arenaindex, align 4
  store i32 %8, i32* %arenaindex_temp, align 4
  %9 = load i32, i32* @maxarenas, align 4
  %cmp1 = icmp ult i32 %8, %9
  br i1 %cmp1, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8*, i8** %p.addr, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i32, i32* %arenaindex_temp, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %13, i64 %idxprom
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0
  %14 = load i64, i64* %address, align 8
  %sub = sub i64 %11, %14
  %cmp2 = icmp ult i64 %sub, 262144
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.23

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %arenaindex_temp, align 4
  %idxprom4 = zext i32 %15 to i64
  %16 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %16, i64 %idxprom4
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0
  %17 = load i64, i64* %address6, align 8
  %cmp7 = icmp ne i64 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.end.23

if.then.8:                                        ; preds = %land.lhs.true.3
  %18 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %18, i32 0, i32 5
  %19 = load i32, i32* %szidx, align 4
  %add = add i32 %19, 1
  %shl = shl i32 %add, 3
  %conv = zext i32 %shl to i64
  store i64 %conv, i64* %size, align 8
  %20 = load i64, i64* %nbytes.addr, align 8
  %21 = load i64, i64* %size, align 8
  %cmp9 = icmp ule i64 %20, %21
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.then.8
  %22 = load i64, i64* %nbytes.addr, align 8
  %mul = mul i64 4, %22
  %23 = load i64, i64* %size, align 8
  %mul12 = mul i64 3, %23
  %cmp13 = icmp ugt i64 %mul, %mul12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %24 = load i8*, i8** %p.addr, align 8
  store i8* %24, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  %25 = load i64, i64* %nbytes.addr, align 8
  store i64 %25, i64* %size, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  %26 = load i8*, i8** %ctx.addr, align 8
  %27 = load i64, i64* %nbytes.addr, align 8
  %call18 = call i8* @_PyObject_Malloc(i8* %26, i64 %27)
  store i8* %call18, i8** %bp, align 8
  %28 = load i8*, i8** %bp, align 8
  %cmp19 = icmp ne i8* %28, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %29 = load i8*, i8** %bp, align 8
  %30 = load i8*, i8** %p.addr, align 8
  %31 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %31, i32 1, i1 false)
  %32 = load i8*, i8** %ctx.addr, align 8
  %33 = load i8*, i8** %p.addr, align 8
  call void @_PyObject_Free(i8* %32, i8* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  %34 = load i8*, i8** %bp, align 8
  store i8* %34, i8** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %35 = load i64, i64* %nbytes.addr, align 8
  %tobool = icmp ne i64 %35, 0
  br i1 %tobool, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.23
  %36 = load i8*, i8** %p.addr, align 8
  %37 = load i64, i64* %nbytes.addr, align 8
  %call25 = call i8* @PyMem_RawRealloc(i8* %36, i64 %37)
  store i8* %call25, i8** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.23
  %38 = load i8*, i8** %p.addr, align 8
  %call27 = call i8* @PyMem_RawRealloc(i8* %38, i64 1)
  store i8* %call27, i8** %bp, align 8
  %39 = load i8*, i8** %bp, align 8
  %tobool28 = icmp ne i8* %39, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %40 = load i8*, i8** %bp, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  %41 = load i8*, i8** %p.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %40, %cond.true ], [ %41, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.24, %if.end.22, %if.then.15, %if.then
  %42 = load i8*, i8** %retval
  ret i8* %42
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_Free(i8* %ctx, i8* %p) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %pool = alloca %struct.pool_header*, align 8
  %lastfree = alloca i8*, align 8
  %next = alloca %struct.pool_header*, align 8
  %prev = alloca %struct.pool_header*, align 8
  %size = alloca i32, align 4
  %arenaindex_temp = alloca i32, align 4
  %ao = alloca %struct.arena_object*, align 8
  %nf = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @_Py_AllocatedBlocks, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* @_Py_AllocatedBlocks, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %and = and i64 %3, -4096
  %4 = inttoptr i64 %and to i8*
  %5 = bitcast i8* %4 to %struct.pool_header*
  store %struct.pool_header* %5, %struct.pool_header** %pool, align 8
  %6 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %6, i32 0, i32 4
  %7 = load i32, i32* %arenaindex, align 4
  store i32 %7, i32* %arenaindex_temp, align 4
  %8 = load i32, i32* @maxarenas, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end.99

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %p.addr, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i32, i32* %arenaindex_temp, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %12, i64 %idxprom
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0
  %13 = load i64, i64* %address, align 8
  %sub = sub i64 %10, %13
  %cmp2 = icmp ult i64 %sub, 262144
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.99

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %arenaindex_temp, align 4
  %idxprom4 = zext i32 %14 to i64
  %15 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %15, i64 %idxprom4
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0
  %16 = load i64, i64* %address6, align 8
  %cmp7 = icmp ne i64 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end.99

if.then.8:                                        ; preds = %land.lhs.true.3
  %17 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %17, i32 0, i32 1
  %18 = load i8*, i8** %freeblock, align 8
  store i8* %18, i8** %lastfree, align 8
  %19 = load i8*, i8** %p.addr, align 8
  %20 = bitcast i8* %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %p.addr, align 8
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %freeblock9 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %22, i32 0, i32 1
  store i8* %21, i8** %freeblock9, align 8
  %23 = load i8*, i8** %lastfree, align 8
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %if.then.10, label %if.end.88

if.then.10:                                       ; preds = %if.then.8
  %24 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %24, i32 0, i32 0
  %count = bitcast %union.anon* %ref to i32*
  %25 = load i32, i32* %count, align 4
  %dec11 = add i32 %25, -1
  store i32 %dec11, i32* %count, align 4
  %cmp12 = icmp ne i32 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  br label %return

if.end.14:                                        ; preds = %if.then.10
  %26 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %26, i32 0, i32 2
  %27 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8
  store %struct.pool_header* %27, %struct.pool_header** %next, align 8
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 3
  %29 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8
  store %struct.pool_header* %29, %struct.pool_header** %prev, align 8
  %30 = load %struct.pool_header*, %struct.pool_header** %prev, align 8
  %31 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %prevpool15 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %31, i32 0, i32 3
  store %struct.pool_header* %30, %struct.pool_header** %prevpool15, align 8
  %32 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %33 = load %struct.pool_header*, %struct.pool_header** %prev, align 8
  %nextpool16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %33, i32 0, i32 2
  store %struct.pool_header* %32, %struct.pool_header** %nextpool16, align 8
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %arenaindex17 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 4
  %35 = load i32, i32* %arenaindex17, align 4
  %idxprom18 = zext i32 %35 to i64
  %36 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %36, i64 %idxprom18
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %ao, align 8
  %37 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %37, i32 0, i32 4
  %38 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8
  %39 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %39, i32 0, i32 2
  store %struct.pool_header* %38, %struct.pool_header** %nextpool20, align 8
  %40 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %41 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %freepools21 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %41, i32 0, i32 4
  store %struct.pool_header* %40, %struct.pool_header** %freepools21, align 8
  %42 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %42, i32 0, i32 2
  %43 = load i32, i32* %nfreepools, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %nfreepools, align 4
  store i32 %inc, i32* %nf, align 4
  %44 = load i32, i32* %nf, align 4
  %45 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %45, i32 0, i32 3
  %46 = load i32, i32* %ntotalpools, align 4
  %cmp22 = icmp eq i32 %44, %46
  br i1 %cmp22, label %if.then.23, label %if.end.41

if.then.23:                                       ; preds = %if.end.14
  %47 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %47, i32 0, i32 6
  %48 = load %struct.arena_object*, %struct.arena_object** %prevarena, align 8
  %cmp24 = icmp eq %struct.arena_object* %48, null
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.23
  %49 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 5
  %50 = load %struct.arena_object*, %struct.arena_object** %nextarena, align 8
  store %struct.arena_object* %50, %struct.arena_object** @usable_arenas, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.then.23
  %51 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena26 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %51, i32 0, i32 5
  %52 = load %struct.arena_object*, %struct.arena_object** %nextarena26, align 8
  %53 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena27 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 6
  %54 = load %struct.arena_object*, %struct.arena_object** %prevarena27, align 8
  %nextarena28 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %54, i32 0, i32 5
  store %struct.arena_object* %52, %struct.arena_object** %nextarena28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %55 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %55, i32 0, i32 5
  %56 = load %struct.arena_object*, %struct.arena_object** %nextarena30, align 8
  %cmp31 = icmp ne %struct.arena_object* %56, null
  br i1 %cmp31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.29
  %57 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena33 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 6
  %58 = load %struct.arena_object*, %struct.arena_object** %prevarena33, align 8
  %59 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena34 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 5
  %60 = load %struct.arena_object*, %struct.arena_object** %nextarena34, align 8
  %prevarena35 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %60, i32 0, i32 6
  store %struct.arena_object* %58, %struct.arena_object** %prevarena35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.29
  %61 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8
  %62 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %62, i32 0, i32 5
  store %struct.arena_object* %61, %struct.arena_object** %nextarena37, align 8
  %63 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  store %struct.arena_object* %63, %struct.arena_object** @unused_arena_objects, align 8
  %64 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 2), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8
  %66 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %address38 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %66, i32 0, i32 0
  %67 = load i64, i64* %address38, align 8
  %68 = inttoptr i64 %67 to i8*
  call void %64(i8* %65, i8* %68, i64 262144)
  %69 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %address39 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %69, i32 0, i32 0
  store i64 0, i64* %address39, align 8
  %70 = load i64, i64* @narenas_currently_allocated, align 8
  %dec40 = add i64 %70, -1
  store i64 %dec40, i64* @narenas_currently_allocated, align 8
  br label %return

if.end.41:                                        ; preds = %if.end.14
  %71 = load i32, i32* %nf, align 4
  %cmp42 = icmp eq i32 %71, 1
  br i1 %cmp42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end.41
  %72 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %73 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena44 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %73, i32 0, i32 5
  store %struct.arena_object* %72, %struct.arena_object** %nextarena44, align 8
  %74 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %74, i32 0, i32 6
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8
  %75 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %tobool46 = icmp ne %struct.arena_object* %75, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.43
  %76 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %77 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8
  %prevarena48 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %77, i32 0, i32 6
  store %struct.arena_object* %76, %struct.arena_object** %prevarena48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.43
  %78 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  store %struct.arena_object* %78, %struct.arena_object** @usable_arenas, align 8
  br label %return

if.end.50:                                        ; preds = %if.end.41
  %79 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena51 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %79, i32 0, i32 5
  %80 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8
  %cmp52 = icmp eq %struct.arena_object* %80, null
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %81 = load i32, i32* %nf, align 4
  %82 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena53 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %82, i32 0, i32 5
  %83 = load %struct.arena_object*, %struct.arena_object** %nextarena53, align 8
  %nfreepools54 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %83, i32 0, i32 2
  %84 = load i32, i32* %nfreepools54, align 4
  %cmp55 = icmp ule i32 %81, %84
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false, %if.end.50
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false
  %85 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena58 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %85, i32 0, i32 6
  %86 = load %struct.arena_object*, %struct.arena_object** %prevarena58, align 8
  %cmp59 = icmp ne %struct.arena_object* %86, null
  br i1 %cmp59, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.end.57
  %87 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena61 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %87, i32 0, i32 5
  %88 = load %struct.arena_object*, %struct.arena_object** %nextarena61, align 8
  %89 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena62 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %89, i32 0, i32 6
  %90 = load %struct.arena_object*, %struct.arena_object** %prevarena62, align 8
  %nextarena63 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %90, i32 0, i32 5
  store %struct.arena_object* %88, %struct.arena_object** %nextarena63, align 8
  br label %if.end.66

if.else.64:                                       ; preds = %if.end.57
  %91 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena65 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %91, i32 0, i32 5
  %92 = load %struct.arena_object*, %struct.arena_object** %nextarena65, align 8
  store %struct.arena_object* %92, %struct.arena_object** @usable_arenas, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.60
  %93 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena67 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %93, i32 0, i32 6
  %94 = load %struct.arena_object*, %struct.arena_object** %prevarena67, align 8
  %95 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena68 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %95, i32 0, i32 5
  %96 = load %struct.arena_object*, %struct.arena_object** %nextarena68, align 8
  %prevarena69 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %96, i32 0, i32 6
  store %struct.arena_object* %94, %struct.arena_object** %prevarena69, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.66
  %97 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena70 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %97, i32 0, i32 5
  %98 = load %struct.arena_object*, %struct.arena_object** %nextarena70, align 8
  %cmp71 = icmp ne %struct.arena_object* %98, null
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %99 = load i32, i32* %nf, align 4
  %100 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena72 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %100, i32 0, i32 5
  %101 = load %struct.arena_object*, %struct.arena_object** %nextarena72, align 8
  %nfreepools73 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %101, i32 0, i32 2
  %102 = load i32, i32* %nfreepools73, align 4
  %cmp74 = icmp ugt i32 %99, %102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %103 = phi i1 [ false, %while.cond ], [ %cmp74, %land.rhs ]
  br i1 %103, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %104 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena75 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %104, i32 0, i32 5
  %105 = load %struct.arena_object*, %struct.arena_object** %nextarena75, align 8
  %106 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena76 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %106, i32 0, i32 6
  store %struct.arena_object* %105, %struct.arena_object** %prevarena76, align 8
  %107 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena77 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %107, i32 0, i32 5
  %108 = load %struct.arena_object*, %struct.arena_object** %nextarena77, align 8
  %nextarena78 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %108, i32 0, i32 5
  %109 = load %struct.arena_object*, %struct.arena_object** %nextarena78, align 8
  %110 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena79 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %110, i32 0, i32 5
  store %struct.arena_object* %109, %struct.arena_object** %nextarena79, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %111 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %112 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %prevarena80 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 6
  %113 = load %struct.arena_object*, %struct.arena_object** %prevarena80, align 8
  %nextarena81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %113, i32 0, i32 5
  store %struct.arena_object* %111, %struct.arena_object** %nextarena81, align 8
  %114 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena82 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %114, i32 0, i32 5
  %115 = load %struct.arena_object*, %struct.arena_object** %nextarena82, align 8
  %cmp83 = icmp ne %struct.arena_object* %115, null
  br i1 %cmp83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %while.end
  %116 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %117 = load %struct.arena_object*, %struct.arena_object** %ao, align 8
  %nextarena85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %117, i32 0, i32 5
  %118 = load %struct.arena_object*, %struct.arena_object** %nextarena85, align 8
  %prevarena86 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %118, i32 0, i32 6
  store %struct.arena_object* %116, %struct.arena_object** %prevarena86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %while.end
  br label %return

if.end.88:                                        ; preds = %if.then.8
  %119 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %ref89 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %119, i32 0, i32 0
  %count90 = bitcast %union.anon* %ref89 to i32*
  %120 = load i32, i32* %count90, align 4
  %dec91 = add i32 %120, -1
  store i32 %dec91, i32* %count90, align 4
  %121 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %121, i32 0, i32 5
  %122 = load i32, i32* %szidx, align 4
  store i32 %122, i32* %size, align 4
  %123 = load i32, i32* %size, align 4
  %124 = load i32, i32* %size, align 4
  %add = add i32 %123, %124
  %idxprom92 = zext i32 %add to i64
  %arrayidx93 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom92
  %125 = load %struct.pool_header*, %struct.pool_header** %arrayidx93, align 8
  store %struct.pool_header* %125, %struct.pool_header** %next, align 8
  %126 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %prevpool94 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %126, i32 0, i32 3
  %127 = load %struct.pool_header*, %struct.pool_header** %prevpool94, align 8
  store %struct.pool_header* %127, %struct.pool_header** %prev, align 8
  %128 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %129 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %nextpool95 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %129, i32 0, i32 2
  store %struct.pool_header* %128, %struct.pool_header** %nextpool95, align 8
  %130 = load %struct.pool_header*, %struct.pool_header** %prev, align 8
  %131 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %prevpool96 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %131, i32 0, i32 3
  store %struct.pool_header* %130, %struct.pool_header** %prevpool96, align 8
  %132 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %133 = load %struct.pool_header*, %struct.pool_header** %next, align 8
  %prevpool97 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %133, i32 0, i32 3
  store %struct.pool_header* %132, %struct.pool_header** %prevpool97, align 8
  %134 = load %struct.pool_header*, %struct.pool_header** %pool, align 8
  %135 = load %struct.pool_header*, %struct.pool_header** %prev, align 8
  %nextpool98 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %135, i32 0, i32 2
  store %struct.pool_header* %134, %struct.pool_header** %nextpool98, align 8
  br label %return

if.end.99:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %136 = load i8*, i8** %p.addr, align 8
  call void @PyMem_RawFree(i8* %136)
  br label %return

return:                                           ; preds = %if.end.99, %if.end.88, %if.end.87, %if.then.56, %if.end.49, %if.end.36, %if.then.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.arena_object* @new_arena() #0 {
entry:
  %retval = alloca %struct.arena_object*, align 8
  %arenaobj = alloca %struct.arena_object*, align 8
  %excess = alloca i32, align 4
  %address = alloca i8*, align 8
  %i = alloca i32, align 4
  %numarenas = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %0 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8
  %cmp = icmp eq %struct.arena_object* %0, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @maxarenas, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* @maxarenas, align 4
  %shl = shl i32 %2, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, i32* %numarenas, align 4
  %3 = load i32, i32* %numarenas, align 4
  %4 = load i32, i32* @maxarenas, align 4
  %cmp1 = icmp ule i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %cond.end
  store %struct.arena_object* null, %struct.arena_object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load i32, i32* %numarenas, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %conv, 48
  store i64 %mul, i64* %nbytes, align 8
  %6 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %7 = bitcast %struct.arena_object* %6 to i8*
  %8 = load i64, i64* %nbytes, align 8
  %call = call i8* @PyMem_RawRealloc(i8* %7, i64 %8)
  %9 = bitcast i8* %call to %struct.arena_object*
  store %struct.arena_object* %9, %struct.arena_object** %arenaobj, align 8
  %10 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %cmp3 = icmp eq %struct.arena_object* %10, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.arena_object* null, %struct.arena_object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  store %struct.arena_object* %11, %struct.arena_object** @arenas, align 8
  %12 = load i32, i32* @maxarenas, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %numarenas, align 4
  %cmp7 = icmp ult i32 %13, %14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %16, i64 %idxprom
  %address9 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0
  store i64 0, i64* %address9, align 8
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %numarenas, align 4
  %sub = sub i32 %18, 1
  %cmp10 = icmp ult i32 %17, %sub
  br i1 %cmp10, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %add = add i32 %19, 1
  %idxprom13 = zext i32 %add to i64
  %20 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx14 = getelementptr %struct.arena_object, %struct.arena_object* %20, i64 %idxprom13
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.body
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.12
  %cond17 = phi %struct.arena_object* [ %arrayidx14, %cond.true.12 ], [ null, %cond.false.15 ]
  %21 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %21 to i64
  %22 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %22, i64 %idxprom18
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx19, i32 0, i32 5
  store %struct.arena_object* %cond17, %struct.arena_object** %nextarena, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.16
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* @maxarenas, align 4
  %idxprom20 = zext i32 %24 to i64
  %25 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8
  %arrayidx21 = getelementptr %struct.arena_object, %struct.arena_object* %25, i64 %idxprom20
  store %struct.arena_object* %arrayidx21, %struct.arena_object** @unused_arena_objects, align 8
  %26 = load i32, i32* %numarenas, align 4
  store i32 %26, i32* @maxarenas, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %entry
  %27 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8
  store %struct.arena_object* %27, %struct.arena_object** %arenaobj, align 8
  %28 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %nextarena23 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %28, i32 0, i32 5
  %29 = load %struct.arena_object*, %struct.arena_object** %nextarena23, align 8
  store %struct.arena_object* %29, %struct.arena_object** @unused_arena_objects, align 8
  %30 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 1), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8
  %call24 = call i8* %30(i8* %31, i64 262144)
  store i8* %call24, i8** %address, align 8
  %32 = load i8*, i8** %address, align 8
  %cmp25 = icmp eq i8* %32, null
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.22
  %33 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8
  %34 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %nextarena28 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %34, i32 0, i32 5
  store %struct.arena_object* %33, %struct.arena_object** %nextarena28, align 8
  %35 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  store %struct.arena_object* %35, %struct.arena_object** @unused_arena_objects, align 8
  store %struct.arena_object* null, %struct.arena_object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %36 = load i8*, i8** %address, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %address30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %38, i32 0, i32 0
  store i64 %37, i64* %address30, align 8
  %39 = load i64, i64* @narenas_currently_allocated, align 8
  %inc31 = add i64 %39, 1
  store i64 %inc31, i64* @narenas_currently_allocated, align 8
  %40 = load i64, i64* @ntimes_arena_allocated, align 8
  %inc32 = add i64 %40, 1
  store i64 %inc32, i64* @ntimes_arena_allocated, align 8
  %41 = load i64, i64* @narenas_currently_allocated, align 8
  %42 = load i64, i64* @narenas_highwater, align 8
  %cmp33 = icmp ugt i64 %41, %42
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.29
  %43 = load i64, i64* @narenas_currently_allocated, align 8
  store i64 %43, i64* @narenas_highwater, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.29
  %44 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %44, i32 0, i32 4
  store %struct.pool_header* null, %struct.pool_header** %freepools, align 8
  %45 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %address37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %45, i32 0, i32 0
  %46 = load i64, i64* %address37, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %48, i32 0, i32 1
  store i8* %47, i8** %pool_address, align 8
  %49 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 2
  store i32 64, i32* %nfreepools, align 4
  %50 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %address38 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %50, i32 0, i32 0
  %51 = load i64, i64* %address38, align 8
  %and = and i64 %51, 4095
  %conv39 = trunc i64 %and to i32
  store i32 %conv39, i32* %excess, align 4
  %52 = load i32, i32* %excess, align 4
  %cmp40 = icmp ne i32 %52, 0
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.36
  %53 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %nfreepools43 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 2
  %54 = load i32, i32* %nfreepools43, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %nfreepools43, align 4
  %55 = load i32, i32* %excess, align 4
  %sub44 = sub i32 4096, %55
  %56 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %pool_address45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %56, i32 0, i32 1
  %57 = load i8*, i8** %pool_address45, align 8
  %idx.ext = zext i32 %sub44 to i64
  %add.ptr = getelementptr i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %pool_address45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.36
  %58 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %nfreepools47 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %58, i32 0, i32 2
  %59 = load i32, i32* %nfreepools47, align 4
  %60 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %60, i32 0, i32 3
  store i32 %59, i32* %ntotalpools, align 4
  %61 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8
  store %struct.arena_object* %61, %struct.arena_object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.27, %if.then.5, %if.then.2
  %62 = load %struct.arena_object*, %struct.arena_object** %retval
  ret %struct.arena_object* %62
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_ArenaMmap(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i8* @mmap64(i8* null, i64 %0, i32 3, i32 34, i32 -1, i64 0) #1
  store i8* %call, i8** %ptr, align 8
  %1 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_ArenaMunmap(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i32 @munmap(i8* %0, i64 %1) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #4

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
