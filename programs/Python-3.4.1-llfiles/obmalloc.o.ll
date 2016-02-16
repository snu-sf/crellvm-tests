; ModuleID = 'obmalloc.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMemAllocator = type { i8*, i8* (i8*, i64)*, i8* (i8*, i8*, i64)*, void (i8*, i8*)* }
%struct.PyObjectArenaAllocator = type { i8*, i8* (i8*, i64)*, void (i8*, i8*, i64)* }
%struct.arena_object = type { i64, i8*, i32, i32, %struct.pool_header*, %struct.arena_object*, %struct.arena_object* }
%struct.pool_header = type { %union.anon, i8*, %struct.pool_header*, %struct.pool_header*, i32, i32, i32, i32 }
%union.anon = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_PyMem_Raw = internal unnamed_addr global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyMem_RawMalloc, i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, void (i8*, i8*)* @_PyMem_RawFree }, align 8
@_PyMem = internal unnamed_addr global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyMem_RawMalloc, i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, void (i8*, i8*)* @_PyMem_RawFree }, align 8
@_PyObject = internal unnamed_addr global %struct.PyMemAllocator { i8* null, i8* (i8*, i64)* @_PyObject_Malloc, i8* (i8*, i8*, i64)* @_PyObject_Realloc, void (i8*, i8*)* @_PyObject_Free }, align 8
@_PyObject_Arena = internal unnamed_addr global %struct.PyObjectArenaAllocator { i8* null, i8* (i8*, i64)* @_PyObject_ArenaMmap, void (i8*, i8*, i64)* @_PyObject_ArenaMunmap }, align 8
@_Py_AllocatedBlocks = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%d %ss * %zd bytes each\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%48s \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Small block threshold = %d, in %u size classes.\0A\00", align 1
@maxarenas = internal unnamed_addr global i32 0, align 4
@arenas = internal unnamed_addr global %struct.arena_object* null, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"class   size   num pools   blocks in use  avail blocks\0A-----   ----   ---------   -------------  ------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%5u %6u %11zu %15zu %13zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"# arenas allocated total\00", align 1
@ntimes_arena_allocated = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"# arenas reclaimed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"# arenas highwater mark\00", align 1
@narenas_highwater = internal unnamed_addr global i64 0, align 8
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
@usable_arenas = internal unnamed_addr global %struct.arena_object* null, align 8
@unused_arena_objects = internal unnamed_addr global %struct.arena_object* null, align 8
@narenas_currently_allocated = internal unnamed_addr global i64 0, align 8

; Function Attrs: nounwind readnone uwtable
define void @PyMem_SetupDebugHooks() #0 {
entry:
  ret void, !dbg !373
}

; Function Attrs: nounwind uwtable
define void @PyMem_GetAllocator(i32 %domain, %struct.PyMemAllocator* nocapture %allocator) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %domain, i64 0, metadata !84, metadata !374), !dbg !375
  tail call void @llvm.dbg.value(metadata %struct.PyMemAllocator* %allocator, i64 0, metadata !85, metadata !374), !dbg !376
  switch i32 %domain, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ], !dbg !377

sw.bb:                                            ; preds = %entry
  %0 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !378
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i64 32, i32 8, i1 false), !dbg !378, !tbaa.struct !380
  br label %sw.epilog, !dbg !385

sw.bb.1:                                          ; preds = %entry
  %1 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !386
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i64 32, i32 8, i1 false), !dbg !386, !tbaa.struct !380
  br label %sw.epilog, !dbg !387

sw.bb.2:                                          ; preds = %entry
  %2 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !388
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i64 32, i32 8, i1 false), !dbg !388, !tbaa.struct !380
  br label %sw.epilog, !dbg !389

sw.default:                                       ; preds = %entry
  %3 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !390
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false), !dbg !391
  br label %sw.epilog, !dbg !390

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !392
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @PyMem_SetAllocator(i32 %domain, %struct.PyMemAllocator* nocapture readonly %allocator) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %domain, i64 0, metadata !88, metadata !374), !dbg !393
  tail call void @llvm.dbg.value(metadata %struct.PyMemAllocator* %allocator, i64 0, metadata !89, metadata !374), !dbg !394
  switch i32 %domain, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ], !dbg !395

sw.bb:                                            ; preds = %entry
  %0 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !396
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i8* %0, i64 32, i32 8, i1 false), !dbg !396, !tbaa.struct !380
  br label %sw.epilog, !dbg !398

sw.bb.1:                                          ; preds = %entry
  %1 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !399
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i8* %1, i64 32, i32 8, i1 false), !dbg !399, !tbaa.struct !380
  br label %sw.epilog, !dbg !400

sw.bb.2:                                          ; preds = %entry
  %2 = bitcast %struct.PyMemAllocator* %allocator to i8*, !dbg !401
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i8* %2, i64 32, i32 8, i1 false), !dbg !401, !tbaa.struct !380
  br label %sw.epilog, !dbg !402

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !403
}

; Function Attrs: nounwind uwtable
define void @PyObject_GetArenaAllocator(%struct.PyObjectArenaAllocator* nocapture %allocator) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyObjectArenaAllocator* %allocator, i64 0, metadata !105, metadata !374), !dbg !404
  %0 = bitcast %struct.PyObjectArenaAllocator* %allocator to i8*, !dbg !405
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i64 24, i32 8, i1 false), !dbg !405, !tbaa.struct !406
  ret void, !dbg !407
}

; Function Attrs: nounwind uwtable
define void @PyObject_SetArenaAllocator(%struct.PyObjectArenaAllocator* nocapture readonly %allocator) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyObjectArenaAllocator* %allocator, i64 0, metadata !108, metadata !374), !dbg !408
  %0 = bitcast %struct.PyObjectArenaAllocator* %allocator to i8*, !dbg !409
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i8* %0, i64 24, i32 8, i1 false), !dbg !409, !tbaa.struct !406
  ret void, !dbg !410
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawMalloc(i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !113, metadata !374), !dbg !411
  %cmp = icmp slt i64 %size, 0, !dbg !412
  br i1 %cmp, label %return, label %if.end, !dbg !414

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 1), align 8, !dbg !415, !tbaa !416
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !418, !tbaa !419
  %call = tail call i8* %0(i8* %1, i64 %size) #3, !dbg !420
  br label %return, !dbg !421

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !422
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawRealloc(i8* %ptr, i64 %new_size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !116, metadata !374), !dbg !423
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !117, metadata !374), !dbg !424
  %cmp = icmp slt i64 %new_size, 0, !dbg !425
  br i1 %cmp, label %return, label %if.end, !dbg !427

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 2), align 8, !dbg !428, !tbaa !429
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !430, !tbaa !419
  %call = tail call i8* %0(i8* %1, i8* %ptr, i64 %new_size) #3, !dbg !431
  br label %return, !dbg !432

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !433
}

; Function Attrs: nounwind uwtable
define void @PyMem_RawFree(i8* %ptr) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !122, metadata !374), !dbg !434
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 3), align 8, !dbg !435, !tbaa !436
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !437, !tbaa !419
  tail call void %0(i8* %1, i8* %ptr) #3, !dbg !438
  ret void, !dbg !439
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Malloc(i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !125, metadata !374), !dbg !440
  %cmp = icmp slt i64 %size, 0, !dbg !441
  br i1 %cmp, label %return, label %if.end, !dbg !443

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 1), align 8, !dbg !444, !tbaa !416
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 0), align 8, !dbg !445, !tbaa !419
  %call = tail call i8* %0(i8* %1, i64 %size) #3, !dbg !446
  br label %return, !dbg !447

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !448
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Realloc(i8* %ptr, i64 %new_size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !128, metadata !374), !dbg !449
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !129, metadata !374), !dbg !450
  %cmp = icmp slt i64 %new_size, 0, !dbg !451
  br i1 %cmp, label %return, label %if.end, !dbg !453

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 2), align 8, !dbg !454, !tbaa !429
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 0), align 8, !dbg !455, !tbaa !419
  %call = tail call i8* %0(i8* %1, i8* %ptr, i64 %new_size) #3, !dbg !456
  br label %return, !dbg !457

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !458
}

; Function Attrs: nounwind uwtable
define void @PyMem_Free(i8* %ptr) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !132, metadata !374), !dbg !459
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 3), align 8, !dbg !460, !tbaa !436
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 0), align 8, !dbg !461, !tbaa !419
  tail call void %0(i8* %1, i8* %ptr) #3, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nounwind uwtable
define i8* @_PyMem_RawStrdup(i8* nocapture readonly %str) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !140, metadata !374), !dbg !464
  %call = tail call i64 @strlen(i8* %str) #8, !dbg !465
  %add = add i64 %call, 1, !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !141, metadata !374), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !113, metadata !374) #3, !dbg !468
  %cmp.i = icmp slt i64 %add, 0, !dbg !470
  br i1 %cmp.i, label %cleanup, label %PyMem_RawMalloc.exit, !dbg !471

PyMem_RawMalloc.exit:                             ; preds = %entry
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 1), align 8, !dbg !472, !tbaa !416
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !473, !tbaa !419
  %call.i = tail call i8* %0(i8* %1, i64 %add) #3, !dbg !474
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !142, metadata !374), !dbg !475
  %cmp = icmp eq i8* %call.i, null, !dbg !476
  br i1 %cmp, label %cleanup, label %if.end, !dbg !478

if.end:                                           ; preds = %PyMem_RawMalloc.exit
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* %str, i64 %add, i32 1, i1 false), !dbg !479
  br label %cleanup, !dbg !480

cleanup:                                          ; preds = %entry, %PyMem_RawMalloc.exit, %if.end
  %retval.0 = phi i8* [ %call.i, %if.end ], [ null, %PyMem_RawMalloc.exit ], [ null, %entry ]
  ret i8* %retval.0, !dbg !481
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i8* @_PyMem_Strdup(i8* nocapture readonly %str) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !145, metadata !374), !dbg !482
  %call = tail call i64 @strlen(i8* %str) #8, !dbg !483
  %add = add i64 %call, 1, !dbg !484
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !146, metadata !374), !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !125, metadata !374) #3, !dbg !486
  %cmp.i = icmp slt i64 %add, 0, !dbg !488
  br i1 %cmp.i, label %cleanup, label %PyMem_Malloc.exit, !dbg !489

PyMem_Malloc.exit:                                ; preds = %entry
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 1), align 8, !dbg !490, !tbaa !416
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i64 0, i32 0), align 8, !dbg !491, !tbaa !419
  %call.i = tail call i8* %0(i8* %1, i64 %add) #3, !dbg !492
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !147, metadata !374), !dbg !493
  %cmp = icmp eq i8* %call.i, null, !dbg !494
  br i1 %cmp, label %cleanup, label %if.end, !dbg !496

if.end:                                           ; preds = %PyMem_Malloc.exit
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* %str, i64 %add, i32 1, i1 false), !dbg !497
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %entry, %PyMem_Malloc.exit, %if.end
  %retval.0 = phi i8* [ %call.i, %if.end ], [ null, %PyMem_Malloc.exit ], [ null, %entry ]
  ret i8* %retval.0, !dbg !499
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Malloc(i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !150, metadata !374), !dbg !500
  %cmp = icmp slt i64 %size, 0, !dbg !501
  br i1 %cmp, label %return, label %if.end, !dbg !503

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 1), align 8, !dbg !504, !tbaa !416
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 0), align 8, !dbg !505, !tbaa !419
  %call = tail call i8* %0(i8* %1, i64 %size) #3, !dbg !506
  br label %return, !dbg !507

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !508
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Realloc(i8* %ptr, i64 %new_size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !153, metadata !374), !dbg !509
  tail call void @llvm.dbg.value(metadata i64 %new_size, i64 0, metadata !154, metadata !374), !dbg !510
  %cmp = icmp slt i64 %new_size, 0, !dbg !511
  br i1 %cmp, label %return, label %if.end, !dbg !513

if.end:                                           ; preds = %entry
  %0 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 2), align 8, !dbg !514, !tbaa !429
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 0), align 8, !dbg !515, !tbaa !419
  %call = tail call i8* %0(i8* %1, i8* %ptr, i64 %new_size) #3, !dbg !516
  br label %return, !dbg !517

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !518
}

; Function Attrs: nounwind uwtable
define void @PyObject_Free(i8* %ptr) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !157, metadata !374), !dbg !519
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 3), align 8, !dbg !520, !tbaa !436
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i64 0, i32 0), align 8, !dbg !521, !tbaa !419
  tail call void %0(i8* %1, i8* %ptr) #3, !dbg !522
  ret void, !dbg !523
}

; Function Attrs: nounwind readonly uwtable
define i64 @_Py_GetAllocatedBlocks() #5 {
entry:
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !524, !tbaa !525
  ret i64 %0, !dbg !527
}

; Function Attrs: nounwind uwtable
define void @_PyDebugAllocatorStats(%struct._IO_FILE* nocapture %out, i8* %block_name, i32 %num_blocks, i64 %sizeof_block) #1 {
entry:
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !218, metadata !374), !dbg !528
  tail call void @llvm.dbg.value(metadata i8* %block_name, i64 0, metadata !219, metadata !374), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %num_blocks, i64 0, metadata !220, metadata !374), !dbg !530
  tail call void @llvm.dbg.value(metadata i64 %sizeof_block, i64 0, metadata !221, metadata !374), !dbg !531
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i64 0, i64 0, !dbg !532
  call void @llvm.lifetime.start(i64 128, i8* %0) #3, !dbg !532
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !222, metadata !374), !dbg !533
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i64 0, i64 0, !dbg !534
  call void @llvm.lifetime.start(i64 128, i8* %1) #3, !dbg !534
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !226, metadata !374), !dbg !535
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %0, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %num_blocks, i8* %block_name, i64 %sizeof_block) #3, !dbg !536
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %1, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %0) #3, !dbg !537
  %conv = sext i32 %num_blocks to i64, !dbg !538
  %mul = mul i64 %conv, %sizeof_block, !dbg !539
  %call5 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* %1, i64 %mul), !dbg !540
  call void @llvm.lifetime.end(i64 128, i8* %1) #3, !dbg !541
  call void @llvm.lifetime.end(i64 128, i8* %0) #3, !dbg !541
  ret void, !dbg !541
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @printone(%struct._IO_FILE* nocapture %out, i8* nocapture readonly %msg, i64 %value) #1 {
entry:
  %buf = alloca [100 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !342, metadata !374), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !343, metadata !374), !dbg !543
  tail call void @llvm.dbg.value(metadata i64 %value, i64 0, metadata !344, metadata !374), !dbg !544
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0, !dbg !545
  call void @llvm.lifetime.start(i64 100, i8* %0) #3, !dbg !545
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %buf, metadata !347, metadata !374), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %value, i64 0, metadata !351, metadata !374), !dbg !547
  %call = tail call i32 @fputs(i8* %msg, %struct._IO_FILE* %out) #3, !dbg !548
  %call1 = tail call i64 @strlen(i8* %msg) #8, !dbg !549
  %conv = trunc i64 %call1 to i32, !dbg !551
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !345, metadata !374), !dbg !552
  %cmp.57 = icmp slt i32 %conv, 35, !dbg !553
  br i1 %cmp.57, label %for.body.preheader, label %for.end, !dbg !555

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !556

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.058 = phi i32 [ %inc, %for.body ], [ %conv, %for.body.preheader ]
  %call3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %out) #3, !dbg !556
  %inc = add nsw i32 %i.058, 1, !dbg !557
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !345, metadata !374), !dbg !552
  %exitcond = icmp eq i32 %inc, 35, !dbg !555
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !555

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !558

for.end:                                          ; preds = %for.end.loopexit, %entry
  %call4 = tail call i32 @fputc(i32 61, %struct._IO_FILE* %out) #3, !dbg !558
  tail call void @llvm.dbg.value(metadata i32 22, i64 0, metadata !345, metadata !374), !dbg !552
  tail call void @llvm.dbg.value(metadata i32 21, i64 0, metadata !345, metadata !374), !dbg !552
  %arrayidx = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 22, !dbg !559
  store i8 0, i8* %arrayidx, align 2, !dbg !560, !tbaa !561
  tail call void @llvm.dbg.value(metadata i32 20, i64 0, metadata !345, metadata !374), !dbg !552
  %arrayidx7 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 21, !dbg !562
  store i8 10, i8* %arrayidx7, align 1, !dbg !563, !tbaa !561
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !346, metadata !374), !dbg !564
  br label %do.body, !dbg !565

do.body:                                          ; preds = %if.end, %for.end
  %k.0 = phi i32 [ 3, %for.end ], [ %k.1, %if.end ]
  %i.1 = phi i32 [ 20, %for.end ], [ %i.2, %if.end ]
  %value.addr.0 = phi i64 [ %value, %for.end ], [ %div, %if.end ]
  %div = udiv i64 %value.addr.0, 10, !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !352, metadata !374), !dbg !567
  %1 = mul i64 %div, -10, !dbg !568
  %sub = add i64 %1, %value.addr.0, !dbg !568
  %conv8 = trunc i64 %sub to i8, !dbg !569
  tail call void @llvm.dbg.value(metadata i64 %div, i64 0, metadata !344, metadata !374), !dbg !544
  %add = add i8 %conv8, 48, !dbg !570
  %dec10 = add i32 %i.1, -1, !dbg !571
  tail call void @llvm.dbg.value(metadata i32 %dec10, i64 0, metadata !345, metadata !374), !dbg !552
  %idxprom11 = sext i32 %i.1 to i64, !dbg !572
  %arrayidx12 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %idxprom11, !dbg !572
  store i8 %add, i8* %arrayidx12, align 1, !dbg !573, !tbaa !561
  %dec13 = add i32 %k.0, -1, !dbg !574
  tail call void @llvm.dbg.value(metadata i32 %dec13, i64 0, metadata !346, metadata !374), !dbg !564
  %cmp14 = icmp eq i32 %dec13, 0, !dbg !575
  %2 = icmp ugt i64 %value.addr.0, 9, !dbg !577
  %or.cond = and i1 %cmp14, %2, !dbg !579
  %cmp17 = icmp sgt i32 %dec10, -1, !dbg !580
  %or.cond31 = and i1 %cmp17, %or.cond, !dbg !579
  br i1 %or.cond31, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %do.body
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !346, metadata !374), !dbg !564
  %dec19 = add i32 %i.1, -2, !dbg !581
  tail call void @llvm.dbg.value(metadata i32 %dec19, i64 0, metadata !345, metadata !374), !dbg !552
  %idxprom20 = sext i32 %dec10 to i64, !dbg !583
  %arrayidx21 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %idxprom20, !dbg !583
  store i8 44, i8* %arrayidx21, align 1, !dbg !584, !tbaa !561
  br label %if.end, !dbg !585

if.end:                                           ; preds = %if.then, %do.body
  %k.1 = phi i32 [ 3, %if.then ], [ %dec13, %do.body ]
  %i.2 = phi i32 [ %dec19, %if.then ], [ %dec10, %do.body ]
  %cmp23 = icmp sgt i32 %i.2, -1, !dbg !586
  %3 = and i1 %2, %cmp23, !dbg !587
  br i1 %3, label %do.body, label %while.cond.preheader, !dbg !588

while.cond.preheader:                             ; preds = %if.end
  %cmp23.lcssa = phi i1 [ %cmp23, %if.end ]
  %i.2.lcssa = phi i32 [ %i.2, %if.end ]
  br i1 %cmp23.lcssa, label %while.body.lr.ph, label %while.end, !dbg !590

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = sext i32 %i.2.lcssa to i64, !dbg !590
  %5 = sext i32 %i.2.lcssa to i64, !dbg !590
  %6 = icmp slt i64 %5, 0, !dbg !590
  %7 = select i1 %6, i64 %5, i64 0, !dbg !590
  %8 = xor i64 %7, -1, !dbg !590
  %9 = add nsw i64 %5, %8, !dbg !590
  %backedge.overflow = icmp eq i64 %9, -2
  br i1 %backedge.overflow, label %while.body.preheader, label %overflow.checked, !dbg !590

overflow.checked:                                 ; preds = %while.body.lr.ph
  %10 = add nsw i64 %9, 2, !dbg !590
  %end.idx = add nsw i64 %9, 2
  %n.vec = and i64 %10, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = sub nsw i64 %4, %n.vec, !dbg !590
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader, !dbg !590

vector.body.preheader:                            ; preds = %overflow.checked
  %11 = sext i32 %i.2.lcssa to i64
  %12 = icmp slt i64 %11, 0
  %13 = select i1 %12, i64 %11, i64 0
  %14 = xor i64 %13, -1
  %15 = add nsw i64 %11, %14
  %16 = add nsw i64 %15, -30
  %17 = lshr i64 %16, 5
  %18 = add nuw nsw i64 %17, 1
  %xtraiter = and i64 %18, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.body.preheader.split, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol.preheader, %vector.body.prol
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body.prol ], [ %xtraiter, %vector.body.prol.preheader ]
  %offset.idx.prol = sub i64 %4, %index.prol
  %19 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %offset.idx.prol, !dbg !591
  %20 = getelementptr i8, i8* %19, i64 -15, !dbg !592
  %21 = bitcast i8* %20 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %21, align 1, !dbg !592, !tbaa !561
  %22 = getelementptr i8, i8* %19, i64 -31, !dbg !592
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %23, align 1, !dbg !592, !tbaa !561
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body.preheader.split.loopexit, label %vector.body.prol, !llvm.loop !593

vector.body.preheader.split.loopexit:             ; preds = %vector.body.prol
  %index.next.prol.lcssa = phi i64 [ %index.next.prol, %vector.body.prol ]
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.preheader.split.loopexit, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol.lcssa, %vector.body.preheader.split.loopexit ]
  %24 = icmp ult i64 %16, 96
  br i1 %24, label %middle.block.loopexit, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.3, %vector.body ]
  %offset.idx = sub i64 %4, %index
  %25 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %offset.idx, !dbg !591
  %26 = getelementptr i8, i8* %25, i64 -15, !dbg !592
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %27, align 1, !dbg !592, !tbaa !561
  %28 = getelementptr i8, i8* %25, i64 -31, !dbg !592
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %29, align 1, !dbg !592, !tbaa !561
  %index.next = add i64 %index, 32
  %offset.idx.1 = sub i64 %4, %index.next
  %30 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %offset.idx.1, !dbg !591
  %31 = getelementptr i8, i8* %30, i64 -15, !dbg !592
  %32 = bitcast i8* %31 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %32, align 1, !dbg !592, !tbaa !561
  %33 = getelementptr i8, i8* %30, i64 -31, !dbg !592
  %34 = bitcast i8* %33 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %34, align 1, !dbg !592, !tbaa !561
  %index.next.1 = add i64 %index, 64
  %offset.idx.2 = sub i64 %4, %index.next.1
  %35 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %offset.idx.2, !dbg !591
  %36 = getelementptr i8, i8* %35, i64 -15, !dbg !592
  %37 = bitcast i8* %36 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %37, align 1, !dbg !592, !tbaa !561
  %38 = getelementptr i8, i8* %35, i64 -31, !dbg !592
  %39 = bitcast i8* %38 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %39, align 1, !dbg !592, !tbaa !561
  %index.next.2 = add i64 %index, 96
  %offset.idx.3 = sub i64 %4, %index.next.2
  %40 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %offset.idx.3, !dbg !591
  %41 = getelementptr i8, i8* %40, i64 -15, !dbg !592
  %42 = bitcast i8* %41 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %42, align 1, !dbg !592, !tbaa !561
  %43 = getelementptr i8, i8* %40, i64 -31, !dbg !592
  %44 = bitcast i8* %43 to <16 x i8>*, !dbg !592
  store <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8>* %44, align 1, !dbg !592, !tbaa !561
  %index.next.3 = add i64 %index, 128
  %45 = icmp eq i64 %index.next.3, %n.vec
  br i1 %45, label %middle.block.loopexit.unr-lcssa, label %vector.body, !llvm.loop !595

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %vector.body.preheader.split, %middle.block.loopexit.unr-lcssa
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i64 [ %4, %overflow.checked ], [ %ind.end, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %new.indc.resume.val
  br i1 %cmp.n, label %while.end, label %while.body.preheader, !dbg !590

while.body.preheader:                             ; preds = %middle.block, %while.body.lr.ph
  %indvars.iv.ph = phi i64 [ %4, %while.body.lr.ph ], [ %resume.val, %middle.block ]
  br label %while.body, !dbg !590

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ %indvars.iv.ph, %while.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !590
  %arrayidx29 = getelementptr [100 x i8], [100 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !591
  store i8 32, i8* %arrayidx29, align 1, !dbg !592, !tbaa !561
  %cmp25 = icmp sgt i64 %indvars.iv, 0, !dbg !598
  br i1 %cmp25, label %while.body, label %while.end.loopexit, !dbg !590, !llvm.loop !599

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !601

while.end:                                        ; preds = %while.end.loopexit, %middle.block, %while.cond.preheader
  %call30 = call i32 @fputs(i8* %0, %struct._IO_FILE* %out) #3, !dbg !601
  call void @llvm.lifetime.end(i64 100, i8* %0) #3, !dbg !602
  ret i64 %value, !dbg !603
}

; Function Attrs: nounwind uwtable
define void @_PyObject_DebugMallocStats(%struct._IO_FILE* nocapture %out) #1 {
entry:
  %numpools = alloca [64 x i64], align 16
  %0 = bitcast [64 x i64]* %numpools to i8*
  %numblocks = alloca [64 x i64], align 16
  %1 = bitcast [64 x i64]* %numblocks to i8*
  %numfreeblocks = alloca [64 x i64], align 16
  %2 = bitcast [64 x i64]* %numfreeblocks to i8*
  %buf = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !231, metadata !374), !dbg !604
  tail call void @llvm.dbg.value(metadata i32 64, i64 0, metadata !233, metadata !374), !dbg !605
  call void @llvm.lifetime.start(i64 512, i8* %0) #3, !dbg !606
  tail call void @llvm.dbg.declare(metadata [64 x i64]* %numpools, metadata !235, metadata !374), !dbg !607
  call void @llvm.lifetime.start(i64 512, i8* %1) #3, !dbg !608
  tail call void @llvm.dbg.declare(metadata [64 x i64]* %numblocks, metadata !239, metadata !374), !dbg !609
  call void @llvm.lifetime.start(i64 512, i8* %2) #3, !dbg !610
  tail call void @llvm.dbg.declare(metadata [64 x i64]* %numfreeblocks, metadata !240, metadata !374), !dbg !611
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !241, metadata !374), !dbg !612
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !242, metadata !374), !dbg !613
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !243, metadata !374), !dbg !614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !244, metadata !374), !dbg !615
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !245, metadata !374), !dbg !616
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !246, metadata !374), !dbg !617
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !247, metadata !374), !dbg !618
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !619
  call void @llvm.lifetime.start(i64 128, i8* %3) #3, !dbg !619
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !249, metadata !374), !dbg !620
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 512, i32 64) #3, !dbg !621
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !232, metadata !374), !dbg !622
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 512, i32 16, i1 false), !dbg !623
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 512, i32 16, i1 false), !dbg !626
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 512, i32 16, i1 false), !dbg !627
  %4 = load i32, i32* @maxarenas, align 4, !dbg !628, !tbaa !629
  %cmp6.226 = icmp eq i32 %4, 0, !dbg !631
  br i1 %cmp6.226, label %for.end.57, label %for.body.7.lr.ph, !dbg !632

for.body.7.lr.ph:                                 ; preds = %entry
  %5 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !633, !tbaa !381
  %6 = zext i32 %4 to i64, !dbg !632
  br label %for.body.7, !dbg !632

for.body.7:                                       ; preds = %for.body.7.lr.ph, %cleanup.51
  %indvars.iv = phi i64 [ 0, %for.body.7.lr.ph ], [ %indvars.iv.next, %cleanup.51 ]
  %numfreepools.0229 = phi i32 [ 0, %for.body.7.lr.ph ], [ %numfreepools.1, %cleanup.51 ]
  %arena_alignment.0228 = phi i64 [ 0, %for.body.7.lr.ph ], [ %arena_alignment.2, %cleanup.51 ]
  %narenas.0227 = phi i64 [ 0, %for.body.7.lr.ph ], [ %narenas.1, %cleanup.51 ]
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %5, i64 %indvars.iv, i32 0, !dbg !634
  %7 = load i64, i64* %address, align 8, !dbg !634, !tbaa !635
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !254, metadata !374), !dbg !637
  %cmp13 = icmp eq i64 %7, 0, !dbg !638
  br i1 %cmp13, label %cleanup.51, label %if.end, !dbg !640

if.end:                                           ; preds = %for.body.7
  %add = add i64 %narenas.0227, 1, !dbg !641
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !247, metadata !374), !dbg !618
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %5, i64 %indvars.iv, i32 2, !dbg !642
  %8 = load i32, i32* %nfreepools, align 4, !dbg !642, !tbaa !643
  %add16 = add i32 %8, %numfreepools.0229, !dbg !644
  tail call void @llvm.dbg.value(metadata i32 %add16, i64 0, metadata !243, metadata !374), !dbg !614
  %and = and i64 %7, 4095, !dbg !645
  %tobool = icmp eq i64 %and, 0, !dbg !645
  br i1 %tobool, label %if.end.21, label %if.then.17, !dbg !647

if.then.17:                                       ; preds = %if.end
  %add18 = add i64 %arena_alignment.0228, 4096, !dbg !648
  tail call void @llvm.dbg.value(metadata i64 %add18, i64 0, metadata !244, metadata !374), !dbg !615
  %and19217 = add i64 %7, 4096, !dbg !650
  %add20 = and i64 %and19217, -4096, !dbg !650
  tail call void @llvm.dbg.value(metadata i64 %add20, i64 0, metadata !254, metadata !374), !dbg !637
  br label %if.end.21, !dbg !651

if.end.21:                                        ; preds = %if.end, %if.then.17
  %base.0 = phi i64 [ %add20, %if.then.17 ], [ %7, %if.end ]
  %arena_alignment.1 = phi i64 [ %add18, %if.then.17 ], [ %arena_alignment.0228, %if.end ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !374), !dbg !652
  %pool_address.223 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %5, i64 %indvars.iv, i32 1, !dbg !653
  %9 = bitcast i8** %pool_address.223 to i64*, !dbg !653
  %10 = load i64, i64* %9, align 8, !dbg !653, !tbaa !654
  %cmp25.224 = icmp ult i64 %base.0, %10, !dbg !655
  br i1 %cmp25.224, label %for.body.26.preheader, label %cleanup.51, !dbg !656

for.body.26.preheader:                            ; preds = %if.end.21
  br label %for.body.26, !dbg !657

for.body.26:                                      ; preds = %for.body.26.preheader, %cleanup
  %base.1225 = phi i64 [ %add49, %cleanup ], [ %base.0, %for.body.26.preheader ]
  %11 = inttoptr i64 %base.1225 to %struct.pool_header*, !dbg !657
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %11, i64 0, metadata !255, metadata !374), !dbg !658
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i64 0, i32 5, !dbg !659
  %12 = load i32, i32* %szidx, align 4, !dbg !659, !tbaa !660
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !259, metadata !374), !dbg !662
  %count = inttoptr i64 %base.1225 to i32*, !dbg !663
  %13 = load i32, i32* %count, align 4, !dbg !665, !tbaa !629
  %cmp27 = icmp eq i32 %13, 0, !dbg !666
  br i1 %cmp27, label %cleanup, label %if.end.29, !dbg !667

if.end.29:                                        ; preds = %for.body.26
  %idxprom30 = zext i32 %12 to i64, !dbg !668
  %arrayidx31 = getelementptr [64 x i64], [64 x i64]* %numpools, i64 0, i64 %idxprom30, !dbg !668
  %14 = load i64, i64* %arrayidx31, align 8, !dbg !669, !tbaa !525
  %inc32 = add i64 %14, 1, !dbg !669
  store i64 %inc32, i64* %arrayidx31, align 8, !dbg !669, !tbaa !525
  %conv = zext i32 %13 to i64, !dbg !670
  %arrayidx36 = getelementptr [64 x i64], [64 x i64]* %numblocks, i64 0, i64 %idxprom30, !dbg !671
  %15 = load i64, i64* %arrayidx36, align 8, !dbg !672, !tbaa !525
  %add37 = add i64 %15, %conv, !dbg !672
  store i64 %add37, i64* %arrayidx36, align 8, !dbg !672, !tbaa !525
  %add38 = shl i32 %12, 3, !dbg !673
  %shl = add i32 %add38, 8, !dbg !673
  %div = udiv i32 4048, %shl, !dbg !673
  %sub = sub i32 %div, %13, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !260, metadata !374), !dbg !675
  %conv41 = zext i32 %sub to i64, !dbg !676
  %arrayidx43 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i64 0, i64 %idxprom30, !dbg !677
  %16 = load i64, i64* %arrayidx43, align 8, !dbg !678, !tbaa !525
  %add44 = add i64 %conv41, %16, !dbg !678
  store i64 %add44, i64* %arrayidx43, align 8, !dbg !678, !tbaa !525
  br label %cleanup, !dbg !679

cleanup:                                          ; preds = %for.body.26, %if.end.29
  %add49 = add i64 %base.1225, 4096, !dbg !680
  tail call void @llvm.dbg.value(metadata i64 %add49, i64 0, metadata !254, metadata !374), !dbg !637
  %cmp25 = icmp ult i64 %add49, %10, !dbg !655
  br i1 %cmp25, label %for.body.26, label %cleanup.51.loopexit, !dbg !656

cleanup.51.loopexit:                              ; preds = %cleanup
  br label %cleanup.51, !dbg !632

cleanup.51:                                       ; preds = %cleanup.51.loopexit, %if.end.21, %for.body.7
  %narenas.1 = phi i64 [ %narenas.0227, %for.body.7 ], [ %add, %if.end.21 ], [ %add, %cleanup.51.loopexit ]
  %arena_alignment.2 = phi i64 [ %arena_alignment.0228, %for.body.7 ], [ %arena_alignment.1, %if.end.21 ], [ %arena_alignment.1, %cleanup.51.loopexit ]
  %numfreepools.1 = phi i32 [ %numfreepools.0229, %for.body.7 ], [ %add16, %if.end.21 ], [ %add16, %cleanup.51.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !632
  %cmp6 = icmp ult i64 %indvars.iv.next, %6, !dbg !631
  br i1 %cmp6, label %for.body.7, label %for.end.57.loopexit, !dbg !632

for.end.57.loopexit:                              ; preds = %cleanup.51
  %numfreepools.1.lcssa = phi i32 [ %numfreepools.1, %cleanup.51 ]
  %arena_alignment.2.lcssa = phi i64 [ %arena_alignment.2, %cleanup.51 ]
  %narenas.1.lcssa = phi i64 [ %narenas.1, %cleanup.51 ]
  br label %for.end.57, !dbg !681

for.end.57:                                       ; preds = %for.end.57.loopexit, %entry
  %numfreepools.0.lcssa = phi i32 [ 0, %entry ], [ %numfreepools.1.lcssa, %for.end.57.loopexit ]
  %arena_alignment.0.lcssa = phi i64 [ 0, %entry ], [ %arena_alignment.2.lcssa, %for.end.57.loopexit ]
  %narenas.0.lcssa = phi i64 [ 0, %entry ], [ %narenas.1.lcssa, %for.end.57.loopexit ]
  %call58 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out) #3, !dbg !681
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i64 110, i64 1, %struct._IO_FILE* %out), !dbg !682
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !232, metadata !374), !dbg !622
  br label %for.cond.60.outer, !dbg !683

for.cond.60.outer:                                ; preds = %if.end.76, %for.end.57
  %quantization.0.ph = phi i64 [ %add87, %if.end.76 ], [ 0, %for.end.57 ]
  %pool_header_bytes.0.ph = phi i64 [ %add84, %if.end.76 ], [ 0, %for.end.57 ]
  %available_bytes.0.ph = phi i64 [ %add82, %if.end.76 ], [ 0, %for.end.57 ]
  %allocated_bytes.0.ph = phi i64 [ %add79, %if.end.76 ], [ 0, %for.end.57 ]
  %i.2.ph = phi i32 [ %add71.lcssa, %if.end.76 ], [ 0, %for.end.57 ]
  br label %for.cond.60, !dbg !684

for.cond.60:                                      ; preds = %for.cond.60.outer, %for.body.63
  %i.2 = phi i32 [ %add71, %for.body.63 ], [ %i.2.ph, %for.cond.60.outer ]
  %cmp61 = icmp ult i32 %i.2, 64, !dbg !684
  br i1 %cmp61, label %for.body.63, label %for.end.96, !dbg !685

for.body.63:                                      ; preds = %for.cond.60
  %idxprom65 = zext i32 %i.2 to i64, !dbg !686
  %arrayidx66 = getelementptr [64 x i64], [64 x i64]* %numpools, i64 0, i64 %idxprom65, !dbg !686
  %18 = load i64, i64* %arrayidx66, align 8, !dbg !686, !tbaa !525
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !261, metadata !374), !dbg !687
  %add71 = add i32 %i.2, 1, !dbg !688
  %cmp73 = icmp eq i64 %18, 0, !dbg !689
  br i1 %cmp73, label %for.cond.60, label %if.end.76, !dbg !691

if.end.76:                                        ; preds = %for.body.63
  %add71.lcssa = phi i32 [ %add71, %for.body.63 ]
  %.lcssa = phi i64 [ %18, %for.body.63 ]
  %idxprom65.lcssa = phi i64 [ %idxprom65, %for.body.63 ]
  %i.2.lcssa240 = phi i32 [ %i.2, %for.body.63 ]
  %arrayidx68.le = getelementptr [64 x i64], [64 x i64]* %numblocks, i64 0, i64 %idxprom65.lcssa, !dbg !692
  %19 = load i64, i64* %arrayidx68.le, align 8, !dbg !692, !tbaa !525
  %arrayidx70.le = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i64 0, i64 %idxprom65.lcssa, !dbg !693
  %20 = load i64, i64* %arrayidx70.le, align 8, !dbg !693, !tbaa !525
  %shl72.le = shl i32 %add71.lcssa, 3, !dbg !688
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %i.2.lcssa240, i32 %shl72.le, i64 %.lcssa, i64 %19, i64 %20) #3, !dbg !694
  %conv78 = zext i32 %shl72.le to i64, !dbg !695
  %mul = mul i64 %19, %conv78, !dbg !696
  %add79 = add i64 %mul, %allocated_bytes.0.ph, !dbg !697
  tail call void @llvm.dbg.value(metadata i64 %add79, i64 0, metadata !241, metadata !374), !dbg !612
  %mul81 = mul i64 %20, %conv78, !dbg !698
  %add82 = add i64 %mul81, %available_bytes.0.ph, !dbg !699
  tail call void @llvm.dbg.value(metadata i64 %add82, i64 0, metadata !242, metadata !374), !dbg !613
  %mul83 = mul i64 %.lcssa, 48, !dbg !700
  %add84 = add i64 %mul83, %pool_header_bytes.0.ph, !dbg !701
  tail call void @llvm.dbg.value(metadata i64 %add84, i64 0, metadata !245, metadata !374), !dbg !616
  %rem = urem i64 4048, %conv78, !dbg !702
  %mul86 = mul i64 %rem, %.lcssa, !dbg !703
  %add87 = add i64 %mul86, %quantization.0.ph, !dbg !704
  tail call void @llvm.dbg.value(metadata i64 %add87, i64 0, metadata !246, metadata !374), !dbg !617
  br label %for.cond.60.outer, !dbg !705

for.end.96:                                       ; preds = %for.cond.60
  %allocated_bytes.0.ph.lcssa = phi i64 [ %allocated_bytes.0.ph, %for.cond.60 ]
  %available_bytes.0.ph.lcssa = phi i64 [ %available_bytes.0.ph, %for.cond.60 ]
  %pool_header_bytes.0.ph.lcssa = phi i64 [ %pool_header_bytes.0.ph, %for.cond.60 ]
  %quantization.0.ph.lcssa = phi i64 [ %quantization.0.ph, %for.cond.60 ]
  %call97 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out) #3, !dbg !706
  %21 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !707, !tbaa !525
  %call98 = tail call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %21), !dbg !708
  %22 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !709, !tbaa !525
  %sub99 = sub i64 %22, %narenas.0.lcssa, !dbg !710
  %call100 = tail call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %sub99), !dbg !711
  %23 = load i64, i64* @narenas_highwater, align 8, !dbg !712, !tbaa !525
  %call101 = tail call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %23), !dbg !713
  %call102 = tail call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %narenas.0.lcssa), !dbg !714
  %call103 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %3, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %narenas.0.lcssa, i32 262144) #3, !dbg !715
  %mul105 = shl i64 %narenas.0.lcssa, 18, !dbg !716
  %call106 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* %3, i64 %mul105), !dbg !717
  %call107 = call i32 @fputc(i32 10, %struct._IO_FILE* %out) #3, !dbg !718
  %call108 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %allocated_bytes.0.ph.lcssa), !dbg !719
  call void @llvm.dbg.value(metadata i64 %call108, i64 0, metadata !248, metadata !374), !dbg !720
  %call109 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 %available_bytes.0.ph.lcssa), !dbg !721
  %add110 = add i64 %call109, %call108, !dbg !722
  call void @llvm.dbg.value(metadata i64 %add110, i64 0, metadata !248, metadata !374), !dbg !720
  %call112 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %3, i64 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %numfreepools.0.lcssa, i32 4096) #3, !dbg !723
  %conv114 = zext i32 %numfreepools.0.lcssa to i64, !dbg !724
  %mul115 = shl nuw nsw i64 %conv114, 12, !dbg !725
  %call116 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* %3, i64 %mul115), !dbg !726
  %add117 = add i64 %add110, %call116, !dbg !727
  call void @llvm.dbg.value(metadata i64 %add117, i64 0, metadata !248, metadata !374), !dbg !720
  %call118 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i64 %pool_header_bytes.0.ph.lcssa), !dbg !728
  %add119 = add i64 %add117, %call118, !dbg !729
  call void @llvm.dbg.value(metadata i64 %add119, i64 0, metadata !248, metadata !374), !dbg !720
  %call120 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 %quantization.0.ph.lcssa), !dbg !730
  %add121 = add i64 %add119, %call120, !dbg !731
  call void @llvm.dbg.value(metadata i64 %add121, i64 0, metadata !248, metadata !374), !dbg !720
  %call122 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i64 %arena_alignment.0.lcssa), !dbg !732
  %add123 = add i64 %add121, %call122, !dbg !733
  call void @llvm.dbg.value(metadata i64 %add123, i64 0, metadata !248, metadata !374), !dbg !720
  %call124 = call fastcc i64 @printone(%struct._IO_FILE* %out, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 %add123), !dbg !734
  call void @llvm.lifetime.end(i64 128, i8* %3) #3, !dbg !735
  call void @llvm.lifetime.end(i64 512, i8* %2) #3, !dbg !735
  call void @llvm.lifetime.end(i64 512, i8* %1) #3, !dbg !735
  call void @llvm.lifetime.end(i64 512, i8* %0) #3, !dbg !735
  ret void, !dbg !735
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind uwtable
define internal noalias i8* @_PyMem_RawMalloc(i8* nocapture readnone %ctx, i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !270, metadata !374), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !271, metadata !374), !dbg !737
  %cmp = icmp eq i64 %size, 0, !dbg !738
  %.size = select i1 %cmp, i64 1, i64 %size, !dbg !740
  tail call void @llvm.dbg.value(metadata i64 %.size, i64 0, metadata !271, metadata !374), !dbg !737
  %call = tail call noalias i8* @malloc(i64 %.size) #3, !dbg !741
  ret i8* %call, !dbg !742
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @_PyMem_RawRealloc(i8* nocapture readnone %ctx, i8* nocapture %ptr, i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !274, metadata !374), !dbg !743
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !275, metadata !374), !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !276, metadata !374), !dbg !745
  %cmp = icmp eq i64 %size, 0, !dbg !746
  %.size = select i1 %cmp, i64 1, i64 %size, !dbg !748
  tail call void @llvm.dbg.value(metadata i64 %.size, i64 0, metadata !276, metadata !374), !dbg !745
  %call = tail call i8* @realloc(i8* %ptr, i64 %.size) #3, !dbg !749
  ret i8* %call, !dbg !750
}

; Function Attrs: nounwind uwtable
define internal void @_PyMem_RawFree(i8* nocapture readnone %ctx, i8* nocapture %ptr) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !279, metadata !374), !dbg !751
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !280, metadata !374), !dbg !752
  tail call void @free(i8* %ptr) #3, !dbg !753
  ret void, !dbg !754
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #7

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) #7

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_Malloc(i8* nocapture readnone %ctx, i64 %nbytes) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !283, metadata !374), !dbg !755
  tail call void @llvm.dbg.value(metadata i64 %nbytes, i64 0, metadata !284, metadata !374), !dbg !756
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !757, !tbaa !525
  %inc = add i64 %0, 1, !dbg !757
  store i64 %inc, i64* @_Py_AllocatedBlocks, align 8, !dbg !757, !tbaa !525
  %sub = add i64 %nbytes, -1, !dbg !758
  %cmp = icmp ult i64 %sub, 512, !dbg !760
  br i1 %cmp, label %if.then, label %redirect, !dbg !761

if.then:                                          ; preds = %entry
  %conv = trunc i64 %sub to i32, !dbg !762
  %shr = lshr i32 %conv, 3, !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %shr, i64 0, metadata !288, metadata !374), !dbg !765
  %add = shl nuw nsw i32 %shr, 1, !dbg !766
  %idxprom = zext i32 %add to i64, !dbg !767
  %arrayidx = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i64 0, i64 %idxprom, !dbg !767
  %1 = load %struct.pool_header*, %struct.pool_header** %arrayidx, align 16, !dbg !767, !tbaa !381
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %1, i64 0, metadata !286, metadata !374), !dbg !768
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 2, !dbg !769
  %2 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8, !dbg !771, !tbaa !773
  %cmp2 = icmp eq %struct.pool_header* %1, %2, !dbg !774
  br i1 %cmp2, label %if.end.23, label %if.then.4, !dbg !775

if.then.4:                                        ; preds = %if.then
  %count = bitcast %struct.pool_header* %1 to i32*, !dbg !776
  %3 = load i32, i32* %count, align 4, !dbg !777, !tbaa !629
  %inc5 = add i32 %3, 1, !dbg !777
  store i32 %inc5, i32* %count, align 4, !dbg !777, !tbaa !629
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 1, !dbg !778
  %4 = load i8*, i8** %freeblock, align 8, !dbg !778, !tbaa !779
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !285, metadata !374), !dbg !780
  %5 = bitcast i8* %4 to i8**, !dbg !781
  %6 = load i8*, i8** %5, align 8, !dbg !783, !tbaa !381
  store i8* %6, i8** %freeblock, align 8, !dbg !784, !tbaa !779
  %cmp7 = icmp eq i8* %6, null, !dbg !785
  br i1 %cmp7, label %if.end, label %cleanup, !dbg !786

if.end:                                           ; preds = %if.then.4
  %nextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 6, !dbg !787
  %7 = load i32, i32* %nextoffset, align 4, !dbg !789, !tbaa !791
  %maxnextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 7, !dbg !792
  %8 = load i32, i32* %maxnextoffset, align 4, !dbg !792, !tbaa !793
  %cmp10 = icmp ugt i32 %7, %8, !dbg !794
  br i1 %cmp10, label %if.end.19, label %if.then.12, !dbg !795

if.then.12:                                       ; preds = %if.end
  %9 = bitcast %struct.pool_header* %1 to i8*, !dbg !796
  %idx.ext = zext i32 %7 to i64, !dbg !797
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !797
  store i8* %add.ptr, i8** %freeblock, align 8, !dbg !798, !tbaa !779
  %add15 = shl nuw i32 %shr, 3, !dbg !799
  %shl = add i32 %add15, 8, !dbg !799
  %add17 = add i32 %shl, %7, !dbg !789
  store i32 %add17, i32* %nextoffset, align 4, !dbg !789, !tbaa !791
  %10 = bitcast i8* %add.ptr to i8**, !dbg !800
  store i8* null, i8** %10, align 8, !dbg !801, !tbaa !381
  br label %cleanup, !dbg !802

if.end.19:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %2, i64 0, metadata !287, metadata !374), !dbg !803
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 3, !dbg !804
  %11 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !804, !tbaa !805
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %11, i64 0, metadata !286, metadata !374), !dbg !768
  %prevpool21 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 3, !dbg !806
  store %struct.pool_header* %11, %struct.pool_header** %prevpool21, align 8, !dbg !807, !tbaa !805
  %nextpool22 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i64 0, i32 2, !dbg !808
  store %struct.pool_header* %2, %struct.pool_header** %nextpool22, align 8, !dbg !809, !tbaa !773
  br label %cleanup, !dbg !810

if.end.23:                                        ; preds = %if.then
  %12 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !811, !tbaa !381
  %cmp24 = icmp eq %struct.arena_object* %12, null, !dbg !813
  br i1 %cmp24, label %if.then.26, label %if.end.31, !dbg !814

if.then.26:                                       ; preds = %if.end.23
  %13 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !815, !tbaa !381
  %cmp.i = icmp eq %struct.arena_object* %13, null, !dbg !818
  br i1 %cmp.i, label %if.then.i, label %if.end.24.i, !dbg !819

if.then.i:                                        ; preds = %if.then.26
  %14 = load i32, i32* @maxarenas, align 4, !dbg !820, !tbaa !629
  %tobool.i = icmp ne i32 %14, 0, !dbg !820
  %shl.i = shl i32 %14, 1, !dbg !821
  %cond.i = select i1 %tobool.i, i32 %shl.i, i32 16, !dbg !820
  tail call void @llvm.dbg.value(metadata i32 %cond.i, i64 0, metadata !301, metadata !374) #3, !dbg !822
  %cmp1.i = icmp ugt i32 %cond.i, %14, !dbg !823
  br i1 %cmp1.i, label %if.end.i, label %new_arena.exit.thread, !dbg !825

if.end.i:                                         ; preds = %if.then.i
  %conv.i = zext i32 %cond.i to i64, !dbg !826
  %mul.i = mul nuw nsw i64 %conv.i, 48, !dbg !827
  tail call void @llvm.dbg.value(metadata i64 %mul.i, i64 0, metadata !302, metadata !374) #3, !dbg !828
  %15 = load i8*, i8** bitcast (%struct.arena_object** @arenas to i8**), align 8, !dbg !829, !tbaa !381
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !116, metadata !374) #3, !dbg !830
  tail call void @llvm.dbg.value(metadata i64 %mul.i, i64 0, metadata !117, metadata !374) #3, !dbg !832
  %16 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 2), align 8, !dbg !833, !tbaa !429
  %17 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !834, !tbaa !419
  %call.i.i = tail call i8* %16(i8* %17, i8* %15, i64 %mul.i) #3, !dbg !835
  %cmp3.i = icmp eq i8* %call.i.i, null, !dbg !836
  br i1 %cmp3.i, label %new_arena.exit.thread, label %if.end.6.i, !dbg !838

if.end.6.i:                                       ; preds = %if.end.i
  store i8* %call.i.i, i8** bitcast (%struct.arena_object** @arenas to i8**), align 8, !dbg !839, !tbaa !381
  %18 = load i32, i32* @maxarenas, align 4, !dbg !840, !tbaa !629
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !298, metadata !374) #3, !dbg !841
  %cmp7.86.i = icmp ugt i32 %cond.i, %18, !dbg !842
  %19 = bitcast i8* %call.i.i to %struct.arena_object*, !dbg !845
  br i1 %cmp7.86.i, label %for.body.lr.ph.i, label %if.end.6.for.end_crit_edge.i, !dbg !845

if.end.6.for.end_crit_edge.i:                     ; preds = %if.end.6.i
  %.pre91.i = zext i32 %18 to i64, !dbg !846
  br label %for.end.i, !dbg !845

for.body.lr.ph.i:                                 ; preds = %if.end.6.i
  %sub.i = add i32 %cond.i, -1, !dbg !847
  %20 = zext i32 %18 to i64, !dbg !845
  %21 = zext i32 %sub.i to i64, !dbg !845
  %22 = sub i32 0, %18, !dbg !845
  %xtraiter = and i32 %22, 1, !dbg !845
  %lcmp.mod = icmp eq i32 %xtraiter, 0, !dbg !845
  br i1 %lcmp.mod, label %for.body.lr.ph.i.split, label %for.body.i.prol, !dbg !845

for.body.i.prol:                                  ; preds = %for.body.lr.ph.i
  %address9.i.prol = getelementptr inbounds %struct.arena_object, %struct.arena_object* %19, i64 %20, i32 0, !dbg !849
  store i64 0, i64* %address9.i.prol, align 8, !dbg !850, !tbaa !635
  %cmp10.i.prol = icmp ult i32 %18, %sub.i, !dbg !851
  %23 = add nuw nsw i64 %20, 1, !dbg !852
  %arrayidx14.i.prol = getelementptr %struct.arena_object, %struct.arena_object* %19, i64 %23, !dbg !853
  %cond17.i.prol = select i1 %cmp10.i.prol, %struct.arena_object* %arrayidx14.i.prol, %struct.arena_object* null, !dbg !854
  %nextarena.i.prol = getelementptr inbounds %struct.arena_object, %struct.arena_object* %19, i64 %20, i32 5, !dbg !855
  store %struct.arena_object* %cond17.i.prol, %struct.arena_object** %nextarena.i.prol, align 8, !dbg !856, !tbaa !857
  %.pre89.i.prol = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !846, !tbaa !381
  br label %for.body.lr.ph.i.split, !dbg !845

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i, %for.body.i.prol
  %.pre89.i.lcssa.unr = phi %struct.arena_object* [ undef, %for.body.lr.ph.i ], [ %.pre89.i.prol, %for.body.i.prol ]
  %.unr = phi %struct.arena_object* [ %19, %for.body.lr.ph.i ], [ %.pre89.i.prol, %for.body.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %20, %for.body.lr.ph.i ], [ %23, %for.body.i.prol ]
  %24 = icmp eq i32 %sub.i, %18, !dbg !845
  br i1 %24, label %for.end.i.loopexit, label %for.body.lr.ph.i.split.split, !dbg !845

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i, !dbg !845

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %25 = phi %struct.arena_object* [ %.unr, %for.body.lr.ph.i.split.split ], [ %.pre89.i.1, %for.body.i ], !dbg !858
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.split.split ], [ %27, %for.body.i ], !dbg !859
  %address9.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %25, i64 %indvars.iv.i, i32 0, !dbg !849
  store i64 0, i64* %address9.i, align 8, !dbg !850, !tbaa !635
  %cmp10.i = icmp ult i64 %indvars.iv.i, %21, !dbg !851
  %26 = add nuw nsw i64 %indvars.iv.i, 1, !dbg !852
  %arrayidx14.i = getelementptr %struct.arena_object, %struct.arena_object* %25, i64 %26, !dbg !853
  %cond17.i = select i1 %cmp10.i, %struct.arena_object* %arrayidx14.i, %struct.arena_object* null, !dbg !854
  %nextarena.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %25, i64 %indvars.iv.i, i32 5, !dbg !855
  store %struct.arena_object* %cond17.i, %struct.arena_object** %nextarena.i, align 8, !dbg !856, !tbaa !857
  %.pre89.i = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !846, !tbaa !381
  %address9.i.1 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %.pre89.i, i64 %26, i32 0, !dbg !849
  store i64 0, i64* %address9.i.1, align 8, !dbg !850, !tbaa !635
  %cmp10.i.1 = icmp ult i64 %26, %21, !dbg !851
  %27 = add nsw i64 %indvars.iv.i, 2, !dbg !852
  %arrayidx14.i.1 = getelementptr %struct.arena_object, %struct.arena_object* %.pre89.i, i64 %27, !dbg !853
  %cond17.i.1 = select i1 %cmp10.i.1, %struct.arena_object* %arrayidx14.i.1, %struct.arena_object* null, !dbg !854
  %nextarena.i.1 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %.pre89.i, i64 %26, i32 5, !dbg !855
  store %struct.arena_object* %cond17.i.1, %struct.arena_object** %nextarena.i.1, align 8, !dbg !856, !tbaa !857
  %lftr.wideiv.i.1 = trunc i64 %27 to i32, !dbg !845
  %exitcond.i.1 = icmp eq i32 %lftr.wideiv.i.1, %cond.i, !dbg !845
  %.pre89.i.1 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !846, !tbaa !381
  br i1 %exitcond.i.1, label %for.end.i.loopexit.unr-lcssa, label %for.body.i, !dbg !845

for.end.i.loopexit.unr-lcssa:                     ; preds = %for.body.i
  %.pre89.i.1.lcssa = phi %struct.arena_object* [ %.pre89.i.1, %for.body.i ]
  br label %for.end.i.loopexit, !dbg !846

for.end.i.loopexit:                               ; preds = %for.body.lr.ph.i.split, %for.end.i.loopexit.unr-lcssa
  %.pre89.i.lcssa = phi %struct.arena_object* [ %.pre89.i.lcssa.unr, %for.body.lr.ph.i.split ], [ %.pre89.i.1.lcssa, %for.end.i.loopexit.unr-lcssa ]
  br label %for.end.i, !dbg !846

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end.6.for.end_crit_edge.i
  %idxprom20.pre-phi.i = phi i64 [ %.pre91.i, %if.end.6.for.end_crit_edge.i ], [ %20, %for.end.i.loopexit ], !dbg !846
  %28 = phi %struct.arena_object* [ %19, %if.end.6.for.end_crit_edge.i ], [ %.pre89.i.lcssa, %for.end.i.loopexit ], !dbg !846
  %arrayidx21.i = getelementptr %struct.arena_object, %struct.arena_object* %28, i64 %idxprom20.pre-phi.i, !dbg !846
  store %struct.arena_object* %arrayidx21.i, %struct.arena_object** @unused_arena_objects, align 8, !dbg !860, !tbaa !381
  store i32 %cond.i, i32* @maxarenas, align 4, !dbg !861, !tbaa !629
  br label %if.end.24.i, !dbg !859

if.end.24.i:                                      ; preds = %for.end.i, %if.then.26
  %29 = phi %struct.arena_object* [ %arrayidx21.i, %for.end.i ], [ %13, %if.then.26 ], !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.arena_object* %29, i64 0, metadata !295, metadata !374) #3, !dbg !863
  %nextarena25.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 5, !dbg !864
  %30 = bitcast %struct.arena_object** %nextarena25.i to i64*, !dbg !864
  %31 = load i64, i64* %30, align 8, !dbg !864, !tbaa !857
  store i64 %31, i64* bitcast (%struct.arena_object** @unused_arena_objects to i64*), align 8, !dbg !865, !tbaa !381
  %32 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i64 0, i32 1), align 8, !dbg !866, !tbaa !867
  %33 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i64 0, i32 0), align 8, !dbg !869, !tbaa !870
  %call26.i = tail call i8* %32(i8* %33, i64 262144) #3, !dbg !871
  tail call void @llvm.dbg.value(metadata i8* %call26.i, i64 0, metadata !297, metadata !374) #3, !dbg !872
  %cmp27.i = icmp eq i8* %call26.i, null, !dbg !873
  br i1 %cmp27.i, label %if.then.29.i, label %if.end.31.i, !dbg !875

if.then.29.i:                                     ; preds = %if.end.24.i
  %34 = load i64, i64* bitcast (%struct.arena_object** @unused_arena_objects to i64*), align 8, !dbg !876, !tbaa !381
  store i64 %34, i64* %30, align 8, !dbg !878, !tbaa !857
  store %struct.arena_object* %29, %struct.arena_object** @unused_arena_objects, align 8, !dbg !879, !tbaa !381
  br label %new_arena.exit.thread, !dbg !880

if.end.31.i:                                      ; preds = %if.end.24.i
  %35 = ptrtoint i8* %call26.i to i64, !dbg !881
  %address32.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 0, !dbg !882
  store i64 %35, i64* %address32.i, align 8, !dbg !883, !tbaa !635
  %36 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !884, !tbaa !525
  %inc33.i = add i64 %36, 1, !dbg !884
  store i64 %inc33.i, i64* @narenas_currently_allocated, align 8, !dbg !884, !tbaa !525
  %37 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !885, !tbaa !525
  %inc34.i = add i64 %37, 1, !dbg !885
  store i64 %inc34.i, i64* @ntimes_arena_allocated, align 8, !dbg !885, !tbaa !525
  %38 = load i64, i64* @narenas_highwater, align 8, !dbg !886, !tbaa !525
  %cmp35.i = icmp ugt i64 %inc33.i, %38, !dbg !888
  br i1 %cmp35.i, label %if.then.37.i, label %if.end.38.i, !dbg !889

if.then.37.i:                                     ; preds = %if.end.31.i
  store i64 %inc33.i, i64* @narenas_highwater, align 8, !dbg !890, !tbaa !525
  br label %if.end.38.i, !dbg !891

if.end.38.i:                                      ; preds = %if.then.37.i, %if.end.31.i
  %freepools.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 4, !dbg !892
  store %struct.pool_header* null, %struct.pool_header** %freepools.i, align 8, !dbg !893, !tbaa !894
  %39 = load i64, i64* %address32.i, align 8, !dbg !895, !tbaa !635
  %pool_address.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 1, !dbg !896
  %40 = bitcast i8** %pool_address.i to i64*, !dbg !897
  store i64 %39, i64* %40, align 8, !dbg !897, !tbaa !654
  %nfreepools.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 2, !dbg !898
  store i32 64, i32* %nfreepools.i, align 4, !dbg !899, !tbaa !643
  %.tr.i = trunc i64 %39 to i32, !dbg !900
  %conv41.i = and i32 %.tr.i, 4095, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 %conv41.i, i64 0, metadata !296, metadata !374) #3, !dbg !901
  %cmp42.i = icmp eq i32 %conv41.i, 0, !dbg !902
  br i1 %cmp42.i, label %if.end.30, label %if.then.44.i, !dbg !904

if.then.44.i:                                     ; preds = %if.end.38.i
  %41 = inttoptr i64 %39 to i8*, !dbg !905
  store i32 63, i32* %nfreepools.i, align 4, !dbg !907, !tbaa !643
  %sub46.i = sub nsw i32 4096, %conv41.i, !dbg !908
  %idx.ext.i = zext i32 %sub46.i to i64, !dbg !905
  %add.ptr.i = getelementptr i8, i8* %41, i64 %idx.ext.i, !dbg !905
  store i8* %add.ptr.i, i8** %pool_address.i, align 8, !dbg !905, !tbaa !654
  br label %if.end.30, !dbg !909

new_arena.exit.thread:                            ; preds = %if.then.29.i, %if.end.i, %if.then.i
  store %struct.arena_object* null, %struct.arena_object** @usable_arenas, align 8, !dbg !910, !tbaa !381
  br label %redirect, !dbg !911

if.end.30:                                        ; preds = %if.then.44.i, %if.end.38.i
  %42 = phi i32 [ 64, %if.end.38.i ], [ 63, %if.then.44.i ], !dbg !912
  %ntotalpools.i = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 3, !dbg !913
  store i32 %42, i32* %ntotalpools.i, align 4, !dbg !914, !tbaa !915
  store %struct.arena_object* %29, %struct.arena_object** @usable_arenas, align 8, !dbg !910, !tbaa !381
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %29, i64 0, i32 6, !dbg !916
  store %struct.arena_object* null, %struct.arena_object** %prevarena, align 8, !dbg !917, !tbaa !918
  %43 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !919, !tbaa !381
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %43, i64 0, i32 5, !dbg !920
  store %struct.arena_object* null, %struct.arena_object** %nextarena, align 8, !dbg !921, !tbaa !857
  %.pre = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !922, !tbaa !381
  br label %if.end.31, !dbg !923

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %44 = phi %struct.arena_object* [ %.pre, %if.end.30 ], [ %12, %if.end.23 ], !dbg !924
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %44, i64 0, i32 4, !dbg !925
  %45 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8, !dbg !925, !tbaa !894
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %45, i64 0, metadata !286, metadata !374), !dbg !768
  %cmp32 = icmp eq %struct.pool_header* %45, null, !dbg !926
  br i1 %cmp32, label %if.end.78, label %if.then.34, !dbg !928

if.then.34:                                       ; preds = %if.end.31
  %nextpool35 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %45, i64 0, i32 2, !dbg !929
  %46 = bitcast %struct.pool_header** %nextpool35 to i64*, !dbg !929
  %47 = load i64, i64* %46, align 8, !dbg !929, !tbaa !773
  %48 = bitcast %struct.pool_header** %freepools to i64*, !dbg !931
  store i64 %47, i64* %48, align 8, !dbg !931, !tbaa !894
  %49 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !932, !tbaa !381
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i64 0, i32 2, !dbg !933
  %50 = load i32, i32* %nfreepools, align 4, !dbg !934, !tbaa !643
  %dec = add i32 %50, -1, !dbg !934
  store i32 %dec, i32* %nfreepools, align 4, !dbg !934, !tbaa !643
  %cmp38 = icmp eq i32 %dec, 0, !dbg !935
  br i1 %cmp38, label %if.then.40, label %init_pool, !dbg !937

if.then.40:                                       ; preds = %if.then.34
  %nextarena41 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i64 0, i32 5, !dbg !938
  %51 = load %struct.arena_object*, %struct.arena_object** %nextarena41, align 8, !dbg !938, !tbaa !857
  store %struct.arena_object* %51, %struct.arena_object** @usable_arenas, align 8, !dbg !940, !tbaa !381
  %cmp42 = icmp eq %struct.arena_object* %51, null, !dbg !941
  br i1 %cmp42, label %init_pool, label %if.then.44, !dbg !943

if.then.44:                                       ; preds = %if.then.40
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %51, i64 0, i32 6, !dbg !944
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !946, !tbaa !918
  br label %init_pool, !dbg !947

init_pool:                                        ; preds = %if.then.40, %if.then.88, %if.end.78, %if.then.92, %if.then.44, %if.then.34
  %pool.0 = phi %struct.pool_header* [ %45, %if.then.44 ], [ %45, %if.then.40 ], [ %45, %if.then.34 ], [ %60, %if.then.92 ], [ %60, %if.then.88 ], [ %60, %if.end.78 ]
  %52 = load %struct.pool_header*, %struct.pool_header** %arrayidx, align 16, !dbg !948, !tbaa !381
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %52, i64 0, metadata !287, metadata !374), !dbg !803
  %nextpool51 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 2, !dbg !949
  store %struct.pool_header* %52, %struct.pool_header** %nextpool51, align 8, !dbg !950, !tbaa !773
  %prevpool52 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 3, !dbg !951
  store %struct.pool_header* %52, %struct.pool_header** %prevpool52, align 8, !dbg !952, !tbaa !805
  %nextpool53 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %52, i64 0, i32 2, !dbg !953
  store %struct.pool_header* %pool.0, %struct.pool_header** %nextpool53, align 8, !dbg !954, !tbaa !773
  %prevpool54 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %52, i64 0, i32 3, !dbg !955
  store %struct.pool_header* %pool.0, %struct.pool_header** %prevpool54, align 8, !dbg !956, !tbaa !805
  %count56 = bitcast %struct.pool_header* %pool.0 to i32*, !dbg !957
  store i32 1, i32* %count56, align 4, !dbg !958, !tbaa !629
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 5, !dbg !959
  %53 = load i32, i32* %szidx, align 4, !dbg !959, !tbaa !660
  %cmp57 = icmp eq i32 %53, %shr, !dbg !961
  br i1 %cmp57, label %if.then.59, label %if.end.62, !dbg !962

if.then.59:                                       ; preds = %init_pool
  %freeblock60 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 1, !dbg !963
  %54 = load i8*, i8** %freeblock60, align 8, !dbg !963, !tbaa !779
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !285, metadata !374), !dbg !780
  %55 = bitcast i8* %54 to i64*, !dbg !965
  %56 = load i64, i64* %55, align 8, !dbg !965, !tbaa !381
  %57 = bitcast i8** %freeblock60 to i64*, !dbg !966
  store i64 %56, i64* %57, align 8, !dbg !966, !tbaa !779
  br label %cleanup, !dbg !967

if.end.62:                                        ; preds = %init_pool
  store i32 %shr, i32* %szidx, align 4, !dbg !968, !tbaa !660
  %add64 = shl nuw i32 %shr, 3, !dbg !969
  %shl65 = add i32 %add64, 8, !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %shl65, i64 0, metadata !288, metadata !374), !dbg !765
  %add.ptr66166 = getelementptr %struct.pool_header, %struct.pool_header* %pool.0, i64 1, !dbg !970
  %add.ptr66 = bitcast %struct.pool_header* %add.ptr66166 to i8*, !dbg !970
  tail call void @llvm.dbg.value(metadata i8* %add.ptr66, i64 0, metadata !285, metadata !374), !dbg !780
  %shl67 = shl i32 %shl65, 1, !dbg !971
  %add69 = add i32 %shl67, 48, !dbg !972
  %nextoffset71 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 6, !dbg !973
  store i32 %add69, i32* %nextoffset71, align 4, !dbg !974, !tbaa !791
  %sub72 = sub i32 4088, %add64, !dbg !975
  %maxnextoffset73 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 7, !dbg !976
  store i32 %sub72, i32* %maxnextoffset73, align 4, !dbg !977, !tbaa !793
  %idx.ext74 = zext i32 %shl65 to i64, !dbg !978
  %add.ptr75 = getelementptr i8, i8* %add.ptr66, i64 %idx.ext74, !dbg !978
  %freeblock76 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %pool.0, i64 0, i32 1, !dbg !979
  store i8* %add.ptr75, i8** %freeblock76, align 8, !dbg !980, !tbaa !779
  %58 = bitcast i8* %add.ptr75 to i8**, !dbg !981
  store i8* null, i8** %58, align 8, !dbg !982, !tbaa !381
  br label %cleanup, !dbg !983

if.end.78:                                        ; preds = %if.end.31
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %44, i64 0, i32 1, !dbg !984
  %59 = bitcast i8** %pool_address to %struct.pool_header**, !dbg !984
  %60 = load %struct.pool_header*, %struct.pool_header** %59, align 8, !dbg !984, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %60, i64 0, metadata !286, metadata !374), !dbg !768
  %61 = load i64, i64* bitcast (%struct.arena_object** @arenas to i64*), align 8, !dbg !985, !tbaa !381
  %sub.ptr.lhs.cast = ptrtoint %struct.arena_object* %44 to i64, !dbg !986
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %61, !dbg !986
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48, !dbg !986
  %conv79 = trunc i64 %sub.ptr.div to i32, !dbg !987
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %60, i64 0, i32 4, !dbg !988
  store i32 %conv79, i32* %arenaindex, align 4, !dbg !989, !tbaa !990
  %szidx80 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %60, i64 0, i32 5, !dbg !991
  store i32 65535, i32* %szidx80, align 4, !dbg !992, !tbaa !660
  %add.ptr82 = getelementptr %struct.pool_header, %struct.pool_header* %60, i64 85, i32 2, !dbg !993
  %62 = bitcast i8** %pool_address to %struct.pool_header***, !dbg !993
  store %struct.pool_header** %add.ptr82, %struct.pool_header*** %62, align 8, !dbg !993, !tbaa !654
  %63 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !994, !tbaa !381
  %nfreepools83 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %63, i64 0, i32 2, !dbg !995
  %64 = load i32, i32* %nfreepools83, align 4, !dbg !996, !tbaa !643
  %dec84 = add i32 %64, -1, !dbg !996
  store i32 %dec84, i32* %nfreepools83, align 4, !dbg !996, !tbaa !643
  %cmp86 = icmp eq i32 %dec84, 0, !dbg !997
  br i1 %cmp86, label %if.then.88, label %init_pool, !dbg !999

if.then.88:                                       ; preds = %if.end.78
  %nextarena89 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %63, i64 0, i32 5, !dbg !1000
  %65 = load %struct.arena_object*, %struct.arena_object** %nextarena89, align 8, !dbg !1000, !tbaa !857
  store %struct.arena_object* %65, %struct.arena_object** @usable_arenas, align 8, !dbg !1002, !tbaa !381
  %cmp90 = icmp eq %struct.arena_object* %65, null, !dbg !1003
  br i1 %cmp90, label %init_pool, label %if.then.92, !dbg !1005

if.then.92:                                       ; preds = %if.then.88
  %prevarena93 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %65, i64 0, i32 6, !dbg !1006
  store %struct.arena_object* null, %struct.arena_object** %prevarena93, align 8, !dbg !1008, !tbaa !918
  br label %init_pool, !dbg !1009

redirect:                                         ; preds = %new_arena.exit.thread, %entry
  tail call void @llvm.dbg.value(metadata i64 %nbytes, i64 0, metadata !113, metadata !374) #3, !dbg !1010
  %cmp.i.167 = icmp slt i64 %nbytes, 0, !dbg !1012
  br i1 %cmp.i.167, label %if.then.98, label %PyMem_RawMalloc.exit, !dbg !1013

PyMem_RawMalloc.exit:                             ; preds = %redirect
  %66 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 1), align 8, !dbg !1014, !tbaa !416
  %67 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !1015, !tbaa !419
  %call.i = tail call i8* %66(i8* %67, i64 %nbytes) #3, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !289, metadata !374), !dbg !1017
  %tobool = icmp eq i8* %call.i, null, !dbg !1018
  br i1 %tobool, label %if.then.98, label %cleanup, !dbg !1020

if.then.98:                                       ; preds = %redirect, %PyMem_RawMalloc.exit
  %68 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1021, !tbaa !525
  %dec99 = add i64 %68, -1, !dbg !1021
  store i64 %dec99, i64* @_Py_AllocatedBlocks, align 8, !dbg !1021, !tbaa !525
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %if.then.98, %PyMem_RawMalloc.exit, %if.then.4, %if.end.62, %if.then.59, %if.end.19, %if.then.12
  %retval.0 = phi i8* [ %4, %if.then.12 ], [ %4, %if.end.19 ], [ %54, %if.then.59 ], [ %add.ptr66, %if.end.62 ], [ %4, %if.then.4 ], [ %call.i, %PyMem_RawMalloc.exit ], [ null, %if.then.98 ]
  ret i8* %retval.0, !dbg !1023
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_Realloc(i8* nocapture readnone %ctx, i8* %p, i64 %nbytes) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !305, metadata !374), !dbg !1024
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !306, metadata !374), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %nbytes, i64 0, metadata !307, metadata !374), !dbg !1026
  %cmp = icmp eq i8* %p, null, !dbg !1027
  br i1 %cmp, label %if.then, label %if.end, !dbg !1029

if.then:                                          ; preds = %entry
  %call = tail call i8* @_PyObject_Malloc(i8* %ctx, i64 %nbytes), !dbg !1030
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %entry
  %0 = ptrtoint i8* %p to i64, !dbg !1032
  %and = and i64 %0, -4096, !dbg !1032
  %1 = inttoptr i64 %and to %struct.pool_header*, !dbg !1032
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %1, i64 0, metadata !309, metadata !374), !dbg !1033
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %1, i64 0, i32 4, !dbg !1034
  %2 = bitcast i32* %arenaindex to i64*, !dbg !1034
  %3 = load i64, i64* %2, align 32, !dbg !1034
  %4 = trunc i64 %3 to i32, !dbg !1034
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !311, metadata !374), !dbg !1036
  %5 = load i32, i32* @maxarenas, align 4, !dbg !1034, !tbaa !629
  %cmp1 = icmp ult i32 %4, %5, !dbg !1034
  br i1 %cmp1, label %land.lhs.true, label %if.end.23, !dbg !1034

land.lhs.true:                                    ; preds = %if.end
  %idxprom = and i64 %3, 4294967295, !dbg !1037
  %6 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1037, !tbaa !381
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %6, i64 %idxprom, i32 0, !dbg !1037
  %7 = load i64, i64* %address, align 8, !dbg !1037, !tbaa !635
  %sub = sub i64 %0, %7, !dbg !1037
  %cmp2 = icmp ugt i64 %sub, 262143, !dbg !1037
  %cmp7 = icmp eq i64 %7, 0, !dbg !1039
  %or.cond = or i1 %cmp7, %cmp2, !dbg !1037
  br i1 %or.cond, label %if.end.23, label %if.then.8, !dbg !1037

if.then.8:                                        ; preds = %land.lhs.true
  %8 = lshr i64 %3, 29, !dbg !1041
  %add63 = add nuw nsw i64 %8, 8, !dbg !1041
  %shl = and i64 %add63, 4294967288, !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %shl, i64 0, metadata !310, metadata !374), !dbg !1043
  %cmp9 = icmp ult i64 %shl, %nbytes, !dbg !1044
  br i1 %cmp9, label %if.end.17, label %if.then.11, !dbg !1046

if.then.11:                                       ; preds = %if.then.8
  %mul = shl i64 %nbytes, 2, !dbg !1047
  %mul12 = mul nuw nsw i64 %shl, 3, !dbg !1050
  %cmp13 = icmp ugt i64 %mul, %mul12, !dbg !1051
  br i1 %cmp13, label %cleanup, label %if.end.17, !dbg !1052

if.end.17:                                        ; preds = %if.then.11, %if.then.8
  %size.0 = phi i64 [ %shl, %if.then.8 ], [ %nbytes, %if.then.11 ]
  %call18 = tail call i8* @_PyObject_Malloc(i8* %ctx, i64 %nbytes), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8* %call18, i64 0, metadata !308, metadata !374), !dbg !1054
  %cmp19 = icmp eq i8* %call18, null, !dbg !1055
  br i1 %cmp19, label %cleanup, label %if.then.21, !dbg !1057

if.then.21:                                       ; preds = %if.end.17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call18, i8* %p, i64 %size.0, i32 1, i1 false), !dbg !1058
  tail call void @_PyObject_Free(i8* %ctx, i8* %p), !dbg !1060
  br label %cleanup, !dbg !1061

if.end.23:                                        ; preds = %land.lhs.true, %if.end
  %tobool = icmp eq i64 %nbytes, 0, !dbg !1062
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !116, metadata !374) #3, !dbg !1064
  br i1 %tobool, label %if.end.26, label %if.then.24, !dbg !1066

if.then.24:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata i64 %nbytes, i64 0, metadata !117, metadata !374) #3, !dbg !1067
  %cmp.i = icmp slt i64 %nbytes, 0, !dbg !1069
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1070

if.end.i:                                         ; preds = %if.then.24
  %9 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 2), align 8, !dbg !1071, !tbaa !429
  %10 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !1072, !tbaa !419
  %call.i = tail call i8* %9(i8* %10, i8* %p, i64 %nbytes) #3, !dbg !1073
  br label %cleanup, !dbg !1074

if.end.26:                                        ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !117, metadata !374) #3, !dbg !1075
  %11 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 2), align 8, !dbg !1076, !tbaa !429
  %12 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !1077, !tbaa !419
  %call.i.59 = tail call i8* %11(i8* %12, i8* %p, i64 1) #3, !dbg !1078
  tail call void @llvm.dbg.value(metadata i8* %call.i.59, i64 0, metadata !308, metadata !374), !dbg !1054
  %tobool28 = icmp ne i8* %call.i.59, null, !dbg !1079
  %cond = select i1 %tobool28, i8* %call.i.59, i8* %p, !dbg !1079
  br label %cleanup, !dbg !1080

cleanup:                                          ; preds = %if.end.i, %if.then.24, %if.then.21, %if.end.17, %if.then.11, %if.end.26, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %cond, %if.end.26 ], [ %p, %if.then.11 ], [ null, %if.end.17 ], [ %call18, %if.then.21 ], [ %call.i, %if.end.i ], [ null, %if.then.24 ]
  ret i8* %retval.0, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_Free(i8* nocapture readnone %ctx, i8* %p) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !314, metadata !374), !dbg !1082
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !315, metadata !374), !dbg !1083
  %cmp = icmp eq i8* %p, null, !dbg !1084
  br i1 %cmp, label %cleanup.101, label %if.end, !dbg !1086

if.end:                                           ; preds = %entry
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1087, !tbaa !525
  %dec = add i64 %0, -1, !dbg !1087
  store i64 %dec, i64* @_Py_AllocatedBlocks, align 8, !dbg !1087, !tbaa !525
  %1 = ptrtoint i8* %p to i64, !dbg !1088
  %and = and i64 %1, -4096, !dbg !1088
  %2 = inttoptr i64 %and to %struct.pool_header*, !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %2, i64 0, metadata !316, metadata !374), !dbg !1089
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 4, !dbg !1090
  %3 = load i32, i32* %arenaindex, align 32, !dbg !1090, !tbaa !990
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !321, metadata !374), !dbg !1091
  %4 = load i32, i32* @maxarenas, align 4, !dbg !1090, !tbaa !629
  %cmp1 = icmp ult i32 %3, %4, !dbg !1090
  br i1 %cmp1, label %land.lhs.true, label %if.end.100, !dbg !1090

land.lhs.true:                                    ; preds = %if.end
  %idxprom = zext i32 %3 to i64, !dbg !1092
  %5 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1092, !tbaa !381
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %5, i64 %idxprom, i32 0, !dbg !1092
  %6 = load i64, i64* %address, align 8, !dbg !1092, !tbaa !635
  %sub = sub i64 %1, %6, !dbg !1092
  %cmp2 = icmp ugt i64 %sub, 262143, !dbg !1092
  %cmp7 = icmp eq i64 %6, 0, !dbg !1094
  %or.cond = or i1 %cmp7, %cmp2, !dbg !1092
  br i1 %or.cond, label %if.end.100, label %if.then.8, !dbg !1092

if.then.8:                                        ; preds = %land.lhs.true
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 1, !dbg !1096
  %7 = load i8*, i8** %freeblock, align 8, !dbg !1096, !tbaa !779
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !317, metadata !374), !dbg !1097
  %8 = bitcast i8* %p to i8**, !dbg !1098
  store i8* %7, i8** %8, align 8, !dbg !1099, !tbaa !381
  store i8* %p, i8** %freeblock, align 8, !dbg !1100, !tbaa !779
  %tobool = icmp eq i8* %7, null, !dbg !1101
  %count91 = inttoptr i64 %and to i32*, !dbg !1102
  %9 = load i32, i32* %count91, align 4096, !dbg !1103, !tbaa !629
  %dec92 = add i32 %9, -1, !dbg !1103
  store i32 %dec92, i32* %count91, align 4096, !dbg !1103, !tbaa !629
  br i1 %tobool, label %if.end.89, label %if.then.10, !dbg !1104

if.then.10:                                       ; preds = %if.then.8
  %cmp12 = icmp eq i32 %dec92, 0, !dbg !1105
  br i1 %cmp12, label %if.end.14, label %cleanup.101, !dbg !1107

if.end.14:                                        ; preds = %if.then.10
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 2, !dbg !1108
  %10 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 16, !dbg !1108, !tbaa !773
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %10, i64 0, metadata !318, metadata !374), !dbg !1109
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 3, !dbg !1110
  %11 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !1110, !tbaa !805
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %11, i64 0, metadata !319, metadata !374), !dbg !1111
  %prevpool15 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %10, i64 0, i32 3, !dbg !1112
  store %struct.pool_header* %11, %struct.pool_header** %prevpool15, align 8, !dbg !1113, !tbaa !805
  %nextpool16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i64 0, i32 2, !dbg !1114
  store %struct.pool_header* %10, %struct.pool_header** %nextpool16, align 8, !dbg !1115, !tbaa !773
  %12 = load i32, i32* %arenaindex, align 32, !dbg !1116, !tbaa !990
  %idxprom18 = zext i32 %12 to i64, !dbg !1117
  %13 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1117, !tbaa !381
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, !dbg !1117
  tail call void @llvm.dbg.value(metadata %struct.arena_object* %arrayidx19, i64 0, metadata !322, metadata !374), !dbg !1118
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 4, !dbg !1119
  %14 = bitcast %struct.pool_header** %freepools to i64*, !dbg !1119
  %15 = load i64, i64* %14, align 8, !dbg !1119, !tbaa !894
  %16 = bitcast %struct.pool_header** %nextpool to i64*, !dbg !1120
  store i64 %15, i64* %16, align 16, !dbg !1120, !tbaa !773
  store %struct.pool_header* %2, %struct.pool_header** %freepools, align 8, !dbg !1121, !tbaa !894
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 2, !dbg !1122
  %17 = load i32, i32* %nfreepools, align 4, !dbg !1123, !tbaa !643
  %inc = add i32 %17, 1, !dbg !1123
  store i32 %inc, i32* %nfreepools, align 4, !dbg !1123, !tbaa !643
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !327, metadata !374), !dbg !1124
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 3, !dbg !1125
  %18 = load i32, i32* %ntotalpools, align 4, !dbg !1125, !tbaa !915
  %cmp22 = icmp eq i32 %inc, %18, !dbg !1127
  br i1 %cmp22, label %if.then.23, label %if.end.41, !dbg !1128

if.then.23:                                       ; preds = %if.end.14
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 6, !dbg !1129
  %19 = load %struct.arena_object*, %struct.arena_object** %prevarena, align 8, !dbg !1129, !tbaa !918
  %cmp24 = icmp eq %struct.arena_object* %19, null, !dbg !1132
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 5, !dbg !1133
  %20 = bitcast %struct.arena_object** %nextarena to i64*, !dbg !1133
  %21 = load i64, i64* %20, align 8, !dbg !1133, !tbaa !857
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !1135

if.then.25:                                       ; preds = %if.then.23
  store i64 %21, i64* bitcast (%struct.arena_object** @usable_arenas to i64*), align 8, !dbg !1136, !tbaa !381
  br label %if.end.29, !dbg !1137

if.else:                                          ; preds = %if.then.23
  %nextarena28 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %19, i64 0, i32 5, !dbg !1138
  %22 = bitcast %struct.arena_object** %nextarena28 to i64*, !dbg !1140
  store i64 %21, i64* %22, align 8, !dbg !1140, !tbaa !857
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %23 = load %struct.arena_object*, %struct.arena_object** %nextarena, align 8, !dbg !1141, !tbaa !857
  %cmp31 = icmp eq %struct.arena_object* %23, null, !dbg !1143
  br i1 %cmp31, label %if.end.36, label %if.then.32, !dbg !1144

if.then.32:                                       ; preds = %if.end.29
  %24 = bitcast %struct.arena_object** %prevarena to i64*, !dbg !1145
  %25 = load i64, i64* %24, align 8, !dbg !1145, !tbaa !918
  %prevarena35 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %23, i64 0, i32 6, !dbg !1147
  %26 = bitcast %struct.arena_object** %prevarena35 to i64*, !dbg !1148
  store i64 %25, i64* %26, align 8, !dbg !1148, !tbaa !918
  br label %if.end.36, !dbg !1149

if.end.36:                                        ; preds = %if.end.29, %if.then.32
  %27 = load i64, i64* bitcast (%struct.arena_object** @unused_arena_objects to i64*), align 8, !dbg !1150, !tbaa !381
  store i64 %27, i64* %20, align 8, !dbg !1151, !tbaa !857
  store %struct.arena_object* %arrayidx19, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1152, !tbaa !381
  %28 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i64 0, i32 2), align 8, !dbg !1153, !tbaa !1154
  %29 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i64 0, i32 0), align 8, !dbg !1155, !tbaa !870
  %address38 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx19, i64 0, i32 0, !dbg !1156
  %30 = bitcast %struct.arena_object* %arrayidx19 to i8**, !dbg !1156
  %31 = load i8*, i8** %30, align 8, !dbg !1156, !tbaa !635
  tail call void %28(i8* %29, i8* %31, i64 262144) #3, !dbg !1157
  store i64 0, i64* %address38, align 8, !dbg !1158, !tbaa !635
  %32 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1159, !tbaa !525
  %dec40 = add i64 %32, -1, !dbg !1159
  store i64 %dec40, i64* @narenas_currently_allocated, align 8, !dbg !1159, !tbaa !525
  br label %cleanup.101, !dbg !1160

if.end.41:                                        ; preds = %if.end.14
  %cmp42 = icmp eq i32 %17, 0, !dbg !1161
  br i1 %cmp42, label %if.then.43, label %if.end.50, !dbg !1163

if.then.43:                                       ; preds = %if.end.41
  %33 = load i64, i64* bitcast (%struct.arena_object** @usable_arenas to i64*), align 8, !dbg !1164, !tbaa !381
  %nextarena44 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 5, !dbg !1166
  %34 = bitcast %struct.arena_object** %nextarena44 to i64*, !dbg !1167
  store i64 %33, i64* %34, align 8, !dbg !1167, !tbaa !857
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 6, !dbg !1168
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !1169, !tbaa !918
  %35 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1170, !tbaa !381
  %tobool46 = icmp eq %struct.arena_object* %35, null, !dbg !1170
  br i1 %tobool46, label %if.end.49, label %if.then.47, !dbg !1172

if.then.47:                                       ; preds = %if.then.43
  %prevarena48 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %35, i64 0, i32 6, !dbg !1173
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %prevarena48, align 8, !dbg !1174, !tbaa !918
  br label %if.end.49, !dbg !1175

if.end.49:                                        ; preds = %if.then.43, %if.then.47
  store %struct.arena_object* %arrayidx19, %struct.arena_object** @usable_arenas, align 8, !dbg !1176, !tbaa !381
  br label %cleanup.101, !dbg !1177

if.end.50:                                        ; preds = %if.end.41
  %nextarena51 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 5, !dbg !1178
  %36 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8, !dbg !1178, !tbaa !857
  %cmp52 = icmp eq %struct.arena_object* %36, null, !dbg !1180
  br i1 %cmp52, label %cleanup.101, label %lor.lhs.false, !dbg !1181

lor.lhs.false:                                    ; preds = %if.end.50
  %nfreepools54 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %36, i64 0, i32 2, !dbg !1182
  %37 = load i32, i32* %nfreepools54, align 4, !dbg !1182, !tbaa !643
  %cmp55 = icmp ugt i32 %inc, %37, !dbg !1183
  br i1 %cmp55, label %if.end.57, label %cleanup.101, !dbg !1184

if.end.57:                                        ; preds = %lor.lhs.false
  %prevarena58 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %13, i64 %idxprom18, i32 6, !dbg !1185
  %38 = load %struct.arena_object*, %struct.arena_object** %prevarena58, align 8, !dbg !1185, !tbaa !918
  %cmp59 = icmp eq %struct.arena_object* %38, null, !dbg !1187
  br i1 %cmp59, label %if.else.64, label %if.then.60, !dbg !1188

if.then.60:                                       ; preds = %if.end.57
  %39 = ptrtoint %struct.arena_object* %38 to i64, !dbg !1188
  %nextarena63 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %38, i64 0, i32 5, !dbg !1189
  store %struct.arena_object* %36, %struct.arena_object** %nextarena63, align 8, !dbg !1191, !tbaa !857
  %.pre181 = bitcast %struct.arena_object** %prevarena58 to i64*, !dbg !1192
  br label %if.end.66, !dbg !1193

if.else.64:                                       ; preds = %if.end.57
  store %struct.arena_object* %36, %struct.arena_object** @usable_arenas, align 8, !dbg !1194, !tbaa !381
  %.phi.trans.insert = bitcast %struct.arena_object** %prevarena58 to i64*, !dbg !1192
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !1192, !tbaa !918
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.60
  %.pre-phi = phi i64* [ %.phi.trans.insert, %if.else.64 ], [ %.pre181, %if.then.60 ], !dbg !1192
  %40 = phi i64 [ %.pre, %if.else.64 ], [ %39, %if.then.60 ], !dbg !1192
  %41 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8, !dbg !1196, !tbaa !857
  %prevarena69 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %41, i64 0, i32 6, !dbg !1197
  %42 = bitcast %struct.arena_object** %prevarena69 to i64*, !dbg !1198
  store i64 %40, i64* %42, align 8, !dbg !1198, !tbaa !918
  %cmp71.180 = icmp eq %struct.arena_object* %41, null, !dbg !1199
  br i1 %cmp71.180, label %while.end, label %land.rhs.lr.ph, !dbg !1200

land.rhs.lr.ph:                                   ; preds = %if.end.66
  %43 = ptrtoint %struct.arena_object* %41 to i64, !dbg !1200
  %44 = bitcast %struct.arena_object** %nextarena51 to i64*, !dbg !1201
  br label %land.rhs, !dbg !1200

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %45 = phi i64 [ %43, %land.rhs.lr.ph ], [ %49, %while.body ], !dbg !1201
  %46 = phi %struct.arena_object* [ %41, %land.rhs.lr.ph ], [ %50, %while.body ]
  %nfreepools73 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %46, i64 0, i32 2, !dbg !1203
  %47 = load i32, i32* %nfreepools73, align 4, !dbg !1203, !tbaa !643
  %cmp74 = icmp ugt i32 %inc, %47, !dbg !1204
  br i1 %cmp74, label %while.body, label %while.end.loopexit, !dbg !1205

while.body:                                       ; preds = %land.rhs
  store i64 %45, i64* %.pre-phi, align 8, !dbg !1207, !tbaa !918
  %.cast = inttoptr i64 %45 to %struct.arena_object*, !dbg !1208
  %nextarena78 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %.cast, i64 0, i32 5, !dbg !1209
  %48 = bitcast %struct.arena_object** %nextarena78 to i64*, !dbg !1209
  %49 = load i64, i64* %48, align 8, !dbg !1209, !tbaa !857
  store i64 %49, i64* %44, align 8, !dbg !1210, !tbaa !857
  %50 = inttoptr i64 %49 to %struct.arena_object*
  %cmp71 = icmp eq i64 %49, 0, !dbg !1199
  br i1 %cmp71, label %while.end.loopexit, label %land.rhs, !dbg !1200

while.end.loopexit:                               ; preds = %while.body, %land.rhs
  br label %while.end, !dbg !1211

while.end:                                        ; preds = %while.end.loopexit, %if.end.66
  %51 = load %struct.arena_object*, %struct.arena_object** %prevarena58, align 8, !dbg !1211, !tbaa !918
  %nextarena81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %51, i64 0, i32 5, !dbg !1212
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %nextarena81, align 8, !dbg !1213, !tbaa !857
  %52 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8, !dbg !1214, !tbaa !857
  %cmp83 = icmp eq %struct.arena_object* %52, null, !dbg !1216
  br i1 %cmp83, label %cleanup.101, label %if.then.84, !dbg !1217

if.then.84:                                       ; preds = %while.end
  %prevarena86 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %52, i64 0, i32 6, !dbg !1218
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %prevarena86, align 8, !dbg !1219, !tbaa !918
  br label %cleanup.101, !dbg !1220

if.end.89:                                        ; preds = %if.then.8
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 5, !dbg !1221
  %53 = load i32, i32* %szidx, align 4, !dbg !1221, !tbaa !660
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !320, metadata !374), !dbg !1222
  %add = shl i32 %53, 1, !dbg !1223
  %idxprom93 = zext i32 %add to i64, !dbg !1224
  %arrayidx94 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i64 0, i64 %idxprom93, !dbg !1224
  %54 = load %struct.pool_header*, %struct.pool_header** %arrayidx94, align 16, !dbg !1224, !tbaa !381
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %54, i64 0, metadata !318, metadata !374), !dbg !1109
  %prevpool95 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %54, i64 0, i32 3, !dbg !1225
  %55 = load %struct.pool_header*, %struct.pool_header** %prevpool95, align 8, !dbg !1225, !tbaa !805
  tail call void @llvm.dbg.value(metadata %struct.pool_header* %55, i64 0, metadata !319, metadata !374), !dbg !1111
  %nextpool96 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 2, !dbg !1226
  store %struct.pool_header* %54, %struct.pool_header** %nextpool96, align 16, !dbg !1227, !tbaa !773
  %prevpool97 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %2, i64 0, i32 3, !dbg !1228
  store %struct.pool_header* %55, %struct.pool_header** %prevpool97, align 8, !dbg !1229, !tbaa !805
  store %struct.pool_header* %2, %struct.pool_header** %prevpool95, align 8, !dbg !1230, !tbaa !805
  %nextpool99 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %55, i64 0, i32 2, !dbg !1231
  store %struct.pool_header* %2, %struct.pool_header** %nextpool99, align 8, !dbg !1232, !tbaa !773
  br label %cleanup.101, !dbg !1233

if.end.100:                                       ; preds = %land.lhs.true, %if.end
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !122, metadata !374) #3, !dbg !1234
  %56 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 3), align 8, !dbg !1236, !tbaa !436
  %57 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i64 0, i32 0), align 8, !dbg !1237, !tbaa !419
  tail call void %56(i8* %57, i8* %p) #3, !dbg !1238
  br label %cleanup.101, !dbg !1239

cleanup.101:                                      ; preds = %if.end.36, %if.end.49, %if.then.10, %lor.lhs.false, %if.end.50, %while.end, %if.then.84, %entry, %if.end.100, %if.end.89
  ret void, !dbg !1239
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_ArenaMmap(i8* nocapture readnone %ctx, i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !330, metadata !374), !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !331, metadata !374), !dbg !1241
  %call = tail call i8* @mmap64(i8* null, i64 %size, i32 3, i32 34, i32 -1, i64 0) #3, !dbg !1242
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !332, metadata !374), !dbg !1243
  %cmp = icmp eq i8* %call, inttoptr (i64 -1 to i8*), !dbg !1244
  %.call = select i1 %cmp, i8* null, i8* %call, !dbg !1246
  ret i8* %.call, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_ArenaMunmap(i8* nocapture readnone %ctx, i8* %ptr, i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ctx, i64 0, metadata !335, metadata !374), !dbg !1248
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !336, metadata !374), !dbg !1249
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !337, metadata !374), !dbg !1250
  %call = tail call i32 @munmap(i8* %ptr, i64 %size) #3, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #7

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!370, !371}
!llvm.ident = !{!372}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !57, globals: !355)
!1 = !DIFile(filename: "Objects/obmalloc.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 117, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pymem.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PYMEM_DOMAIN_RAW", value: 0)
!7 = !DIEnumerator(name: "PYMEM_DOMAIN_MEM", value: 1)
!8 = !DIEnumerator(name: "PYMEM_DOMAIN_OBJ", value: 2)
!9 = !{!10, !11, !14, !21, !24, !36, !44, !32, !45, !55, !56}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 62, baseType: !13)
!12 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uintptr_t", file: !15, line: 153, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 122, baseType: !13)
!23 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "poolp", file: !1, line: 633, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "pool_header", file: !1, line: 621, size: 384, align: 64, elements: !27)
!27 = !{!28, !37, !38, !39, !40, !41, !42, !43}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !26, file: !1, line: 623, baseType: !29, size: 64, align: 64)
!29 = !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !1, line: 622, size: 64, align: 64, elements: !30)
!30 = !{!31, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !29, file: !1, line: 622, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "block", file: !1, line: 618, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !29, file: !1, line: 623, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "freeblock", scope: !26, file: !1, line: 624, baseType: !32, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nextpool", scope: !26, file: !1, line: 625, baseType: !25, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "prevpool", scope: !26, file: !1, line: 626, baseType: !25, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "arenaindex", scope: !26, file: !1, line: 627, baseType: !36, size: 32, align: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "szidx", scope: !26, file: !1, line: 628, baseType: !36, size: 32, align: 32, offset: 288)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "nextoffset", scope: !26, file: !1, line: 629, baseType: !36, size: 32, align: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxnextoffset", scope: !26, file: !1, line: 630, baseType: !36, size: 32, align: 32, offset: 352)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "arena_object", file: !1, line: 636, size: 384, align: 64, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !46, file: !1, line: 642, baseType: !21, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pool_address", scope: !46, file: !1, line: 645, baseType: !32, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nfreepools", scope: !46, file: !1, line: 650, baseType: !36, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ntotalpools", scope: !46, file: !1, line: 653, baseType: !36, size: 32, align: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "freepools", scope: !46, file: !1, line: 656, baseType: !25, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nextarena", scope: !46, file: !1, line: 672, baseType: !45, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prevarena", scope: !46, file: !1, line: 673, baseType: !45, size: 64, align: 64, offset: 320)
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !{!58, !62, !86, !90, !106, !109, !114, !118, !123, !126, !130, !133, !143, !148, !151, !155, !158, !161, !227, !268, !272, !277, !281, !291, !303, !312, !328, !333, !338}
!58 = !DISubprogram(name: "PyMem_SetupDebugHooks", scope: !1, file: !1, line: 193, type: !59, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyMem_SetupDebugHooks, variables: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !{}
!62 = !DISubprogram(name: "PyMem_GetAllocator", scope: !1, file: !1, line: 223, type: !63, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.PyMemAllocator*)* @PyMem_GetAllocator, variables: !83)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !66}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocatorDomain", file: !4, line: 126, baseType: !3)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocator", file: !4, line: 140, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 128, size: 256, align: 64, elements: !69)
!69 = !{!70, !71, !75, !79}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !68, file: !4, line: 130, baseType: !10, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !68, file: !4, line: 133, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!10, !10, !11}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !68, file: !4, line: 136, baseType: !76, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10, !10, !11}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !68, file: !4, line: 139, baseType: !80, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !10, !10}
!83 = !{!84, !85}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domain", arg: 1, scope: !62, file: !1, line: 223, type: !65)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 2, scope: !62, file: !1, line: 223, type: !66)
!86 = !DISubprogram(name: "PyMem_SetAllocator", scope: !1, file: !1, line: 240, type: !63, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.PyMemAllocator*)* @PyMem_SetAllocator, variables: !87)
!87 = !{!88, !89}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domain", arg: 1, scope: !86, file: !1, line: 240, type: !65)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 2, scope: !86, file: !1, line: 240, type: !66)
!90 = !DISubprogram(name: "PyObject_GetArenaAllocator", scope: !1, file: !1, line: 253, type: !91, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyObjectArenaAllocator*)* @PyObject_GetArenaAllocator, variables: !104)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObjectArenaAllocator", file: !95, line: 211, baseType: !96)
!95 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 202, size: 192, align: 64, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !96, file: !95, line: 204, baseType: !10, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !96, file: !95, line: 207, baseType: !72, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !96, file: !95, line: 210, baseType: !101, size: 64, align: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !10, !10, !11}
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 1, scope: !90, file: !1, line: 253, type: !93)
!106 = !DISubprogram(name: "PyObject_SetArenaAllocator", scope: !1, file: !1, line: 259, type: !91, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyObjectArenaAllocator*)* @PyObject_SetArenaAllocator, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 1, scope: !106, file: !1, line: 259, type: !93)
!109 = !DISubprogram(name: "PyMem_RawMalloc", scope: !1, file: !1, line: 265, type: !110, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyMem_RawMalloc, variables: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!10, !11}
!112 = !{!113}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !109, file: !1, line: 265, type: !11)
!114 = !DISubprogram(name: "PyMem_RawRealloc", scope: !1, file: !1, line: 280, type: !73, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyMem_RawRealloc, variables: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !114, file: !1, line: 280, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !114, file: !1, line: 280, type: !11)
!118 = !DISubprogram(name: "PyMem_RawFree", scope: !1, file: !1, line: 288, type: !119, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyMem_RawFree, variables: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !10}
!121 = !{!122}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !118, file: !1, line: 288, type: !10)
!123 = !DISubprogram(name: "PyMem_Malloc", scope: !1, file: !1, line: 294, type: !110, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyMem_Malloc, variables: !124)
!124 = !{!125}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !123, file: !1, line: 294, type: !11)
!126 = !DISubprogram(name: "PyMem_Realloc", scope: !1, file: !1, line: 303, type: !73, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyMem_Realloc, variables: !127)
!127 = !{!128, !129}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !126, file: !1, line: 303, type: !10)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !126, file: !1, line: 303, type: !11)
!130 = !DISubprogram(name: "PyMem_Free", scope: !1, file: !1, line: 312, type: !119, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyMem_Free, variables: !131)
!131 = !{!132}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !130, file: !1, line: 312, type: !10)
!133 = !DISubprogram(name: "_PyMem_RawStrdup", scope: !1, file: !1, line: 318, type: !134, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @_PyMem_RawStrdup, variables: !139)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !133, file: !1, line: 318, type: !137)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !133, file: !1, line: 320, type: !11)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !133, file: !1, line: 321, type: !136)
!143 = !DISubprogram(name: "_PyMem_Strdup", scope: !1, file: !1, line: 332, type: !134, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @_PyMem_Strdup, variables: !144)
!144 = !{!145, !146, !147}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !143, file: !1, line: 332, type: !137)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !143, file: !1, line: 334, type: !11)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !143, file: !1, line: 335, type: !136)
!148 = !DISubprogram(name: "PyObject_Malloc", scope: !1, file: !1, line: 346, type: !110, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyObject_Malloc, variables: !149)
!149 = !{!150}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !148, file: !1, line: 346, type: !11)
!151 = !DISubprogram(name: "PyObject_Realloc", scope: !1, file: !1, line: 355, type: !73, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyObject_Realloc, variables: !152)
!152 = !{!153, !154}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !151, file: !1, line: 355, type: !10)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !151, file: !1, line: 355, type: !11)
!155 = !DISubprogram(name: "PyObject_Free", scope: !1, file: !1, line: 364, type: !119, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_Free, variables: !156)
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !155, file: !1, line: 364, type: !10)
!158 = !DISubprogram(name: "_Py_GetAllocatedBlocks", scope: !1, file: !1, line: 891, type: !159, isLocal: false, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @_Py_GetAllocatedBlocks, variables: !61)
!159 = !DISubroutineType(types: !160)
!160 = !{!14}
!161 = !DISubprogram(name: "_PyDebugAllocatorStats", scope: !1, file: !1, line: 2056, type: !162, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*, i8*, i32, i64)* @_PyDebugAllocatorStats, variables: !217)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164, !137, !55, !11}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !166)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !167, line: 246, size: 1728, align: 64, elements: !168)
!167 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !189, !190, !191, !192, !194, !196, !198, !202, !205, !207, !208, !209, !210, !211, !212, !213}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !166, file: !167, line: 247, baseType: !55, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !166, file: !167, line: 252, baseType: !136, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !166, file: !167, line: 253, baseType: !136, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !166, file: !167, line: 254, baseType: !136, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !166, file: !167, line: 255, baseType: !136, size: 64, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !166, file: !167, line: 256, baseType: !136, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !166, file: !167, line: 257, baseType: !136, size: 64, align: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !166, file: !167, line: 258, baseType: !136, size: 64, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !166, file: !167, line: 259, baseType: !136, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !166, file: !167, line: 261, baseType: !136, size: 64, align: 64, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !166, file: !167, line: 262, baseType: !136, size: 64, align: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !166, file: !167, line: 263, baseType: !136, size: 64, align: 64, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !166, file: !167, line: 265, baseType: !182, size: 64, align: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !167, line: 161, size: 192, align: 64, elements: !184)
!184 = !{!185, !186, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !183, file: !167, line: 162, baseType: !182, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !183, file: !167, line: 163, baseType: !187, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !183, file: !167, line: 167, baseType: !55, size: 32, align: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !166, file: !167, line: 267, baseType: !187, size: 64, align: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !166, file: !167, line: 269, baseType: !55, size: 32, align: 32, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !166, file: !167, line: 273, baseType: !55, size: 32, align: 32, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !166, file: !167, line: 275, baseType: !193, size: 64, align: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !166, file: !167, line: 279, baseType: !195, size: 16, align: 16, offset: 1024)
!195 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !166, file: !167, line: 280, baseType: !197, size: 8, align: 8, offset: 1040)
!197 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !166, file: !167, line: 281, baseType: !199, size: 8, align: 8, offset: 1048)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, align: 8, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 1)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !166, file: !167, line: 285, baseType: !203, size: 64, align: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !167, line: 155, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !166, file: !167, line: 294, baseType: !206, size: 64, align: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !166, file: !167, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !166, file: !167, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !166, file: !167, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !166, file: !167, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !166, file: !167, line: 307, baseType: !11, size: 64, align: 64, offset: 1472)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !166, file: !167, line: 309, baseType: !55, size: 32, align: 32, offset: 1536)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !166, file: !167, line: 311, baseType: !214, size: 160, align: 8, offset: 1568)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, align: 8, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 20)
!217 = !{!218, !219, !220, !221, !222, !226}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !161, file: !1, line: 2056, type: !164)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block_name", arg: 2, scope: !161, file: !1, line: 2057, type: !137)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_blocks", arg: 3, scope: !161, file: !1, line: 2057, type: !55)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizeof_block", arg: 4, scope: !161, file: !1, line: 2057, type: !11)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf1", scope: !161, file: !1, line: 2059, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 128)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !161, file: !1, line: 2060, type: !223)
!227 = !DISubprogram(name: "_PyObject_DebugMallocStats", scope: !1, file: !1, line: 2076, type: !228, isLocal: false, isDefinition: true, scopeLine: 2077, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyObject_DebugMallocStats, variables: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !164}
!230 = !{!231, !232, !233, !235, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !254, !255, !259, !260, !261, !265, !266, !267}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !227, file: !1, line: 2076, type: !164)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !227, file: !1, line: 2078, type: !36)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numclasses", scope: !227, file: !1, line: 2079, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numpools", scope: !227, file: !1, line: 2081, type: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4096, align: 64, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 64)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numblocks", scope: !227, file: !1, line: 2082, type: !236)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numfreeblocks", scope: !227, file: !1, line: 2083, type: !236)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allocated_bytes", scope: !227, file: !1, line: 2085, type: !11)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "available_bytes", scope: !227, file: !1, line: 2087, type: !11)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numfreepools", scope: !227, file: !1, line: 2089, type: !36)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arena_alignment", scope: !227, file: !1, line: 2091, type: !11)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool_header_bytes", scope: !227, file: !1, line: 2093, type: !11)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quantization", scope: !227, file: !1, line: 2098, type: !11)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "narenas", scope: !227, file: !1, line: 2100, type: !11)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !227, file: !1, line: 2102, type: !11)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !227, file: !1, line: 2103, type: !223)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !251, file: !1, line: 2116, type: !36)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 2115, column: 37)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 2115, column: 5)
!253 = distinct !DILexicalBlock(scope: !227, file: !1, line: 2115, column: 5)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !251, file: !1, line: 2117, type: !21)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !256, file: !1, line: 2138, type: !24)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 2137, column: 45)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 2135, column: 9)
!258 = distinct !DILexicalBlock(scope: !251, file: !1, line: 2135, column: 9)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sz", scope: !256, file: !1, line: 2139, type: !234)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freeblocks", scope: !256, file: !1, line: 2140, type: !36)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !262, file: !1, line: 2165, type: !11)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 2164, column: 38)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 2164, column: 5)
!264 = distinct !DILexicalBlock(scope: !227, file: !1, line: 2164, column: 5)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !262, file: !1, line: 2166, type: !11)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !262, file: !1, line: 2167, type: !11)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !262, file: !1, line: 2168, type: !36)
!268 = !DISubprogram(name: "_PyMem_RawMalloc", scope: !1, file: !1, line: 52, type: !73, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyMem_RawMalloc, variables: !269)
!269 = !{!270, !271}
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !268, file: !1, line: 52, type: !10)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !268, file: !1, line: 52, type: !11)
!272 = !DISubprogram(name: "_PyMem_RawRealloc", scope: !1, file: !1, line: 64, type: !77, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, variables: !273)
!273 = !{!274, !275, !276}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !272, file: !1, line: 64, type: !10)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !272, file: !1, line: 64, type: !10)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !272, file: !1, line: 64, type: !11)
!277 = !DISubprogram(name: "_PyMem_RawFree", scope: !1, file: !1, line: 72, type: !81, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @_PyMem_RawFree, variables: !278)
!278 = !{!279, !280}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !277, file: !1, line: 72, type: !10)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !277, file: !1, line: 72, type: !10)
!281 = !DISubprogram(name: "_PyObject_Malloc", scope: !1, file: !1, line: 1125, type: !73, isLocal: true, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyObject_Malloc, variables: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289}
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !281, file: !1, line: 1125, type: !10)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !281, file: !1, line: 1125, type: !11)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !281, file: !1, line: 1127, type: !32)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !281, file: !1, line: 1128, type: !24)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !281, file: !1, line: 1129, type: !24)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !281, file: !1, line: 1130, type: !36)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !290, file: !1, line: 1314, type: !10)
!290 = distinct !DILexicalBlock(scope: !281, file: !1, line: 1313, column: 5)
!291 = !DISubprogram(name: "new_arena", scope: !1, file: !1, line: 903, type: !292, isLocal: true, isDefinition: true, scopeLine: 904, flags: DIFlagPrototyped, isOptimized: true, variables: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!45}
!294 = !{!295, !296, !297, !298, !301, !302}
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaobj", scope: !291, file: !1, line: 905, type: !45)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "excess", scope: !291, file: !1, line: 906, type: !36)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "address", scope: !291, file: !1, line: 907, type: !10)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !299, file: !1, line: 914, type: !36)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 913, column: 39)
!300 = distinct !DILexicalBlock(scope: !291, file: !1, line: 913, column: 9)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numarenas", scope: !299, file: !1, line: 915, type: !36)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !299, file: !1, line: 916, type: !11)
!303 = !DISubprogram(name: "_PyObject_Realloc", scope: !1, file: !1, line: 1554, type: !77, isLocal: true, isDefinition: true, scopeLine: 1555, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @_PyObject_Realloc, variables: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311}
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !303, file: !1, line: 1554, type: !10)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !303, file: !1, line: 1554, type: !10)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 3, scope: !303, file: !1, line: 1554, type: !11)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !303, file: !1, line: 1556, type: !10)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !303, file: !1, line: 1557, type: !24)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !303, file: !1, line: 1558, type: !11)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaindex_temp", scope: !303, file: !1, line: 1560, type: !36)
!312 = !DISubprogram(name: "_PyObject_Free", scope: !1, file: !1, line: 1325, type: !81, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @_PyObject_Free, variables: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !327}
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !312, file: !1, line: 1325, type: !10)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !312, file: !1, line: 1325, type: !10)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !312, file: !1, line: 1327, type: !24)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastfree", scope: !312, file: !1, line: 1328, type: !32)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !312, file: !1, line: 1329, type: !24)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !312, file: !1, line: 1329, type: !24)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !312, file: !1, line: 1330, type: !36)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaindex_temp", scope: !312, file: !1, line: 1332, type: !36)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ao", scope: !323, file: !1, line: 1359, type: !45)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 1358, column: 23)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 1358, column: 13)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 1346, column: 39)
!326 = distinct !DILexicalBlock(scope: !312, file: !1, line: 1346, column: 9)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nf", scope: !323, file: !1, line: 1360, type: !36)
!328 = !DISubprogram(name: "_PyObject_ArenaMmap", scope: !1, file: !1, line: 94, type: !73, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyObject_ArenaMmap, variables: !329)
!329 = !{!330, !331, !332}
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !328, file: !1, line: 94, type: !10)
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !328, file: !1, line: 94, type: !11)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !328, file: !1, line: 96, type: !10)
!333 = !DISubprogram(name: "_PyObject_ArenaMunmap", scope: !1, file: !1, line: 106, type: !102, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_PyObject_ArenaMunmap, variables: !334)
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !333, file: !1, line: 106, type: !10)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !333, file: !1, line: 106, type: !10)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !333, file: !1, line: 106, type: !11)
!338 = !DISubprogram(name: "printone", scope: !1, file: !1, line: 2020, type: !339, isLocal: true, isDefinition: true, scopeLine: 2021, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._IO_FILE*, i8*, i64)* @printone, variables: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!11, !164, !137, !11}
!341 = !{!342, !343, !344, !345, !346, !347, !351, !352, !354}
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !338, file: !1, line: 2020, type: !164)
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !338, file: !1, line: 2020, type: !137)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !338, file: !1, line: 2020, type: !11)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !338, file: !1, line: 2022, type: !55)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !338, file: !1, line: 2022, type: !55)
!347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !338, file: !1, line: 2023, type: !348)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, align: 8, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 100)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "origvalue", scope: !338, file: !1, line: 2024, type: !11)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextvalue", scope: !353, file: !1, line: 2037, type: !11)
!353 = distinct !DILexicalBlock(scope: !338, file: !1, line: 2036, column: 8)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digit", scope: !353, file: !1, line: 2038, type: !36)
!355 = !{!356, !357, !358, !359, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!356 = !DIGlobalVariable(name: "_PyMem_Raw", scope: !0, file: !1, line: 153, type: !67, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyMem_Raw)
!357 = !DIGlobalVariable(name: "_PyMem", scope: !0, file: !1, line: 161, type: !67, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyMem)
!358 = !DIGlobalVariable(name: "_PyObject", scope: !0, file: !1, line: 169, type: !67, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyObject)
!359 = !DIGlobalVariable(name: "usedpools", scope: !0, file: !1, line: 796, type: !360, isLocal: true, isDefinition: true, variable: [128 x %struct.pool_header*]* @usedpools)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 64, elements: !224)
!361 = !DIGlobalVariable(name: "usable_arenas", scope: !0, file: !1, line: 872, type: !45, isLocal: true, isDefinition: true, variable: %struct.arena_object** @usable_arenas)
!362 = !DIGlobalVariable(name: "unused_arena_objects", scope: !0, file: !1, line: 867, type: !45, isLocal: true, isDefinition: true, variable: %struct.arena_object** @unused_arena_objects)
!363 = !DIGlobalVariable(name: "narenas_currently_allocated", scope: !0, file: !1, line: 881, type: !11, isLocal: true, isDefinition: true, variable: i64* @narenas_currently_allocated)
!364 = !DIGlobalVariable(name: "_PyObject_Arena", scope: !0, file: !1, line: 182, type: !94, isLocal: true, isDefinition: true, variable: %struct.PyObjectArenaAllocator* @_PyObject_Arena)
!365 = !DIGlobalVariable(name: "_Py_AllocatedBlocks", scope: !0, file: !1, line: 888, type: !14, isLocal: true, isDefinition: true, variable: i64* @_Py_AllocatedBlocks)
!366 = !DIGlobalVariable(name: "maxarenas", scope: !0, file: !1, line: 862, type: !36, isLocal: true, isDefinition: true, variable: i32* @maxarenas)
!367 = !DIGlobalVariable(name: "arenas", scope: !0, file: !1, line: 860, type: !45, isLocal: true, isDefinition: true, variable: %struct.arena_object** @arenas)
!368 = !DIGlobalVariable(name: "ntimes_arena_allocated", scope: !0, file: !1, line: 884, type: !11, isLocal: true, isDefinition: true, variable: i64* @ntimes_arena_allocated)
!369 = !DIGlobalVariable(name: "narenas_highwater", scope: !0, file: !1, line: 886, type: !11, isLocal: true, isDefinition: true, variable: i64* @narenas_highwater)
!370 = !{i32 2, !"Dwarf Version", i32 4}
!371 = !{i32 2, !"Debug Info Version", i32 3}
!372 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!373 = !DILocation(line: 220, column: 1, scope: !58)
!374 = !DIExpression()
!375 = !DILocation(line: 223, column: 41, scope: !62)
!376 = !DILocation(line: 223, column: 65, scope: !62)
!377 = !DILocation(line: 225, column: 5, scope: !62)
!378 = !DILocation(line: 227, column: 41, scope: !379)
!379 = distinct !DILexicalBlock(scope: !62, file: !1, line: 226, column: 5)
!380 = !{i64 0, i64 8, !381, i64 8, i64 8, !381, i64 16, i64 8, !381, i64 24, i64 8, !381}
!381 = !{!382, !382, i64 0}
!382 = !{!"any pointer", !383, i64 0}
!383 = !{!"omnipotent char", !384, i64 0}
!384 = !{!"Simple C/C++ TBAA"}
!385 = !DILocation(line: 227, column: 53, scope: !379)
!386 = !DILocation(line: 228, column: 41, scope: !379)
!387 = !DILocation(line: 228, column: 49, scope: !379)
!388 = !DILocation(line: 229, column: 41, scope: !379)
!389 = !DILocation(line: 229, column: 52, scope: !379)
!390 = !DILocation(line: 236, column: 5, scope: !379)
!391 = !DILocation(line: 233, column: 27, scope: !379)
!392 = !DILocation(line: 237, column: 1, scope: !62)
!393 = !DILocation(line: 240, column: 41, scope: !86)
!394 = !DILocation(line: 240, column: 65, scope: !86)
!395 = !DILocation(line: 242, column: 5, scope: !86)
!396 = !DILocation(line: 244, column: 41, scope: !397)
!397 = distinct !DILexicalBlock(scope: !86, file: !1, line: 243, column: 5)
!398 = !DILocation(line: 244, column: 53, scope: !397)
!399 = !DILocation(line: 245, column: 37, scope: !397)
!400 = !DILocation(line: 245, column: 49, scope: !397)
!401 = !DILocation(line: 246, column: 40, scope: !397)
!402 = !DILocation(line: 246, column: 52, scope: !397)
!403 = !DILocation(line: 250, column: 1, scope: !86)
!404 = !DILocation(line: 253, column: 52, scope: !90)
!405 = !DILocation(line: 255, column: 18, scope: !90)
!406 = !{i64 0, i64 8, !381, i64 8, i64 8, !381, i64 16, i64 8, !381}
!407 = !DILocation(line: 256, column: 1, scope: !90)
!408 = !DILocation(line: 259, column: 52, scope: !106)
!409 = !DILocation(line: 261, column: 23, scope: !106)
!410 = !DILocation(line: 262, column: 1, scope: !106)
!411 = !DILocation(line: 265, column: 24, scope: !109)
!412 = !DILocation(line: 273, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !109, file: !1, line: 273, column: 9)
!414 = !DILocation(line: 273, column: 9, scope: !109)
!415 = !DILocation(line: 276, column: 23, scope: !109)
!416 = !{!417, !382, i64 8}
!417 = !{!"", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24}
!418 = !DILocation(line: 276, column: 41, scope: !109)
!419 = !{!417, !382, i64 0}
!420 = !DILocation(line: 276, column: 12, scope: !109)
!421 = !DILocation(line: 276, column: 5, scope: !109)
!422 = !DILocation(line: 277, column: 1, scope: !109)
!423 = !DILocation(line: 280, column: 24, scope: !114)
!424 = !DILocation(line: 280, column: 36, scope: !114)
!425 = !DILocation(line: 283, column: 18, scope: !426)
!426 = distinct !DILexicalBlock(scope: !114, file: !1, line: 283, column: 9)
!427 = !DILocation(line: 283, column: 9, scope: !114)
!428 = !DILocation(line: 285, column: 23, scope: !114)
!429 = !{!417, !382, i64 16}
!430 = !DILocation(line: 285, column: 42, scope: !114)
!431 = !DILocation(line: 285, column: 12, scope: !114)
!432 = !DILocation(line: 285, column: 5, scope: !114)
!433 = !DILocation(line: 286, column: 1, scope: !114)
!434 = !DILocation(line: 288, column: 26, scope: !118)
!435 = !DILocation(line: 290, column: 16, scope: !118)
!436 = !{!417, !382, i64 24}
!437 = !DILocation(line: 290, column: 32, scope: !118)
!438 = !DILocation(line: 290, column: 5, scope: !118)
!439 = !DILocation(line: 291, column: 1, scope: !118)
!440 = !DILocation(line: 294, column: 21, scope: !123)
!441 = !DILocation(line: 297, column: 14, scope: !442)
!442 = distinct !DILexicalBlock(scope: !123, file: !1, line: 297, column: 9)
!443 = !DILocation(line: 297, column: 9, scope: !123)
!444 = !DILocation(line: 299, column: 19, scope: !123)
!445 = !DILocation(line: 299, column: 33, scope: !123)
!446 = !DILocation(line: 299, column: 12, scope: !123)
!447 = !DILocation(line: 299, column: 5, scope: !123)
!448 = !DILocation(line: 300, column: 1, scope: !123)
!449 = !DILocation(line: 303, column: 21, scope: !126)
!450 = !DILocation(line: 303, column: 33, scope: !126)
!451 = !DILocation(line: 306, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !126, file: !1, line: 306, column: 9)
!453 = !DILocation(line: 306, column: 9, scope: !126)
!454 = !DILocation(line: 308, column: 19, scope: !126)
!455 = !DILocation(line: 308, column: 34, scope: !126)
!456 = !DILocation(line: 308, column: 12, scope: !126)
!457 = !DILocation(line: 308, column: 5, scope: !126)
!458 = !DILocation(line: 309, column: 1, scope: !126)
!459 = !DILocation(line: 312, column: 18, scope: !130)
!460 = !DILocation(line: 314, column: 12, scope: !130)
!461 = !DILocation(line: 314, column: 24, scope: !130)
!462 = !DILocation(line: 314, column: 5, scope: !130)
!463 = !DILocation(line: 315, column: 1, scope: !130)
!464 = !DILocation(line: 318, column: 30, scope: !133)
!465 = !DILocation(line: 323, column: 12, scope: !133)
!466 = !DILocation(line: 323, column: 24, scope: !133)
!467 = !DILocation(line: 320, column: 12, scope: !133)
!468 = !DILocation(line: 265, column: 24, scope: !109, inlinedAt: !469)
!469 = distinct !DILocation(line: 324, column: 12, scope: !133)
!470 = !DILocation(line: 273, column: 14, scope: !413, inlinedAt: !469)
!471 = !DILocation(line: 273, column: 9, scope: !109, inlinedAt: !469)
!472 = !DILocation(line: 276, column: 23, scope: !109, inlinedAt: !469)
!473 = !DILocation(line: 276, column: 41, scope: !109, inlinedAt: !469)
!474 = !DILocation(line: 276, column: 12, scope: !109, inlinedAt: !469)
!475 = !DILocation(line: 321, column: 11, scope: !133)
!476 = !DILocation(line: 325, column: 14, scope: !477)
!477 = distinct !DILexicalBlock(scope: !133, file: !1, line: 325, column: 9)
!478 = !DILocation(line: 325, column: 9, scope: !133)
!479 = !DILocation(line: 327, column: 5, scope: !133)
!480 = !DILocation(line: 328, column: 5, scope: !133)
!481 = !DILocation(line: 329, column: 1, scope: !133)
!482 = !DILocation(line: 332, column: 27, scope: !143)
!483 = !DILocation(line: 337, column: 12, scope: !143)
!484 = !DILocation(line: 337, column: 24, scope: !143)
!485 = !DILocation(line: 334, column: 12, scope: !143)
!486 = !DILocation(line: 294, column: 21, scope: !123, inlinedAt: !487)
!487 = distinct !DILocation(line: 338, column: 12, scope: !143)
!488 = !DILocation(line: 297, column: 14, scope: !442, inlinedAt: !487)
!489 = !DILocation(line: 297, column: 9, scope: !123, inlinedAt: !487)
!490 = !DILocation(line: 299, column: 19, scope: !123, inlinedAt: !487)
!491 = !DILocation(line: 299, column: 33, scope: !123, inlinedAt: !487)
!492 = !DILocation(line: 299, column: 12, scope: !123, inlinedAt: !487)
!493 = !DILocation(line: 335, column: 11, scope: !143)
!494 = !DILocation(line: 339, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !143, file: !1, line: 339, column: 9)
!496 = !DILocation(line: 339, column: 9, scope: !143)
!497 = !DILocation(line: 341, column: 5, scope: !143)
!498 = !DILocation(line: 342, column: 5, scope: !143)
!499 = !DILocation(line: 343, column: 1, scope: !143)
!500 = !DILocation(line: 346, column: 24, scope: !148)
!501 = !DILocation(line: 349, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !148, file: !1, line: 349, column: 9)
!503 = !DILocation(line: 349, column: 9, scope: !148)
!504 = !DILocation(line: 351, column: 22, scope: !148)
!505 = !DILocation(line: 351, column: 39, scope: !148)
!506 = !DILocation(line: 351, column: 12, scope: !148)
!507 = !DILocation(line: 351, column: 5, scope: !148)
!508 = !DILocation(line: 352, column: 1, scope: !148)
!509 = !DILocation(line: 355, column: 24, scope: !151)
!510 = !DILocation(line: 355, column: 36, scope: !151)
!511 = !DILocation(line: 358, column: 18, scope: !512)
!512 = distinct !DILexicalBlock(scope: !151, file: !1, line: 358, column: 9)
!513 = !DILocation(line: 358, column: 9, scope: !151)
!514 = !DILocation(line: 360, column: 22, scope: !151)
!515 = !DILocation(line: 360, column: 40, scope: !151)
!516 = !DILocation(line: 360, column: 12, scope: !151)
!517 = !DILocation(line: 360, column: 5, scope: !151)
!518 = !DILocation(line: 361, column: 1, scope: !151)
!519 = !DILocation(line: 364, column: 21, scope: !155)
!520 = !DILocation(line: 366, column: 15, scope: !155)
!521 = !DILocation(line: 366, column: 30, scope: !155)
!522 = !DILocation(line: 366, column: 5, scope: !155)
!523 = !DILocation(line: 367, column: 1, scope: !155)
!524 = !DILocation(line: 893, column: 12, scope: !158)
!525 = !{!526, !526, i64 0}
!526 = !{!"long", !383, i64 0}
!527 = !DILocation(line: 893, column: 5, scope: !158)
!528 = !DILocation(line: 2056, column: 30, scope: !161)
!529 = !DILocation(line: 2057, column: 36, scope: !161)
!530 = !DILocation(line: 2057, column: 52, scope: !161)
!531 = !DILocation(line: 2057, column: 71, scope: !161)
!532 = !DILocation(line: 2059, column: 5, scope: !161)
!533 = !DILocation(line: 2059, column: 10, scope: !161)
!534 = !DILocation(line: 2060, column: 5, scope: !161)
!535 = !DILocation(line: 2060, column: 10, scope: !161)
!536 = !DILocation(line: 2061, column: 5, scope: !161)
!537 = !DILocation(line: 2064, column: 5, scope: !161)
!538 = !DILocation(line: 2066, column: 31, scope: !161)
!539 = !DILocation(line: 2066, column: 42, scope: !161)
!540 = !DILocation(line: 2066, column: 11, scope: !161)
!541 = !DILocation(line: 2067, column: 1, scope: !161)
!542 = !DILocation(line: 2020, column: 16, scope: !338)
!543 = !DILocation(line: 2020, column: 33, scope: !338)
!544 = !DILocation(line: 2020, column: 45, scope: !338)
!545 = !DILocation(line: 2023, column: 5, scope: !338)
!546 = !DILocation(line: 2023, column: 10, scope: !338)
!547 = !DILocation(line: 2024, column: 12, scope: !338)
!548 = !DILocation(line: 2026, column: 5, scope: !338)
!549 = !DILocation(line: 2027, column: 19, scope: !550)
!550 = distinct !DILexicalBlock(scope: !338, file: !1, line: 2027, column: 5)
!551 = !DILocation(line: 2027, column: 14, scope: !550)
!552 = !DILocation(line: 2022, column: 9, scope: !338)
!553 = !DILocation(line: 2027, column: 34, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !1, line: 2027, column: 5)
!555 = !DILocation(line: 2027, column: 5, scope: !550)
!556 = !DILocation(line: 2028, column: 9, scope: !554)
!557 = !DILocation(line: 2027, column: 40, scope: !554)
!558 = !DILocation(line: 2029, column: 5, scope: !338)
!559 = !DILocation(line: 2033, column: 5, scope: !338)
!560 = !DILocation(line: 2033, column: 14, scope: !338)
!561 = !{!383, !383, i64 0}
!562 = !DILocation(line: 2034, column: 5, scope: !338)
!563 = !DILocation(line: 2034, column: 14, scope: !338)
!564 = !DILocation(line: 2022, column: 12, scope: !338)
!565 = !DILocation(line: 2036, column: 5, scope: !338)
!566 = !DILocation(line: 2037, column: 34, scope: !353)
!567 = !DILocation(line: 2037, column: 16, scope: !353)
!568 = !DILocation(line: 2038, column: 51, scope: !353)
!569 = !DILocation(line: 2038, column: 30, scope: !353)
!570 = !DILocation(line: 2040, column: 33, scope: !353)
!571 = !DILocation(line: 2040, column: 14, scope: !353)
!572 = !DILocation(line: 2040, column: 9, scope: !353)
!573 = !DILocation(line: 2040, column: 18, scope: !353)
!574 = !DILocation(line: 2041, column: 9, scope: !353)
!575 = !DILocation(line: 2042, column: 15, scope: !576)
!576 = distinct !DILexicalBlock(scope: !353, file: !1, line: 2042, column: 13)
!577 = !DILocation(line: 2042, column: 23, scope: !578)
!578 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!579 = !DILocation(line: 2042, column: 20, scope: !576)
!580 = !DILocation(line: 2042, column: 34, scope: !576)
!581 = !DILocation(line: 2044, column: 18, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !1, line: 2042, column: 40)
!583 = !DILocation(line: 2044, column: 13, scope: !582)
!584 = !DILocation(line: 2044, column: 22, scope: !582)
!585 = !DILocation(line: 2045, column: 9, scope: !582)
!586 = !DILocation(line: 2046, column: 25, scope: !338)
!587 = !DILocation(line: 2046, column: 20, scope: !338)
!588 = !DILocation(line: 2046, column: 5, scope: !589)
!589 = !DILexicalBlockFile(scope: !353, file: !1, discriminator: 3)
!590 = !DILocation(line: 2048, column: 5, scope: !338)
!591 = !DILocation(line: 2049, column: 9, scope: !338)
!592 = !DILocation(line: 2049, column: 18, scope: !338)
!593 = distinct !{!593, !594}
!594 = !{!"llvm.loop.unroll.disable"}
!595 = distinct !{!595, !596, !597}
!596 = !{!"llvm.loop.vectorize.width", i32 1}
!597 = !{!"llvm.loop.interleave.count", i32 1}
!598 = !DILocation(line: 2048, column: 14, scope: !338)
!599 = distinct !{!599, !600, !596, !597}
!600 = !{!"llvm.loop.unroll.runtime.disable"}
!601 = !DILocation(line: 2050, column: 5, scope: !338)
!602 = !DILocation(line: 2053, column: 1, scope: !338)
!603 = !DILocation(line: 2052, column: 5, scope: !338)
!604 = !DILocation(line: 2076, column: 34, scope: !227)
!605 = !DILocation(line: 2079, column: 16, scope: !227)
!606 = !DILocation(line: 2081, column: 5, scope: !227)
!607 = !DILocation(line: 2081, column: 12, scope: !227)
!608 = !DILocation(line: 2082, column: 5, scope: !227)
!609 = !DILocation(line: 2082, column: 12, scope: !227)
!610 = !DILocation(line: 2083, column: 5, scope: !227)
!611 = !DILocation(line: 2083, column: 12, scope: !227)
!612 = !DILocation(line: 2085, column: 12, scope: !227)
!613 = !DILocation(line: 2087, column: 12, scope: !227)
!614 = !DILocation(line: 2089, column: 10, scope: !227)
!615 = !DILocation(line: 2091, column: 12, scope: !227)
!616 = !DILocation(line: 2093, column: 12, scope: !227)
!617 = !DILocation(line: 2098, column: 12, scope: !227)
!618 = !DILocation(line: 2100, column: 12, scope: !227)
!619 = !DILocation(line: 2103, column: 5, scope: !227)
!620 = !DILocation(line: 2103, column: 10, scope: !227)
!621 = !DILocation(line: 2105, column: 5, scope: !227)
!622 = !DILocation(line: 2078, column: 10, scope: !227)
!623 = !DILocation(line: 2109, column: 55, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 2108, column: 5)
!625 = distinct !DILexicalBlock(scope: !227, file: !1, line: 2108, column: 5)
!626 = !DILocation(line: 2109, column: 36, scope: !624)
!627 = !DILocation(line: 2109, column: 21, scope: !624)
!628 = !DILocation(line: 2115, column: 21, scope: !252)
!629 = !{!630, !630, i64 0}
!630 = !{!"int", !383, i64 0}
!631 = !DILocation(line: 2115, column: 19, scope: !252)
!632 = !DILocation(line: 2115, column: 5, scope: !253)
!633 = !DILocation(line: 2117, column: 21, scope: !251)
!634 = !DILocation(line: 2117, column: 31, scope: !251)
!635 = !{!636, !526, i64 0}
!636 = !{!"arena_object", !526, i64 0, !382, i64 8, !630, i64 16, !630, i64 20, !382, i64 24, !382, i64 32, !382, i64 40}
!637 = !DILocation(line: 2117, column: 14, scope: !251)
!638 = !DILocation(line: 2120, column: 31, scope: !639)
!639 = distinct !DILexicalBlock(scope: !251, file: !1, line: 2120, column: 13)
!640 = !DILocation(line: 2120, column: 13, scope: !251)
!641 = !DILocation(line: 2122, column: 17, scope: !251)
!642 = !DILocation(line: 2124, column: 35, scope: !251)
!643 = !{!636, !630, i64 16}
!644 = !DILocation(line: 2124, column: 22, scope: !251)
!645 = !DILocation(line: 2127, column: 18, scope: !646)
!646 = distinct !DILexicalBlock(scope: !251, file: !1, line: 2127, column: 13)
!647 = !DILocation(line: 2127, column: 13, scope: !251)
!648 = !DILocation(line: 2128, column: 29, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !1, line: 2127, column: 42)
!650 = !DILocation(line: 2130, column: 18, scope: !649)
!651 = !DILocation(line: 2131, column: 9, scope: !649)
!652 = !DILocation(line: 2116, column: 14, scope: !251)
!653 = !DILocation(line: 2136, column: 45, scope: !257)
!654 = !{!636, !382, i64 8}
!655 = !DILocation(line: 2136, column: 26, scope: !257)
!656 = !DILocation(line: 2135, column: 9, scope: !258)
!657 = !DILocation(line: 2138, column: 23, scope: !256)
!658 = !DILocation(line: 2138, column: 19, scope: !256)
!659 = !DILocation(line: 2139, column: 32, scope: !256)
!660 = !{!661, !630, i64 36}
!661 = !{!"pool_header", !383, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !630, i64 32, !630, i64 36, !630, i64 40, !630, i64 44}
!662 = !DILocation(line: 2139, column: 24, scope: !256)
!663 = !DILocation(line: 2142, column: 24, scope: !664)
!664 = distinct !DILexicalBlock(scope: !256, file: !1, line: 2142, column: 17)
!665 = !DILocation(line: 2149, column: 49, scope: !256)
!666 = !DILocation(line: 2142, column: 30, scope: !664)
!667 = !DILocation(line: 2142, column: 17, scope: !256)
!668 = !DILocation(line: 2147, column: 15, scope: !256)
!669 = !DILocation(line: 2147, column: 13, scope: !256)
!670 = !DILocation(line: 2148, column: 30, scope: !256)
!671 = !DILocation(line: 2148, column: 13, scope: !256)
!672 = !DILocation(line: 2148, column: 27, scope: !256)
!673 = !DILocation(line: 2149, column: 26, scope: !256)
!674 = !DILocation(line: 2149, column: 40, scope: !256)
!675 = !DILocation(line: 2140, column: 18, scope: !256)
!676 = !DILocation(line: 2150, column: 34, scope: !256)
!677 = !DILocation(line: 2150, column: 13, scope: !256)
!678 = !DILocation(line: 2150, column: 31, scope: !256)
!679 = !DILocation(line: 2155, column: 9, scope: !257)
!680 = !DILocation(line: 2137, column: 31, scope: !257)
!681 = !DILocation(line: 2159, column: 5, scope: !227)
!682 = !DILocation(line: 2160, column: 5, scope: !227)
!683 = !DILocation(line: 2164, column: 10, scope: !264)
!684 = !DILocation(line: 2164, column: 19, scope: !263)
!685 = !DILocation(line: 2164, column: 5, scope: !264)
!686 = !DILocation(line: 2165, column: 20, scope: !262)
!687 = !DILocation(line: 2165, column: 16, scope: !262)
!688 = !DILocation(line: 2168, column: 21, scope: !262)
!689 = !DILocation(line: 2169, column: 15, scope: !690)
!690 = distinct !DILexicalBlock(scope: !262, file: !1, line: 2169, column: 13)
!691 = !DILocation(line: 2169, column: 13, scope: !262)
!692 = !DILocation(line: 2166, column: 20, scope: !262)
!693 = !DILocation(line: 2167, column: 20, scope: !262)
!694 = !DILocation(line: 2173, column: 9, scope: !262)
!695 = !DILocation(line: 2178, column: 32, scope: !262)
!696 = !DILocation(line: 2178, column: 30, scope: !262)
!697 = !DILocation(line: 2178, column: 25, scope: !262)
!698 = !DILocation(line: 2179, column: 30, scope: !262)
!699 = !DILocation(line: 2179, column: 25, scope: !262)
!700 = !DILocation(line: 2180, column: 32, scope: !262)
!701 = !DILocation(line: 2180, column: 27, scope: !262)
!702 = !DILocation(line: 2181, column: 58, scope: !262)
!703 = !DILocation(line: 2181, column: 27, scope: !262)
!704 = !DILocation(line: 2181, column: 22, scope: !262)
!705 = !DILocation(line: 2182, column: 5, scope: !263)
!706 = !DILocation(line: 2183, column: 5, scope: !227)
!707 = !DILocation(line: 2187, column: 53, scope: !227)
!708 = !DILocation(line: 2187, column: 11, scope: !227)
!709 = !DILocation(line: 2188, column: 47, scope: !227)
!710 = !DILocation(line: 2188, column: 70, scope: !227)
!711 = !DILocation(line: 2188, column: 11, scope: !227)
!712 = !DILocation(line: 2189, column: 52, scope: !227)
!713 = !DILocation(line: 2189, column: 11, scope: !227)
!714 = !DILocation(line: 2190, column: 11, scope: !227)
!715 = !DILocation(line: 2192, column: 5, scope: !227)
!716 = !DILocation(line: 2195, column: 38, scope: !227)
!717 = !DILocation(line: 2195, column: 11, scope: !227)
!718 = !DILocation(line: 2197, column: 5, scope: !227)
!719 = !DILocation(line: 2199, column: 13, scope: !227)
!720 = !DILocation(line: 2102, column: 12, scope: !227)
!721 = !DILocation(line: 2200, column: 14, scope: !227)
!722 = !DILocation(line: 2200, column: 11, scope: !227)
!723 = !DILocation(line: 2202, column: 5, scope: !227)
!724 = !DILocation(line: 2204, column: 33, scope: !227)
!725 = !DILocation(line: 2204, column: 54, scope: !227)
!726 = !DILocation(line: 2204, column: 14, scope: !227)
!727 = !DILocation(line: 2204, column: 11, scope: !227)
!728 = !DILocation(line: 2206, column: 14, scope: !227)
!729 = !DILocation(line: 2206, column: 11, scope: !227)
!730 = !DILocation(line: 2207, column: 14, scope: !227)
!731 = !DILocation(line: 2207, column: 11, scope: !227)
!732 = !DILocation(line: 2208, column: 14, scope: !227)
!733 = !DILocation(line: 2208, column: 11, scope: !227)
!734 = !DILocation(line: 2209, column: 11, scope: !227)
!735 = !DILocation(line: 2210, column: 1, scope: !227)
!736 = !DILocation(line: 52, column: 24, scope: !268)
!737 = !DILocation(line: 52, column: 36, scope: !268)
!738 = !DILocation(line: 58, column: 14, scope: !739)
!739 = distinct !DILexicalBlock(scope: !268, file: !1, line: 58, column: 9)
!740 = !DILocation(line: 58, column: 9, scope: !268)
!741 = !DILocation(line: 60, column: 12, scope: !268)
!742 = !DILocation(line: 60, column: 5, scope: !268)
!743 = !DILocation(line: 64, column: 25, scope: !272)
!744 = !DILocation(line: 64, column: 36, scope: !272)
!745 = !DILocation(line: 64, column: 48, scope: !272)
!746 = !DILocation(line: 66, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !272, file: !1, line: 66, column: 9)
!748 = !DILocation(line: 66, column: 9, scope: !272)
!749 = !DILocation(line: 68, column: 12, scope: !272)
!750 = !DILocation(line: 68, column: 5, scope: !272)
!751 = !DILocation(line: 72, column: 22, scope: !277)
!752 = !DILocation(line: 72, column: 33, scope: !277)
!753 = !DILocation(line: 74, column: 5, scope: !277)
!754 = !DILocation(line: 75, column: 1, scope: !277)
!755 = !DILocation(line: 1125, column: 24, scope: !281)
!756 = !DILocation(line: 1125, column: 36, scope: !281)
!757 = !DILocation(line: 1132, column: 24, scope: !281)
!758 = !DILocation(line: 1144, column: 17, scope: !759)
!759 = distinct !DILexicalBlock(scope: !281, file: !1, line: 1144, column: 9)
!760 = !DILocation(line: 1144, column: 22, scope: !759)
!761 = !DILocation(line: 1144, column: 9, scope: !281)
!762 = !DILocation(line: 1149, column: 16, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !1, line: 1144, column: 49)
!764 = !DILocation(line: 1149, column: 35, scope: !763)
!765 = !DILocation(line: 1130, column: 10, scope: !281)
!766 = !DILocation(line: 1150, column: 31, scope: !763)
!767 = !DILocation(line: 1150, column: 16, scope: !763)
!768 = !DILocation(line: 1128, column: 11, scope: !281)
!769 = !DILocation(line: 1151, column: 27, scope: !770)
!770 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1151, column: 13)
!771 = !DILocation(line: 1176, column: 26, scope: !772)
!772 = distinct !DILexicalBlock(scope: !770, file: !1, line: 1151, column: 37)
!773 = !{!661, !382, i64 16}
!774 = !DILocation(line: 1151, column: 18, scope: !770)
!775 = !DILocation(line: 1151, column: 13, scope: !763)
!776 = !DILocation(line: 1156, column: 25, scope: !772)
!777 = !DILocation(line: 1156, column: 13, scope: !772)
!778 = !DILocation(line: 1157, column: 24, scope: !772)
!779 = !{!661, !382, i64 8}
!780 = !DILocation(line: 1127, column: 12, scope: !281)
!781 = !DILocation(line: 1159, column: 37, scope: !782)
!782 = distinct !DILexicalBlock(scope: !772, file: !1, line: 1159, column: 17)
!783 = !DILocation(line: 1159, column: 36, scope: !782)
!784 = !DILocation(line: 1159, column: 34, scope: !782)
!785 = !DILocation(line: 1159, column: 51, scope: !782)
!786 = !DILocation(line: 1159, column: 17, scope: !772)
!787 = !DILocation(line: 1166, column: 23, scope: !788)
!788 = distinct !DILexicalBlock(scope: !772, file: !1, line: 1166, column: 17)
!789 = !DILocation(line: 1170, column: 34, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !1, line: 1166, column: 58)
!791 = !{!661, !630, i64 40}
!792 = !DILocation(line: 1166, column: 43, scope: !788)
!793 = !{!661, !630, i64 44}
!794 = !DILocation(line: 1166, column: 34, scope: !788)
!795 = !DILocation(line: 1166, column: 17, scope: !772)
!796 = !DILocation(line: 1168, column: 35, scope: !790)
!797 = !DILocation(line: 1168, column: 48, scope: !790)
!798 = !DILocation(line: 1168, column: 33, scope: !790)
!799 = !DILocation(line: 1170, column: 37, scope: !790)
!800 = !DILocation(line: 1171, column: 35, scope: !790)
!801 = !DILocation(line: 1171, column: 46, scope: !790)
!802 = !DILocation(line: 1173, column: 17, scope: !790)
!803 = !DILocation(line: 1129, column: 11, scope: !281)
!804 = !DILocation(line: 1177, column: 26, scope: !772)
!805 = !{!661, !382, i64 24}
!806 = !DILocation(line: 1178, column: 19, scope: !772)
!807 = !DILocation(line: 1178, column: 28, scope: !772)
!808 = !DILocation(line: 1179, column: 19, scope: !772)
!809 = !DILocation(line: 1179, column: 28, scope: !772)
!810 = !DILocation(line: 1181, column: 13, scope: !772)
!811 = !DILocation(line: 1187, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1187, column: 13)
!813 = !DILocation(line: 1187, column: 27, scope: !812)
!814 = !DILocation(line: 1187, column: 13, scope: !763)
!815 = !DILocation(line: 913, column: 9, scope: !300, inlinedAt: !816)
!816 = distinct !DILocation(line: 1195, column: 29, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1187, column: 36)
!818 = !DILocation(line: 913, column: 30, scope: !300, inlinedAt: !816)
!819 = !DILocation(line: 913, column: 9, scope: !291, inlinedAt: !816)
!820 = !DILocation(line: 921, column: 21, scope: !299, inlinedAt: !816)
!821 = !DILocation(line: 921, column: 43, scope: !299, inlinedAt: !816)
!822 = !DILocation(line: 915, column: 14, scope: !299, inlinedAt: !816)
!823 = !DILocation(line: 922, column: 23, scope: !824, inlinedAt: !816)
!824 = distinct !DILexicalBlock(scope: !299, file: !1, line: 922, column: 13)
!825 = !DILocation(line: 922, column: 13, scope: !299, inlinedAt: !816)
!826 = !DILocation(line: 928, column: 18, scope: !299, inlinedAt: !816)
!827 = !DILocation(line: 928, column: 28, scope: !299, inlinedAt: !816)
!828 = !DILocation(line: 916, column: 16, scope: !299, inlinedAt: !816)
!829 = !DILocation(line: 929, column: 60, scope: !299, inlinedAt: !816)
!830 = !DILocation(line: 280, column: 24, scope: !114, inlinedAt: !831)
!831 = distinct !DILocation(line: 929, column: 43, scope: !299, inlinedAt: !816)
!832 = !DILocation(line: 280, column: 36, scope: !114, inlinedAt: !831)
!833 = !DILocation(line: 285, column: 23, scope: !114, inlinedAt: !831)
!834 = !DILocation(line: 285, column: 42, scope: !114, inlinedAt: !831)
!835 = !DILocation(line: 285, column: 12, scope: !114, inlinedAt: !831)
!836 = !DILocation(line: 930, column: 22, scope: !837, inlinedAt: !816)
!837 = distinct !DILexicalBlock(scope: !299, file: !1, line: 930, column: 13)
!838 = !DILocation(line: 930, column: 13, scope: !299, inlinedAt: !816)
!839 = !DILocation(line: 932, column: 16, scope: !299, inlinedAt: !816)
!840 = !DILocation(line: 951, column: 40, scope: !299, inlinedAt: !816)
!841 = !DILocation(line: 914, column: 14, scope: !299, inlinedAt: !816)
!842 = !DILocation(line: 944, column: 31, scope: !843, inlinedAt: !816)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 944, column: 9)
!844 = distinct !DILexicalBlock(scope: !299, file: !1, line: 944, column: 9)
!845 = !DILocation(line: 944, column: 9, scope: !844, inlinedAt: !816)
!846 = !DILocation(line: 951, column: 33, scope: !299, inlinedAt: !816)
!847 = !DILocation(line: 946, column: 49, scope: !848, inlinedAt: !816)
!848 = distinct !DILexicalBlock(scope: !843, file: !1, line: 944, column: 49)
!849 = !DILocation(line: 945, column: 23, scope: !848, inlinedAt: !816)
!850 = !DILocation(line: 945, column: 31, scope: !848, inlinedAt: !816)
!851 = !DILocation(line: 946, column: 37, scope: !848, inlinedAt: !816)
!852 = !DILocation(line: 947, column: 45, scope: !848, inlinedAt: !816)
!853 = !DILocation(line: 947, column: 37, scope: !848, inlinedAt: !816)
!854 = !DILocation(line: 946, column: 35, scope: !848, inlinedAt: !816)
!855 = !DILocation(line: 946, column: 23, scope: !848, inlinedAt: !816)
!856 = !DILocation(line: 946, column: 33, scope: !848, inlinedAt: !816)
!857 = !{!636, !382, i64 32}
!858 = !DILocation(line: 946, column: 13, scope: !848, inlinedAt: !816)
!859 = !DILocation(line: 1195, column: 29, scope: !817)
!860 = !DILocation(line: 951, column: 30, scope: !299, inlinedAt: !816)
!861 = !DILocation(line: 952, column: 19, scope: !299, inlinedAt: !816)
!862 = !DILocation(line: 957, column: 16, scope: !291, inlinedAt: !816)
!863 = !DILocation(line: 905, column: 26, scope: !291, inlinedAt: !816)
!864 = !DILocation(line: 958, column: 38, scope: !291, inlinedAt: !816)
!865 = !DILocation(line: 958, column: 26, scope: !291, inlinedAt: !816)
!866 = !DILocation(line: 960, column: 31, scope: !291, inlinedAt: !816)
!867 = !{!868, !382, i64 8}
!868 = !{!"", !382, i64 0, !382, i64 8, !382, i64 16}
!869 = !DILocation(line: 960, column: 53, scope: !291, inlinedAt: !816)
!870 = !{!868, !382, i64 0}
!871 = !DILocation(line: 960, column: 15, scope: !291, inlinedAt: !816)
!872 = !DILocation(line: 907, column: 11, scope: !291, inlinedAt: !816)
!873 = !DILocation(line: 961, column: 17, scope: !874, inlinedAt: !816)
!874 = distinct !DILexicalBlock(scope: !291, file: !1, line: 961, column: 9)
!875 = !DILocation(line: 961, column: 9, scope: !291, inlinedAt: !816)
!876 = !DILocation(line: 965, column: 31, scope: !877, inlinedAt: !816)
!877 = distinct !DILexicalBlock(scope: !874, file: !1, line: 961, column: 26)
!878 = !DILocation(line: 965, column: 29, scope: !877, inlinedAt: !816)
!879 = !DILocation(line: 966, column: 30, scope: !877, inlinedAt: !816)
!880 = !DILocation(line: 967, column: 9, scope: !877, inlinedAt: !816)
!881 = !DILocation(line: 969, column: 25, scope: !291, inlinedAt: !816)
!882 = !DILocation(line: 969, column: 15, scope: !291, inlinedAt: !816)
!883 = !DILocation(line: 969, column: 23, scope: !291, inlinedAt: !816)
!884 = !DILocation(line: 971, column: 5, scope: !291, inlinedAt: !816)
!885 = !DILocation(line: 972, column: 5, scope: !291, inlinedAt: !816)
!886 = !DILocation(line: 973, column: 39, scope: !887, inlinedAt: !816)
!887 = distinct !DILexicalBlock(scope: !291, file: !1, line: 973, column: 9)
!888 = !DILocation(line: 973, column: 37, scope: !887, inlinedAt: !816)
!889 = !DILocation(line: 973, column: 9, scope: !291, inlinedAt: !816)
!890 = !DILocation(line: 974, column: 27, scope: !887, inlinedAt: !816)
!891 = !DILocation(line: 974, column: 9, scope: !887, inlinedAt: !816)
!892 = !DILocation(line: 975, column: 15, scope: !291, inlinedAt: !816)
!893 = !DILocation(line: 975, column: 25, scope: !291, inlinedAt: !816)
!894 = !{!636, !382, i64 24}
!895 = !DILocation(line: 978, column: 48, scope: !291, inlinedAt: !816)
!896 = !DILocation(line: 978, column: 15, scope: !291, inlinedAt: !816)
!897 = !DILocation(line: 978, column: 28, scope: !291, inlinedAt: !816)
!898 = !DILocation(line: 979, column: 15, scope: !291, inlinedAt: !816)
!899 = !DILocation(line: 979, column: 26, scope: !291, inlinedAt: !816)
!900 = !DILocation(line: 981, column: 14, scope: !291, inlinedAt: !816)
!901 = !DILocation(line: 906, column: 10, scope: !291, inlinedAt: !816)
!902 = !DILocation(line: 982, column: 16, scope: !903, inlinedAt: !816)
!903 = distinct !DILexicalBlock(scope: !291, file: !1, line: 982, column: 9)
!904 = !DILocation(line: 982, column: 9, scope: !291, inlinedAt: !816)
!905 = !DILocation(line: 984, column: 32, scope: !906, inlinedAt: !816)
!906 = distinct !DILexicalBlock(scope: !903, file: !1, line: 982, column: 22)
!907 = !DILocation(line: 983, column: 9, scope: !906, inlinedAt: !816)
!908 = !DILocation(line: 984, column: 45, scope: !906, inlinedAt: !816)
!909 = !DILocation(line: 985, column: 5, scope: !906, inlinedAt: !816)
!910 = !DILocation(line: 1195, column: 27, scope: !817)
!911 = !DILocation(line: 1196, column: 17, scope: !817)
!912 = !DILocation(line: 986, column: 39, scope: !291, inlinedAt: !816)
!913 = !DILocation(line: 986, column: 15, scope: !291, inlinedAt: !816)
!914 = !DILocation(line: 986, column: 27, scope: !291, inlinedAt: !816)
!915 = !{!636, !630, i64 20}
!916 = !DILocation(line: 1201, column: 32, scope: !817)
!917 = !DILocation(line: 1201, column: 42, scope: !817)
!918 = !{!636, !382, i64 40}
!919 = !DILocation(line: 1200, column: 13, scope: !817)
!920 = !DILocation(line: 1200, column: 28, scope: !817)
!921 = !DILocation(line: 1200, column: 38, scope: !817)
!922 = !DILocation(line: 1206, column: 16, scope: !763)
!923 = !DILocation(line: 1202, column: 9, scope: !817)
!924 = !DILocation(line: 1287, column: 9, scope: !763)
!925 = !DILocation(line: 1206, column: 31, scope: !763)
!926 = !DILocation(line: 1207, column: 18, scope: !927)
!927 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1207, column: 13)
!928 = !DILocation(line: 1207, column: 13, scope: !763)
!929 = !DILocation(line: 1209, column: 46, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !1, line: 1207, column: 27)
!931 = !DILocation(line: 1209, column: 38, scope: !930)
!932 = !DILocation(line: 1218, column: 15, scope: !930)
!933 = !DILocation(line: 1218, column: 30, scope: !930)
!934 = !DILocation(line: 1218, column: 13, scope: !930)
!935 = !DILocation(line: 1219, column: 43, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !1, line: 1219, column: 17)
!937 = !DILocation(line: 1219, column: 17, scope: !930)
!938 = !DILocation(line: 1226, column: 48, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !1, line: 1219, column: 49)
!940 = !DILocation(line: 1226, column: 31, scope: !939)
!941 = !DILocation(line: 1227, column: 35, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1227, column: 21)
!943 = !DILocation(line: 1227, column: 21, scope: !939)
!944 = !DILocation(line: 1228, column: 36, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1227, column: 44)
!946 = !DILocation(line: 1228, column: 46, scope: !945)
!947 = !DILocation(line: 1230, column: 17, scope: !945)
!948 = !DILocation(line: 1245, column: 20, scope: !930)
!949 = !DILocation(line: 1246, column: 19, scope: !930)
!950 = !DILocation(line: 1246, column: 28, scope: !930)
!951 = !DILocation(line: 1247, column: 19, scope: !930)
!952 = !DILocation(line: 1247, column: 28, scope: !930)
!953 = !DILocation(line: 1248, column: 19, scope: !930)
!954 = !DILocation(line: 1248, column: 28, scope: !930)
!955 = !DILocation(line: 1249, column: 19, scope: !930)
!956 = !DILocation(line: 1249, column: 28, scope: !930)
!957 = !DILocation(line: 1250, column: 23, scope: !930)
!958 = !DILocation(line: 1250, column: 29, scope: !930)
!959 = !DILocation(line: 1251, column: 23, scope: !960)
!960 = distinct !DILexicalBlock(scope: !930, file: !1, line: 1251, column: 17)
!961 = !DILocation(line: 1251, column: 29, scope: !960)
!962 = !DILocation(line: 1251, column: 17, scope: !930)
!963 = !DILocation(line: 1256, column: 28, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !1, line: 1251, column: 38)
!965 = !DILocation(line: 1258, column: 35, scope: !964)
!966 = !DILocation(line: 1258, column: 33, scope: !964)
!967 = !DILocation(line: 1260, column: 17, scope: !964)
!968 = !DILocation(line: 1267, column: 25, scope: !930)
!969 = !DILocation(line: 1268, column: 20, scope: !930)
!970 = !DILocation(line: 1269, column: 32, scope: !930)
!971 = !DILocation(line: 1270, column: 54, scope: !930)
!972 = !DILocation(line: 1270, column: 46, scope: !930)
!973 = !DILocation(line: 1270, column: 19, scope: !930)
!974 = !DILocation(line: 1270, column: 30, scope: !930)
!975 = !DILocation(line: 1271, column: 45, scope: !930)
!976 = !DILocation(line: 1271, column: 19, scope: !930)
!977 = !DILocation(line: 1271, column: 33, scope: !930)
!978 = !DILocation(line: 1272, column: 34, scope: !930)
!979 = !DILocation(line: 1272, column: 19, scope: !930)
!980 = !DILocation(line: 1272, column: 29, scope: !930)
!981 = !DILocation(line: 1273, column: 14, scope: !930)
!982 = !DILocation(line: 1273, column: 42, scope: !930)
!983 = !DILocation(line: 1275, column: 13, scope: !930)
!984 = !DILocation(line: 1281, column: 38, scope: !763)
!985 = !DILocation(line: 1284, column: 44, scope: !763)
!986 = !DILocation(line: 1284, column: 42, scope: !763)
!987 = !DILocation(line: 1284, column: 28, scope: !763)
!988 = !DILocation(line: 1284, column: 15, scope: !763)
!989 = !DILocation(line: 1284, column: 26, scope: !763)
!990 = !{!661, !630, i64 32}
!991 = !DILocation(line: 1286, column: 15, scope: !763)
!992 = !DILocation(line: 1286, column: 21, scope: !763)
!993 = !DILocation(line: 1287, column: 37, scope: !763)
!994 = !DILocation(line: 1288, column: 11, scope: !763)
!995 = !DILocation(line: 1288, column: 26, scope: !763)
!996 = !DILocation(line: 1288, column: 9, scope: !763)
!997 = !DILocation(line: 1290, column: 39, scope: !998)
!998 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1290, column: 13)
!999 = !DILocation(line: 1290, column: 13, scope: !763)
!1000 = !DILocation(line: 1295, column: 44, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1290, column: 45)
!1002 = !DILocation(line: 1295, column: 27, scope: !1001)
!1003 = !DILocation(line: 1296, column: 31, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 1296, column: 17)
!1005 = !DILocation(line: 1296, column: 17, scope: !1001)
!1006 = !DILocation(line: 1297, column: 32, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1296, column: 40)
!1008 = !DILocation(line: 1297, column: 42, scope: !1007)
!1009 = !DILocation(line: 1299, column: 13, scope: !1007)
!1010 = !DILocation(line: 265, column: 24, scope: !109, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 1314, column: 24, scope: !290)
!1012 = !DILocation(line: 273, column: 14, scope: !413, inlinedAt: !1011)
!1013 = !DILocation(line: 273, column: 9, scope: !109, inlinedAt: !1011)
!1014 = !DILocation(line: 276, column: 23, scope: !109, inlinedAt: !1011)
!1015 = !DILocation(line: 276, column: 41, scope: !109, inlinedAt: !1011)
!1016 = !DILocation(line: 276, column: 12, scope: !109, inlinedAt: !1011)
!1017 = !DILocation(line: 1314, column: 15, scope: !290)
!1018 = !DILocation(line: 1315, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !290, file: !1, line: 1315, column: 13)
!1020 = !DILocation(line: 1315, column: 13, scope: !290)
!1021 = !DILocation(line: 1316, column: 32, scope: !1019)
!1022 = !DILocation(line: 1316, column: 13, scope: !1019)
!1023 = !DILocation(line: 1319, column: 1, scope: !281)
!1024 = !DILocation(line: 1554, column: 25, scope: !303)
!1025 = !DILocation(line: 1554, column: 36, scope: !303)
!1026 = !DILocation(line: 1554, column: 46, scope: !303)
!1027 = !DILocation(line: 1563, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !303, file: !1, line: 1563, column: 9)
!1029 = !DILocation(line: 1563, column: 9, scope: !303)
!1030 = !DILocation(line: 1564, column: 16, scope: !1028)
!1031 = !DILocation(line: 1564, column: 9, scope: !1028)
!1032 = !DILocation(line: 1572, column: 12, scope: !303)
!1033 = !DILocation(line: 1557, column: 11, scope: !303)
!1034 = !DILocation(line: 1573, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !303, file: !1, line: 1573, column: 9)
!1036 = !DILocation(line: 1560, column: 10, scope: !303)
!1037 = !DILocation(line: 1573, column: 9, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1035, file: !1, discriminator: 1)
!1039 = !DILocation(line: 1573, column: 9, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1035, file: !1, discriminator: 2)
!1041 = !DILocation(line: 1575, column: 16, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 1573, column: 39)
!1043 = !DILocation(line: 1558, column: 12, scope: !303)
!1044 = !DILocation(line: 1576, column: 20, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 1576, column: 13)
!1046 = !DILocation(line: 1576, column: 13, scope: !1042)
!1047 = !DILocation(line: 1584, column: 19, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 1584, column: 17)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1576, column: 29)
!1050 = !DILocation(line: 1584, column: 32, scope: !1048)
!1051 = !DILocation(line: 1584, column: 28, scope: !1048)
!1052 = !DILocation(line: 1584, column: 17, scope: !1049)
!1053 = !DILocation(line: 1592, column: 14, scope: !1042)
!1054 = !DILocation(line: 1556, column: 11, scope: !303)
!1055 = !DILocation(line: 1593, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 1593, column: 13)
!1057 = !DILocation(line: 1593, column: 13, scope: !1042)
!1058 = !DILocation(line: 1594, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1593, column: 25)
!1060 = !DILocation(line: 1595, column: 13, scope: !1059)
!1061 = !DILocation(line: 1596, column: 9, scope: !1059)
!1062 = !DILocation(line: 1612, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !303, file: !1, line: 1612, column: 9)
!1064 = !DILocation(line: 280, column: 24, scope: !114, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 1620, column: 10, scope: !303)
!1066 = !DILocation(line: 1612, column: 9, scope: !303)
!1067 = !DILocation(line: 280, column: 36, scope: !114, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 1613, column: 16, scope: !1063)
!1069 = !DILocation(line: 283, column: 18, scope: !426, inlinedAt: !1068)
!1070 = !DILocation(line: 283, column: 9, scope: !114, inlinedAt: !1068)
!1071 = !DILocation(line: 285, column: 23, scope: !114, inlinedAt: !1068)
!1072 = !DILocation(line: 285, column: 42, scope: !114, inlinedAt: !1068)
!1073 = !DILocation(line: 285, column: 12, scope: !114, inlinedAt: !1068)
!1074 = !DILocation(line: 285, column: 5, scope: !114, inlinedAt: !1068)
!1075 = !DILocation(line: 280, column: 36, scope: !114, inlinedAt: !1065)
!1076 = !DILocation(line: 285, column: 23, scope: !114, inlinedAt: !1065)
!1077 = !DILocation(line: 285, column: 42, scope: !114, inlinedAt: !1065)
!1078 = !DILocation(line: 285, column: 12, scope: !114, inlinedAt: !1065)
!1079 = !DILocation(line: 1621, column: 12, scope: !303)
!1080 = !DILocation(line: 1621, column: 5, scope: !303)
!1081 = !DILocation(line: 1622, column: 1, scope: !303)
!1082 = !DILocation(line: 1325, column: 22, scope: !312)
!1083 = !DILocation(line: 1325, column: 33, scope: !312)
!1084 = !DILocation(line: 1335, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !312, file: !1, line: 1335, column: 9)
!1086 = !DILocation(line: 1335, column: 9, scope: !312)
!1087 = !DILocation(line: 1338, column: 24, scope: !312)
!1088 = !DILocation(line: 1345, column: 12, scope: !312)
!1089 = !DILocation(line: 1327, column: 11, scope: !312)
!1090 = !DILocation(line: 1346, column: 9, scope: !326)
!1091 = !DILocation(line: 1332, column: 10, scope: !312)
!1092 = !DILocation(line: 1346, column: 9, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !326, file: !1, discriminator: 1)
!1094 = !DILocation(line: 1346, column: 9, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !326, file: !1, discriminator: 2)
!1096 = !DILocation(line: 1356, column: 41, scope: !325)
!1097 = !DILocation(line: 1328, column: 12, scope: !312)
!1098 = !DILocation(line: 1356, column: 10, scope: !325)
!1099 = !DILocation(line: 1356, column: 22, scope: !325)
!1100 = !DILocation(line: 1357, column: 25, scope: !325)
!1101 = !DILocation(line: 1358, column: 13, scope: !324)
!1102 = !DILocation(line: 1526, column: 21, scope: !325)
!1103 = !DILocation(line: 1526, column: 9, scope: !325)
!1104 = !DILocation(line: 1358, column: 13, scope: !325)
!1105 = !DILocation(line: 1365, column: 35, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1365, column: 17)
!1107 = !DILocation(line: 1365, column: 17, scope: !323)
!1108 = !DILocation(line: 1375, column: 26, scope: !323)
!1109 = !DILocation(line: 1329, column: 11, scope: !312)
!1110 = !DILocation(line: 1376, column: 26, scope: !323)
!1111 = !DILocation(line: 1329, column: 17, scope: !312)
!1112 = !DILocation(line: 1377, column: 19, scope: !323)
!1113 = !DILocation(line: 1377, column: 28, scope: !323)
!1114 = !DILocation(line: 1378, column: 19, scope: !323)
!1115 = !DILocation(line: 1378, column: 28, scope: !323)
!1116 = !DILocation(line: 1383, column: 32, scope: !323)
!1117 = !DILocation(line: 1383, column: 19, scope: !323)
!1118 = !DILocation(line: 1359, column: 34, scope: !323)
!1119 = !DILocation(line: 1384, column: 34, scope: !323)
!1120 = !DILocation(line: 1384, column: 28, scope: !323)
!1121 = !DILocation(line: 1385, column: 27, scope: !323)
!1122 = !DILocation(line: 1386, column: 24, scope: !323)
!1123 = !DILocation(line: 1386, column: 18, scope: !323)
!1124 = !DILocation(line: 1360, column: 18, scope: !323)
!1125 = !DILocation(line: 1400, column: 27, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1400, column: 17)
!1127 = !DILocation(line: 1400, column: 20, scope: !1126)
!1128 = !DILocation(line: 1400, column: 17, scope: !323)
!1129 = !DILocation(line: 1411, column: 25, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 1411, column: 21)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 1400, column: 40)
!1132 = !DILocation(line: 1411, column: 35, scope: !1130)
!1133 = !DILocation(line: 1412, column: 41, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 1411, column: 44)
!1135 = !DILocation(line: 1411, column: 21, scope: !1131)
!1136 = !DILocation(line: 1412, column: 35, scope: !1134)
!1137 = !DILocation(line: 1415, column: 17, scope: !1134)
!1138 = !DILocation(line: 1418, column: 36, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 1416, column: 22)
!1140 = !DILocation(line: 1418, column: 46, scope: !1139)
!1141 = !DILocation(line: 1422, column: 25, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 1422, column: 21)
!1143 = !DILocation(line: 1422, column: 35, scope: !1142)
!1144 = !DILocation(line: 1422, column: 21, scope: !1131)
!1145 = !DILocation(line: 1425, column: 29, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 1422, column: 44)
!1147 = !DILocation(line: 1424, column: 36, scope: !1146)
!1148 = !DILocation(line: 1424, column: 46, scope: !1146)
!1149 = !DILocation(line: 1426, column: 17, scope: !1146)
!1150 = !DILocation(line: 1430, column: 33, scope: !1131)
!1151 = !DILocation(line: 1430, column: 31, scope: !1131)
!1152 = !DILocation(line: 1431, column: 38, scope: !1131)
!1153 = !DILocation(line: 1434, column: 33, scope: !1131)
!1154 = !{!868, !382, i64 16}
!1155 = !DILocation(line: 1434, column: 54, scope: !1131)
!1156 = !DILocation(line: 1435, column: 50, scope: !1131)
!1157 = !DILocation(line: 1434, column: 17, scope: !1131)
!1158 = !DILocation(line: 1436, column: 29, scope: !1131)
!1159 = !DILocation(line: 1437, column: 17, scope: !1131)
!1160 = !DILocation(line: 1440, column: 17, scope: !1131)
!1161 = !DILocation(line: 1442, column: 20, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1442, column: 17)
!1163 = !DILocation(line: 1442, column: 17, scope: !323)
!1164 = !DILocation(line: 1448, column: 33, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 1442, column: 26)
!1166 = !DILocation(line: 1448, column: 21, scope: !1165)
!1167 = !DILocation(line: 1448, column: 31, scope: !1165)
!1168 = !DILocation(line: 1449, column: 21, scope: !1165)
!1169 = !DILocation(line: 1449, column: 31, scope: !1165)
!1170 = !DILocation(line: 1450, column: 21, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 1450, column: 21)
!1172 = !DILocation(line: 1450, column: 21, scope: !1165)
!1173 = !DILocation(line: 1451, column: 36, scope: !1171)
!1174 = !DILocation(line: 1451, column: 46, scope: !1171)
!1175 = !DILocation(line: 1451, column: 21, scope: !1171)
!1176 = !DILocation(line: 1452, column: 31, scope: !1165)
!1177 = !DILocation(line: 1456, column: 17, scope: !1165)
!1178 = !DILocation(line: 1465, column: 21, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1465, column: 17)
!1180 = !DILocation(line: 1465, column: 31, scope: !1179)
!1181 = !DILocation(line: 1465, column: 39, scope: !1179)
!1182 = !DILocation(line: 1466, column: 47, scope: !1179)
!1183 = !DILocation(line: 1466, column: 29, scope: !1179)
!1184 = !DILocation(line: 1465, column: 17, scope: !323)
!1185 = !DILocation(line: 1476, column: 21, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1476, column: 17)
!1187 = !DILocation(line: 1476, column: 31, scope: !1186)
!1188 = !DILocation(line: 1476, column: 17, scope: !323)
!1189 = !DILocation(line: 1479, column: 32, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 1476, column: 40)
!1191 = !DILocation(line: 1479, column: 42, scope: !1190)
!1192 = !DILocation(line: 1486, column: 44, scope: !323)
!1193 = !DILocation(line: 1480, column: 13, scope: !1190)
!1194 = !DILocation(line: 1484, column: 31, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 1481, column: 18)
!1196 = !DILocation(line: 1486, column: 17, scope: !323)
!1197 = !DILocation(line: 1486, column: 28, scope: !323)
!1198 = !DILocation(line: 1486, column: 38, scope: !323)
!1199 = !DILocation(line: 1491, column: 34, scope: !323)
!1200 = !DILocation(line: 1491, column: 42, scope: !323)
!1201 = !DILocation(line: 1493, column: 37, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1492, column: 61)
!1203 = !DILocation(line: 1492, column: 49, scope: !323)
!1204 = !DILocation(line: 1492, column: 32, scope: !323)
!1205 = !DILocation(line: 1491, column: 13, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !323, file: !1, discriminator: 2)
!1207 = !DILocation(line: 1493, column: 31, scope: !1202)
!1208 = !DILocation(line: 1494, column: 37, scope: !1202)
!1209 = !DILocation(line: 1494, column: 48, scope: !1202)
!1210 = !DILocation(line: 1494, column: 31, scope: !1202)
!1211 = !DILocation(line: 1502, column: 17, scope: !323)
!1212 = !DILocation(line: 1502, column: 28, scope: !323)
!1213 = !DILocation(line: 1502, column: 38, scope: !323)
!1214 = !DILocation(line: 1503, column: 21, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !323, file: !1, line: 1503, column: 17)
!1216 = !DILocation(line: 1503, column: 31, scope: !1215)
!1217 = !DILocation(line: 1503, column: 17, scope: !323)
!1218 = !DILocation(line: 1504, column: 32, scope: !1215)
!1219 = !DILocation(line: 1504, column: 42, scope: !1215)
!1220 = !DILocation(line: 1504, column: 17, scope: !1215)
!1221 = !DILocation(line: 1528, column: 22, scope: !325)
!1222 = !DILocation(line: 1330, column: 10, scope: !312)
!1223 = !DILocation(line: 1529, column: 31, scope: !325)
!1224 = !DILocation(line: 1529, column: 16, scope: !325)
!1225 = !DILocation(line: 1530, column: 22, scope: !325)
!1226 = !DILocation(line: 1532, column: 15, scope: !325)
!1227 = !DILocation(line: 1532, column: 24, scope: !325)
!1228 = !DILocation(line: 1533, column: 15, scope: !325)
!1229 = !DILocation(line: 1533, column: 24, scope: !325)
!1230 = !DILocation(line: 1534, column: 24, scope: !325)
!1231 = !DILocation(line: 1535, column: 15, scope: !325)
!1232 = !DILocation(line: 1535, column: 24, scope: !325)
!1233 = !DILocation(line: 1537, column: 9, scope: !325)
!1234 = !DILocation(line: 288, column: 26, scope: !118, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 1544, column: 5, scope: !312)
!1236 = !DILocation(line: 290, column: 16, scope: !118, inlinedAt: !1235)
!1237 = !DILocation(line: 290, column: 32, scope: !118, inlinedAt: !1235)
!1238 = !DILocation(line: 290, column: 5, scope: !118, inlinedAt: !1235)
!1239 = !DILocation(line: 1545, column: 1, scope: !312)
!1240 = !DILocation(line: 94, column: 27, scope: !328)
!1241 = !DILocation(line: 94, column: 39, scope: !328)
!1242 = !DILocation(line: 97, column: 11, scope: !328)
!1243 = !DILocation(line: 96, column: 11, scope: !328)
!1244 = !DILocation(line: 99, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !328, file: !1, line: 99, column: 9)
!1246 = !DILocation(line: 100, column: 9, scope: !1245)
!1247 = !DILocation(line: 103, column: 1, scope: !328)
!1248 = !DILocation(line: 106, column: 29, scope: !333)
!1249 = !DILocation(line: 106, column: 40, scope: !333)
!1250 = !DILocation(line: 106, column: 52, scope: !333)
!1251 = !DILocation(line: 108, column: 5, scope: !333)
!1252 = !DILocation(line: 109, column: 1, scope: !333)
