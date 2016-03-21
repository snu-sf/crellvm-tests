; ModuleID = 'irs-onlybc/obmalloc.bc'
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
  ret void, !dbg !374
}

; Function Attrs: nounwind uwtable
define void @PyMem_GetAllocator(i32 %domain, %struct.PyMemAllocator* %allocator) #0 {
entry:
  %domain.addr = alloca i32, align 4
  %allocator.addr = alloca %struct.PyMemAllocator*, align 8
  store i32 %domain, i32* %domain.addr, align 4, !tbaa !375
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !85, metadata !378), !dbg !379
  store %struct.PyMemAllocator* %allocator, %struct.PyMemAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %allocator.addr, metadata !86, metadata !378), !dbg !382
  %0 = load i32, i32* %domain.addr, align 4, !dbg !383, !tbaa !375
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ], !dbg !384

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !385, !tbaa !380
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*, !dbg !387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i64 32, i32 8, i1 false), !dbg !387, !tbaa.struct !388
  br label %sw.epilog, !dbg !389

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !390, !tbaa !380
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*, !dbg !391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i64 32, i32 8, i1 false), !dbg !391, !tbaa.struct !388
  br label %sw.epilog, !dbg !392

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !393, !tbaa !380
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*, !dbg !394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i64 32, i32 8, i1 false), !dbg !394, !tbaa.struct !388
  br label %sw.epilog, !dbg !395

sw.default:                                       ; preds = %entry
  %7 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !396, !tbaa !380
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %7, i32 0, i32 0, !dbg !397
  store i8* null, i8** %ctx, align 8, !dbg !398, !tbaa !399
  %8 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !401, !tbaa !380
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %8, i32 0, i32 1, !dbg !402
  store i8* (i8*, i64)* null, i8* (i8*, i64)** %malloc, align 8, !dbg !403, !tbaa !404
  %9 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !405, !tbaa !380
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %9, i32 0, i32 2, !dbg !406
  store i8* (i8*, i8*, i64)* null, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !407, !tbaa !408
  %10 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !409, !tbaa !380
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %10, i32 0, i32 3, !dbg !410
  store void (i8*, i8*)* null, void (i8*, i8*)** %free, align 8, !dbg !411, !tbaa !412
  br label %sw.epilog, !dbg !413

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !414
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @PyMem_SetAllocator(i32 %domain, %struct.PyMemAllocator* %allocator) #0 {
entry:
  %domain.addr = alloca i32, align 4
  %allocator.addr = alloca %struct.PyMemAllocator*, align 8
  store i32 %domain, i32* %domain.addr, align 4, !tbaa !375
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !89, metadata !378), !dbg !415
  store %struct.PyMemAllocator* %allocator, %struct.PyMemAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %allocator.addr, metadata !90, metadata !378), !dbg !416
  %0 = load i32, i32* %domain.addr, align 4, !dbg !417, !tbaa !375
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ], !dbg !418

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !419, !tbaa !380
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*, !dbg !421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i8* %2, i64 32, i32 8, i1 false), !dbg !421, !tbaa.struct !388
  br label %sw.epilog, !dbg !422

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !423, !tbaa !380
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*, !dbg !424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i8* %4, i64 32, i32 8, i1 false), !dbg !424, !tbaa.struct !388
  br label %sw.epilog, !dbg !425

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !426, !tbaa !380
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*, !dbg !427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i8* %6, i64 32, i32 8, i1 false), !dbg !427, !tbaa.struct !388
  br label %sw.epilog, !dbg !428

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !429
}

; Function Attrs: nounwind uwtable
define void @PyObject_GetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyObjectArenaAllocator** %allocator.addr, metadata !106, metadata !378), !dbg !430
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !dbg !431, !tbaa !380
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*, !dbg !432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i64 24, i32 8, i1 false), !dbg !432, !tbaa.struct !433
  ret void, !dbg !434
}

; Function Attrs: nounwind uwtable
define void @PyObject_SetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyObjectArenaAllocator** %allocator.addr, metadata !109, metadata !378), !dbg !435
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !dbg !436, !tbaa !380
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*, !dbg !437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i8* %1, i64 24, i32 8, i1 false), !dbg !437, !tbaa.struct !433
  ret void, !dbg !438
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawMalloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !114, metadata !378), !dbg !441
  %0 = load i64, i64* %size.addr, align 8, !dbg !442, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !444
  br i1 %cmp, label %if.then, label %if.end, !dbg !445

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !446
  br label %return, !dbg !446

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 1), align 8, !dbg !447, !tbaa !404
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !448, !tbaa !399
  %3 = load i64, i64* %size.addr, align 8, !dbg !449, !tbaa !439
  %call = call i8* %1(i8* %2, i64 %3), !dbg !450
  store i8* %call, i8** %retval, !dbg !451
  br label %return, !dbg !451

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !452
  ret i8* %4, !dbg !452
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawRealloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !117, metadata !378), !dbg !453
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !118, metadata !378), !dbg !454
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !455, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !457
  br i1 %cmp, label %if.then, label %if.end, !dbg !458

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !459
  br label %return, !dbg !459

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 2), align 8, !dbg !460, !tbaa !408
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !461, !tbaa !399
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !462, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !463, !tbaa !439
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !464
  store i8* %call, i8** %retval, !dbg !465
  br label %return, !dbg !465

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !466
  ret i8* %5, !dbg !466
}

; Function Attrs: nounwind uwtable
define void @PyMem_RawFree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !123, metadata !378), !dbg !467
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 3), align 8, !dbg !468, !tbaa !412
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !469, !tbaa !399
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !470, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !126, metadata !378), !dbg !473
  %0 = load i64, i64* %size.addr, align 8, !dbg !474, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !476
  br i1 %cmp, label %if.then, label %if.end, !dbg !477

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !478
  br label %return, !dbg !478

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 1), align 8, !dbg !479, !tbaa !404
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !480, !tbaa !399
  %3 = load i64, i64* %size.addr, align 8, !dbg !481, !tbaa !439
  %call = call i8* %1(i8* %2, i64 %3), !dbg !482
  store i8* %call, i8** %retval, !dbg !483
  br label %return, !dbg !483

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !484
  ret i8* %4, !dbg !484
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !129, metadata !378), !dbg !485
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !130, metadata !378), !dbg !486
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !487, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !491
  br label %return, !dbg !491

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 2), align 8, !dbg !492, !tbaa !408
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !493, !tbaa !399
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !494, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !495, !tbaa !439
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !496
  store i8* %call, i8** %retval, !dbg !497
  br label %return, !dbg !497

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !498
  ret i8* %5, !dbg !498
}

; Function Attrs: nounwind uwtable
define void @PyMem_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !133, metadata !378), !dbg !499
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 3), align 8, !dbg !500, !tbaa !412
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !501, !tbaa !399
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !502, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: nounwind uwtable
define i8* @_PyMem_RawStrdup(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %copy = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !141, metadata !378), !dbg !505
  %0 = bitcast i64* %size to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !506
  call void @llvm.dbg.declare(metadata i64* %size, metadata !142, metadata !378), !dbg !507
  %1 = bitcast i8** %copy to i8*, !dbg !508
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !508
  call void @llvm.dbg.declare(metadata i8** %copy, metadata !143, metadata !378), !dbg !509
  %2 = load i8*, i8** %str.addr, align 8, !dbg !510, !tbaa !380
  %call = call i64 @strlen(i8* %2) #6, !dbg !511
  %add = add i64 %call, 1, !dbg !512
  store i64 %add, i64* %size, align 8, !dbg !513, !tbaa !439
  %3 = load i64, i64* %size, align 8, !dbg !514, !tbaa !439
  %call1 = call i8* @PyMem_RawMalloc(i64 %3), !dbg !515
  store i8* %call1, i8** %copy, align 8, !dbg !516, !tbaa !380
  %4 = load i8*, i8** %copy, align 8, !dbg !517, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !519
  br i1 %cmp, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !521
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !521

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %copy, align 8, !dbg !522, !tbaa !380
  %6 = load i8*, i8** %str.addr, align 8, !dbg !523, !tbaa !380
  %7 = load i64, i64* %size, align 8, !dbg !524, !tbaa !439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false), !dbg !525
  %8 = load i8*, i8** %copy, align 8, !dbg !526, !tbaa !380
  store i8* %8, i8** %retval, !dbg !527
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !527

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %copy to i8*, !dbg !528
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !528
  %10 = bitcast i64* %size to i8*, !dbg !528
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !528
  %11 = load i8*, i8** %retval, !dbg !528
  ret i8* %11, !dbg !528
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i8* @_PyMem_Strdup(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %copy = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !146, metadata !378), !dbg !529
  %0 = bitcast i64* %size to i8*, !dbg !530
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !530
  call void @llvm.dbg.declare(metadata i64* %size, metadata !147, metadata !378), !dbg !531
  %1 = bitcast i8** %copy to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !532
  call void @llvm.dbg.declare(metadata i8** %copy, metadata !148, metadata !378), !dbg !533
  %2 = load i8*, i8** %str.addr, align 8, !dbg !534, !tbaa !380
  %call = call i64 @strlen(i8* %2) #6, !dbg !535
  %add = add i64 %call, 1, !dbg !536
  store i64 %add, i64* %size, align 8, !dbg !537, !tbaa !439
  %3 = load i64, i64* %size, align 8, !dbg !538, !tbaa !439
  %call1 = call i8* @PyMem_Malloc(i64 %3), !dbg !539
  store i8* %call1, i8** %copy, align 8, !dbg !540, !tbaa !380
  %4 = load i8*, i8** %copy, align 8, !dbg !541, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !543
  br i1 %cmp, label %if.then, label %if.end, !dbg !544

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !545

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %copy, align 8, !dbg !546, !tbaa !380
  %6 = load i8*, i8** %str.addr, align 8, !dbg !547, !tbaa !380
  %7 = load i64, i64* %size, align 8, !dbg !548, !tbaa !439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false), !dbg !549
  %8 = load i8*, i8** %copy, align 8, !dbg !550, !tbaa !380
  store i8* %8, i8** %retval, !dbg !551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !551

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %copy to i8*, !dbg !552
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !552
  %10 = bitcast i64* %size to i8*, !dbg !552
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !552
  %11 = load i8*, i8** %retval, !dbg !552
  ret i8* %11, !dbg !552
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !151, metadata !378), !dbg !553
  %0 = load i64, i64* %size.addr, align 8, !dbg !554, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !556
  br i1 %cmp, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !558
  br label %return, !dbg !558

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 1), align 8, !dbg !559, !tbaa !404
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !560, !tbaa !399
  %3 = load i64, i64* %size.addr, align 8, !dbg !561, !tbaa !439
  %call = call i8* %1(i8* %2, i64 %3), !dbg !562
  store i8* %call, i8** %retval, !dbg !563
  br label %return, !dbg !563

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !564
  ret i8* %4, !dbg !564
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !154, metadata !378), !dbg !565
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !155, metadata !378), !dbg !566
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !567, !tbaa !439
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !569
  br i1 %cmp, label %if.then, label %if.end, !dbg !570

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !571
  br label %return, !dbg !571

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 2), align 8, !dbg !572, !tbaa !408
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !573, !tbaa !399
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !574, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !575, !tbaa !439
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !576
  store i8* %call, i8** %retval, !dbg !577
  br label %return, !dbg !577

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !578
  ret i8* %5, !dbg !578
}

; Function Attrs: nounwind uwtable
define void @PyObject_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !158, metadata !378), !dbg !579
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 3), align 8, !dbg !580, !tbaa !412
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !581, !tbaa !399
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !582, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: nounwind uwtable
define i64 @_Py_GetAllocatedBlocks() #0 {
entry:
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !585, !tbaa !439
  ret i64 %0, !dbg !586
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
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !219, metadata !378), !dbg !587
  store i8* %block_name, i8** %block_name.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %block_name.addr, metadata !220, metadata !378), !dbg !588
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !589
  call void @llvm.dbg.declare(metadata i32* %num_blocks.addr, metadata !221, metadata !378), !dbg !591
  store i64 %sizeof_block, i64* %sizeof_block.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %sizeof_block.addr, metadata !222, metadata !378), !dbg !592
  %0 = bitcast [128 x i8]* %buf1 to i8*, !dbg !593
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !593
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !223, metadata !378), !dbg !594
  %1 = bitcast [128 x i8]* %buf2 to i8*, !dbg !595
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !595
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !227, metadata !378), !dbg !596
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0, !dbg !597
  %2 = load i32, i32* %num_blocks.addr, align 4, !dbg !598, !tbaa !589
  %3 = load i8*, i8** %block_name.addr, align 8, !dbg !599, !tbaa !380
  %4 = load i64, i64* %sizeof_block.addr, align 8, !dbg !600, !tbaa !439
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %2, i8* %3, i64 %4), !dbg !601
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0, !dbg !602
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0, !dbg !603
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay2), !dbg !604
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !605, !tbaa !380
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0, !dbg !606
  %6 = load i32, i32* %num_blocks.addr, align 4, !dbg !607, !tbaa !589
  %conv = sext i32 %6 to i64, !dbg !607
  %7 = load i64, i64* %sizeof_block.addr, align 8, !dbg !608, !tbaa !439
  %mul = mul i64 %conv, %7, !dbg !609
  %call5 = call i64 @printone(%struct._IO_FILE* %5, i8* %arraydecay4, i64 %mul), !dbg !610
  %8 = bitcast [128 x i8]* %buf2 to i8*, !dbg !611
  call void @llvm.lifetime.end(i64 128, i8* %8) #2, !dbg !611
  %9 = bitcast [128 x i8]* %buf1 to i8*, !dbg !611
  call void @llvm.lifetime.end(i64 128, i8* %9) #2, !dbg !611
  ret void, !dbg !611
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #4

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
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !343, metadata !378), !dbg !612
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !344, metadata !378), !dbg !613
  store i64 %value, i64* %value.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !345, metadata !378), !dbg !614
  %0 = bitcast i32* %i to i8*, !dbg !615
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !615
  call void @llvm.dbg.declare(metadata i32* %i, metadata !346, metadata !378), !dbg !616
  %1 = bitcast i32* %k to i8*, !dbg !615
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !615
  call void @llvm.dbg.declare(metadata i32* %k, metadata !347, metadata !378), !dbg !617
  %2 = bitcast [100 x i8]* %buf to i8*, !dbg !618
  call void @llvm.lifetime.start(i64 100, i8* %2) #2, !dbg !618
  call void @llvm.dbg.declare(metadata [100 x i8]* %buf, metadata !348, metadata !378), !dbg !619
  %3 = bitcast i64* %origvalue to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !620
  call void @llvm.dbg.declare(metadata i64* %origvalue, metadata !352, metadata !378), !dbg !621
  %4 = load i64, i64* %value.addr, align 8, !dbg !622, !tbaa !439
  store i64 %4, i64* %origvalue, align 8, !dbg !621, !tbaa !439
  %5 = load i8*, i8** %msg.addr, align 8, !dbg !623, !tbaa !380
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !624, !tbaa !380
  %call = call i32 @fputs(i8* %5, %struct._IO_FILE* %6), !dbg !625
  %7 = load i8*, i8** %msg.addr, align 8, !dbg !626, !tbaa !380
  %call1 = call i64 @strlen(i8* %7) #6, !dbg !628
  %conv = trunc i64 %call1 to i32, !dbg !629
  store i32 %conv, i32* %i, align 4, !dbg !630, !tbaa !589
  br label %for.cond, !dbg !631

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !632, !tbaa !589
  %cmp = icmp slt i32 %8, 35, !dbg !636
  br i1 %cmp, label %for.body, label %for.end, !dbg !637

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !638, !tbaa !380
  %call3 = call i32 @fputc(i32 32, %struct._IO_FILE* %9), !dbg !639
  br label %for.inc, !dbg !639

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !640, !tbaa !589
  %inc = add i32 %10, 1, !dbg !640
  store i32 %inc, i32* %i, align 4, !dbg !640, !tbaa !589
  br label %for.cond, !dbg !641

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !642, !tbaa !380
  %call4 = call i32 @fputc(i32 61, %struct._IO_FILE* %11), !dbg !643
  store i32 22, i32* %i, align 4, !dbg !644, !tbaa !589
  %12 = load i32, i32* %i, align 4, !dbg !645, !tbaa !589
  %dec = add i32 %12, -1, !dbg !645
  store i32 %dec, i32* %i, align 4, !dbg !645, !tbaa !589
  %idxprom = sext i32 %12 to i64, !dbg !646
  %arrayidx = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom, !dbg !646
  store i8 0, i8* %arrayidx, align 1, !dbg !647, !tbaa !375
  %13 = load i32, i32* %i, align 4, !dbg !648, !tbaa !589
  %dec5 = add i32 %13, -1, !dbg !648
  store i32 %dec5, i32* %i, align 4, !dbg !648, !tbaa !589
  %idxprom6 = sext i32 %13 to i64, !dbg !649
  %arrayidx7 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom6, !dbg !649
  store i8 10, i8* %arrayidx7, align 1, !dbg !650, !tbaa !375
  store i32 3, i32* %k, align 4, !dbg !651, !tbaa !589
  br label %do.body, !dbg !652

do.body:                                          ; preds = %land.end, %for.end
  %14 = bitcast i64* %nextvalue to i8*, !dbg !653
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !653
  call void @llvm.dbg.declare(metadata i64* %nextvalue, metadata !353, metadata !378), !dbg !654
  %15 = load i64, i64* %value.addr, align 8, !dbg !655, !tbaa !439
  %div = udiv i64 %15, 10, !dbg !656
  store i64 %div, i64* %nextvalue, align 8, !dbg !654, !tbaa !439
  %16 = bitcast i32* %digit to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !657
  call void @llvm.dbg.declare(metadata i32* %digit, metadata !355, metadata !378), !dbg !658
  %17 = load i64, i64* %value.addr, align 8, !dbg !659, !tbaa !439
  %18 = load i64, i64* %nextvalue, align 8, !dbg !660, !tbaa !439
  %mul = mul i64 %18, 10, !dbg !661
  %sub = sub i64 %17, %mul, !dbg !662
  %conv8 = trunc i64 %sub to i32, !dbg !663
  store i32 %conv8, i32* %digit, align 4, !dbg !658, !tbaa !589
  %19 = load i64, i64* %nextvalue, align 8, !dbg !664, !tbaa !439
  store i64 %19, i64* %value.addr, align 8, !dbg !665, !tbaa !439
  %20 = load i32, i32* %digit, align 4, !dbg !666, !tbaa !589
  %add = add i32 %20, 48, !dbg !667
  %conv9 = trunc i32 %add to i8, !dbg !668
  %21 = load i32, i32* %i, align 4, !dbg !669, !tbaa !589
  %dec10 = add i32 %21, -1, !dbg !669
  store i32 %dec10, i32* %i, align 4, !dbg !669, !tbaa !589
  %idxprom11 = sext i32 %21 to i64, !dbg !670
  %arrayidx12 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom11, !dbg !670
  store i8 %conv9, i8* %arrayidx12, align 1, !dbg !671, !tbaa !375
  %22 = load i32, i32* %k, align 4, !dbg !672, !tbaa !589
  %dec13 = add i32 %22, -1, !dbg !672
  store i32 %dec13, i32* %k, align 4, !dbg !672, !tbaa !589
  %23 = load i32, i32* %k, align 4, !dbg !673, !tbaa !589
  %cmp14 = icmp eq i32 %23, 0, !dbg !675
  br i1 %cmp14, label %land.lhs.true, label %if.end, !dbg !676

land.lhs.true:                                    ; preds = %do.body
  %24 = load i64, i64* %value.addr, align 8, !dbg !677, !tbaa !439
  %tobool = icmp ne i64 %24, 0, !dbg !677
  br i1 %tobool, label %land.lhs.true.16, label %if.end, !dbg !679

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %i, align 4, !dbg !680, !tbaa !589
  %cmp17 = icmp sge i32 %25, 0, !dbg !682
  br i1 %cmp17, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %land.lhs.true.16
  store i32 3, i32* %k, align 4, !dbg !684, !tbaa !589
  %26 = load i32, i32* %i, align 4, !dbg !686, !tbaa !589
  %dec19 = add i32 %26, -1, !dbg !686
  store i32 %dec19, i32* %i, align 4, !dbg !686, !tbaa !589
  %idxprom20 = sext i32 %26 to i64, !dbg !687
  %arrayidx21 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom20, !dbg !687
  store i8 44, i8* %arrayidx21, align 1, !dbg !688, !tbaa !375
  br label %if.end, !dbg !689

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true, %do.body
  %27 = bitcast i32* %digit to i8*, !dbg !690
  call void @llvm.lifetime.end(i64 4, i8* %27) #2, !dbg !690
  %28 = bitcast i64* %nextvalue to i8*, !dbg !690
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !690
  br label %do.cond, !dbg !691

do.cond:                                          ; preds = %if.end
  %29 = load i64, i64* %value.addr, align 8, !dbg !692, !tbaa !439
  %tobool22 = icmp ne i64 %29, 0, !dbg !692
  br i1 %tobool22, label %land.rhs, label %land.end, !dbg !694

land.rhs:                                         ; preds = %do.cond
  %30 = load i32, i32* %i, align 4, !dbg !695, !tbaa !589
  %cmp23 = icmp sge i32 %30, 0, !dbg !697
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %cmp23, %land.rhs ]
  br i1 %31, label %do.body, label %do.end, !dbg !698

do.end:                                           ; preds = %land.end
  br label %while.cond, !dbg !700

while.cond:                                       ; preds = %while.body, %do.end
  %32 = load i32, i32* %i, align 4, !dbg !701, !tbaa !589
  %cmp25 = icmp sge i32 %32, 0, !dbg !703
  br i1 %cmp25, label %while.body, label %while.end, !dbg !700

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %i, align 4, !dbg !704, !tbaa !589
  %dec27 = add i32 %33, -1, !dbg !704
  store i32 %dec27, i32* %i, align 4, !dbg !704, !tbaa !589
  %idxprom28 = sext i32 %33 to i64, !dbg !705
  %arrayidx29 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom28, !dbg !705
  store i8 32, i8* %arrayidx29, align 1, !dbg !706, !tbaa !375
  br label %while.cond, !dbg !700

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0, !dbg !707
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !708, !tbaa !380
  %call30 = call i32 @fputs(i8* %arraydecay, %struct._IO_FILE* %34), !dbg !709
  %35 = load i64, i64* %origvalue, align 8, !dbg !710, !tbaa !439
  %36 = bitcast i64* %origvalue to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !711
  %37 = bitcast [100 x i8]* %buf to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 100, i8* %37) #2, !dbg !711
  %38 = bitcast i32* %k to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !711
  %39 = bitcast i32* %i to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !711
  ret i64 %35, !dbg !712
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
  %cleanup.dest.slot = alloca i32
  %p = alloca %struct.pool_header*, align 8
  %sz = alloca i32, align 4
  %freeblocks = alloca i32, align 4
  %p64 = alloca i64, align 8
  %b = alloca i64, align 8
  %f = alloca i64, align 8
  %size = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !232, metadata !378), !dbg !713
  %0 = bitcast i32* %i to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i32* %i, metadata !233, metadata !378), !dbg !715
  %1 = bitcast i32* %numclasses to i8*, !dbg !716
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !716
  call void @llvm.dbg.declare(metadata i32* %numclasses, metadata !234, metadata !378), !dbg !717
  store i32 64, i32* %numclasses, align 4, !dbg !717, !tbaa !589
  %2 = bitcast [64 x i64]* %numpools to i8*, !dbg !718
  call void @llvm.lifetime.start(i64 512, i8* %2) #2, !dbg !718
  call void @llvm.dbg.declare(metadata [64 x i64]* %numpools, metadata !236, metadata !378), !dbg !719
  %3 = bitcast [64 x i64]* %numblocks to i8*, !dbg !720
  call void @llvm.lifetime.start(i64 512, i8* %3) #2, !dbg !720
  call void @llvm.dbg.declare(metadata [64 x i64]* %numblocks, metadata !240, metadata !378), !dbg !721
  %4 = bitcast [64 x i64]* %numfreeblocks to i8*, !dbg !722
  call void @llvm.lifetime.start(i64 512, i8* %4) #2, !dbg !722
  call void @llvm.dbg.declare(metadata [64 x i64]* %numfreeblocks, metadata !241, metadata !378), !dbg !723
  %5 = bitcast i64* %allocated_bytes to i8*, !dbg !724
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !724
  call void @llvm.dbg.declare(metadata i64* %allocated_bytes, metadata !242, metadata !378), !dbg !725
  store i64 0, i64* %allocated_bytes, align 8, !dbg !725, !tbaa !439
  %6 = bitcast i64* %available_bytes to i8*, !dbg !726
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !726
  call void @llvm.dbg.declare(metadata i64* %available_bytes, metadata !243, metadata !378), !dbg !727
  store i64 0, i64* %available_bytes, align 8, !dbg !727, !tbaa !439
  %7 = bitcast i32* %numfreepools to i8*, !dbg !728
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !728
  call void @llvm.dbg.declare(metadata i32* %numfreepools, metadata !244, metadata !378), !dbg !729
  store i32 0, i32* %numfreepools, align 4, !dbg !729, !tbaa !589
  %8 = bitcast i64* %arena_alignment to i8*, !dbg !730
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !730
  call void @llvm.dbg.declare(metadata i64* %arena_alignment, metadata !245, metadata !378), !dbg !731
  store i64 0, i64* %arena_alignment, align 8, !dbg !731, !tbaa !439
  %9 = bitcast i64* %pool_header_bytes to i8*, !dbg !732
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %pool_header_bytes, metadata !246, metadata !378), !dbg !733
  store i64 0, i64* %pool_header_bytes, align 8, !dbg !733, !tbaa !439
  %10 = bitcast i64* %quantization to i8*, !dbg !734
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !734
  call void @llvm.dbg.declare(metadata i64* %quantization, metadata !247, metadata !378), !dbg !735
  store i64 0, i64* %quantization, align 8, !dbg !735, !tbaa !439
  %11 = bitcast i64* %narenas to i8*, !dbg !736
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !736
  call void @llvm.dbg.declare(metadata i64* %narenas, metadata !248, metadata !378), !dbg !737
  store i64 0, i64* %narenas, align 8, !dbg !737, !tbaa !439
  %12 = bitcast i64* %total to i8*, !dbg !738
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !738
  call void @llvm.dbg.declare(metadata i64* %total, metadata !249, metadata !378), !dbg !739
  %13 = bitcast [128 x i8]* %buf to i8*, !dbg !740
  call void @llvm.lifetime.start(i64 128, i8* %13) #2, !dbg !740
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !250, metadata !378), !dbg !741
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !742, !tbaa !380
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 512, i32 64), !dbg !743
  store i32 0, i32* %i, align 4, !dbg !744, !tbaa !589
  br label %for.cond, !dbg !746

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !dbg !747, !tbaa !589
  %cmp = icmp ult i32 %15, 64, !dbg !751
  br i1 %cmp, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !753, !tbaa !589
  %idxprom = zext i32 %16 to i64, !dbg !754
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom, !dbg !754
  store i64 0, i64* %arrayidx, align 8, !dbg !755, !tbaa !439
  %17 = load i32, i32* %i, align 4, !dbg !756, !tbaa !589
  %idxprom1 = zext i32 %17 to i64, !dbg !757
  %arrayidx2 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom1, !dbg !757
  store i64 0, i64* %arrayidx2, align 8, !dbg !758, !tbaa !439
  %18 = load i32, i32* %i, align 4, !dbg !759, !tbaa !589
  %idxprom3 = zext i32 %18 to i64, !dbg !760
  %arrayidx4 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom3, !dbg !760
  store i64 0, i64* %arrayidx4, align 8, !dbg !761, !tbaa !439
  br label %for.inc, !dbg !760

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !762, !tbaa !589
  %inc = add i32 %19, 1, !dbg !762
  store i32 %inc, i32* %i, align 4, !dbg !762, !tbaa !589
  br label %for.cond, !dbg !763

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !764, !tbaa !589
  br label %for.cond.5, !dbg !765

for.cond.5:                                       ; preds = %for.inc.55, %for.end
  %20 = load i32, i32* %i, align 4, !dbg !766, !tbaa !589
  %21 = load i32, i32* @maxarenas, align 4, !dbg !769, !tbaa !589
  %cmp6 = icmp ult i32 %20, %21, !dbg !770
  br i1 %cmp6, label %for.body.7, label %for.end.57, !dbg !771

for.body.7:                                       ; preds = %for.cond.5
  %22 = bitcast i32* %j to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !772
  call void @llvm.dbg.declare(metadata i32* %j, metadata !251, metadata !378), !dbg !773
  %23 = bitcast i64* %base to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !774
  call void @llvm.dbg.declare(metadata i64* %base, metadata !255, metadata !378), !dbg !775
  %24 = load i32, i32* %i, align 4, !dbg !776, !tbaa !589
  %idxprom8 = zext i32 %24 to i64, !dbg !777
  %25 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !777, !tbaa !380
  %arrayidx9 = getelementptr %struct.arena_object, %struct.arena_object* %25, i64 %idxprom8, !dbg !777
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx9, i32 0, i32 0, !dbg !778
  %26 = load i64, i64* %address, align 8, !dbg !778, !tbaa !779
  store i64 %26, i64* %base, align 8, !dbg !775, !tbaa !439
  %27 = load i32, i32* %i, align 4, !dbg !781, !tbaa !589
  %idxprom10 = zext i32 %27 to i64, !dbg !783
  %28 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !783, !tbaa !380
  %arrayidx11 = getelementptr %struct.arena_object, %struct.arena_object* %28, i64 %idxprom10, !dbg !783
  %address12 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx11, i32 0, i32 0, !dbg !784
  %29 = load i64, i64* %address12, align 8, !dbg !784, !tbaa !779
  %cmp13 = icmp eq i64 %29, 0, !dbg !785
  br i1 %cmp13, label %if.then, label %if.end, !dbg !786

if.then:                                          ; preds = %for.body.7
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.51, !dbg !787

if.end:                                           ; preds = %for.body.7
  %30 = load i64, i64* %narenas, align 8, !dbg !788, !tbaa !439
  %add = add i64 %30, 1, !dbg !788
  store i64 %add, i64* %narenas, align 8, !dbg !788, !tbaa !439
  %31 = load i32, i32* %i, align 4, !dbg !789, !tbaa !589
  %idxprom14 = zext i32 %31 to i64, !dbg !790
  %32 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !790, !tbaa !380
  %arrayidx15 = getelementptr %struct.arena_object, %struct.arena_object* %32, i64 %idxprom14, !dbg !790
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx15, i32 0, i32 2, !dbg !791
  %33 = load i32, i32* %nfreepools, align 4, !dbg !791, !tbaa !792
  %34 = load i32, i32* %numfreepools, align 4, !dbg !793, !tbaa !589
  %add16 = add i32 %34, %33, !dbg !793
  store i32 %add16, i32* %numfreepools, align 4, !dbg !793, !tbaa !589
  %35 = load i64, i64* %base, align 8, !dbg !794, !tbaa !439
  %and = and i64 %35, 4095, !dbg !796
  %tobool = icmp ne i64 %and, 0, !dbg !796
  br i1 %tobool, label %if.then.17, label %if.end.21, !dbg !797

if.then.17:                                       ; preds = %if.end
  %36 = load i64, i64* %arena_alignment, align 8, !dbg !798, !tbaa !439
  %add18 = add i64 %36, 4096, !dbg !798
  store i64 %add18, i64* %arena_alignment, align 8, !dbg !798, !tbaa !439
  %37 = load i64, i64* %base, align 8, !dbg !800, !tbaa !439
  %and19 = and i64 %37, -4096, !dbg !800
  store i64 %and19, i64* %base, align 8, !dbg !800, !tbaa !439
  %38 = load i64, i64* %base, align 8, !dbg !801, !tbaa !439
  %add20 = add i64 %38, 4096, !dbg !801
  store i64 %add20, i64* %base, align 8, !dbg !801, !tbaa !439
  br label %if.end.21, !dbg !802

if.end.21:                                        ; preds = %if.then.17, %if.end
  store i32 0, i32* %j, align 4, !dbg !803, !tbaa !589
  br label %for.cond.22, !dbg !804

for.cond.22:                                      ; preds = %for.inc.47, %if.end.21
  %39 = load i64, i64* %base, align 8, !dbg !805, !tbaa !439
  %40 = load i32, i32* %i, align 4, !dbg !806, !tbaa !589
  %idxprom23 = zext i32 %40 to i64, !dbg !807
  %41 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !807, !tbaa !380
  %arrayidx24 = getelementptr %struct.arena_object, %struct.arena_object* %41, i64 %idxprom23, !dbg !807
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx24, i32 0, i32 1, !dbg !808
  %42 = load i8*, i8** %pool_address, align 8, !dbg !808, !tbaa !809
  %43 = ptrtoint i8* %42 to i64, !dbg !810
  %cmp25 = icmp ult i64 %39, %43, !dbg !811
  br i1 %cmp25, label %for.body.26, label %for.end.50, !dbg !812

for.body.26:                                      ; preds = %for.cond.22
  %44 = bitcast %struct.pool_header** %p to i8*, !dbg !813
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.pool_header** %p, metadata !256, metadata !378), !dbg !814
  %45 = load i64, i64* %base, align 8, !dbg !815, !tbaa !439
  %46 = inttoptr i64 %45 to %struct.pool_header*, !dbg !816
  store %struct.pool_header* %46, %struct.pool_header** %p, align 8, !dbg !814, !tbaa !380
  %47 = bitcast i32* %sz to i8*, !dbg !817
  call void @llvm.lifetime.start(i64 4, i8* %47) #2, !dbg !817
  call void @llvm.dbg.declare(metadata i32* %sz, metadata !260, metadata !378), !dbg !818
  %48 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !819, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %48, i32 0, i32 5, !dbg !820
  %49 = load i32, i32* %szidx, align 4, !dbg !820, !tbaa !821
  store i32 %49, i32* %sz, align 4, !dbg !818, !tbaa !589
  %50 = bitcast i32* %freeblocks to i8*, !dbg !823
  call void @llvm.lifetime.start(i64 4, i8* %50) #2, !dbg !823
  call void @llvm.dbg.declare(metadata i32* %freeblocks, metadata !261, metadata !378), !dbg !824
  %51 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !825, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %51, i32 0, i32 0, !dbg !827
  %count = bitcast %union.anon* %ref to i32*, !dbg !828
  %52 = load i32, i32* %count, align 4, !dbg !828, !tbaa !589
  %cmp27 = icmp eq i32 %52, 0, !dbg !829
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !830

if.then.28:                                       ; preds = %for.body.26
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !831

if.end.29:                                        ; preds = %for.body.26
  %53 = load i32, i32* %sz, align 4, !dbg !833, !tbaa !589
  %idxprom30 = zext i32 %53 to i64, !dbg !834
  %arrayidx31 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom30, !dbg !834
  %54 = load i64, i64* %arrayidx31, align 8, !dbg !835, !tbaa !439
  %inc32 = add i64 %54, 1, !dbg !835
  store i64 %inc32, i64* %arrayidx31, align 8, !dbg !835, !tbaa !439
  %55 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !836, !tbaa !380
  %ref33 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %55, i32 0, i32 0, !dbg !837
  %count34 = bitcast %union.anon* %ref33 to i32*, !dbg !838
  %56 = load i32, i32* %count34, align 4, !dbg !838, !tbaa !589
  %conv = zext i32 %56 to i64, !dbg !836
  %57 = load i32, i32* %sz, align 4, !dbg !839, !tbaa !589
  %idxprom35 = zext i32 %57 to i64, !dbg !840
  %arrayidx36 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom35, !dbg !840
  %58 = load i64, i64* %arrayidx36, align 8, !dbg !841, !tbaa !439
  %add37 = add i64 %58, %conv, !dbg !841
  store i64 %add37, i64* %arrayidx36, align 8, !dbg !841, !tbaa !439
  %59 = load i32, i32* %sz, align 4, !dbg !842, !tbaa !589
  %add38 = add i32 %59, 1, !dbg !843
  %shl = shl i32 %add38, 3, !dbg !844
  %div = udiv i32 4048, %shl, !dbg !845
  %60 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !846, !tbaa !380
  %ref39 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %60, i32 0, i32 0, !dbg !847
  %count40 = bitcast %union.anon* %ref39 to i32*, !dbg !848
  %61 = load i32, i32* %count40, align 4, !dbg !848, !tbaa !589
  %sub = sub i32 %div, %61, !dbg !849
  store i32 %sub, i32* %freeblocks, align 4, !dbg !850, !tbaa !589
  %62 = load i32, i32* %freeblocks, align 4, !dbg !851, !tbaa !589
  %conv41 = zext i32 %62 to i64, !dbg !851
  %63 = load i32, i32* %sz, align 4, !dbg !852, !tbaa !589
  %idxprom42 = zext i32 %63 to i64, !dbg !853
  %arrayidx43 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom42, !dbg !853
  %64 = load i64, i64* %arrayidx43, align 8, !dbg !854, !tbaa !439
  %add44 = add i64 %64, %conv41, !dbg !854
  store i64 %add44, i64* %arrayidx43, align 8, !dbg !854, !tbaa !439
  store i32 0, i32* %cleanup.dest.slot, !dbg !855
  br label %cleanup, !dbg !855

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %65 = bitcast i32* %freeblocks to i8*, !dbg !856
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !856
  %66 = bitcast i32* %sz to i8*, !dbg !856
  call void @llvm.lifetime.end(i64 4, i8* %66) #2, !dbg !856
  %67 = bitcast %struct.pool_header** %p to i8*, !dbg !856
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !856
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc.47
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.47, !dbg !858

for.inc.47:                                       ; preds = %cleanup.cont, %cleanup
  %68 = load i32, i32* %j, align 4, !dbg !859, !tbaa !589
  %inc48 = add i32 %68, 1, !dbg !859
  store i32 %inc48, i32* %j, align 4, !dbg !859, !tbaa !589
  %69 = load i64, i64* %base, align 8, !dbg !860, !tbaa !439
  %add49 = add i64 %69, 4096, !dbg !860
  store i64 %add49, i64* %base, align 8, !dbg !860, !tbaa !439
  br label %for.cond.22, !dbg !861

for.end.50:                                       ; preds = %for.cond.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !862
  br label %cleanup.51, !dbg !862

cleanup.51:                                       ; preds = %for.end.50, %if.then
  %70 = bitcast i64* %base to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !863
  %71 = bitcast i32* %j to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !863
  %cleanup.dest.53 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.53, label %unreachable [
    i32 0, label %cleanup.cont.54
    i32 7, label %for.inc.55
  ]

cleanup.cont.54:                                  ; preds = %cleanup.51
  br label %for.inc.55, !dbg !864

for.inc.55:                                       ; preds = %cleanup.cont.54, %cleanup.51
  %72 = load i32, i32* %i, align 4, !dbg !865, !tbaa !589
  %inc56 = add i32 %72, 1, !dbg !865
  store i32 %inc56, i32* %i, align 4, !dbg !865, !tbaa !589
  br label %for.cond.5, !dbg !866

for.end.57:                                       ; preds = %for.cond.5
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !867, !tbaa !380
  %call58 = call i32 @fputc(i32 10, %struct._IO_FILE* %73), !dbg !868
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !869, !tbaa !380
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %74), !dbg !870
  store i32 0, i32* %i, align 4, !dbg !871, !tbaa !589
  br label %for.cond.60, !dbg !872

for.cond.60:                                      ; preds = %for.inc.94, %for.end.57
  %75 = load i32, i32* %i, align 4, !dbg !873, !tbaa !589
  %cmp61 = icmp ult i32 %75, 64, !dbg !876
  br i1 %cmp61, label %for.body.63, label %for.end.96, !dbg !877

for.body.63:                                      ; preds = %for.cond.60
  %76 = bitcast i64* %p64 to i8*, !dbg !878
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !878
  call void @llvm.dbg.declare(metadata i64* %p64, metadata !262, metadata !378), !dbg !879
  %77 = load i32, i32* %i, align 4, !dbg !880, !tbaa !589
  %idxprom65 = zext i32 %77 to i64, !dbg !881
  %arrayidx66 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom65, !dbg !881
  %78 = load i64, i64* %arrayidx66, align 8, !dbg !881, !tbaa !439
  store i64 %78, i64* %p64, align 8, !dbg !879, !tbaa !439
  %79 = bitcast i64* %b to i8*, !dbg !882
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !882
  call void @llvm.dbg.declare(metadata i64* %b, metadata !266, metadata !378), !dbg !883
  %80 = load i32, i32* %i, align 4, !dbg !884, !tbaa !589
  %idxprom67 = zext i32 %80 to i64, !dbg !885
  %arrayidx68 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom67, !dbg !885
  %81 = load i64, i64* %arrayidx68, align 8, !dbg !885, !tbaa !439
  store i64 %81, i64* %b, align 8, !dbg !883, !tbaa !439
  %82 = bitcast i64* %f to i8*, !dbg !886
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !886
  call void @llvm.dbg.declare(metadata i64* %f, metadata !267, metadata !378), !dbg !887
  %83 = load i32, i32* %i, align 4, !dbg !888, !tbaa !589
  %idxprom69 = zext i32 %83 to i64, !dbg !889
  %arrayidx70 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom69, !dbg !889
  %84 = load i64, i64* %arrayidx70, align 8, !dbg !889, !tbaa !439
  store i64 %84, i64* %f, align 8, !dbg !887, !tbaa !439
  %85 = bitcast i32* %size to i8*, !dbg !890
  call void @llvm.lifetime.start(i64 4, i8* %85) #2, !dbg !890
  call void @llvm.dbg.declare(metadata i32* %size, metadata !268, metadata !378), !dbg !891
  %86 = load i32, i32* %i, align 4, !dbg !892, !tbaa !589
  %add71 = add i32 %86, 1, !dbg !893
  %shl72 = shl i32 %add71, 3, !dbg !894
  store i32 %shl72, i32* %size, align 4, !dbg !891, !tbaa !589
  %87 = load i64, i64* %p64, align 8, !dbg !895, !tbaa !439
  %cmp73 = icmp eq i64 %87, 0, !dbg !897
  br i1 %cmp73, label %if.then.75, label %if.end.76, !dbg !898

if.then.75:                                       ; preds = %for.body.63
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.88, !dbg !899

if.end.76:                                        ; preds = %for.body.63
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !901, !tbaa !380
  %89 = load i32, i32* %i, align 4, !dbg !902, !tbaa !589
  %90 = load i32, i32* %size, align 4, !dbg !903, !tbaa !589
  %91 = load i64, i64* %p64, align 8, !dbg !904, !tbaa !439
  %92 = load i64, i64* %b, align 8, !dbg !905, !tbaa !439
  %93 = load i64, i64* %f, align 8, !dbg !906, !tbaa !439
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %89, i32 %90, i64 %91, i64 %92, i64 %93), !dbg !907
  %94 = load i64, i64* %b, align 8, !dbg !908, !tbaa !439
  %95 = load i32, i32* %size, align 4, !dbg !909, !tbaa !589
  %conv78 = zext i32 %95 to i64, !dbg !909
  %mul = mul i64 %94, %conv78, !dbg !910
  %96 = load i64, i64* %allocated_bytes, align 8, !dbg !911, !tbaa !439
  %add79 = add i64 %96, %mul, !dbg !911
  store i64 %add79, i64* %allocated_bytes, align 8, !dbg !911, !tbaa !439
  %97 = load i64, i64* %f, align 8, !dbg !912, !tbaa !439
  %98 = load i32, i32* %size, align 4, !dbg !913, !tbaa !589
  %conv80 = zext i32 %98 to i64, !dbg !913
  %mul81 = mul i64 %97, %conv80, !dbg !914
  %99 = load i64, i64* %available_bytes, align 8, !dbg !915, !tbaa !439
  %add82 = add i64 %99, %mul81, !dbg !915
  store i64 %add82, i64* %available_bytes, align 8, !dbg !915, !tbaa !439
  %100 = load i64, i64* %p64, align 8, !dbg !916, !tbaa !439
  %mul83 = mul i64 %100, 48, !dbg !917
  %101 = load i64, i64* %pool_header_bytes, align 8, !dbg !918, !tbaa !439
  %add84 = add i64 %101, %mul83, !dbg !918
  store i64 %add84, i64* %pool_header_bytes, align 8, !dbg !918, !tbaa !439
  %102 = load i64, i64* %p64, align 8, !dbg !919, !tbaa !439
  %103 = load i32, i32* %size, align 4, !dbg !920, !tbaa !589
  %conv85 = zext i32 %103 to i64, !dbg !920
  %rem = urem i64 4048, %conv85, !dbg !921
  %mul86 = mul i64 %102, %rem, !dbg !922
  %104 = load i64, i64* %quantization, align 8, !dbg !923, !tbaa !439
  %add87 = add i64 %104, %mul86, !dbg !923
  store i64 %add87, i64* %quantization, align 8, !dbg !923, !tbaa !439
  store i32 0, i32* %cleanup.dest.slot, !dbg !924
  br label %cleanup.88, !dbg !924

cleanup.88:                                       ; preds = %if.end.76, %if.then.75
  %105 = bitcast i32* %size to i8*, !dbg !925
  call void @llvm.lifetime.end(i64 4, i8* %105) #2, !dbg !925
  %106 = bitcast i64* %f to i8*, !dbg !925
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !925
  %107 = bitcast i64* %b to i8*, !dbg !925
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !925
  %108 = bitcast i64* %p64 to i8*, !dbg !925
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !925
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %unreachable [
    i32 0, label %cleanup.cont.93
    i32 13, label %for.inc.94
  ]

cleanup.cont.93:                                  ; preds = %cleanup.88
  br label %for.inc.94, !dbg !926

for.inc.94:                                       ; preds = %cleanup.cont.93, %cleanup.88
  %109 = load i32, i32* %i, align 4, !dbg !927, !tbaa !589
  %inc95 = add i32 %109, 1, !dbg !927
  store i32 %inc95, i32* %i, align 4, !dbg !927, !tbaa !589
  br label %for.cond.60, !dbg !928

for.end.96:                                       ; preds = %for.cond.60
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !929, !tbaa !380
  %call97 = call i32 @fputc(i32 10, %struct._IO_FILE* %110), !dbg !930
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !931, !tbaa !380
  %112 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !932, !tbaa !439
  %call98 = call i64 @printone(%struct._IO_FILE* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i64 %112), !dbg !933
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !934, !tbaa !380
  %114 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !935, !tbaa !439
  %115 = load i64, i64* %narenas, align 8, !dbg !936, !tbaa !439
  %sub99 = sub i64 %114, %115, !dbg !937
  %call100 = call i64 @printone(%struct._IO_FILE* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %sub99), !dbg !938
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !939, !tbaa !380
  %117 = load i64, i64* @narenas_highwater, align 8, !dbg !940, !tbaa !439
  %call101 = call i64 @printone(%struct._IO_FILE* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i64 %117), !dbg !941
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !942, !tbaa !380
  %119 = load i64, i64* %narenas, align 8, !dbg !943, !tbaa !439
  %call102 = call i64 @printone(%struct._IO_FILE* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 %119), !dbg !944
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !945
  %120 = load i64, i64* %narenas, align 8, !dbg !946, !tbaa !439
  %call103 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i64 %120, i32 262144), !dbg !947
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !948, !tbaa !380
  %arraydecay104 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !949
  %122 = load i64, i64* %narenas, align 8, !dbg !950, !tbaa !439
  %mul105 = mul i64 %122, 262144, !dbg !951
  %call106 = call i64 @printone(%struct._IO_FILE* %121, i8* %arraydecay104, i64 %mul105), !dbg !952
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !953, !tbaa !380
  %call107 = call i32 @fputc(i32 10, %struct._IO_FILE* %123), !dbg !954
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !955, !tbaa !380
  %125 = load i64, i64* %allocated_bytes, align 8, !dbg !956, !tbaa !439
  %call108 = call i64 @printone(%struct._IO_FILE* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i64 %125), !dbg !957
  store i64 %call108, i64* %total, align 8, !dbg !958, !tbaa !439
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !959, !tbaa !380
  %127 = load i64, i64* %available_bytes, align 8, !dbg !960, !tbaa !439
  %call109 = call i64 @printone(%struct._IO_FILE* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i64 %127), !dbg !961
  %128 = load i64, i64* %total, align 8, !dbg !962, !tbaa !439
  %add110 = add i64 %128, %call109, !dbg !962
  store i64 %add110, i64* %total, align 8, !dbg !962, !tbaa !439
  %arraydecay111 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !963
  %129 = load i32, i32* %numfreepools, align 4, !dbg !964, !tbaa !589
  %call112 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay111, i64 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %129, i32 4096), !dbg !965
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !966, !tbaa !380
  %arraydecay113 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !967
  %131 = load i32, i32* %numfreepools, align 4, !dbg !968, !tbaa !589
  %conv114 = zext i32 %131 to i64, !dbg !969
  %mul115 = mul i64 %conv114, 4096, !dbg !970
  %call116 = call i64 @printone(%struct._IO_FILE* %130, i8* %arraydecay113, i64 %mul115), !dbg !971
  %132 = load i64, i64* %total, align 8, !dbg !972, !tbaa !439
  %add117 = add i64 %132, %call116, !dbg !972
  store i64 %add117, i64* %total, align 8, !dbg !972, !tbaa !439
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !973, !tbaa !380
  %134 = load i64, i64* %pool_header_bytes, align 8, !dbg !974, !tbaa !439
  %call118 = call i64 @printone(%struct._IO_FILE* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i64 %134), !dbg !975
  %135 = load i64, i64* %total, align 8, !dbg !976, !tbaa !439
  %add119 = add i64 %135, %call118, !dbg !976
  store i64 %add119, i64* %total, align 8, !dbg !976, !tbaa !439
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !977, !tbaa !380
  %137 = load i64, i64* %quantization, align 8, !dbg !978, !tbaa !439
  %call120 = call i64 @printone(%struct._IO_FILE* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 %137), !dbg !979
  %138 = load i64, i64* %total, align 8, !dbg !980, !tbaa !439
  %add121 = add i64 %138, %call120, !dbg !980
  store i64 %add121, i64* %total, align 8, !dbg !980, !tbaa !439
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !981, !tbaa !380
  %140 = load i64, i64* %arena_alignment, align 8, !dbg !982, !tbaa !439
  %call122 = call i64 @printone(%struct._IO_FILE* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i64 %140), !dbg !983
  %141 = load i64, i64* %total, align 8, !dbg !984, !tbaa !439
  %add123 = add i64 %141, %call122, !dbg !984
  store i64 %add123, i64* %total, align 8, !dbg !984, !tbaa !439
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !985, !tbaa !380
  %143 = load i64, i64* %total, align 8, !dbg !986, !tbaa !439
  %call124 = call i64 @printone(%struct._IO_FILE* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 %143), !dbg !987
  %144 = bitcast [128 x i8]* %buf to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 128, i8* %144) #2, !dbg !988
  %145 = bitcast i64* %total to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !988
  %146 = bitcast i64* %narenas to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !988
  %147 = bitcast i64* %quantization to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !988
  %148 = bitcast i64* %pool_header_bytes to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %148) #2, !dbg !988
  %149 = bitcast i64* %arena_alignment to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %149) #2, !dbg !988
  %150 = bitcast i32* %numfreepools to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 4, i8* %150) #2, !dbg !988
  %151 = bitcast i64* %available_bytes to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !988
  %152 = bitcast i64* %allocated_bytes to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !988
  %153 = bitcast [64 x i64]* %numfreeblocks to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 512, i8* %153) #2, !dbg !988
  %154 = bitcast [64 x i64]* %numblocks to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 512, i8* %154) #2, !dbg !988
  %155 = bitcast [64 x i64]* %numpools to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 512, i8* %155) #2, !dbg !988
  %156 = bitcast i32* %numclasses to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 4, i8* %156) #2, !dbg !988
  %157 = bitcast i32* %i to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 4, i8* %157) #2, !dbg !988
  ret void, !dbg !988

unreachable:                                      ; preds = %cleanup.88, %cleanup.51, %cleanup
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fputc(i32, %struct._IO_FILE*) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal i8* @_PyMem_RawMalloc(i8* %ctx, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !271, metadata !378), !dbg !989
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !272, metadata !378), !dbg !990
  %0 = load i64, i64* %size.addr, align 8, !dbg !991, !tbaa !439
  %cmp = icmp eq i64 %0, 0, !dbg !993
  br i1 %cmp, label %if.then, label %if.end, !dbg !994

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8, !dbg !995, !tbaa !439
  br label %if.end, !dbg !996

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %size.addr, align 8, !dbg !997, !tbaa !439
  %call = call noalias i8* @malloc(i64 %1) #2, !dbg !998
  ret i8* %call, !dbg !999
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyMem_RawRealloc(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !275, metadata !378), !dbg !1000
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !276, metadata !378), !dbg !1001
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !277, metadata !378), !dbg !1002
  %0 = load i64, i64* %size.addr, align 8, !dbg !1003, !tbaa !439
  %cmp = icmp eq i64 %0, 0, !dbg !1005
  br i1 %cmp, label %if.then, label %if.end, !dbg !1006

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8, !dbg !1007, !tbaa !439
  br label %if.end, !dbg !1008

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !1009, !tbaa !380
  %2 = load i64, i64* %size.addr, align 8, !dbg !1010, !tbaa !439
  %call = call i8* @realloc(i8* %1, i64 %2) #2, !dbg !1011
  ret i8* %call, !dbg !1012
}

; Function Attrs: nounwind uwtable
define internal void @_PyMem_RawFree(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !280, metadata !378), !dbg !1013
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !281, metadata !378), !dbg !1014
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1015, !tbaa !380
  call void @free(i8* %0) #2, !dbg !1016
  ret void, !dbg !1017
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

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
  %cleanup.dest.slot = alloca i32
  %result = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !284, metadata !378), !dbg !1018
  store i64 %nbytes, i64* %nbytes.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !285, metadata !378), !dbg !1019
  %0 = bitcast i8** %bp to i8*, !dbg !1020
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1020
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !286, metadata !378), !dbg !1021
  %1 = bitcast %struct.pool_header** %pool to i8*, !dbg !1022
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1022
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !287, metadata !378), !dbg !1023
  %2 = bitcast %struct.pool_header** %next to i8*, !dbg !1024
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct.pool_header** %next, metadata !288, metadata !378), !dbg !1025
  %3 = bitcast i32* %size to i8*, !dbg !1026
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %size, metadata !289, metadata !378), !dbg !1027
  %4 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1028, !tbaa !439
  %inc = add i64 %4, 1, !dbg !1028
  store i64 %inc, i64* @_Py_AllocatedBlocks, align 8, !dbg !1028, !tbaa !439
  %5 = load i64, i64* %nbytes.addr, align 8, !dbg !1029, !tbaa !439
  %sub = sub i64 %5, 1, !dbg !1031
  %cmp = icmp ult i64 %sub, 512, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end.96, !dbg !1033

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %nbytes.addr, align 8, !dbg !1034, !tbaa !439
  %sub1 = sub i64 %6, 1, !dbg !1036
  %conv = trunc i64 %sub1 to i32, !dbg !1037
  %shr = lshr i32 %conv, 3, !dbg !1038
  store i32 %shr, i32* %size, align 4, !dbg !1039, !tbaa !589
  %7 = load i32, i32* %size, align 4, !dbg !1040, !tbaa !589
  %8 = load i32, i32* %size, align 4, !dbg !1041, !tbaa !589
  %add = add i32 %7, %8, !dbg !1042
  %idxprom = zext i32 %add to i64, !dbg !1043
  %arrayidx = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom, !dbg !1043
  %9 = load %struct.pool_header*, %struct.pool_header** %arrayidx, align 8, !dbg !1043, !tbaa !380
  store %struct.pool_header* %9, %struct.pool_header** %pool, align 8, !dbg !1044, !tbaa !380
  %10 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1045, !tbaa !380
  %11 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1047, !tbaa !380
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i32 0, i32 2, !dbg !1048
  %12 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8, !dbg !1048, !tbaa !1049
  %cmp2 = icmp ne %struct.pool_header* %10, %12, !dbg !1050
  br i1 %cmp2, label %if.then.4, label %if.end.23, !dbg !1051

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1052, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %13, i32 0, i32 0, !dbg !1054
  %count = bitcast %union.anon* %ref to i32*, !dbg !1055
  %14 = load i32, i32* %count, align 4, !dbg !1056, !tbaa !589
  %inc5 = add i32 %14, 1, !dbg !1056
  store i32 %inc5, i32* %count, align 4, !dbg !1056, !tbaa !589
  %15 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1057, !tbaa !380
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %15, i32 0, i32 1, !dbg !1058
  %16 = load i8*, i8** %freeblock, align 8, !dbg !1058, !tbaa !1059
  store i8* %16, i8** %bp, align 8, !dbg !1060, !tbaa !380
  %17 = load i8*, i8** %bp, align 8, !dbg !1061, !tbaa !380
  %18 = bitcast i8* %17 to i8**, !dbg !1063
  %19 = load i8*, i8** %18, align 8, !dbg !1064, !tbaa !380
  %20 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1065, !tbaa !380
  %freeblock6 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %20, i32 0, i32 1, !dbg !1066
  store i8* %19, i8** %freeblock6, align 8, !dbg !1067, !tbaa !1059
  %cmp7 = icmp ne i8* %19, null, !dbg !1068
  br i1 %cmp7, label %if.then.9, label %if.end, !dbg !1069

if.then.9:                                        ; preds = %if.then.4
  %21 = load i8*, i8** %bp, align 8, !dbg !1070, !tbaa !380
  store i8* %21, i8** %retval, !dbg !1072
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1072

if.end:                                           ; preds = %if.then.4
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1073, !tbaa !380
  %nextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %22, i32 0, i32 6, !dbg !1075
  %23 = load i32, i32* %nextoffset, align 4, !dbg !1075, !tbaa !1076
  %24 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1077, !tbaa !380
  %maxnextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %24, i32 0, i32 7, !dbg !1078
  %25 = load i32, i32* %maxnextoffset, align 4, !dbg !1078, !tbaa !1079
  %cmp10 = icmp ule i32 %23, %25, !dbg !1080
  br i1 %cmp10, label %if.then.12, label %if.end.19, !dbg !1081

if.then.12:                                       ; preds = %if.end
  %26 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1082, !tbaa !380
  %27 = bitcast %struct.pool_header* %26 to i8*, !dbg !1084
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1085, !tbaa !380
  %nextoffset13 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 6, !dbg !1086
  %29 = load i32, i32* %nextoffset13, align 4, !dbg !1086, !tbaa !1076
  %idx.ext = zext i32 %29 to i64, !dbg !1087
  %add.ptr = getelementptr i8, i8* %27, i64 %idx.ext, !dbg !1087
  %30 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1088, !tbaa !380
  %freeblock14 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %30, i32 0, i32 1, !dbg !1089
  store i8* %add.ptr, i8** %freeblock14, align 8, !dbg !1090, !tbaa !1059
  %31 = load i32, i32* %size, align 4, !dbg !1091, !tbaa !589
  %add15 = add i32 %31, 1, !dbg !1092
  %shl = shl i32 %add15, 3, !dbg !1093
  %32 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1094, !tbaa !380
  %nextoffset16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %32, i32 0, i32 6, !dbg !1095
  %33 = load i32, i32* %nextoffset16, align 4, !dbg !1096, !tbaa !1076
  %add17 = add i32 %33, %shl, !dbg !1096
  store i32 %add17, i32* %nextoffset16, align 4, !dbg !1096, !tbaa !1076
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1097, !tbaa !380
  %freeblock18 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 1, !dbg !1098
  %35 = load i8*, i8** %freeblock18, align 8, !dbg !1098, !tbaa !1059
  %36 = bitcast i8* %35 to i8**, !dbg !1099
  store i8* null, i8** %36, align 8, !dbg !1100, !tbaa !380
  %37 = load i8*, i8** %bp, align 8, !dbg !1101, !tbaa !380
  store i8* %37, i8** %retval, !dbg !1102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1102

if.end.19:                                        ; preds = %if.end
  %38 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1103, !tbaa !380
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %38, i32 0, i32 2, !dbg !1104
  %39 = load %struct.pool_header*, %struct.pool_header** %nextpool20, align 8, !dbg !1104, !tbaa !1049
  store %struct.pool_header* %39, %struct.pool_header** %next, align 8, !dbg !1105, !tbaa !380
  %40 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1106, !tbaa !380
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %40, i32 0, i32 3, !dbg !1107
  %41 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !1107, !tbaa !1108
  store %struct.pool_header* %41, %struct.pool_header** %pool, align 8, !dbg !1109, !tbaa !380
  %42 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1110, !tbaa !380
  %43 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1111, !tbaa !380
  %prevpool21 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %43, i32 0, i32 3, !dbg !1112
  store %struct.pool_header* %42, %struct.pool_header** %prevpool21, align 8, !dbg !1113, !tbaa !1108
  %44 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1114, !tbaa !380
  %45 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1115, !tbaa !380
  %nextpool22 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %45, i32 0, i32 2, !dbg !1116
  store %struct.pool_header* %44, %struct.pool_header** %nextpool22, align 8, !dbg !1117, !tbaa !1049
  %46 = load i8*, i8** %bp, align 8, !dbg !1118, !tbaa !380
  store i8* %46, i8** %retval, !dbg !1119
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1119

if.end.23:                                        ; preds = %if.then
  %47 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1120, !tbaa !380
  %cmp24 = icmp eq %struct.arena_object* %47, null, !dbg !1122
  br i1 %cmp24, label %if.then.26, label %if.end.31, !dbg !1123

if.then.26:                                       ; preds = %if.end.23
  %call = call %struct.arena_object* @new_arena(), !dbg !1124
  store %struct.arena_object* %call, %struct.arena_object** @usable_arenas, align 8, !dbg !1126, !tbaa !380
  %48 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1127, !tbaa !380
  %cmp27 = icmp eq %struct.arena_object* %48, null, !dbg !1129
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !1130

if.then.29:                                       ; preds = %if.then.26
  br label %redirect, !dbg !1131

if.end.30:                                        ; preds = %if.then.26
  %49 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1133, !tbaa !380
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 6, !dbg !1134
  store %struct.arena_object* null, %struct.arena_object** %prevarena, align 8, !dbg !1135, !tbaa !1136
  %50 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1137, !tbaa !380
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %50, i32 0, i32 5, !dbg !1138
  store %struct.arena_object* null, %struct.arena_object** %nextarena, align 8, !dbg !1139, !tbaa !1140
  br label %if.end.31, !dbg !1141

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %51 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1142, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %51, i32 0, i32 4, !dbg !1143
  %52 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8, !dbg !1143, !tbaa !1144
  store %struct.pool_header* %52, %struct.pool_header** %pool, align 8, !dbg !1145, !tbaa !380
  %53 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1146, !tbaa !380
  %cmp32 = icmp ne %struct.pool_header* %53, null, !dbg !1148
  br i1 %cmp32, label %if.then.34, label %if.end.78, !dbg !1149

if.then.34:                                       ; preds = %if.end.31
  %54 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1150, !tbaa !380
  %nextpool35 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %54, i32 0, i32 2, !dbg !1152
  %55 = load %struct.pool_header*, %struct.pool_header** %nextpool35, align 8, !dbg !1152, !tbaa !1049
  %56 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1153, !tbaa !380
  %freepools36 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %56, i32 0, i32 4, !dbg !1154
  store %struct.pool_header* %55, %struct.pool_header** %freepools36, align 8, !dbg !1155, !tbaa !1144
  %57 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1156, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 2, !dbg !1157
  %58 = load i32, i32* %nfreepools, align 4, !dbg !1158, !tbaa !792
  %dec = add i32 %58, -1, !dbg !1158
  store i32 %dec, i32* %nfreepools, align 4, !dbg !1158, !tbaa !792
  %59 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1159, !tbaa !380
  %nfreepools37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 2, !dbg !1161
  %60 = load i32, i32* %nfreepools37, align 4, !dbg !1161, !tbaa !792
  %cmp38 = icmp eq i32 %60, 0, !dbg !1162
  br i1 %cmp38, label %if.then.40, label %if.else, !dbg !1163

if.then.40:                                       ; preds = %if.then.34
  %61 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1164, !tbaa !380
  %nextarena41 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %61, i32 0, i32 5, !dbg !1166
  %62 = load %struct.arena_object*, %struct.arena_object** %nextarena41, align 8, !dbg !1166, !tbaa !1140
  store %struct.arena_object* %62, %struct.arena_object** @usable_arenas, align 8, !dbg !1167, !tbaa !380
  %63 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1168, !tbaa !380
  %cmp42 = icmp ne %struct.arena_object* %63, null, !dbg !1170
  br i1 %cmp42, label %if.then.44, label %if.end.46, !dbg !1171

if.then.44:                                       ; preds = %if.then.40
  %64 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1172, !tbaa !380
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %64, i32 0, i32 6, !dbg !1174
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !1175, !tbaa !1136
  br label %if.end.46, !dbg !1176

if.end.46:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.47, !dbg !1177

if.else:                                          ; preds = %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.end.46
  br label %init_pool, !dbg !1178

init_pool:                                        ; preds = %if.end.95, %if.end.47
  %65 = load i32, i32* %size, align 4, !dbg !1179, !tbaa !589
  %66 = load i32, i32* %size, align 4, !dbg !1180, !tbaa !589
  %add48 = add i32 %65, %66, !dbg !1181
  %idxprom49 = zext i32 %add48 to i64, !dbg !1182
  %arrayidx50 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom49, !dbg !1182
  %67 = load %struct.pool_header*, %struct.pool_header** %arrayidx50, align 8, !dbg !1182, !tbaa !380
  store %struct.pool_header* %67, %struct.pool_header** %next, align 8, !dbg !1183, !tbaa !380
  %68 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1184, !tbaa !380
  %69 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1185, !tbaa !380
  %nextpool51 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %69, i32 0, i32 2, !dbg !1186
  store %struct.pool_header* %68, %struct.pool_header** %nextpool51, align 8, !dbg !1187, !tbaa !1049
  %70 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1188, !tbaa !380
  %71 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1189, !tbaa !380
  %prevpool52 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %71, i32 0, i32 3, !dbg !1190
  store %struct.pool_header* %70, %struct.pool_header** %prevpool52, align 8, !dbg !1191, !tbaa !1108
  %72 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1192, !tbaa !380
  %73 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1193, !tbaa !380
  %nextpool53 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %73, i32 0, i32 2, !dbg !1194
  store %struct.pool_header* %72, %struct.pool_header** %nextpool53, align 8, !dbg !1195, !tbaa !1049
  %74 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1196, !tbaa !380
  %75 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1197, !tbaa !380
  %prevpool54 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %75, i32 0, i32 3, !dbg !1198
  store %struct.pool_header* %74, %struct.pool_header** %prevpool54, align 8, !dbg !1199, !tbaa !1108
  %76 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1200, !tbaa !380
  %ref55 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %76, i32 0, i32 0, !dbg !1201
  %count56 = bitcast %union.anon* %ref55 to i32*, !dbg !1202
  store i32 1, i32* %count56, align 4, !dbg !1203, !tbaa !589
  %77 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1204, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %77, i32 0, i32 5, !dbg !1206
  %78 = load i32, i32* %szidx, align 4, !dbg !1206, !tbaa !821
  %79 = load i32, i32* %size, align 4, !dbg !1207, !tbaa !589
  %cmp57 = icmp eq i32 %78, %79, !dbg !1208
  br i1 %cmp57, label %if.then.59, label %if.end.62, !dbg !1209

if.then.59:                                       ; preds = %init_pool
  %80 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1210, !tbaa !380
  %freeblock60 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %80, i32 0, i32 1, !dbg !1212
  %81 = load i8*, i8** %freeblock60, align 8, !dbg !1212, !tbaa !1059
  store i8* %81, i8** %bp, align 8, !dbg !1213, !tbaa !380
  %82 = load i8*, i8** %bp, align 8, !dbg !1214, !tbaa !380
  %83 = bitcast i8* %82 to i8**, !dbg !1215
  %84 = load i8*, i8** %83, align 8, !dbg !1216, !tbaa !380
  %85 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1217, !tbaa !380
  %freeblock61 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %85, i32 0, i32 1, !dbg !1218
  store i8* %84, i8** %freeblock61, align 8, !dbg !1219, !tbaa !1059
  %86 = load i8*, i8** %bp, align 8, !dbg !1220, !tbaa !380
  store i8* %86, i8** %retval, !dbg !1221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1221

if.end.62:                                        ; preds = %init_pool
  %87 = load i32, i32* %size, align 4, !dbg !1222, !tbaa !589
  %88 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1223, !tbaa !380
  %szidx63 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %88, i32 0, i32 5, !dbg !1224
  store i32 %87, i32* %szidx63, align 4, !dbg !1225, !tbaa !821
  %89 = load i32, i32* %size, align 4, !dbg !1226, !tbaa !589
  %add64 = add i32 %89, 1, !dbg !1227
  %shl65 = shl i32 %add64, 3, !dbg !1228
  store i32 %shl65, i32* %size, align 4, !dbg !1229, !tbaa !589
  %90 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1230, !tbaa !380
  %91 = bitcast %struct.pool_header* %90 to i8*, !dbg !1231
  %add.ptr66 = getelementptr i8, i8* %91, i64 48, !dbg !1232
  store i8* %add.ptr66, i8** %bp, align 8, !dbg !1233, !tbaa !380
  %92 = load i32, i32* %size, align 4, !dbg !1234, !tbaa !589
  %shl67 = shl i32 %92, 1, !dbg !1235
  %conv68 = zext i32 %shl67 to i64, !dbg !1236
  %add69 = add i64 48, %conv68, !dbg !1237
  %conv70 = trunc i64 %add69 to i32, !dbg !1238
  %93 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1239, !tbaa !380
  %nextoffset71 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %93, i32 0, i32 6, !dbg !1240
  store i32 %conv70, i32* %nextoffset71, align 4, !dbg !1241, !tbaa !1076
  %94 = load i32, i32* %size, align 4, !dbg !1242, !tbaa !589
  %sub72 = sub i32 4096, %94, !dbg !1243
  %95 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1244, !tbaa !380
  %maxnextoffset73 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %95, i32 0, i32 7, !dbg !1245
  store i32 %sub72, i32* %maxnextoffset73, align 4, !dbg !1246, !tbaa !1079
  %96 = load i8*, i8** %bp, align 8, !dbg !1247, !tbaa !380
  %97 = load i32, i32* %size, align 4, !dbg !1248, !tbaa !589
  %idx.ext74 = zext i32 %97 to i64, !dbg !1249
  %add.ptr75 = getelementptr i8, i8* %96, i64 %idx.ext74, !dbg !1249
  %98 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1250, !tbaa !380
  %freeblock76 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %98, i32 0, i32 1, !dbg !1251
  store i8* %add.ptr75, i8** %freeblock76, align 8, !dbg !1252, !tbaa !1059
  %99 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1253, !tbaa !380
  %freeblock77 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %99, i32 0, i32 1, !dbg !1254
  %100 = load i8*, i8** %freeblock77, align 8, !dbg !1254, !tbaa !1059
  %101 = bitcast i8* %100 to i8**, !dbg !1255
  store i8* null, i8** %101, align 8, !dbg !1256, !tbaa !380
  %102 = load i8*, i8** %bp, align 8, !dbg !1257, !tbaa !380
  store i8* %102, i8** %retval, !dbg !1258
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1258

if.end.78:                                        ; preds = %if.end.31
  %103 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1259, !tbaa !380
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %103, i32 0, i32 1, !dbg !1260
  %104 = load i8*, i8** %pool_address, align 8, !dbg !1260, !tbaa !809
  %105 = bitcast i8* %104 to %struct.pool_header*, !dbg !1261
  store %struct.pool_header* %105, %struct.pool_header** %pool, align 8, !dbg !1262, !tbaa !380
  %106 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1263, !tbaa !380
  %107 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1264, !tbaa !380
  %sub.ptr.lhs.cast = ptrtoint %struct.arena_object* %106 to i64, !dbg !1265
  %sub.ptr.rhs.cast = ptrtoint %struct.arena_object* %107 to i64, !dbg !1265
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1265
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48, !dbg !1265
  %conv79 = trunc i64 %sub.ptr.div to i32, !dbg !1263
  %108 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1266, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %108, i32 0, i32 4, !dbg !1267
  store i32 %conv79, i32* %arenaindex, align 4, !dbg !1268, !tbaa !1269
  %109 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1270, !tbaa !380
  %szidx80 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %109, i32 0, i32 5, !dbg !1271
  store i32 65535, i32* %szidx80, align 4, !dbg !1272, !tbaa !821
  %110 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1273, !tbaa !380
  %pool_address81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %110, i32 0, i32 1, !dbg !1274
  %111 = load i8*, i8** %pool_address81, align 8, !dbg !1275, !tbaa !809
  %add.ptr82 = getelementptr i8, i8* %111, i64 4096, !dbg !1275
  store i8* %add.ptr82, i8** %pool_address81, align 8, !dbg !1275, !tbaa !809
  %112 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1276, !tbaa !380
  %nfreepools83 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 2, !dbg !1277
  %113 = load i32, i32* %nfreepools83, align 4, !dbg !1278, !tbaa !792
  %dec84 = add i32 %113, -1, !dbg !1278
  store i32 %dec84, i32* %nfreepools83, align 4, !dbg !1278, !tbaa !792
  %114 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1279, !tbaa !380
  %nfreepools85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %114, i32 0, i32 2, !dbg !1281
  %115 = load i32, i32* %nfreepools85, align 4, !dbg !1281, !tbaa !792
  %cmp86 = icmp eq i32 %115, 0, !dbg !1282
  br i1 %cmp86, label %if.then.88, label %if.end.95, !dbg !1283

if.then.88:                                       ; preds = %if.end.78
  %116 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1284, !tbaa !380
  %nextarena89 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %116, i32 0, i32 5, !dbg !1286
  %117 = load %struct.arena_object*, %struct.arena_object** %nextarena89, align 8, !dbg !1286, !tbaa !1140
  store %struct.arena_object* %117, %struct.arena_object** @usable_arenas, align 8, !dbg !1287, !tbaa !380
  %118 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1288, !tbaa !380
  %cmp90 = icmp ne %struct.arena_object* %118, null, !dbg !1290
  br i1 %cmp90, label %if.then.92, label %if.end.94, !dbg !1291

if.then.92:                                       ; preds = %if.then.88
  %119 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1292, !tbaa !380
  %prevarena93 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %119, i32 0, i32 6, !dbg !1294
  store %struct.arena_object* null, %struct.arena_object** %prevarena93, align 8, !dbg !1295, !tbaa !1136
  br label %if.end.94, !dbg !1296

if.end.94:                                        ; preds = %if.then.92, %if.then.88
  br label %if.end.95, !dbg !1297

if.end.95:                                        ; preds = %if.end.94, %if.end.78
  br label %init_pool, !dbg !1298

if.end.96:                                        ; preds = %entry
  br label %redirect, !dbg !1299

redirect:                                         ; preds = %if.end.96, %if.then.29
  %120 = bitcast i8** %result to i8*, !dbg !1301
  call void @llvm.lifetime.start(i64 8, i8* %120) #2, !dbg !1301
  call void @llvm.dbg.declare(metadata i8** %result, metadata !290, metadata !378), !dbg !1302
  %121 = load i64, i64* %nbytes.addr, align 8, !dbg !1303, !tbaa !439
  %call97 = call i8* @PyMem_RawMalloc(i64 %121), !dbg !1304
  store i8* %call97, i8** %result, align 8, !dbg !1302, !tbaa !380
  %122 = load i8*, i8** %result, align 8, !dbg !1305, !tbaa !380
  %tobool = icmp ne i8* %122, null, !dbg !1305
  br i1 %tobool, label %if.end.100, label %if.then.98, !dbg !1307

if.then.98:                                       ; preds = %redirect
  %123 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1308, !tbaa !439
  %dec99 = add i64 %123, -1, !dbg !1308
  store i64 %dec99, i64* @_Py_AllocatedBlocks, align 8, !dbg !1308, !tbaa !439
  br label %if.end.100, !dbg !1309

if.end.100:                                       ; preds = %if.then.98, %redirect
  %124 = load i8*, i8** %result, align 8, !dbg !1310, !tbaa !380
  store i8* %124, i8** %retval, !dbg !1311
  store i32 1, i32* %cleanup.dest.slot
  %125 = bitcast i8** %result to i8*, !dbg !1312
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1312
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.end.62, %if.then.59, %if.end.19, %if.then.12, %if.then.9
  %126 = bitcast i32* %size to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 4, i8* %126) #2, !dbg !1313
  %127 = bitcast %struct.pool_header** %next to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !1313
  %128 = bitcast %struct.pool_header** %pool to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !1313
  %129 = bitcast i8** %bp to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !1313
  %130 = load i8*, i8** %retval, !dbg !1313
  ret i8* %130, !dbg !1313
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
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !306, metadata !378), !dbg !1314
  store i8* %p, i8** %p.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !307, metadata !378), !dbg !1315
  store i64 %nbytes, i64* %nbytes.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !308, metadata !378), !dbg !1316
  %0 = bitcast i8** %bp to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1317
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !309, metadata !378), !dbg !1318
  %1 = bitcast %struct.pool_header** %pool to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !310, metadata !378), !dbg !1320
  %2 = bitcast i64* %size to i8*, !dbg !1321
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1321
  call void @llvm.dbg.declare(metadata i64* %size, metadata !311, metadata !378), !dbg !1322
  %3 = bitcast i32* %arenaindex_temp to i8*, !dbg !1323
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %arenaindex_temp, metadata !312, metadata !378), !dbg !1324
  %4 = load i8*, i8** %p.addr, align 8, !dbg !1325, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !1327
  br i1 %cmp, label %if.then, label %if.end, !dbg !1328

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %ctx.addr, align 8, !dbg !1329, !tbaa !380
  %6 = load i64, i64* %nbytes.addr, align 8, !dbg !1330, !tbaa !439
  %call = call i8* @_PyObject_Malloc(i8* %5, i64 %6), !dbg !1331
  store i8* %call, i8** %retval, !dbg !1332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1332

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %p.addr, align 8, !dbg !1333, !tbaa !380
  %8 = ptrtoint i8* %7 to i64, !dbg !1334
  %and = and i64 %8, -4096, !dbg !1335
  %9 = inttoptr i64 %and to i8*, !dbg !1336
  %10 = bitcast i8* %9 to %struct.pool_header*, !dbg !1337
  store %struct.pool_header* %10, %struct.pool_header** %pool, align 8, !dbg !1338, !tbaa !380
  %11 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1339, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i32 0, i32 4, !dbg !1341
  %12 = load i32, i32* %arenaindex, align 4, !dbg !1341, !tbaa !1269
  store i32 %12, i32* %arenaindex_temp, align 4, !dbg !1342, !tbaa !589
  %13 = load i32, i32* @maxarenas, align 4, !dbg !1343, !tbaa !589
  %cmp1 = icmp ult i32 %12, %13, !dbg !1344
  br i1 %cmp1, label %land.lhs.true, label %if.end.23, !dbg !1345

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %p.addr, align 8, !dbg !1346, !tbaa !380
  %15 = ptrtoint i8* %14 to i64, !dbg !1348
  %16 = load i32, i32* %arenaindex_temp, align 4, !dbg !1349, !tbaa !589
  %idxprom = zext i32 %16 to i64, !dbg !1350
  %17 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1350, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %17, i64 %idxprom, !dbg !1350
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1351
  %18 = load i64, i64* %address, align 8, !dbg !1351, !tbaa !779
  %sub = sub i64 %15, %18, !dbg !1352
  %cmp2 = icmp ult i64 %sub, 262144, !dbg !1353
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.23, !dbg !1354

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %19 = load i32, i32* %arenaindex_temp, align 4, !dbg !1355, !tbaa !589
  %idxprom4 = zext i32 %19 to i64, !dbg !1357
  %20 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1357, !tbaa !380
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %20, i64 %idxprom4, !dbg !1357
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0, !dbg !1358
  %21 = load i64, i64* %address6, align 8, !dbg !1358, !tbaa !779
  %cmp7 = icmp ne i64 %21, 0, !dbg !1359
  br i1 %cmp7, label %if.then.8, label %if.end.23, !dbg !1360

if.then.8:                                        ; preds = %land.lhs.true.3
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1361, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %22, i32 0, i32 5, !dbg !1363
  %23 = load i32, i32* %szidx, align 4, !dbg !1363, !tbaa !821
  %add = add i32 %23, 1, !dbg !1364
  %shl = shl i32 %add, 3, !dbg !1365
  %conv = zext i32 %shl to i64, !dbg !1366
  store i64 %conv, i64* %size, align 8, !dbg !1367, !tbaa !439
  %24 = load i64, i64* %nbytes.addr, align 8, !dbg !1368, !tbaa !439
  %25 = load i64, i64* %size, align 8, !dbg !1370, !tbaa !439
  %cmp9 = icmp ule i64 %24, %25, !dbg !1371
  br i1 %cmp9, label %if.then.11, label %if.end.17, !dbg !1372

if.then.11:                                       ; preds = %if.then.8
  %26 = load i64, i64* %nbytes.addr, align 8, !dbg !1373, !tbaa !439
  %mul = mul i64 4, %26, !dbg !1376
  %27 = load i64, i64* %size, align 8, !dbg !1377, !tbaa !439
  %mul12 = mul i64 3, %27, !dbg !1378
  %cmp13 = icmp ugt i64 %mul, %mul12, !dbg !1379
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !1380

if.then.15:                                       ; preds = %if.then.11
  %28 = load i8*, i8** %p.addr, align 8, !dbg !1381, !tbaa !380
  store i8* %28, i8** %retval, !dbg !1383
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1383

if.end.16:                                        ; preds = %if.then.11
  %29 = load i64, i64* %nbytes.addr, align 8, !dbg !1384, !tbaa !439
  store i64 %29, i64* %size, align 8, !dbg !1385, !tbaa !439
  br label %if.end.17, !dbg !1386

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  %30 = load i8*, i8** %ctx.addr, align 8, !dbg !1387, !tbaa !380
  %31 = load i64, i64* %nbytes.addr, align 8, !dbg !1388, !tbaa !439
  %call18 = call i8* @_PyObject_Malloc(i8* %30, i64 %31), !dbg !1389
  store i8* %call18, i8** %bp, align 8, !dbg !1390, !tbaa !380
  %32 = load i8*, i8** %bp, align 8, !dbg !1391, !tbaa !380
  %cmp19 = icmp ne i8* %32, null, !dbg !1393
  br i1 %cmp19, label %if.then.21, label %if.end.22, !dbg !1394

if.then.21:                                       ; preds = %if.end.17
  %33 = load i8*, i8** %bp, align 8, !dbg !1395, !tbaa !380
  %34 = load i8*, i8** %p.addr, align 8, !dbg !1397, !tbaa !380
  %35 = load i64, i64* %size, align 8, !dbg !1398, !tbaa !439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %35, i32 1, i1 false), !dbg !1399
  %36 = load i8*, i8** %ctx.addr, align 8, !dbg !1400, !tbaa !380
  %37 = load i8*, i8** %p.addr, align 8, !dbg !1401, !tbaa !380
  call void @_PyObject_Free(i8* %36, i8* %37), !dbg !1402
  br label %if.end.22, !dbg !1403

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  %38 = load i8*, i8** %bp, align 8, !dbg !1404, !tbaa !380
  store i8* %38, i8** %retval, !dbg !1405
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1405

if.end.23:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %39 = load i64, i64* %nbytes.addr, align 8, !dbg !1406, !tbaa !439
  %tobool = icmp ne i64 %39, 0, !dbg !1406
  br i1 %tobool, label %if.then.24, label %if.end.26, !dbg !1408

if.then.24:                                       ; preds = %if.end.23
  %40 = load i8*, i8** %p.addr, align 8, !dbg !1409, !tbaa !380
  %41 = load i64, i64* %nbytes.addr, align 8, !dbg !1410, !tbaa !439
  %call25 = call i8* @PyMem_RawRealloc(i8* %40, i64 %41), !dbg !1411
  store i8* %call25, i8** %retval, !dbg !1412
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1412

if.end.26:                                        ; preds = %if.end.23
  %42 = load i8*, i8** %p.addr, align 8, !dbg !1413, !tbaa !380
  %call27 = call i8* @PyMem_RawRealloc(i8* %42, i64 1), !dbg !1414
  store i8* %call27, i8** %bp, align 8, !dbg !1415, !tbaa !380
  %43 = load i8*, i8** %bp, align 8, !dbg !1416, !tbaa !380
  %tobool28 = icmp ne i8* %43, null, !dbg !1416
  br i1 %tobool28, label %cond.true, label %cond.false, !dbg !1416

cond.true:                                        ; preds = %if.end.26
  %44 = load i8*, i8** %bp, align 8, !dbg !1417, !tbaa !380
  br label %cond.end, !dbg !1416

cond.false:                                       ; preds = %if.end.26
  %45 = load i8*, i8** %p.addr, align 8, !dbg !1419, !tbaa !380
  br label %cond.end, !dbg !1416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %44, %cond.true ], [ %45, %cond.false ], !dbg !1416
  store i8* %cond, i8** %retval, !dbg !1421
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1424

cleanup:                                          ; preds = %cond.end, %if.then.24, %if.end.22, %if.then.15, %if.then
  %46 = bitcast i32* %arenaindex_temp to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 4, i8* %46) #2, !dbg !1425
  %47 = bitcast i64* %size to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1425
  %48 = bitcast %struct.pool_header** %pool to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1425
  %49 = bitcast i8** %bp to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1425
  %50 = load i8*, i8** %retval, !dbg !1425
  ret i8* %50, !dbg !1425
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
  %cleanup.dest.slot = alloca i32
  %ao = alloca %struct.arena_object*, align 8
  %nf = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !315, metadata !378), !dbg !1426
  store i8* %p, i8** %p.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !316, metadata !378), !dbg !1427
  %0 = bitcast %struct.pool_header** %pool to i8*, !dbg !1428
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1428
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !317, metadata !378), !dbg !1429
  %1 = bitcast i8** %lastfree to i8*, !dbg !1430
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1430
  call void @llvm.dbg.declare(metadata i8** %lastfree, metadata !318, metadata !378), !dbg !1431
  %2 = bitcast %struct.pool_header** %next to i8*, !dbg !1432
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1432
  call void @llvm.dbg.declare(metadata %struct.pool_header** %next, metadata !319, metadata !378), !dbg !1433
  %3 = bitcast %struct.pool_header** %prev to i8*, !dbg !1432
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1432
  call void @llvm.dbg.declare(metadata %struct.pool_header** %prev, metadata !320, metadata !378), !dbg !1434
  %4 = bitcast i32* %size to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %size, metadata !321, metadata !378), !dbg !1436
  %5 = bitcast i32* %arenaindex_temp to i8*, !dbg !1437
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1437
  call void @llvm.dbg.declare(metadata i32* %arenaindex_temp, metadata !322, metadata !378), !dbg !1438
  %6 = load i8*, i8** %p.addr, align 8, !dbg !1439, !tbaa !380
  %cmp = icmp eq i8* %6, null, !dbg !1441
  br i1 %cmp, label %if.then, label %if.end, !dbg !1442

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.101, !dbg !1443

if.end:                                           ; preds = %entry
  %7 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1444, !tbaa !439
  %dec = add i64 %7, -1, !dbg !1444
  store i64 %dec, i64* @_Py_AllocatedBlocks, align 8, !dbg !1444, !tbaa !439
  %8 = load i8*, i8** %p.addr, align 8, !dbg !1445, !tbaa !380
  %9 = ptrtoint i8* %8 to i64, !dbg !1446
  %and = and i64 %9, -4096, !dbg !1447
  %10 = inttoptr i64 %and to i8*, !dbg !1448
  %11 = bitcast i8* %10 to %struct.pool_header*, !dbg !1449
  store %struct.pool_header* %11, %struct.pool_header** %pool, align 8, !dbg !1450, !tbaa !380
  %12 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1451, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %12, i32 0, i32 4, !dbg !1452
  %13 = load i32, i32* %arenaindex, align 4, !dbg !1452, !tbaa !1269
  store i32 %13, i32* %arenaindex_temp, align 4, !dbg !1453, !tbaa !589
  %14 = load i32, i32* @maxarenas, align 4, !dbg !1454, !tbaa !589
  %cmp1 = icmp ult i32 %13, %14, !dbg !1455
  br i1 %cmp1, label %land.lhs.true, label %if.end.100, !dbg !1456

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %p.addr, align 8, !dbg !1457, !tbaa !380
  %16 = ptrtoint i8* %15 to i64, !dbg !1459
  %17 = load i32, i32* %arenaindex_temp, align 4, !dbg !1460, !tbaa !589
  %idxprom = zext i32 %17 to i64, !dbg !1461
  %18 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1461, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %18, i64 %idxprom, !dbg !1461
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1462
  %19 = load i64, i64* %address, align 8, !dbg !1462, !tbaa !779
  %sub = sub i64 %16, %19, !dbg !1463
  %cmp2 = icmp ult i64 %sub, 262144, !dbg !1464
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.100, !dbg !1465

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* %arenaindex_temp, align 4, !dbg !1466, !tbaa !589
  %idxprom4 = zext i32 %20 to i64, !dbg !1468
  %21 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1468, !tbaa !380
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %21, i64 %idxprom4, !dbg !1468
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0, !dbg !1469
  %22 = load i64, i64* %address6, align 8, !dbg !1469, !tbaa !779
  %cmp7 = icmp ne i64 %22, 0, !dbg !1470
  br i1 %cmp7, label %if.then.8, label %if.end.100, !dbg !1471

if.then.8:                                        ; preds = %land.lhs.true.3
  %23 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1472, !tbaa !380
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %23, i32 0, i32 1, !dbg !1473
  %24 = load i8*, i8** %freeblock, align 8, !dbg !1473, !tbaa !1059
  store i8* %24, i8** %lastfree, align 8, !dbg !1474, !tbaa !380
  %25 = load i8*, i8** %p.addr, align 8, !dbg !1475, !tbaa !380
  %26 = bitcast i8* %25 to i8**, !dbg !1476
  store i8* %24, i8** %26, align 8, !dbg !1477, !tbaa !380
  %27 = load i8*, i8** %p.addr, align 8, !dbg !1478, !tbaa !380
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1479, !tbaa !380
  %freeblock9 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 1, !dbg !1480
  store i8* %27, i8** %freeblock9, align 8, !dbg !1481, !tbaa !1059
  %29 = load i8*, i8** %lastfree, align 8, !dbg !1482, !tbaa !380
  %tobool = icmp ne i8* %29, null, !dbg !1482
  br i1 %tobool, label %if.then.10, label %if.end.89, !dbg !1483

if.then.10:                                       ; preds = %if.then.8
  %30 = bitcast %struct.arena_object** %ao to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.arena_object** %ao, metadata !323, metadata !378), !dbg !1485
  %31 = bitcast i32* %nf to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 4, i8* %31) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %nf, metadata !328, metadata !378), !dbg !1487
  %32 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1488, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %32, i32 0, i32 0, !dbg !1490
  %count = bitcast %union.anon* %ref to i32*, !dbg !1491
  %33 = load i32, i32* %count, align 4, !dbg !1492, !tbaa !589
  %dec11 = add i32 %33, -1, !dbg !1492
  store i32 %dec11, i32* %count, align 4, !dbg !1492, !tbaa !589
  %cmp12 = icmp ne i32 %dec11, 0, !dbg !1493
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1494

if.then.13:                                       ; preds = %if.then.10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1495

if.end.14:                                        ; preds = %if.then.10
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1497, !tbaa !380
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 2, !dbg !1498
  %35 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8, !dbg !1498, !tbaa !1049
  store %struct.pool_header* %35, %struct.pool_header** %next, align 8, !dbg !1499, !tbaa !380
  %36 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1500, !tbaa !380
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %36, i32 0, i32 3, !dbg !1501
  %37 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !1501, !tbaa !1108
  store %struct.pool_header* %37, %struct.pool_header** %prev, align 8, !dbg !1502, !tbaa !380
  %38 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1503, !tbaa !380
  %39 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1504, !tbaa !380
  %prevpool15 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %39, i32 0, i32 3, !dbg !1505
  store %struct.pool_header* %38, %struct.pool_header** %prevpool15, align 8, !dbg !1506, !tbaa !1108
  %40 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1507, !tbaa !380
  %41 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1508, !tbaa !380
  %nextpool16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %41, i32 0, i32 2, !dbg !1509
  store %struct.pool_header* %40, %struct.pool_header** %nextpool16, align 8, !dbg !1510, !tbaa !1049
  %42 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1511, !tbaa !380
  %arenaindex17 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %42, i32 0, i32 4, !dbg !1512
  %43 = load i32, i32* %arenaindex17, align 4, !dbg !1512, !tbaa !1269
  %idxprom18 = zext i32 %43 to i64, !dbg !1513
  %44 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1513, !tbaa !380
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %44, i64 %idxprom18, !dbg !1513
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %ao, align 8, !dbg !1514, !tbaa !380
  %45 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1515, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %45, i32 0, i32 4, !dbg !1516
  %46 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8, !dbg !1516, !tbaa !1144
  %47 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1517, !tbaa !380
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %47, i32 0, i32 2, !dbg !1518
  store %struct.pool_header* %46, %struct.pool_header** %nextpool20, align 8, !dbg !1519, !tbaa !1049
  %48 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1520, !tbaa !380
  %49 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1521, !tbaa !380
  %freepools21 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 4, !dbg !1522
  store %struct.pool_header* %48, %struct.pool_header** %freepools21, align 8, !dbg !1523, !tbaa !1144
  %50 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1524, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %50, i32 0, i32 2, !dbg !1525
  %51 = load i32, i32* %nfreepools, align 4, !dbg !1526, !tbaa !792
  %inc = add i32 %51, 1, !dbg !1526
  store i32 %inc, i32* %nfreepools, align 4, !dbg !1526, !tbaa !792
  store i32 %inc, i32* %nf, align 4, !dbg !1527, !tbaa !589
  %52 = load i32, i32* %nf, align 4, !dbg !1528, !tbaa !589
  %53 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1530, !tbaa !380
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 3, !dbg !1531
  %54 = load i32, i32* %ntotalpools, align 4, !dbg !1531, !tbaa !1532
  %cmp22 = icmp eq i32 %52, %54, !dbg !1533
  br i1 %cmp22, label %if.then.23, label %if.end.41, !dbg !1534

if.then.23:                                       ; preds = %if.end.14
  %55 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1535, !tbaa !380
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %55, i32 0, i32 6, !dbg !1538
  %56 = load %struct.arena_object*, %struct.arena_object** %prevarena, align 8, !dbg !1538, !tbaa !1136
  %cmp24 = icmp eq %struct.arena_object* %56, null, !dbg !1539
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !1540

if.then.25:                                       ; preds = %if.then.23
  %57 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1541, !tbaa !380
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 5, !dbg !1543
  %58 = load %struct.arena_object*, %struct.arena_object** %nextarena, align 8, !dbg !1543, !tbaa !1140
  store %struct.arena_object* %58, %struct.arena_object** @usable_arenas, align 8, !dbg !1544, !tbaa !380
  br label %if.end.29, !dbg !1545

if.else:                                          ; preds = %if.then.23
  %59 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1546, !tbaa !380
  %nextarena26 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 5, !dbg !1548
  %60 = load %struct.arena_object*, %struct.arena_object** %nextarena26, align 8, !dbg !1548, !tbaa !1140
  %61 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1549, !tbaa !380
  %prevarena27 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %61, i32 0, i32 6, !dbg !1550
  %62 = load %struct.arena_object*, %struct.arena_object** %prevarena27, align 8, !dbg !1550, !tbaa !1136
  %nextarena28 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %62, i32 0, i32 5, !dbg !1551
  store %struct.arena_object* %60, %struct.arena_object** %nextarena28, align 8, !dbg !1552, !tbaa !1140
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %63 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1553, !tbaa !380
  %nextarena30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %63, i32 0, i32 5, !dbg !1555
  %64 = load %struct.arena_object*, %struct.arena_object** %nextarena30, align 8, !dbg !1555, !tbaa !1140
  %cmp31 = icmp ne %struct.arena_object* %64, null, !dbg !1556
  br i1 %cmp31, label %if.then.32, label %if.end.36, !dbg !1557

if.then.32:                                       ; preds = %if.end.29
  %65 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1558, !tbaa !380
  %prevarena33 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %65, i32 0, i32 6, !dbg !1560
  %66 = load %struct.arena_object*, %struct.arena_object** %prevarena33, align 8, !dbg !1560, !tbaa !1136
  %67 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1561, !tbaa !380
  %nextarena34 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %67, i32 0, i32 5, !dbg !1562
  %68 = load %struct.arena_object*, %struct.arena_object** %nextarena34, align 8, !dbg !1562, !tbaa !1140
  %prevarena35 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %68, i32 0, i32 6, !dbg !1563
  store %struct.arena_object* %66, %struct.arena_object** %prevarena35, align 8, !dbg !1564, !tbaa !1136
  br label %if.end.36, !dbg !1565

if.end.36:                                        ; preds = %if.then.32, %if.end.29
  %69 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1566, !tbaa !380
  %70 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1567, !tbaa !380
  %nextarena37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %70, i32 0, i32 5, !dbg !1568
  store %struct.arena_object* %69, %struct.arena_object** %nextarena37, align 8, !dbg !1569, !tbaa !1140
  %71 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1570, !tbaa !380
  store %struct.arena_object* %71, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1571, !tbaa !380
  %72 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 2), align 8, !dbg !1572, !tbaa !1573
  %73 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8, !dbg !1575, !tbaa !1576
  %74 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1577, !tbaa !380
  %address38 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %74, i32 0, i32 0, !dbg !1578
  %75 = load i64, i64* %address38, align 8, !dbg !1578, !tbaa !779
  %76 = inttoptr i64 %75 to i8*, !dbg !1579
  call void %72(i8* %73, i8* %76, i64 262144), !dbg !1580
  %77 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1581, !tbaa !380
  %address39 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %77, i32 0, i32 0, !dbg !1582
  store i64 0, i64* %address39, align 8, !dbg !1583, !tbaa !779
  %78 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1584, !tbaa !439
  %dec40 = add i64 %78, -1, !dbg !1584
  store i64 %dec40, i64* @narenas_currently_allocated, align 8, !dbg !1584, !tbaa !439
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1585

if.end.41:                                        ; preds = %if.end.14
  %79 = load i32, i32* %nf, align 4, !dbg !1586, !tbaa !589
  %cmp42 = icmp eq i32 %79, 1, !dbg !1588
  br i1 %cmp42, label %if.then.43, label %if.end.50, !dbg !1589

if.then.43:                                       ; preds = %if.end.41
  %80 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1590, !tbaa !380
  %81 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1592, !tbaa !380
  %nextarena44 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %81, i32 0, i32 5, !dbg !1593
  store %struct.arena_object* %80, %struct.arena_object** %nextarena44, align 8, !dbg !1594, !tbaa !1140
  %82 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1595, !tbaa !380
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %82, i32 0, i32 6, !dbg !1596
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !1597, !tbaa !1136
  %83 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1598, !tbaa !380
  %tobool46 = icmp ne %struct.arena_object* %83, null, !dbg !1598
  br i1 %tobool46, label %if.then.47, label %if.end.49, !dbg !1600

if.then.47:                                       ; preds = %if.then.43
  %84 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1601, !tbaa !380
  %85 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1602, !tbaa !380
  %prevarena48 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %85, i32 0, i32 6, !dbg !1603
  store %struct.arena_object* %84, %struct.arena_object** %prevarena48, align 8, !dbg !1604, !tbaa !1136
  br label %if.end.49, !dbg !1602

if.end.49:                                        ; preds = %if.then.47, %if.then.43
  %86 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1605, !tbaa !380
  store %struct.arena_object* %86, %struct.arena_object** @usable_arenas, align 8, !dbg !1606, !tbaa !380
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1607

if.end.50:                                        ; preds = %if.end.41
  %87 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1608, !tbaa !380
  %nextarena51 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %87, i32 0, i32 5, !dbg !1610
  %88 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8, !dbg !1610, !tbaa !1140
  %cmp52 = icmp eq %struct.arena_object* %88, null, !dbg !1611
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false, !dbg !1612

lor.lhs.false:                                    ; preds = %if.end.50
  %89 = load i32, i32* %nf, align 4, !dbg !1613, !tbaa !589
  %90 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1614, !tbaa !380
  %nextarena53 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %90, i32 0, i32 5, !dbg !1615
  %91 = load %struct.arena_object*, %struct.arena_object** %nextarena53, align 8, !dbg !1615, !tbaa !1140
  %nfreepools54 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %91, i32 0, i32 2, !dbg !1616
  %92 = load i32, i32* %nfreepools54, align 4, !dbg !1616, !tbaa !792
  %cmp55 = icmp ule i32 %89, %92, !dbg !1617
  br i1 %cmp55, label %if.then.56, label %if.end.57, !dbg !1618

if.then.56:                                       ; preds = %lor.lhs.false, %if.end.50
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1619

if.end.57:                                        ; preds = %lor.lhs.false
  %93 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1621, !tbaa !380
  %prevarena58 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %93, i32 0, i32 6, !dbg !1623
  %94 = load %struct.arena_object*, %struct.arena_object** %prevarena58, align 8, !dbg !1623, !tbaa !1136
  %cmp59 = icmp ne %struct.arena_object* %94, null, !dbg !1624
  br i1 %cmp59, label %if.then.60, label %if.else.64, !dbg !1625

if.then.60:                                       ; preds = %if.end.57
  %95 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1626, !tbaa !380
  %nextarena61 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %95, i32 0, i32 5, !dbg !1628
  %96 = load %struct.arena_object*, %struct.arena_object** %nextarena61, align 8, !dbg !1628, !tbaa !1140
  %97 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1629, !tbaa !380
  %prevarena62 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %97, i32 0, i32 6, !dbg !1630
  %98 = load %struct.arena_object*, %struct.arena_object** %prevarena62, align 8, !dbg !1630, !tbaa !1136
  %nextarena63 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %98, i32 0, i32 5, !dbg !1631
  store %struct.arena_object* %96, %struct.arena_object** %nextarena63, align 8, !dbg !1632, !tbaa !1140
  br label %if.end.66, !dbg !1633

if.else.64:                                       ; preds = %if.end.57
  %99 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1634, !tbaa !380
  %nextarena65 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %99, i32 0, i32 5, !dbg !1636
  %100 = load %struct.arena_object*, %struct.arena_object** %nextarena65, align 8, !dbg !1636, !tbaa !1140
  store %struct.arena_object* %100, %struct.arena_object** @usable_arenas, align 8, !dbg !1637, !tbaa !380
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.60
  %101 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1638, !tbaa !380
  %prevarena67 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %101, i32 0, i32 6, !dbg !1639
  %102 = load %struct.arena_object*, %struct.arena_object** %prevarena67, align 8, !dbg !1639, !tbaa !1136
  %103 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1640, !tbaa !380
  %nextarena68 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %103, i32 0, i32 5, !dbg !1641
  %104 = load %struct.arena_object*, %struct.arena_object** %nextarena68, align 8, !dbg !1641, !tbaa !1140
  %prevarena69 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %104, i32 0, i32 6, !dbg !1642
  store %struct.arena_object* %102, %struct.arena_object** %prevarena69, align 8, !dbg !1643, !tbaa !1136
  br label %while.cond, !dbg !1644

while.cond:                                       ; preds = %while.body, %if.end.66
  %105 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1645, !tbaa !380
  %nextarena70 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %105, i32 0, i32 5, !dbg !1648
  %106 = load %struct.arena_object*, %struct.arena_object** %nextarena70, align 8, !dbg !1648, !tbaa !1140
  %cmp71 = icmp ne %struct.arena_object* %106, null, !dbg !1649
  br i1 %cmp71, label %land.rhs, label %land.end, !dbg !1650

land.rhs:                                         ; preds = %while.cond
  %107 = load i32, i32* %nf, align 4, !dbg !1651, !tbaa !589
  %108 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1652, !tbaa !380
  %nextarena72 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %108, i32 0, i32 5, !dbg !1653
  %109 = load %struct.arena_object*, %struct.arena_object** %nextarena72, align 8, !dbg !1653, !tbaa !1140
  %nfreepools73 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %109, i32 0, i32 2, !dbg !1654
  %110 = load i32, i32* %nfreepools73, align 4, !dbg !1654, !tbaa !792
  %cmp74 = icmp ugt i32 %107, %110, !dbg !1655
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %111 = phi i1 [ false, %while.cond ], [ %cmp74, %land.rhs ]
  br i1 %111, label %while.body, label %while.end, !dbg !1656

while.body:                                       ; preds = %land.end
  %112 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1658, !tbaa !380
  %nextarena75 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 5, !dbg !1660
  %113 = load %struct.arena_object*, %struct.arena_object** %nextarena75, align 8, !dbg !1660, !tbaa !1140
  %114 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1661, !tbaa !380
  %prevarena76 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %114, i32 0, i32 6, !dbg !1662
  store %struct.arena_object* %113, %struct.arena_object** %prevarena76, align 8, !dbg !1663, !tbaa !1136
  %115 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1664, !tbaa !380
  %nextarena77 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %115, i32 0, i32 5, !dbg !1665
  %116 = load %struct.arena_object*, %struct.arena_object** %nextarena77, align 8, !dbg !1665, !tbaa !1140
  %nextarena78 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %116, i32 0, i32 5, !dbg !1666
  %117 = load %struct.arena_object*, %struct.arena_object** %nextarena78, align 8, !dbg !1666, !tbaa !1140
  %118 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1667, !tbaa !380
  %nextarena79 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %118, i32 0, i32 5, !dbg !1668
  store %struct.arena_object* %117, %struct.arena_object** %nextarena79, align 8, !dbg !1669, !tbaa !1140
  br label %while.cond, !dbg !1644

while.end:                                        ; preds = %land.end
  %119 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1670, !tbaa !380
  %120 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1671, !tbaa !380
  %prevarena80 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %120, i32 0, i32 6, !dbg !1672
  %121 = load %struct.arena_object*, %struct.arena_object** %prevarena80, align 8, !dbg !1672, !tbaa !1136
  %nextarena81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %121, i32 0, i32 5, !dbg !1673
  store %struct.arena_object* %119, %struct.arena_object** %nextarena81, align 8, !dbg !1674, !tbaa !1140
  %122 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1675, !tbaa !380
  %nextarena82 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %122, i32 0, i32 5, !dbg !1677
  %123 = load %struct.arena_object*, %struct.arena_object** %nextarena82, align 8, !dbg !1677, !tbaa !1140
  %cmp83 = icmp ne %struct.arena_object* %123, null, !dbg !1678
  br i1 %cmp83, label %if.then.84, label %if.end.87, !dbg !1679

if.then.84:                                       ; preds = %while.end
  %124 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1680, !tbaa !380
  %125 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1681, !tbaa !380
  %nextarena85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %125, i32 0, i32 5, !dbg !1682
  %126 = load %struct.arena_object*, %struct.arena_object** %nextarena85, align 8, !dbg !1682, !tbaa !1140
  %prevarena86 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %126, i32 0, i32 6, !dbg !1683
  store %struct.arena_object* %124, %struct.arena_object** %prevarena86, align 8, !dbg !1684, !tbaa !1136
  br label %if.end.87, !dbg !1681

if.end.87:                                        ; preds = %if.then.84, %while.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1685

cleanup:                                          ; preds = %if.end.87, %if.then.56, %if.end.49, %if.end.36, %if.then.13
  %127 = bitcast i32* %nf to i8*, !dbg !1686
  call void @llvm.lifetime.end(i64 4, i8* %127) #2, !dbg !1686
  %128 = bitcast %struct.arena_object** %ao to i8*, !dbg !1686
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !1686
  br label %cleanup.101

if.end.89:                                        ; preds = %if.then.8
  %129 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1687, !tbaa !380
  %ref90 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %129, i32 0, i32 0, !dbg !1688
  %count91 = bitcast %union.anon* %ref90 to i32*, !dbg !1689
  %130 = load i32, i32* %count91, align 4, !dbg !1690, !tbaa !589
  %dec92 = add i32 %130, -1, !dbg !1690
  store i32 %dec92, i32* %count91, align 4, !dbg !1690, !tbaa !589
  %131 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1691, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %131, i32 0, i32 5, !dbg !1692
  %132 = load i32, i32* %szidx, align 4, !dbg !1692, !tbaa !821
  store i32 %132, i32* %size, align 4, !dbg !1693, !tbaa !589
  %133 = load i32, i32* %size, align 4, !dbg !1694, !tbaa !589
  %134 = load i32, i32* %size, align 4, !dbg !1695, !tbaa !589
  %add = add i32 %133, %134, !dbg !1696
  %idxprom93 = zext i32 %add to i64, !dbg !1697
  %arrayidx94 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom93, !dbg !1697
  %135 = load %struct.pool_header*, %struct.pool_header** %arrayidx94, align 8, !dbg !1697, !tbaa !380
  store %struct.pool_header* %135, %struct.pool_header** %next, align 8, !dbg !1698, !tbaa !380
  %136 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1699, !tbaa !380
  %prevpool95 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %136, i32 0, i32 3, !dbg !1700
  %137 = load %struct.pool_header*, %struct.pool_header** %prevpool95, align 8, !dbg !1700, !tbaa !1108
  store %struct.pool_header* %137, %struct.pool_header** %prev, align 8, !dbg !1701, !tbaa !380
  %138 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1702, !tbaa !380
  %139 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1703, !tbaa !380
  %nextpool96 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %139, i32 0, i32 2, !dbg !1704
  store %struct.pool_header* %138, %struct.pool_header** %nextpool96, align 8, !dbg !1705, !tbaa !1049
  %140 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1706, !tbaa !380
  %141 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1707, !tbaa !380
  %prevpool97 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %141, i32 0, i32 3, !dbg !1708
  store %struct.pool_header* %140, %struct.pool_header** %prevpool97, align 8, !dbg !1709, !tbaa !1108
  %142 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1710, !tbaa !380
  %143 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1711, !tbaa !380
  %prevpool98 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %143, i32 0, i32 3, !dbg !1712
  store %struct.pool_header* %142, %struct.pool_header** %prevpool98, align 8, !dbg !1713, !tbaa !1108
  %144 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1714, !tbaa !380
  %145 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1715, !tbaa !380
  %nextpool99 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %145, i32 0, i32 2, !dbg !1716
  store %struct.pool_header* %144, %struct.pool_header** %nextpool99, align 8, !dbg !1717, !tbaa !1049
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.101, !dbg !1718

if.end.100:                                       ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %146 = load i8*, i8** %p.addr, align 8, !dbg !1719, !tbaa !380
  call void @PyMem_RawFree(i8* %146), !dbg !1720
  store i32 0, i32* %cleanup.dest.slot, !dbg !1721
  br label %cleanup.101, !dbg !1721

cleanup.101:                                      ; preds = %if.end.100, %if.end.89, %cleanup, %if.then
  %147 = bitcast i32* %arenaindex_temp to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 4, i8* %147) #2, !dbg !1722
  %148 = bitcast i32* %size to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 4, i8* %148) #2, !dbg !1722
  %149 = bitcast %struct.pool_header** %prev to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 8, i8* %149) #2, !dbg !1722
  %150 = bitcast %struct.pool_header** %next to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 8, i8* %150) #2, !dbg !1722
  %151 = bitcast i8** %lastfree to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1722
  %152 = bitcast %struct.pool_header** %pool to i8*, !dbg !1722
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !1722
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.101, %cleanup.101
  ret void, !dbg !1721

unreachable:                                      ; preds = %cleanup.101
  unreachable
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.arena_object** %arenaobj to i8*, !dbg !1724
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1724
  call void @llvm.dbg.declare(metadata %struct.arena_object** %arenaobj, metadata !296, metadata !378), !dbg !1725
  %1 = bitcast i32* %excess to i8*, !dbg !1726
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1726
  call void @llvm.dbg.declare(metadata i32* %excess, metadata !297, metadata !378), !dbg !1727
  %2 = bitcast i8** %address to i8*, !dbg !1728
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1728
  call void @llvm.dbg.declare(metadata i8** %address, metadata !298, metadata !378), !dbg !1729
  %3 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1730, !tbaa !380
  %cmp = icmp eq %struct.arena_object* %3, null, !dbg !1731
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !1732

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %i to i8*, !dbg !1733
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1733
  call void @llvm.dbg.declare(metadata i32* %i, metadata !299, metadata !378), !dbg !1734
  %5 = bitcast i32* %numarenas to i8*, !dbg !1735
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %numarenas, metadata !302, metadata !378), !dbg !1736
  %6 = bitcast i64* %nbytes to i8*, !dbg !1737
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1737
  call void @llvm.dbg.declare(metadata i64* %nbytes, metadata !303, metadata !378), !dbg !1738
  %7 = load i32, i32* @maxarenas, align 4, !dbg !1739, !tbaa !589
  %tobool = icmp ne i32 %7, 0, !dbg !1739
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1739

cond.true:                                        ; preds = %if.then
  %8 = load i32, i32* @maxarenas, align 4, !dbg !1740, !tbaa !589
  %shl = shl i32 %8, 1, !dbg !1742
  br label %cond.end, !dbg !1739

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 16, %cond.false ], !dbg !1739
  store i32 %cond, i32* %numarenas, align 4, !dbg !1745, !tbaa !589
  %9 = load i32, i32* %numarenas, align 4, !dbg !1748, !tbaa !589
  %10 = load i32, i32* @maxarenas, align 4, !dbg !1750, !tbaa !589
  %cmp1 = icmp ule i32 %9, %10, !dbg !1751
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1752

if.then.2:                                        ; preds = %cond.end
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1753
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1753

if.end:                                           ; preds = %cond.end
  %11 = load i32, i32* %numarenas, align 4, !dbg !1754, !tbaa !589
  %conv = zext i32 %11 to i64, !dbg !1754
  %mul = mul i64 %conv, 48, !dbg !1755
  store i64 %mul, i64* %nbytes, align 8, !dbg !1756, !tbaa !439
  %12 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1757, !tbaa !380
  %13 = bitcast %struct.arena_object* %12 to i8*, !dbg !1757
  %14 = load i64, i64* %nbytes, align 8, !dbg !1758, !tbaa !439
  %call = call i8* @PyMem_RawRealloc(i8* %13, i64 %14), !dbg !1759
  %15 = bitcast i8* %call to %struct.arena_object*, !dbg !1760
  store %struct.arena_object* %15, %struct.arena_object** %arenaobj, align 8, !dbg !1761, !tbaa !380
  %16 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1762, !tbaa !380
  %cmp3 = icmp eq %struct.arena_object* %16, null, !dbg !1764
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !1765

if.then.5:                                        ; preds = %if.end
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1766
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1766

if.end.6:                                         ; preds = %if.end
  %17 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1767, !tbaa !380
  store %struct.arena_object* %17, %struct.arena_object** @arenas, align 8, !dbg !1768, !tbaa !380
  %18 = load i32, i32* @maxarenas, align 4, !dbg !1769, !tbaa !589
  store i32 %18, i32* %i, align 4, !dbg !1771, !tbaa !589
  br label %for.cond, !dbg !1772

for.cond:                                         ; preds = %for.inc, %if.end.6
  %19 = load i32, i32* %i, align 4, !dbg !1773, !tbaa !589
  %20 = load i32, i32* %numarenas, align 4, !dbg !1777, !tbaa !589
  %cmp7 = icmp ult i32 %19, %20, !dbg !1778
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1779

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !1780, !tbaa !589
  %idxprom = zext i32 %21 to i64, !dbg !1782
  %22 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1782, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %22, i64 %idxprom, !dbg !1782
  %address9 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1783
  store i64 0, i64* %address9, align 8, !dbg !1784, !tbaa !779
  %23 = load i32, i32* %i, align 4, !dbg !1785, !tbaa !589
  %24 = load i32, i32* %numarenas, align 4, !dbg !1786, !tbaa !589
  %sub = sub i32 %24, 1, !dbg !1787
  %cmp10 = icmp ult i32 %23, %sub, !dbg !1788
  br i1 %cmp10, label %cond.true.12, label %cond.false.15, !dbg !1785

cond.true.12:                                     ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !1789, !tbaa !589
  %add = add i32 %25, 1, !dbg !1790
  %idxprom13 = zext i32 %add to i64, !dbg !1791
  %26 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1791, !tbaa !380
  %arrayidx14 = getelementptr %struct.arena_object, %struct.arena_object* %26, i64 %idxprom13, !dbg !1791
  br label %cond.end.16, !dbg !1785

cond.false.15:                                    ; preds = %for.body
  br label %cond.end.16, !dbg !1792

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.12
  %cond17 = phi %struct.arena_object* [ %arrayidx14, %cond.true.12 ], [ null, %cond.false.15 ], !dbg !1785
  %27 = load i32, i32* %i, align 4, !dbg !1794, !tbaa !589
  %idxprom18 = zext i32 %27 to i64, !dbg !1797
  %28 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1797, !tbaa !380
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %28, i64 %idxprom18, !dbg !1797
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx19, i32 0, i32 5, !dbg !1798
  store %struct.arena_object* %cond17, %struct.arena_object** %nextarena, align 8, !dbg !1799, !tbaa !1140
  br label %for.inc, !dbg !1800

for.inc:                                          ; preds = %cond.end.16
  %29 = load i32, i32* %i, align 4, !dbg !1801, !tbaa !589
  %inc = add i32 %29, 1, !dbg !1801
  store i32 %inc, i32* %i, align 4, !dbg !1801, !tbaa !589
  br label %for.cond, !dbg !1802

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* @maxarenas, align 4, !dbg !1803, !tbaa !589
  %idxprom20 = zext i32 %30 to i64, !dbg !1804
  %31 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1804, !tbaa !380
  %arrayidx21 = getelementptr %struct.arena_object, %struct.arena_object* %31, i64 %idxprom20, !dbg !1804
  store %struct.arena_object* %arrayidx21, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1805, !tbaa !380
  %32 = load i32, i32* %numarenas, align 4, !dbg !1806, !tbaa !589
  store i32 %32, i32* @maxarenas, align 4, !dbg !1807, !tbaa !589
  store i32 0, i32* %cleanup.dest.slot, !dbg !1808
  br label %cleanup, !dbg !1808

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then.2
  %33 = bitcast i64* %nbytes to i8*, !dbg !1809
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1809
  %34 = bitcast i32* %numarenas to i8*, !dbg !1809
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !1809
  %35 = bitcast i32* %i to i8*, !dbg !1809
  call void @llvm.lifetime.end(i64 4, i8* %35) #2, !dbg !1809
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24, !dbg !1811

if.end.24:                                        ; preds = %cleanup.cont, %entry
  %36 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1812, !tbaa !380
  store %struct.arena_object* %36, %struct.arena_object** %arenaobj, align 8, !dbg !1813, !tbaa !380
  %37 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1814, !tbaa !380
  %nextarena25 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %37, i32 0, i32 5, !dbg !1815
  %38 = load %struct.arena_object*, %struct.arena_object** %nextarena25, align 8, !dbg !1815, !tbaa !1140
  store %struct.arena_object* %38, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1816, !tbaa !380
  %39 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 1), align 8, !dbg !1817, !tbaa !1818
  %40 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8, !dbg !1819, !tbaa !1576
  %call26 = call i8* %39(i8* %40, i64 262144), !dbg !1820
  store i8* %call26, i8** %address, align 8, !dbg !1821, !tbaa !380
  %41 = load i8*, i8** %address, align 8, !dbg !1822, !tbaa !380
  %cmp27 = icmp eq i8* %41, null, !dbg !1824
  br i1 %cmp27, label %if.then.29, label %if.end.31, !dbg !1825

if.then.29:                                       ; preds = %if.end.24
  %42 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1826, !tbaa !380
  %43 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1828, !tbaa !380
  %nextarena30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %43, i32 0, i32 5, !dbg !1829
  store %struct.arena_object* %42, %struct.arena_object** %nextarena30, align 8, !dbg !1830, !tbaa !1140
  %44 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1831, !tbaa !380
  store %struct.arena_object* %44, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1832, !tbaa !380
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !1833

if.end.31:                                        ; preds = %if.end.24
  %45 = load i8*, i8** %address, align 8, !dbg !1834, !tbaa !380
  %46 = ptrtoint i8* %45 to i64, !dbg !1835
  %47 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1836, !tbaa !380
  %address32 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %47, i32 0, i32 0, !dbg !1837
  store i64 %46, i64* %address32, align 8, !dbg !1838, !tbaa !779
  %48 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1839, !tbaa !439
  %inc33 = add i64 %48, 1, !dbg !1839
  store i64 %inc33, i64* @narenas_currently_allocated, align 8, !dbg !1839, !tbaa !439
  %49 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !1840, !tbaa !439
  %inc34 = add i64 %49, 1, !dbg !1840
  store i64 %inc34, i64* @ntimes_arena_allocated, align 8, !dbg !1840, !tbaa !439
  %50 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1841, !tbaa !439
  %51 = load i64, i64* @narenas_highwater, align 8, !dbg !1843, !tbaa !439
  %cmp35 = icmp ugt i64 %50, %51, !dbg !1844
  br i1 %cmp35, label %if.then.37, label %if.end.38, !dbg !1845

if.then.37:                                       ; preds = %if.end.31
  %52 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1846, !tbaa !439
  store i64 %52, i64* @narenas_highwater, align 8, !dbg !1847, !tbaa !439
  br label %if.end.38, !dbg !1848

if.end.38:                                        ; preds = %if.then.37, %if.end.31
  %53 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1849, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 4, !dbg !1850
  store %struct.pool_header* null, %struct.pool_header** %freepools, align 8, !dbg !1851, !tbaa !1144
  %54 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1852, !tbaa !380
  %address39 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %54, i32 0, i32 0, !dbg !1853
  %55 = load i64, i64* %address39, align 8, !dbg !1853, !tbaa !779
  %56 = inttoptr i64 %55 to i8*, !dbg !1854
  %57 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1855, !tbaa !380
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 1, !dbg !1856
  store i8* %56, i8** %pool_address, align 8, !dbg !1857, !tbaa !809
  %58 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1858, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %58, i32 0, i32 2, !dbg !1859
  store i32 64, i32* %nfreepools, align 4, !dbg !1860, !tbaa !792
  %59 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1861, !tbaa !380
  %address40 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 0, !dbg !1862
  %60 = load i64, i64* %address40, align 8, !dbg !1862, !tbaa !779
  %and = and i64 %60, 4095, !dbg !1863
  %conv41 = trunc i64 %and to i32, !dbg !1864
  store i32 %conv41, i32* %excess, align 4, !dbg !1865, !tbaa !589
  %61 = load i32, i32* %excess, align 4, !dbg !1866, !tbaa !589
  %cmp42 = icmp ne i32 %61, 0, !dbg !1868
  br i1 %cmp42, label %if.then.44, label %if.end.48, !dbg !1869

if.then.44:                                       ; preds = %if.end.38
  %62 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1870, !tbaa !380
  %nfreepools45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %62, i32 0, i32 2, !dbg !1872
  %63 = load i32, i32* %nfreepools45, align 4, !dbg !1873, !tbaa !792
  %dec = add i32 %63, -1, !dbg !1873
  store i32 %dec, i32* %nfreepools45, align 4, !dbg !1873, !tbaa !792
  %64 = load i32, i32* %excess, align 4, !dbg !1874, !tbaa !589
  %sub46 = sub i32 4096, %64, !dbg !1875
  %65 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1876, !tbaa !380
  %pool_address47 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %65, i32 0, i32 1, !dbg !1877
  %66 = load i8*, i8** %pool_address47, align 8, !dbg !1878, !tbaa !809
  %idx.ext = zext i32 %sub46 to i64, !dbg !1878
  %add.ptr = getelementptr i8, i8* %66, i64 %idx.ext, !dbg !1878
  store i8* %add.ptr, i8** %pool_address47, align 8, !dbg !1878, !tbaa !809
  br label %if.end.48, !dbg !1879

if.end.48:                                        ; preds = %if.then.44, %if.end.38
  %67 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1880, !tbaa !380
  %nfreepools49 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %67, i32 0, i32 2, !dbg !1881
  %68 = load i32, i32* %nfreepools49, align 4, !dbg !1881, !tbaa !792
  %69 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1882, !tbaa !380
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %69, i32 0, i32 3, !dbg !1883
  store i32 %68, i32* %ntotalpools, align 4, !dbg !1884, !tbaa !1532
  %70 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1885, !tbaa !380
  store %struct.arena_object* %70, %struct.arena_object** %retval, !dbg !1886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !1886

cleanup.50:                                       ; preds = %if.end.48, %if.then.29, %cleanup
  %71 = bitcast i8** %address to i8*, !dbg !1887
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1887
  %72 = bitcast i32* %excess to i8*, !dbg !1887
  call void @llvm.lifetime.end(i64 4, i8* %72) #2, !dbg !1887
  %73 = bitcast %struct.arena_object** %arenaobj to i8*, !dbg !1887
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1887
  %74 = load %struct.arena_object*, %struct.arena_object** %retval, !dbg !1887
  ret %struct.arena_object* %74, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyObject_ArenaMmap(i8* %ctx, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !331, metadata !378), !dbg !1888
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !332, metadata !378), !dbg !1889
  %0 = bitcast i8** %ptr to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1890
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !333, metadata !378), !dbg !1891
  %1 = load i64, i64* %size.addr, align 8, !dbg !1892, !tbaa !439
  %call = call i8* @mmap64(i8* null, i64 %1, i32 3, i32 34, i32 -1, i64 0) #2, !dbg !1893
  store i8* %call, i8** %ptr, align 8, !dbg !1894, !tbaa !380
  %2 = load i8*, i8** %ptr, align 8, !dbg !1895, !tbaa !380
  %cmp = icmp eq i8* %2, inttoptr (i64 -1 to i8*), !dbg !1897
  br i1 %cmp, label %if.then, label %if.end, !dbg !1898

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1899
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1899

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr, align 8, !dbg !1900, !tbaa !380
  store i8* %3, i8** %retval, !dbg !1901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1901

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i8** %ptr to i8*, !dbg !1902
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1902
  %5 = load i8*, i8** %retval, !dbg !1902
  ret i8* %5, !dbg !1902
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_ArenaMunmap(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !336, metadata !378), !dbg !1903
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !337, metadata !378), !dbg !1904
  store i64 %size, i64* %size.addr, align 8, !tbaa !439
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !338, metadata !378), !dbg !1905
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1906, !tbaa !380
  %1 = load i64, i64* %size.addr, align 8, !dbg !1907, !tbaa !439
  %call = call i32 @munmap(i8* %0, i64 %1) #2, !dbg !1908
  ret void, !dbg !1909
}

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #5

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!371, !372}
!llvm.ident = !{!373}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !58, globals: !356)
!1 = !DIFile(filename: "obmalloc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 117, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pymem.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PYMEM_DOMAIN_RAW", value: 0)
!7 = !DIEnumerator(name: "PYMEM_DOMAIN_MEM", value: 1)
!8 = !DIEnumerator(name: "PYMEM_DOMAIN_OBJ", value: 2)
!9 = !{!10, !11, !14, !21, !24, !37, !45, !33, !46, !56, !57}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 62, baseType: !13)
!12 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uintptr_t", file: !15, line: 153, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 122, baseType: !13)
!23 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "poolp", file: !25, line: 633, baseType: !26)
!25 = !DIFile(filename: "Objects/obmalloc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "pool_header", file: !25, line: 621, size: 384, align: 64, elements: !28)
!28 = !{!29, !38, !39, !40, !41, !42, !43, !44}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !27, file: !25, line: 623, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !25, line: 622, size: 64, align: 64, elements: !31)
!31 = !{!32, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !30, file: !25, line: 622, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "block", file: !25, line: 618, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !30, file: !25, line: 623, baseType: !37, size: 32, align: 32)
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "freeblock", scope: !27, file: !25, line: 624, baseType: !33, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nextpool", scope: !27, file: !25, line: 625, baseType: !26, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prevpool", scope: !27, file: !25, line: 626, baseType: !26, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "arenaindex", scope: !27, file: !25, line: 627, baseType: !37, size: 32, align: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "szidx", scope: !27, file: !25, line: 628, baseType: !37, size: 32, align: 32, offset: 288)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nextoffset", scope: !27, file: !25, line: 629, baseType: !37, size: 32, align: 32, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "maxnextoffset", scope: !27, file: !25, line: 630, baseType: !37, size: 32, align: 32, offset: 352)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "arena_object", file: !25, line: 636, size: 384, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !47, file: !25, line: 642, baseType: !21, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pool_address", scope: !47, file: !25, line: 645, baseType: !33, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nfreepools", scope: !47, file: !25, line: 650, baseType: !37, size: 32, align: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ntotalpools", scope: !47, file: !25, line: 653, baseType: !37, size: 32, align: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "freepools", scope: !47, file: !25, line: 656, baseType: !26, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nextarena", scope: !47, file: !25, line: 672, baseType: !46, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prevarena", scope: !47, file: !25, line: 673, baseType: !46, size: 64, align: 64, offset: 320)
!56 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !{!59, !63, !87, !91, !107, !110, !115, !119, !124, !127, !131, !134, !144, !149, !152, !156, !159, !162, !228, !269, !273, !278, !282, !292, !304, !313, !329, !334, !339}
!59 = !DISubprogram(name: "PyMem_SetupDebugHooks", scope: !25, file: !25, line: 193, type: !60, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyMem_SetupDebugHooks, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null}
!62 = !{}
!63 = !DISubprogram(name: "PyMem_GetAllocator", scope: !25, file: !25, line: 223, type: !64, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.PyMemAllocator*)* @PyMem_GetAllocator, variables: !84)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocatorDomain", file: !4, line: 126, baseType: !3)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemAllocator", file: !4, line: 140, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 128, size: 256, align: 64, elements: !70)
!70 = !{!71, !72, !76, !80}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !69, file: !4, line: 130, baseType: !10, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !69, file: !4, line: 133, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!10, !10, !11}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !69, file: !4, line: 136, baseType: !77, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!10, !10, !10, !11}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !69, file: !4, line: 139, baseType: !81, size: 64, align: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !10, !10}
!84 = !{!85, !86}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domain", arg: 1, scope: !63, file: !25, line: 223, type: !66)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 2, scope: !63, file: !25, line: 223, type: !67)
!87 = !DISubprogram(name: "PyMem_SetAllocator", scope: !25, file: !25, line: 240, type: !64, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.PyMemAllocator*)* @PyMem_SetAllocator, variables: !88)
!88 = !{!89, !90}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domain", arg: 1, scope: !87, file: !25, line: 240, type: !66)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 2, scope: !87, file: !25, line: 240, type: !67)
!91 = !DISubprogram(name: "PyObject_GetArenaAllocator", scope: !25, file: !25, line: 253, type: !92, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyObjectArenaAllocator*)* @PyObject_GetArenaAllocator, variables: !105)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObjectArenaAllocator", file: !96, line: 211, baseType: !97)
!96 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!97 = !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 202, size: 192, align: 64, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !97, file: !96, line: 204, baseType: !10, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !97, file: !96, line: 207, baseType: !73, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !97, file: !96, line: 210, baseType: !102, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !10, !10, !11}
!105 = !{!106}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 1, scope: !91, file: !25, line: 253, type: !94)
!107 = !DISubprogram(name: "PyObject_SetArenaAllocator", scope: !25, file: !25, line: 259, type: !92, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyObjectArenaAllocator*)* @PyObject_SetArenaAllocator, variables: !108)
!108 = !{!109}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 1, scope: !107, file: !25, line: 259, type: !94)
!110 = !DISubprogram(name: "PyMem_RawMalloc", scope: !25, file: !25, line: 265, type: !111, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyMem_RawMalloc, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !11}
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !110, file: !25, line: 265, type: !11)
!115 = !DISubprogram(name: "PyMem_RawRealloc", scope: !25, file: !25, line: 280, type: !74, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyMem_RawRealloc, variables: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !115, file: !25, line: 280, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !115, file: !25, line: 280, type: !11)
!119 = !DISubprogram(name: "PyMem_RawFree", scope: !25, file: !25, line: 288, type: !120, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyMem_RawFree, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !10}
!122 = !{!123}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !119, file: !25, line: 288, type: !10)
!124 = !DISubprogram(name: "PyMem_Malloc", scope: !25, file: !25, line: 294, type: !111, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyMem_Malloc, variables: !125)
!125 = !{!126}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !124, file: !25, line: 294, type: !11)
!127 = !DISubprogram(name: "PyMem_Realloc", scope: !25, file: !25, line: 303, type: !74, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyMem_Realloc, variables: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !127, file: !25, line: 303, type: !10)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !127, file: !25, line: 303, type: !11)
!131 = !DISubprogram(name: "PyMem_Free", scope: !25, file: !25, line: 312, type: !120, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyMem_Free, variables: !132)
!132 = !{!133}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !131, file: !25, line: 312, type: !10)
!134 = !DISubprogram(name: "_PyMem_RawStrdup", scope: !25, file: !25, line: 318, type: !135, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @_PyMem_RawStrdup, variables: !140)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!140 = !{!141, !142, !143}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !134, file: !25, line: 318, type: !138)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !134, file: !25, line: 320, type: !11)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !134, file: !25, line: 321, type: !137)
!144 = !DISubprogram(name: "_PyMem_Strdup", scope: !25, file: !25, line: 332, type: !135, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @_PyMem_Strdup, variables: !145)
!145 = !{!146, !147, !148}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !144, file: !25, line: 332, type: !138)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !144, file: !25, line: 334, type: !11)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !144, file: !25, line: 335, type: !137)
!149 = !DISubprogram(name: "PyObject_Malloc", scope: !25, file: !25, line: 346, type: !111, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64)* @PyObject_Malloc, variables: !150)
!150 = !{!151}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !149, file: !25, line: 346, type: !11)
!152 = !DISubprogram(name: "PyObject_Realloc", scope: !25, file: !25, line: 355, type: !74, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @PyObject_Realloc, variables: !153)
!153 = !{!154, !155}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !152, file: !25, line: 355, type: !10)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_size", arg: 2, scope: !152, file: !25, line: 355, type: !11)
!156 = !DISubprogram(name: "PyObject_Free", scope: !25, file: !25, line: 364, type: !120, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @PyObject_Free, variables: !157)
!157 = !{!158}
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !156, file: !25, line: 364, type: !10)
!159 = !DISubprogram(name: "_Py_GetAllocatedBlocks", scope: !25, file: !25, line: 891, type: !160, isLocal: false, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @_Py_GetAllocatedBlocks, variables: !62)
!160 = !DISubroutineType(types: !161)
!161 = !{!14}
!162 = !DISubprogram(name: "_PyDebugAllocatorStats", scope: !25, file: !25, line: 2056, type: !163, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*, i8*, i32, i64)* @_PyDebugAllocatorStats, variables: !218)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165, !138, !56, !11}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !168, line: 246, size: 1728, align: 64, elements: !169)
!168 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !190, !191, !192, !193, !195, !197, !199, !203, !206, !208, !209, !210, !211, !212, !213, !214}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !167, file: !168, line: 247, baseType: !56, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !167, file: !168, line: 252, baseType: !137, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !167, file: !168, line: 253, baseType: !137, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !167, file: !168, line: 254, baseType: !137, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !167, file: !168, line: 255, baseType: !137, size: 64, align: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !167, file: !168, line: 256, baseType: !137, size: 64, align: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !167, file: !168, line: 257, baseType: !137, size: 64, align: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !167, file: !168, line: 258, baseType: !137, size: 64, align: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !167, file: !168, line: 259, baseType: !137, size: 64, align: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !167, file: !168, line: 261, baseType: !137, size: 64, align: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !167, file: !168, line: 262, baseType: !137, size: 64, align: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !167, file: !168, line: 263, baseType: !137, size: 64, align: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !167, file: !168, line: 265, baseType: !183, size: 64, align: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !168, line: 161, size: 192, align: 64, elements: !185)
!185 = !{!186, !187, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !184, file: !168, line: 162, baseType: !183, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !184, file: !168, line: 163, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !184, file: !168, line: 167, baseType: !56, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !167, file: !168, line: 267, baseType: !188, size: 64, align: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !167, file: !168, line: 269, baseType: !56, size: 32, align: 32, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !167, file: !168, line: 273, baseType: !56, size: 32, align: 32, offset: 928)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !167, file: !168, line: 275, baseType: !194, size: 64, align: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !167, file: !168, line: 279, baseType: !196, size: 16, align: 16, offset: 1024)
!196 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !167, file: !168, line: 280, baseType: !198, size: 8, align: 8, offset: 1040)
!198 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !167, file: !168, line: 281, baseType: !200, size: 8, align: 8, offset: 1048)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 1)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !167, file: !168, line: 285, baseType: !204, size: 64, align: 64, offset: 1088)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !168, line: 155, baseType: null)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !167, file: !168, line: 294, baseType: !207, size: 64, align: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !167, file: !168, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !167, file: !168, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !167, file: !168, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !167, file: !168, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !167, file: !168, line: 307, baseType: !11, size: 64, align: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !167, file: !168, line: 309, baseType: !56, size: 32, align: 32, offset: 1536)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !167, file: !168, line: 311, baseType: !215, size: 160, align: 8, offset: 1568)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, align: 8, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 20)
!218 = !{!219, !220, !221, !222, !223, !227}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !162, file: !25, line: 2056, type: !165)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block_name", arg: 2, scope: !162, file: !25, line: 2057, type: !138)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_blocks", arg: 3, scope: !162, file: !25, line: 2057, type: !56)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizeof_block", arg: 4, scope: !162, file: !25, line: 2057, type: !11)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf1", scope: !162, file: !25, line: 2059, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1024, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 128)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !162, file: !25, line: 2060, type: !224)
!228 = !DISubprogram(name: "_PyObject_DebugMallocStats", scope: !25, file: !25, line: 2076, type: !229, isLocal: false, isDefinition: true, scopeLine: 2077, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyObject_DebugMallocStats, variables: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !165}
!231 = !{!232, !233, !234, !236, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !255, !256, !260, !261, !262, !266, !267, !268}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !228, file: !25, line: 2076, type: !165)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !228, file: !25, line: 2078, type: !37)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numclasses", scope: !228, file: !25, line: 2079, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numpools", scope: !228, file: !25, line: 2081, type: !237)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4096, align: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 64)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numblocks", scope: !228, file: !25, line: 2082, type: !237)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numfreeblocks", scope: !228, file: !25, line: 2083, type: !237)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allocated_bytes", scope: !228, file: !25, line: 2085, type: !11)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "available_bytes", scope: !228, file: !25, line: 2087, type: !11)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numfreepools", scope: !228, file: !25, line: 2089, type: !37)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arena_alignment", scope: !228, file: !25, line: 2091, type: !11)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool_header_bytes", scope: !228, file: !25, line: 2093, type: !11)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quantization", scope: !228, file: !25, line: 2098, type: !11)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "narenas", scope: !228, file: !25, line: 2100, type: !11)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !228, file: !25, line: 2102, type: !11)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !228, file: !25, line: 2103, type: !224)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !252, file: !25, line: 2116, type: !37)
!252 = distinct !DILexicalBlock(scope: !253, file: !25, line: 2115, column: 37)
!253 = distinct !DILexicalBlock(scope: !254, file: !25, line: 2115, column: 5)
!254 = distinct !DILexicalBlock(scope: !228, file: !25, line: 2115, column: 5)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !252, file: !25, line: 2117, type: !21)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !257, file: !25, line: 2138, type: !24)
!257 = distinct !DILexicalBlock(scope: !258, file: !25, line: 2137, column: 46)
!258 = distinct !DILexicalBlock(scope: !259, file: !25, line: 2135, column: 9)
!259 = distinct !DILexicalBlock(scope: !252, file: !25, line: 2135, column: 9)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sz", scope: !257, file: !25, line: 2139, type: !235)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freeblocks", scope: !257, file: !25, line: 2140, type: !37)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !263, file: !25, line: 2165, type: !11)
!263 = distinct !DILexicalBlock(scope: !264, file: !25, line: 2164, column: 38)
!264 = distinct !DILexicalBlock(scope: !265, file: !25, line: 2164, column: 5)
!265 = distinct !DILexicalBlock(scope: !228, file: !25, line: 2164, column: 5)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !263, file: !25, line: 2166, type: !11)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !263, file: !25, line: 2167, type: !11)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !263, file: !25, line: 2168, type: !37)
!269 = !DISubprogram(name: "_PyMem_RawMalloc", scope: !25, file: !25, line: 52, type: !74, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyMem_RawMalloc, variables: !270)
!270 = !{!271, !272}
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !269, file: !25, line: 52, type: !10)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !269, file: !25, line: 52, type: !11)
!273 = !DISubprogram(name: "_PyMem_RawRealloc", scope: !25, file: !25, line: 64, type: !78, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @_PyMem_RawRealloc, variables: !274)
!274 = !{!275, !276, !277}
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !273, file: !25, line: 64, type: !10)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !273, file: !25, line: 64, type: !10)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !273, file: !25, line: 64, type: !11)
!278 = !DISubprogram(name: "_PyMem_RawFree", scope: !25, file: !25, line: 72, type: !82, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @_PyMem_RawFree, variables: !279)
!279 = !{!280, !281}
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !278, file: !25, line: 72, type: !10)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !278, file: !25, line: 72, type: !10)
!282 = !DISubprogram(name: "_PyObject_Malloc", scope: !25, file: !25, line: 1125, type: !74, isLocal: true, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyObject_Malloc, variables: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290}
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !282, file: !25, line: 1125, type: !10)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 2, scope: !282, file: !25, line: 1125, type: !11)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !282, file: !25, line: 1127, type: !33)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !282, file: !25, line: 1128, type: !24)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !282, file: !25, line: 1129, type: !24)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !282, file: !25, line: 1130, type: !37)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !291, file: !25, line: 1314, type: !10)
!291 = distinct !DILexicalBlock(scope: !282, file: !25, line: 1313, column: 5)
!292 = !DISubprogram(name: "new_arena", scope: !25, file: !25, line: 903, type: !293, isLocal: true, isDefinition: true, scopeLine: 904, flags: DIFlagPrototyped, isOptimized: true, function: %struct.arena_object* ()* @new_arena, variables: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!46}
!295 = !{!296, !297, !298, !299, !302, !303}
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaobj", scope: !292, file: !25, line: 905, type: !46)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "excess", scope: !292, file: !25, line: 906, type: !37)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "address", scope: !292, file: !25, line: 907, type: !10)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !300, file: !25, line: 914, type: !37)
!300 = distinct !DILexicalBlock(scope: !301, file: !25, line: 913, column: 45)
!301 = distinct !DILexicalBlock(scope: !292, file: !25, line: 913, column: 9)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numarenas", scope: !300, file: !25, line: 915, type: !37)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !300, file: !25, line: 916, type: !11)
!304 = !DISubprogram(name: "_PyObject_Realloc", scope: !25, file: !25, line: 1554, type: !78, isLocal: true, isDefinition: true, scopeLine: 1555, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64)* @_PyObject_Realloc, variables: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312}
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !304, file: !25, line: 1554, type: !10)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !304, file: !25, line: 1554, type: !10)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbytes", arg: 3, scope: !304, file: !25, line: 1554, type: !11)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !304, file: !25, line: 1556, type: !10)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !304, file: !25, line: 1557, type: !24)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !304, file: !25, line: 1558, type: !11)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaindex_temp", scope: !304, file: !25, line: 1560, type: !37)
!313 = !DISubprogram(name: "_PyObject_Free", scope: !25, file: !25, line: 1325, type: !82, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @_PyObject_Free, variables: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !328}
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !313, file: !25, line: 1325, type: !10)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !313, file: !25, line: 1325, type: !10)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pool", scope: !313, file: !25, line: 1327, type: !24)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastfree", scope: !313, file: !25, line: 1328, type: !33)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !313, file: !25, line: 1329, type: !24)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !313, file: !25, line: 1329, type: !24)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !313, file: !25, line: 1330, type: !37)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arenaindex_temp", scope: !313, file: !25, line: 1332, type: !37)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ao", scope: !324, file: !25, line: 1359, type: !46)
!324 = distinct !DILexicalBlock(scope: !325, file: !25, line: 1358, column: 23)
!325 = distinct !DILexicalBlock(scope: !326, file: !25, line: 1358, column: 13)
!326 = distinct !DILexicalBlock(scope: !327, file: !25, line: 1346, column: 186)
!327 = distinct !DILexicalBlock(scope: !313, file: !25, line: 1346, column: 9)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nf", scope: !324, file: !25, line: 1360, type: !37)
!329 = !DISubprogram(name: "_PyObject_ArenaMmap", scope: !25, file: !25, line: 94, type: !74, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64)* @_PyObject_ArenaMmap, variables: !330)
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !329, file: !25, line: 94, type: !10)
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !329, file: !25, line: 94, type: !11)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !329, file: !25, line: 96, type: !10)
!334 = !DISubprogram(name: "_PyObject_ArenaMunmap", scope: !25, file: !25, line: 106, type: !103, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_PyObject_ArenaMunmap, variables: !335)
!335 = !{!336, !337, !338}
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !334, file: !25, line: 106, type: !10)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !334, file: !25, line: 106, type: !10)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !334, file: !25, line: 106, type: !11)
!339 = !DISubprogram(name: "printone", scope: !25, file: !25, line: 2020, type: !340, isLocal: true, isDefinition: true, scopeLine: 2021, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._IO_FILE*, i8*, i64)* @printone, variables: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!11, !165, !138, !11}
!342 = !{!343, !344, !345, !346, !347, !348, !352, !353, !355}
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !339, file: !25, line: 2020, type: !165)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !339, file: !25, line: 2020, type: !138)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !339, file: !25, line: 2020, type: !11)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !339, file: !25, line: 2022, type: !56)
!347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !339, file: !25, line: 2022, type: !56)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !339, file: !25, line: 2023, type: !349)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 800, align: 8, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 100)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "origvalue", scope: !339, file: !25, line: 2024, type: !11)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextvalue", scope: !354, file: !25, line: 2037, type: !11)
!354 = distinct !DILexicalBlock(scope: !339, file: !25, line: 2036, column: 8)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digit", scope: !354, file: !25, line: 2038, type: !37)
!356 = !{!357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!357 = !DIGlobalVariable(name: "_PyMem_Raw", scope: !0, file: !25, line: 153, type: !68, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyMem_Raw)
!358 = !DIGlobalVariable(name: "_PyMem", scope: !0, file: !25, line: 161, type: !68, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyMem)
!359 = !DIGlobalVariable(name: "_PyObject", scope: !0, file: !25, line: 169, type: !68, isLocal: true, isDefinition: true, variable: %struct.PyMemAllocator* @_PyObject)
!360 = !DIGlobalVariable(name: "usedpools", scope: !0, file: !25, line: 796, type: !361, isLocal: true, isDefinition: true, variable: [128 x %struct.pool_header*]* @usedpools)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 64, elements: !225)
!362 = !DIGlobalVariable(name: "usable_arenas", scope: !0, file: !25, line: 872, type: !46, isLocal: true, isDefinition: true, variable: %struct.arena_object** @usable_arenas)
!363 = !DIGlobalVariable(name: "unused_arena_objects", scope: !0, file: !25, line: 867, type: !46, isLocal: true, isDefinition: true, variable: %struct.arena_object** @unused_arena_objects)
!364 = !DIGlobalVariable(name: "narenas_currently_allocated", scope: !0, file: !25, line: 881, type: !11, isLocal: true, isDefinition: true, variable: i64* @narenas_currently_allocated)
!365 = !DIGlobalVariable(name: "_PyObject_Arena", scope: !0, file: !25, line: 182, type: !95, isLocal: true, isDefinition: true, variable: %struct.PyObjectArenaAllocator* @_PyObject_Arena)
!366 = !DIGlobalVariable(name: "_Py_AllocatedBlocks", scope: !0, file: !25, line: 888, type: !14, isLocal: true, isDefinition: true, variable: i64* @_Py_AllocatedBlocks)
!367 = !DIGlobalVariable(name: "maxarenas", scope: !0, file: !25, line: 862, type: !37, isLocal: true, isDefinition: true, variable: i32* @maxarenas)
!368 = !DIGlobalVariable(name: "arenas", scope: !0, file: !25, line: 860, type: !46, isLocal: true, isDefinition: true, variable: %struct.arena_object** @arenas)
!369 = !DIGlobalVariable(name: "ntimes_arena_allocated", scope: !0, file: !25, line: 884, type: !11, isLocal: true, isDefinition: true, variable: i64* @ntimes_arena_allocated)
!370 = !DIGlobalVariable(name: "narenas_highwater", scope: !0, file: !25, line: 886, type: !11, isLocal: true, isDefinition: true, variable: i64* @narenas_highwater)
!371 = !{i32 2, !"Dwarf Version", i32 4}
!372 = !{i32 2, !"Debug Info Version", i32 3}
!373 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!374 = !DILocation(line: 220, column: 1, scope: !59)
!375 = !{!376, !376, i64 0}
!376 = !{!"omnipotent char", !377, i64 0}
!377 = !{!"Simple C/C++ TBAA"}
!378 = !DIExpression()
!379 = !DILocation(line: 223, column: 41, scope: !63)
!380 = !{!381, !381, i64 0}
!381 = !{!"any pointer", !376, i64 0}
!382 = !DILocation(line: 223, column: 65, scope: !63)
!383 = !DILocation(line: 225, column: 12, scope: !63)
!384 = !DILocation(line: 225, column: 5, scope: !63)
!385 = !DILocation(line: 227, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !63, file: !25, line: 226, column: 5)
!387 = !DILocation(line: 227, column: 41, scope: !386)
!388 = !{i64 0, i64 8, !380, i64 8, i64 8, !380, i64 16, i64 8, !380, i64 24, i64 8, !380}
!389 = !DILocation(line: 227, column: 53, scope: !386)
!390 = !DILocation(line: 228, column: 29, scope: !386)
!391 = !DILocation(line: 228, column: 41, scope: !386)
!392 = !DILocation(line: 228, column: 49, scope: !386)
!393 = !DILocation(line: 229, column: 29, scope: !386)
!394 = !DILocation(line: 229, column: 41, scope: !386)
!395 = !DILocation(line: 229, column: 52, scope: !386)
!396 = !DILocation(line: 232, column: 9, scope: !386)
!397 = !DILocation(line: 232, column: 20, scope: !386)
!398 = !DILocation(line: 232, column: 24, scope: !386)
!399 = !{!400, !381, i64 0}
!400 = !{!"", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24}
!401 = !DILocation(line: 233, column: 9, scope: !386)
!402 = !DILocation(line: 233, column: 20, scope: !386)
!403 = !DILocation(line: 233, column: 27, scope: !386)
!404 = !{!400, !381, i64 8}
!405 = !DILocation(line: 234, column: 9, scope: !386)
!406 = !DILocation(line: 234, column: 20, scope: !386)
!407 = !DILocation(line: 234, column: 28, scope: !386)
!408 = !{!400, !381, i64 16}
!409 = !DILocation(line: 235, column: 9, scope: !386)
!410 = !DILocation(line: 235, column: 20, scope: !386)
!411 = !DILocation(line: 235, column: 25, scope: !386)
!412 = !{!400, !381, i64 24}
!413 = !DILocation(line: 236, column: 5, scope: !386)
!414 = !DILocation(line: 237, column: 1, scope: !63)
!415 = !DILocation(line: 240, column: 41, scope: !87)
!416 = !DILocation(line: 240, column: 65, scope: !87)
!417 = !DILocation(line: 242, column: 12, scope: !87)
!418 = !DILocation(line: 242, column: 5, scope: !87)
!419 = !DILocation(line: 244, column: 42, scope: !420)
!420 = distinct !DILexicalBlock(scope: !87, file: !25, line: 243, column: 5)
!421 = !DILocation(line: 244, column: 41, scope: !420)
!422 = !DILocation(line: 244, column: 53, scope: !420)
!423 = !DILocation(line: 245, column: 38, scope: !420)
!424 = !DILocation(line: 245, column: 37, scope: !420)
!425 = !DILocation(line: 245, column: 49, scope: !420)
!426 = !DILocation(line: 246, column: 41, scope: !420)
!427 = !DILocation(line: 246, column: 40, scope: !420)
!428 = !DILocation(line: 246, column: 52, scope: !420)
!429 = !DILocation(line: 250, column: 1, scope: !87)
!430 = !DILocation(line: 253, column: 52, scope: !91)
!431 = !DILocation(line: 255, column: 6, scope: !91)
!432 = !DILocation(line: 255, column: 18, scope: !91)
!433 = !{i64 0, i64 8, !380, i64 8, i64 8, !380, i64 16, i64 8, !380}
!434 = !DILocation(line: 256, column: 1, scope: !91)
!435 = !DILocation(line: 259, column: 52, scope: !107)
!436 = !DILocation(line: 261, column: 24, scope: !107)
!437 = !DILocation(line: 261, column: 23, scope: !107)
!438 = !DILocation(line: 262, column: 1, scope: !107)
!439 = !{!440, !440, i64 0}
!440 = !{!"long", !376, i64 0}
!441 = !DILocation(line: 265, column: 24, scope: !110)
!442 = !DILocation(line: 273, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !110, file: !25, line: 273, column: 9)
!444 = !DILocation(line: 273, column: 14, scope: !443)
!445 = !DILocation(line: 273, column: 9, scope: !110)
!446 = !DILocation(line: 274, column: 9, scope: !443)
!447 = !DILocation(line: 276, column: 23, scope: !110)
!448 = !DILocation(line: 276, column: 41, scope: !110)
!449 = !DILocation(line: 276, column: 46, scope: !110)
!450 = !DILocation(line: 276, column: 12, scope: !110)
!451 = !DILocation(line: 276, column: 5, scope: !110)
!452 = !DILocation(line: 277, column: 1, scope: !110)
!453 = !DILocation(line: 280, column: 24, scope: !115)
!454 = !DILocation(line: 280, column: 36, scope: !115)
!455 = !DILocation(line: 283, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !115, file: !25, line: 283, column: 9)
!457 = !DILocation(line: 283, column: 18, scope: !456)
!458 = !DILocation(line: 283, column: 9, scope: !115)
!459 = !DILocation(line: 284, column: 9, scope: !456)
!460 = !DILocation(line: 285, column: 23, scope: !115)
!461 = !DILocation(line: 285, column: 42, scope: !115)
!462 = !DILocation(line: 285, column: 47, scope: !115)
!463 = !DILocation(line: 285, column: 52, scope: !115)
!464 = !DILocation(line: 285, column: 12, scope: !115)
!465 = !DILocation(line: 285, column: 5, scope: !115)
!466 = !DILocation(line: 286, column: 1, scope: !115)
!467 = !DILocation(line: 288, column: 26, scope: !119)
!468 = !DILocation(line: 290, column: 16, scope: !119)
!469 = !DILocation(line: 290, column: 32, scope: !119)
!470 = !DILocation(line: 290, column: 37, scope: !119)
!471 = !DILocation(line: 290, column: 5, scope: !119)
!472 = !DILocation(line: 291, column: 1, scope: !119)
!473 = !DILocation(line: 294, column: 21, scope: !124)
!474 = !DILocation(line: 297, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !124, file: !25, line: 297, column: 9)
!476 = !DILocation(line: 297, column: 14, scope: !475)
!477 = !DILocation(line: 297, column: 9, scope: !124)
!478 = !DILocation(line: 298, column: 9, scope: !475)
!479 = !DILocation(line: 299, column: 19, scope: !124)
!480 = !DILocation(line: 299, column: 33, scope: !124)
!481 = !DILocation(line: 299, column: 38, scope: !124)
!482 = !DILocation(line: 299, column: 12, scope: !124)
!483 = !DILocation(line: 299, column: 5, scope: !124)
!484 = !DILocation(line: 300, column: 1, scope: !124)
!485 = !DILocation(line: 303, column: 21, scope: !127)
!486 = !DILocation(line: 303, column: 33, scope: !127)
!487 = !DILocation(line: 306, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !127, file: !25, line: 306, column: 9)
!489 = !DILocation(line: 306, column: 18, scope: !488)
!490 = !DILocation(line: 306, column: 9, scope: !127)
!491 = !DILocation(line: 307, column: 9, scope: !488)
!492 = !DILocation(line: 308, column: 19, scope: !127)
!493 = !DILocation(line: 308, column: 34, scope: !127)
!494 = !DILocation(line: 308, column: 39, scope: !127)
!495 = !DILocation(line: 308, column: 44, scope: !127)
!496 = !DILocation(line: 308, column: 12, scope: !127)
!497 = !DILocation(line: 308, column: 5, scope: !127)
!498 = !DILocation(line: 309, column: 1, scope: !127)
!499 = !DILocation(line: 312, column: 18, scope: !131)
!500 = !DILocation(line: 314, column: 12, scope: !131)
!501 = !DILocation(line: 314, column: 24, scope: !131)
!502 = !DILocation(line: 314, column: 29, scope: !131)
!503 = !DILocation(line: 314, column: 5, scope: !131)
!504 = !DILocation(line: 315, column: 1, scope: !131)
!505 = !DILocation(line: 318, column: 30, scope: !134)
!506 = !DILocation(line: 320, column: 5, scope: !134)
!507 = !DILocation(line: 320, column: 12, scope: !134)
!508 = !DILocation(line: 321, column: 5, scope: !134)
!509 = !DILocation(line: 321, column: 11, scope: !134)
!510 = !DILocation(line: 323, column: 19, scope: !134)
!511 = !DILocation(line: 323, column: 12, scope: !134)
!512 = !DILocation(line: 323, column: 24, scope: !134)
!513 = !DILocation(line: 323, column: 10, scope: !134)
!514 = !DILocation(line: 324, column: 28, scope: !134)
!515 = !DILocation(line: 324, column: 12, scope: !134)
!516 = !DILocation(line: 324, column: 10, scope: !134)
!517 = !DILocation(line: 325, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !134, file: !25, line: 325, column: 9)
!519 = !DILocation(line: 325, column: 14, scope: !518)
!520 = !DILocation(line: 325, column: 9, scope: !134)
!521 = !DILocation(line: 326, column: 9, scope: !518)
!522 = !DILocation(line: 327, column: 12, scope: !134)
!523 = !DILocation(line: 327, column: 18, scope: !134)
!524 = !DILocation(line: 327, column: 23, scope: !134)
!525 = !DILocation(line: 327, column: 5, scope: !134)
!526 = !DILocation(line: 328, column: 12, scope: !134)
!527 = !DILocation(line: 328, column: 5, scope: !134)
!528 = !DILocation(line: 329, column: 1, scope: !134)
!529 = !DILocation(line: 332, column: 27, scope: !144)
!530 = !DILocation(line: 334, column: 5, scope: !144)
!531 = !DILocation(line: 334, column: 12, scope: !144)
!532 = !DILocation(line: 335, column: 5, scope: !144)
!533 = !DILocation(line: 335, column: 11, scope: !144)
!534 = !DILocation(line: 337, column: 19, scope: !144)
!535 = !DILocation(line: 337, column: 12, scope: !144)
!536 = !DILocation(line: 337, column: 24, scope: !144)
!537 = !DILocation(line: 337, column: 10, scope: !144)
!538 = !DILocation(line: 338, column: 25, scope: !144)
!539 = !DILocation(line: 338, column: 12, scope: !144)
!540 = !DILocation(line: 338, column: 10, scope: !144)
!541 = !DILocation(line: 339, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !144, file: !25, line: 339, column: 9)
!543 = !DILocation(line: 339, column: 14, scope: !542)
!544 = !DILocation(line: 339, column: 9, scope: !144)
!545 = !DILocation(line: 340, column: 9, scope: !542)
!546 = !DILocation(line: 341, column: 12, scope: !144)
!547 = !DILocation(line: 341, column: 18, scope: !144)
!548 = !DILocation(line: 341, column: 23, scope: !144)
!549 = !DILocation(line: 341, column: 5, scope: !144)
!550 = !DILocation(line: 342, column: 12, scope: !144)
!551 = !DILocation(line: 342, column: 5, scope: !144)
!552 = !DILocation(line: 343, column: 1, scope: !144)
!553 = !DILocation(line: 346, column: 24, scope: !149)
!554 = !DILocation(line: 349, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !149, file: !25, line: 349, column: 9)
!556 = !DILocation(line: 349, column: 14, scope: !555)
!557 = !DILocation(line: 349, column: 9, scope: !149)
!558 = !DILocation(line: 350, column: 9, scope: !555)
!559 = !DILocation(line: 351, column: 22, scope: !149)
!560 = !DILocation(line: 351, column: 39, scope: !149)
!561 = !DILocation(line: 351, column: 44, scope: !149)
!562 = !DILocation(line: 351, column: 12, scope: !149)
!563 = !DILocation(line: 351, column: 5, scope: !149)
!564 = !DILocation(line: 352, column: 1, scope: !149)
!565 = !DILocation(line: 355, column: 24, scope: !152)
!566 = !DILocation(line: 355, column: 36, scope: !152)
!567 = !DILocation(line: 358, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !152, file: !25, line: 358, column: 9)
!569 = !DILocation(line: 358, column: 18, scope: !568)
!570 = !DILocation(line: 358, column: 9, scope: !152)
!571 = !DILocation(line: 359, column: 9, scope: !568)
!572 = !DILocation(line: 360, column: 22, scope: !152)
!573 = !DILocation(line: 360, column: 40, scope: !152)
!574 = !DILocation(line: 360, column: 45, scope: !152)
!575 = !DILocation(line: 360, column: 50, scope: !152)
!576 = !DILocation(line: 360, column: 12, scope: !152)
!577 = !DILocation(line: 360, column: 5, scope: !152)
!578 = !DILocation(line: 361, column: 1, scope: !152)
!579 = !DILocation(line: 364, column: 21, scope: !156)
!580 = !DILocation(line: 366, column: 15, scope: !156)
!581 = !DILocation(line: 366, column: 30, scope: !156)
!582 = !DILocation(line: 366, column: 35, scope: !156)
!583 = !DILocation(line: 366, column: 5, scope: !156)
!584 = !DILocation(line: 367, column: 1, scope: !156)
!585 = !DILocation(line: 893, column: 12, scope: !159)
!586 = !DILocation(line: 893, column: 5, scope: !159)
!587 = !DILocation(line: 2056, column: 30, scope: !162)
!588 = !DILocation(line: 2057, column: 36, scope: !162)
!589 = !{!590, !590, i64 0}
!590 = !{!"int", !376, i64 0}
!591 = !DILocation(line: 2057, column: 52, scope: !162)
!592 = !DILocation(line: 2057, column: 71, scope: !162)
!593 = !DILocation(line: 2059, column: 5, scope: !162)
!594 = !DILocation(line: 2059, column: 10, scope: !162)
!595 = !DILocation(line: 2060, column: 5, scope: !162)
!596 = !DILocation(line: 2060, column: 10, scope: !162)
!597 = !DILocation(line: 2061, column: 19, scope: !162)
!598 = !DILocation(line: 2063, column: 19, scope: !162)
!599 = !DILocation(line: 2063, column: 31, scope: !162)
!600 = !DILocation(line: 2063, column: 43, scope: !162)
!601 = !DILocation(line: 2061, column: 5, scope: !162)
!602 = !DILocation(line: 2064, column: 19, scope: !162)
!603 = !DILocation(line: 2065, column: 28, scope: !162)
!604 = !DILocation(line: 2064, column: 5, scope: !162)
!605 = !DILocation(line: 2066, column: 20, scope: !162)
!606 = !DILocation(line: 2066, column: 25, scope: !162)
!607 = !DILocation(line: 2066, column: 31, scope: !162)
!608 = !DILocation(line: 2066, column: 44, scope: !162)
!609 = !DILocation(line: 2066, column: 42, scope: !162)
!610 = !DILocation(line: 2066, column: 11, scope: !162)
!611 = !DILocation(line: 2067, column: 1, scope: !162)
!612 = !DILocation(line: 2020, column: 16, scope: !339)
!613 = !DILocation(line: 2020, column: 33, scope: !339)
!614 = !DILocation(line: 2020, column: 45, scope: !339)
!615 = !DILocation(line: 2022, column: 5, scope: !339)
!616 = !DILocation(line: 2022, column: 9, scope: !339)
!617 = !DILocation(line: 2022, column: 12, scope: !339)
!618 = !DILocation(line: 2023, column: 5, scope: !339)
!619 = !DILocation(line: 2023, column: 10, scope: !339)
!620 = !DILocation(line: 2024, column: 5, scope: !339)
!621 = !DILocation(line: 2024, column: 12, scope: !339)
!622 = !DILocation(line: 2024, column: 24, scope: !339)
!623 = !DILocation(line: 2026, column: 11, scope: !339)
!624 = !DILocation(line: 2026, column: 16, scope: !339)
!625 = !DILocation(line: 2026, column: 5, scope: !339)
!626 = !DILocation(line: 2027, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !339, file: !25, line: 2027, column: 5)
!628 = !DILocation(line: 2027, column: 19, scope: !627)
!629 = !DILocation(line: 2027, column: 14, scope: !627)
!630 = !DILocation(line: 2027, column: 12, scope: !627)
!631 = !DILocation(line: 2027, column: 10, scope: !627)
!632 = !DILocation(line: 2027, column: 32, scope: !633)
!633 = !DILexicalBlockFile(scope: !634, file: !25, discriminator: 2)
!634 = !DILexicalBlockFile(scope: !635, file: !25, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !627, file: !25, line: 2027, column: 5)
!636 = !DILocation(line: 2027, column: 34, scope: !635)
!637 = !DILocation(line: 2027, column: 5, scope: !627)
!638 = !DILocation(line: 2028, column: 20, scope: !635)
!639 = !DILocation(line: 2028, column: 9, scope: !635)
!640 = !DILocation(line: 2027, column: 40, scope: !635)
!641 = !DILocation(line: 2027, column: 5, scope: !635)
!642 = !DILocation(line: 2029, column: 16, scope: !339)
!643 = !DILocation(line: 2029, column: 5, scope: !339)
!644 = !DILocation(line: 2032, column: 7, scope: !339)
!645 = !DILocation(line: 2033, column: 10, scope: !339)
!646 = !DILocation(line: 2033, column: 5, scope: !339)
!647 = !DILocation(line: 2033, column: 14, scope: !339)
!648 = !DILocation(line: 2034, column: 10, scope: !339)
!649 = !DILocation(line: 2034, column: 5, scope: !339)
!650 = !DILocation(line: 2034, column: 14, scope: !339)
!651 = !DILocation(line: 2035, column: 7, scope: !339)
!652 = !DILocation(line: 2036, column: 5, scope: !339)
!653 = !DILocation(line: 2037, column: 9, scope: !354)
!654 = !DILocation(line: 2037, column: 16, scope: !354)
!655 = !DILocation(line: 2037, column: 28, scope: !354)
!656 = !DILocation(line: 2037, column: 34, scope: !354)
!657 = !DILocation(line: 2038, column: 9, scope: !354)
!658 = !DILocation(line: 2038, column: 22, scope: !354)
!659 = !DILocation(line: 2038, column: 45, scope: !354)
!660 = !DILocation(line: 2038, column: 53, scope: !354)
!661 = !DILocation(line: 2038, column: 63, scope: !354)
!662 = !DILocation(line: 2038, column: 51, scope: !354)
!663 = !DILocation(line: 2038, column: 30, scope: !354)
!664 = !DILocation(line: 2039, column: 17, scope: !354)
!665 = !DILocation(line: 2039, column: 15, scope: !354)
!666 = !DILocation(line: 2040, column: 27, scope: !354)
!667 = !DILocation(line: 2040, column: 33, scope: !354)
!668 = !DILocation(line: 2040, column: 20, scope: !354)
!669 = !DILocation(line: 2040, column: 14, scope: !354)
!670 = !DILocation(line: 2040, column: 9, scope: !354)
!671 = !DILocation(line: 2040, column: 18, scope: !354)
!672 = !DILocation(line: 2041, column: 9, scope: !354)
!673 = !DILocation(line: 2042, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !354, file: !25, line: 2042, column: 13)
!675 = !DILocation(line: 2042, column: 15, scope: !674)
!676 = !DILocation(line: 2042, column: 20, scope: !674)
!677 = !DILocation(line: 2042, column: 23, scope: !678)
!678 = !DILexicalBlockFile(scope: !674, file: !25, discriminator: 1)
!679 = !DILocation(line: 2042, column: 29, scope: !674)
!680 = !DILocation(line: 2042, column: 32, scope: !681)
!681 = !DILexicalBlockFile(scope: !674, file: !25, discriminator: 2)
!682 = !DILocation(line: 2042, column: 34, scope: !674)
!683 = !DILocation(line: 2042, column: 13, scope: !354)
!684 = !DILocation(line: 2043, column: 15, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !25, line: 2042, column: 40)
!686 = !DILocation(line: 2044, column: 18, scope: !685)
!687 = !DILocation(line: 2044, column: 13, scope: !685)
!688 = !DILocation(line: 2044, column: 22, scope: !685)
!689 = !DILocation(line: 2045, column: 9, scope: !685)
!690 = !DILocation(line: 2046, column: 5, scope: !339)
!691 = !DILocation(line: 2046, column: 5, scope: !354)
!692 = !DILocation(line: 2046, column: 14, scope: !693)
!693 = !DILexicalBlockFile(scope: !339, file: !25, discriminator: 1)
!694 = !DILocation(line: 2046, column: 20, scope: !339)
!695 = !DILocation(line: 2046, column: 23, scope: !696)
!696 = !DILexicalBlockFile(scope: !339, file: !25, discriminator: 2)
!697 = !DILocation(line: 2046, column: 25, scope: !339)
!698 = !DILocation(line: 2046, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !354, file: !25, discriminator: 3)
!700 = !DILocation(line: 2048, column: 5, scope: !339)
!701 = !DILocation(line: 2048, column: 12, scope: !702)
!702 = !DILexicalBlockFile(scope: !693, file: !25, discriminator: 2)
!703 = !DILocation(line: 2048, column: 14, scope: !339)
!704 = !DILocation(line: 2049, column: 14, scope: !339)
!705 = !DILocation(line: 2049, column: 9, scope: !339)
!706 = !DILocation(line: 2049, column: 18, scope: !339)
!707 = !DILocation(line: 2050, column: 11, scope: !339)
!708 = !DILocation(line: 2050, column: 16, scope: !339)
!709 = !DILocation(line: 2050, column: 5, scope: !339)
!710 = !DILocation(line: 2052, column: 12, scope: !339)
!711 = !DILocation(line: 2053, column: 1, scope: !339)
!712 = !DILocation(line: 2052, column: 5, scope: !339)
!713 = !DILocation(line: 2076, column: 34, scope: !228)
!714 = !DILocation(line: 2078, column: 5, scope: !228)
!715 = !DILocation(line: 2078, column: 18, scope: !228)
!716 = !DILocation(line: 2079, column: 5, scope: !228)
!717 = !DILocation(line: 2079, column: 24, scope: !228)
!718 = !DILocation(line: 2081, column: 5, scope: !228)
!719 = !DILocation(line: 2081, column: 12, scope: !228)
!720 = !DILocation(line: 2082, column: 5, scope: !228)
!721 = !DILocation(line: 2082, column: 12, scope: !228)
!722 = !DILocation(line: 2083, column: 5, scope: !228)
!723 = !DILocation(line: 2083, column: 12, scope: !228)
!724 = !DILocation(line: 2085, column: 5, scope: !228)
!725 = !DILocation(line: 2085, column: 12, scope: !228)
!726 = !DILocation(line: 2087, column: 5, scope: !228)
!727 = !DILocation(line: 2087, column: 12, scope: !228)
!728 = !DILocation(line: 2089, column: 5, scope: !228)
!729 = !DILocation(line: 2089, column: 18, scope: !228)
!730 = !DILocation(line: 2091, column: 5, scope: !228)
!731 = !DILocation(line: 2091, column: 12, scope: !228)
!732 = !DILocation(line: 2093, column: 5, scope: !228)
!733 = !DILocation(line: 2093, column: 12, scope: !228)
!734 = !DILocation(line: 2098, column: 5, scope: !228)
!735 = !DILocation(line: 2098, column: 12, scope: !228)
!736 = !DILocation(line: 2100, column: 5, scope: !228)
!737 = !DILocation(line: 2100, column: 12, scope: !228)
!738 = !DILocation(line: 2102, column: 5, scope: !228)
!739 = !DILocation(line: 2102, column: 12, scope: !228)
!740 = !DILocation(line: 2103, column: 5, scope: !228)
!741 = !DILocation(line: 2103, column: 10, scope: !228)
!742 = !DILocation(line: 2105, column: 13, scope: !228)
!743 = !DILocation(line: 2105, column: 5, scope: !228)
!744 = !DILocation(line: 2108, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !228, file: !25, line: 2108, column: 5)
!746 = !DILocation(line: 2108, column: 10, scope: !745)
!747 = !DILocation(line: 2108, column: 17, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !25, discriminator: 2)
!749 = !DILexicalBlockFile(scope: !750, file: !25, discriminator: 1)
!750 = distinct !DILexicalBlock(scope: !745, file: !25, line: 2108, column: 5)
!751 = !DILocation(line: 2108, column: 19, scope: !750)
!752 = !DILocation(line: 2108, column: 5, scope: !745)
!753 = !DILocation(line: 2109, column: 52, scope: !750)
!754 = !DILocation(line: 2109, column: 38, scope: !750)
!755 = !DILocation(line: 2109, column: 55, scope: !750)
!756 = !DILocation(line: 2109, column: 33, scope: !750)
!757 = !DILocation(line: 2109, column: 23, scope: !750)
!758 = !DILocation(line: 2109, column: 36, scope: !750)
!759 = !DILocation(line: 2109, column: 18, scope: !750)
!760 = !DILocation(line: 2109, column: 9, scope: !750)
!761 = !DILocation(line: 2109, column: 21, scope: !750)
!762 = !DILocation(line: 2108, column: 33, scope: !750)
!763 = !DILocation(line: 2108, column: 5, scope: !750)
!764 = !DILocation(line: 2115, column: 12, scope: !254)
!765 = !DILocation(line: 2115, column: 10, scope: !254)
!766 = !DILocation(line: 2115, column: 17, scope: !767)
!767 = !DILexicalBlockFile(scope: !768, file: !25, discriminator: 2)
!768 = !DILexicalBlockFile(scope: !253, file: !25, discriminator: 1)
!769 = !DILocation(line: 2115, column: 21, scope: !253)
!770 = !DILocation(line: 2115, column: 19, scope: !253)
!771 = !DILocation(line: 2115, column: 5, scope: !254)
!772 = !DILocation(line: 2116, column: 9, scope: !252)
!773 = !DILocation(line: 2116, column: 22, scope: !252)
!774 = !DILocation(line: 2117, column: 9, scope: !252)
!775 = !DILocation(line: 2117, column: 22, scope: !252)
!776 = !DILocation(line: 2117, column: 36, scope: !252)
!777 = !DILocation(line: 2117, column: 29, scope: !252)
!778 = !DILocation(line: 2117, column: 39, scope: !252)
!779 = !{!780, !440, i64 0}
!780 = !{!"arena_object", !440, i64 0, !381, i64 8, !590, i64 16, !590, i64 20, !381, i64 24, !381, i64 32, !381, i64 40}
!781 = !DILocation(line: 2120, column: 20, scope: !782)
!782 = distinct !DILexicalBlock(scope: !252, file: !25, line: 2120, column: 13)
!783 = !DILocation(line: 2120, column: 13, scope: !782)
!784 = !DILocation(line: 2120, column: 23, scope: !782)
!785 = !DILocation(line: 2120, column: 31, scope: !782)
!786 = !DILocation(line: 2120, column: 13, scope: !252)
!787 = !DILocation(line: 2121, column: 13, scope: !782)
!788 = !DILocation(line: 2122, column: 17, scope: !252)
!789 = !DILocation(line: 2124, column: 32, scope: !252)
!790 = !DILocation(line: 2124, column: 25, scope: !252)
!791 = !DILocation(line: 2124, column: 35, scope: !252)
!792 = !{!780, !590, i64 16}
!793 = !DILocation(line: 2124, column: 22, scope: !252)
!794 = !DILocation(line: 2127, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !252, file: !25, line: 2127, column: 13)
!796 = !DILocation(line: 2127, column: 18, scope: !795)
!797 = !DILocation(line: 2127, column: 13, scope: !252)
!798 = !DILocation(line: 2128, column: 29, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !25, line: 2127, column: 52)
!800 = !DILocation(line: 2129, column: 18, scope: !799)
!801 = !DILocation(line: 2130, column: 18, scope: !799)
!802 = !DILocation(line: 2131, column: 9, scope: !799)
!803 = !DILocation(line: 2135, column: 16, scope: !259)
!804 = !DILocation(line: 2135, column: 14, scope: !259)
!805 = !DILocation(line: 2136, column: 21, scope: !258)
!806 = !DILocation(line: 2136, column: 50, scope: !258)
!807 = !DILocation(line: 2136, column: 43, scope: !258)
!808 = !DILocation(line: 2136, column: 53, scope: !258)
!809 = !{!780, !381, i64 8}
!810 = !DILocation(line: 2136, column: 28, scope: !258)
!811 = !DILocation(line: 2136, column: 26, scope: !258)
!812 = !DILocation(line: 2135, column: 9, scope: !259)
!813 = !DILocation(line: 2138, column: 13, scope: !257)
!814 = !DILocation(line: 2138, column: 19, scope: !257)
!815 = !DILocation(line: 2138, column: 30, scope: !257)
!816 = !DILocation(line: 2138, column: 23, scope: !257)
!817 = !DILocation(line: 2139, column: 13, scope: !257)
!818 = !DILocation(line: 2139, column: 32, scope: !257)
!819 = !DILocation(line: 2139, column: 37, scope: !257)
!820 = !DILocation(line: 2139, column: 40, scope: !257)
!821 = !{!822, !590, i64 36}
!822 = !{!"pool_header", !376, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !590, i64 32, !590, i64 36, !590, i64 40, !590, i64 44}
!823 = !DILocation(line: 2140, column: 13, scope: !257)
!824 = !DILocation(line: 2140, column: 26, scope: !257)
!825 = !DILocation(line: 2142, column: 17, scope: !826)
!826 = distinct !DILexicalBlock(scope: !257, file: !25, line: 2142, column: 17)
!827 = !DILocation(line: 2142, column: 20, scope: !826)
!828 = !DILocation(line: 2142, column: 24, scope: !826)
!829 = !DILocation(line: 2142, column: 30, scope: !826)
!830 = !DILocation(line: 2142, column: 17, scope: !257)
!831 = !DILocation(line: 2145, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !826, file: !25, line: 2142, column: 36)
!833 = !DILocation(line: 2147, column: 24, scope: !257)
!834 = !DILocation(line: 2147, column: 15, scope: !257)
!835 = !DILocation(line: 2147, column: 13, scope: !257)
!836 = !DILocation(line: 2148, column: 30, scope: !257)
!837 = !DILocation(line: 2148, column: 33, scope: !257)
!838 = !DILocation(line: 2148, column: 37, scope: !257)
!839 = !DILocation(line: 2148, column: 23, scope: !257)
!840 = !DILocation(line: 2148, column: 13, scope: !257)
!841 = !DILocation(line: 2148, column: 27, scope: !257)
!842 = !DILocation(line: 2149, column: 157, scope: !257)
!843 = !DILocation(line: 2149, column: 161, scope: !257)
!844 = !DILocation(line: 2149, column: 166, scope: !257)
!845 = !DILocation(line: 2149, column: 138, scope: !257)
!846 = !DILocation(line: 2149, column: 175, scope: !257)
!847 = !DILocation(line: 2149, column: 178, scope: !257)
!848 = !DILocation(line: 2149, column: 182, scope: !257)
!849 = !DILocation(line: 2149, column: 173, scope: !257)
!850 = !DILocation(line: 2149, column: 24, scope: !257)
!851 = !DILocation(line: 2150, column: 34, scope: !257)
!852 = !DILocation(line: 2150, column: 27, scope: !257)
!853 = !DILocation(line: 2150, column: 13, scope: !257)
!854 = !DILocation(line: 2150, column: 31, scope: !257)
!855 = !DILocation(line: 2155, column: 9, scope: !258)
!856 = !DILocation(line: 2155, column: 9, scope: !857)
!857 = !DILexicalBlockFile(scope: !258, file: !25, discriminator: 1)
!858 = !DILocation(line: 2155, column: 9, scope: !257)
!859 = !DILocation(line: 2137, column: 21, scope: !258)
!860 = !DILocation(line: 2137, column: 31, scope: !258)
!861 = !DILocation(line: 2135, column: 9, scope: !258)
!862 = !DILocation(line: 2156, column: 5, scope: !253)
!863 = !DILocation(line: 2156, column: 5, scope: !768)
!864 = !DILocation(line: 2156, column: 5, scope: !252)
!865 = !DILocation(line: 2115, column: 32, scope: !253)
!866 = !DILocation(line: 2115, column: 5, scope: !253)
!867 = !DILocation(line: 2159, column: 17, scope: !228)
!868 = !DILocation(line: 2159, column: 5, scope: !228)
!869 = !DILocation(line: 2162, column: 11, scope: !228)
!870 = !DILocation(line: 2160, column: 5, scope: !228)
!871 = !DILocation(line: 2164, column: 12, scope: !265)
!872 = !DILocation(line: 2164, column: 10, scope: !265)
!873 = !DILocation(line: 2164, column: 17, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !25, discriminator: 2)
!875 = !DILexicalBlockFile(scope: !264, file: !25, discriminator: 1)
!876 = !DILocation(line: 2164, column: 19, scope: !264)
!877 = !DILocation(line: 2164, column: 5, scope: !265)
!878 = !DILocation(line: 2165, column: 9, scope: !263)
!879 = !DILocation(line: 2165, column: 16, scope: !263)
!880 = !DILocation(line: 2165, column: 29, scope: !263)
!881 = !DILocation(line: 2165, column: 20, scope: !263)
!882 = !DILocation(line: 2166, column: 9, scope: !263)
!883 = !DILocation(line: 2166, column: 16, scope: !263)
!884 = !DILocation(line: 2166, column: 30, scope: !263)
!885 = !DILocation(line: 2166, column: 20, scope: !263)
!886 = !DILocation(line: 2167, column: 9, scope: !263)
!887 = !DILocation(line: 2167, column: 16, scope: !263)
!888 = !DILocation(line: 2167, column: 34, scope: !263)
!889 = !DILocation(line: 2167, column: 20, scope: !263)
!890 = !DILocation(line: 2168, column: 9, scope: !263)
!891 = !DILocation(line: 2168, column: 22, scope: !263)
!892 = !DILocation(line: 2168, column: 46, scope: !263)
!893 = !DILocation(line: 2168, column: 49, scope: !263)
!894 = !DILocation(line: 2168, column: 54, scope: !263)
!895 = !DILocation(line: 2169, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !263, file: !25, line: 2169, column: 13)
!897 = !DILocation(line: 2169, column: 15, scope: !896)
!898 = !DILocation(line: 2169, column: 13, scope: !263)
!899 = !DILocation(line: 2171, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !25, line: 2169, column: 21)
!901 = !DILocation(line: 2173, column: 17, scope: !263)
!902 = !DILocation(line: 2177, column: 17, scope: !263)
!903 = !DILocation(line: 2177, column: 20, scope: !263)
!904 = !DILocation(line: 2177, column: 26, scope: !263)
!905 = !DILocation(line: 2177, column: 29, scope: !263)
!906 = !DILocation(line: 2177, column: 32, scope: !263)
!907 = !DILocation(line: 2173, column: 9, scope: !263)
!908 = !DILocation(line: 2178, column: 28, scope: !263)
!909 = !DILocation(line: 2178, column: 32, scope: !263)
!910 = !DILocation(line: 2178, column: 30, scope: !263)
!911 = !DILocation(line: 2178, column: 25, scope: !263)
!912 = !DILocation(line: 2179, column: 28, scope: !263)
!913 = !DILocation(line: 2179, column: 32, scope: !263)
!914 = !DILocation(line: 2179, column: 30, scope: !263)
!915 = !DILocation(line: 2179, column: 25, scope: !263)
!916 = !DILocation(line: 2180, column: 30, scope: !263)
!917 = !DILocation(line: 2180, column: 32, scope: !263)
!918 = !DILocation(line: 2180, column: 27, scope: !263)
!919 = !DILocation(line: 2181, column: 25, scope: !263)
!920 = !DILocation(line: 2181, column: 129, scope: !263)
!921 = !DILocation(line: 2181, column: 127, scope: !263)
!922 = !DILocation(line: 2181, column: 27, scope: !263)
!923 = !DILocation(line: 2181, column: 22, scope: !263)
!924 = !DILocation(line: 2182, column: 5, scope: !264)
!925 = !DILocation(line: 2182, column: 5, scope: !875)
!926 = !DILocation(line: 2182, column: 5, scope: !263)
!927 = !DILocation(line: 2164, column: 33, scope: !264)
!928 = !DILocation(line: 2164, column: 5, scope: !264)
!929 = !DILocation(line: 2183, column: 17, scope: !228)
!930 = !DILocation(line: 2183, column: 5, scope: !228)
!931 = !DILocation(line: 2187, column: 20, scope: !228)
!932 = !DILocation(line: 2187, column: 53, scope: !228)
!933 = !DILocation(line: 2187, column: 11, scope: !228)
!934 = !DILocation(line: 2188, column: 20, scope: !228)
!935 = !DILocation(line: 2188, column: 47, scope: !228)
!936 = !DILocation(line: 2188, column: 72, scope: !228)
!937 = !DILocation(line: 2188, column: 70, scope: !228)
!938 = !DILocation(line: 2188, column: 11, scope: !228)
!939 = !DILocation(line: 2189, column: 20, scope: !228)
!940 = !DILocation(line: 2189, column: 52, scope: !228)
!941 = !DILocation(line: 2189, column: 11, scope: !228)
!942 = !DILocation(line: 2190, column: 20, scope: !228)
!943 = !DILocation(line: 2190, column: 55, scope: !228)
!944 = !DILocation(line: 2190, column: 11, scope: !228)
!945 = !DILocation(line: 2192, column: 19, scope: !228)
!946 = !DILocation(line: 2194, column: 9, scope: !228)
!947 = !DILocation(line: 2192, column: 5, scope: !228)
!948 = !DILocation(line: 2195, column: 20, scope: !228)
!949 = !DILocation(line: 2195, column: 25, scope: !228)
!950 = !DILocation(line: 2195, column: 30, scope: !228)
!951 = !DILocation(line: 2195, column: 38, scope: !228)
!952 = !DILocation(line: 2195, column: 11, scope: !228)
!953 = !DILocation(line: 2197, column: 17, scope: !228)
!954 = !DILocation(line: 2197, column: 5, scope: !228)
!955 = !DILocation(line: 2199, column: 22, scope: !228)
!956 = !DILocation(line: 2199, column: 58, scope: !228)
!957 = !DILocation(line: 2199, column: 13, scope: !228)
!958 = !DILocation(line: 2199, column: 11, scope: !228)
!959 = !DILocation(line: 2200, column: 23, scope: !228)
!960 = !DILocation(line: 2200, column: 59, scope: !228)
!961 = !DILocation(line: 2200, column: 14, scope: !228)
!962 = !DILocation(line: 2200, column: 11, scope: !228)
!963 = !DILocation(line: 2202, column: 19, scope: !228)
!964 = !DILocation(line: 2203, column: 39, scope: !228)
!965 = !DILocation(line: 2202, column: 5, scope: !228)
!966 = !DILocation(line: 2204, column: 23, scope: !228)
!967 = !DILocation(line: 2204, column: 28, scope: !228)
!968 = !DILocation(line: 2204, column: 41, scope: !228)
!969 = !DILocation(line: 2204, column: 33, scope: !228)
!970 = !DILocation(line: 2204, column: 54, scope: !228)
!971 = !DILocation(line: 2204, column: 14, scope: !228)
!972 = !DILocation(line: 2204, column: 11, scope: !228)
!973 = !DILocation(line: 2206, column: 23, scope: !228)
!974 = !DILocation(line: 2206, column: 60, scope: !228)
!975 = !DILocation(line: 2206, column: 14, scope: !228)
!976 = !DILocation(line: 2206, column: 11, scope: !228)
!977 = !DILocation(line: 2207, column: 23, scope: !228)
!978 = !DILocation(line: 2207, column: 60, scope: !228)
!979 = !DILocation(line: 2207, column: 14, scope: !228)
!980 = !DILocation(line: 2207, column: 11, scope: !228)
!981 = !DILocation(line: 2208, column: 23, scope: !228)
!982 = !DILocation(line: 2208, column: 63, scope: !228)
!983 = !DILocation(line: 2208, column: 14, scope: !228)
!984 = !DILocation(line: 2208, column: 11, scope: !228)
!985 = !DILocation(line: 2209, column: 20, scope: !228)
!986 = !DILocation(line: 2209, column: 34, scope: !228)
!987 = !DILocation(line: 2209, column: 11, scope: !228)
!988 = !DILocation(line: 2210, column: 1, scope: !228)
!989 = !DILocation(line: 52, column: 24, scope: !269)
!990 = !DILocation(line: 52, column: 36, scope: !269)
!991 = !DILocation(line: 58, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !269, file: !25, line: 58, column: 9)
!993 = !DILocation(line: 58, column: 14, scope: !992)
!994 = !DILocation(line: 58, column: 9, scope: !269)
!995 = !DILocation(line: 59, column: 14, scope: !992)
!996 = !DILocation(line: 59, column: 9, scope: !992)
!997 = !DILocation(line: 60, column: 19, scope: !269)
!998 = !DILocation(line: 60, column: 12, scope: !269)
!999 = !DILocation(line: 60, column: 5, scope: !269)
!1000 = !DILocation(line: 64, column: 25, scope: !273)
!1001 = !DILocation(line: 64, column: 36, scope: !273)
!1002 = !DILocation(line: 64, column: 48, scope: !273)
!1003 = !DILocation(line: 66, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !273, file: !25, line: 66, column: 9)
!1005 = !DILocation(line: 66, column: 14, scope: !1004)
!1006 = !DILocation(line: 66, column: 9, scope: !273)
!1007 = !DILocation(line: 67, column: 14, scope: !1004)
!1008 = !DILocation(line: 67, column: 9, scope: !1004)
!1009 = !DILocation(line: 68, column: 20, scope: !273)
!1010 = !DILocation(line: 68, column: 25, scope: !273)
!1011 = !DILocation(line: 68, column: 12, scope: !273)
!1012 = !DILocation(line: 68, column: 5, scope: !273)
!1013 = !DILocation(line: 72, column: 22, scope: !278)
!1014 = !DILocation(line: 72, column: 33, scope: !278)
!1015 = !DILocation(line: 74, column: 10, scope: !278)
!1016 = !DILocation(line: 74, column: 5, scope: !278)
!1017 = !DILocation(line: 75, column: 1, scope: !278)
!1018 = !DILocation(line: 1125, column: 24, scope: !282)
!1019 = !DILocation(line: 1125, column: 36, scope: !282)
!1020 = !DILocation(line: 1127, column: 5, scope: !282)
!1021 = !DILocation(line: 1127, column: 12, scope: !282)
!1022 = !DILocation(line: 1128, column: 5, scope: !282)
!1023 = !DILocation(line: 1128, column: 11, scope: !282)
!1024 = !DILocation(line: 1129, column: 5, scope: !282)
!1025 = !DILocation(line: 1129, column: 11, scope: !282)
!1026 = !DILocation(line: 1130, column: 5, scope: !282)
!1027 = !DILocation(line: 1130, column: 18, scope: !282)
!1028 = !DILocation(line: 1132, column: 24, scope: !282)
!1029 = !DILocation(line: 1144, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !282, file: !25, line: 1144, column: 9)
!1031 = !DILocation(line: 1144, column: 17, scope: !1030)
!1032 = !DILocation(line: 1144, column: 22, scope: !1030)
!1033 = !DILocation(line: 1144, column: 9, scope: !282)
!1034 = !DILocation(line: 1149, column: 31, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 1144, column: 29)
!1036 = !DILocation(line: 1149, column: 38, scope: !1035)
!1037 = !DILocation(line: 1149, column: 16, scope: !1035)
!1038 = !DILocation(line: 1149, column: 43, scope: !1035)
!1039 = !DILocation(line: 1149, column: 14, scope: !1035)
!1040 = !DILocation(line: 1150, column: 26, scope: !1035)
!1041 = !DILocation(line: 1150, column: 33, scope: !1035)
!1042 = !DILocation(line: 1150, column: 31, scope: !1035)
!1043 = !DILocation(line: 1150, column: 16, scope: !1035)
!1044 = !DILocation(line: 1150, column: 14, scope: !1035)
!1045 = !DILocation(line: 1151, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 1151, column: 13)
!1047 = !DILocation(line: 1151, column: 21, scope: !1046)
!1048 = !DILocation(line: 1151, column: 27, scope: !1046)
!1049 = !{!822, !381, i64 16}
!1050 = !DILocation(line: 1151, column: 18, scope: !1046)
!1051 = !DILocation(line: 1151, column: 13, scope: !1035)
!1052 = !DILocation(line: 1156, column: 15, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !25, line: 1151, column: 37)
!1054 = !DILocation(line: 1156, column: 21, scope: !1053)
!1055 = !DILocation(line: 1156, column: 25, scope: !1053)
!1056 = !DILocation(line: 1156, column: 13, scope: !1053)
!1057 = !DILocation(line: 1157, column: 18, scope: !1053)
!1058 = !DILocation(line: 1157, column: 24, scope: !1053)
!1059 = !{!822, !381, i64 8}
!1060 = !DILocation(line: 1157, column: 16, scope: !1053)
!1061 = !DILocation(line: 1159, column: 47, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 1159, column: 17)
!1063 = !DILocation(line: 1159, column: 37, scope: !1062)
!1064 = !DILocation(line: 1159, column: 36, scope: !1062)
!1065 = !DILocation(line: 1159, column: 18, scope: !1062)
!1066 = !DILocation(line: 1159, column: 24, scope: !1062)
!1067 = !DILocation(line: 1159, column: 34, scope: !1062)
!1068 = !DILocation(line: 1159, column: 51, scope: !1062)
!1069 = !DILocation(line: 1159, column: 17, scope: !1053)
!1070 = !DILocation(line: 1161, column: 32, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !25, line: 1159, column: 66)
!1072 = !DILocation(line: 1161, column: 17, scope: !1071)
!1073 = !DILocation(line: 1166, column: 17, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 1166, column: 17)
!1075 = !DILocation(line: 1166, column: 23, scope: !1074)
!1076 = !{!822, !590, i64 40}
!1077 = !DILocation(line: 1166, column: 37, scope: !1074)
!1078 = !DILocation(line: 1166, column: 43, scope: !1074)
!1079 = !{!822, !590, i64 44}
!1080 = !DILocation(line: 1166, column: 34, scope: !1074)
!1081 = !DILocation(line: 1166, column: 17, scope: !1053)
!1082 = !DILocation(line: 1168, column: 43, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 1166, column: 58)
!1084 = !DILocation(line: 1168, column: 35, scope: !1083)
!1085 = !DILocation(line: 1169, column: 35, scope: !1083)
!1086 = !DILocation(line: 1169, column: 41, scope: !1083)
!1087 = !DILocation(line: 1168, column: 48, scope: !1083)
!1088 = !DILocation(line: 1168, column: 17, scope: !1083)
!1089 = !DILocation(line: 1168, column: 23, scope: !1083)
!1090 = !DILocation(line: 1168, column: 33, scope: !1083)
!1091 = !DILocation(line: 1170, column: 54, scope: !1083)
!1092 = !DILocation(line: 1170, column: 60, scope: !1083)
!1093 = !DILocation(line: 1170, column: 65, scope: !1083)
!1094 = !DILocation(line: 1170, column: 17, scope: !1083)
!1095 = !DILocation(line: 1170, column: 23, scope: !1083)
!1096 = !DILocation(line: 1170, column: 34, scope: !1083)
!1097 = !DILocation(line: 1171, column: 29, scope: !1083)
!1098 = !DILocation(line: 1171, column: 35, scope: !1083)
!1099 = !DILocation(line: 1171, column: 18, scope: !1083)
!1100 = !DILocation(line: 1171, column: 46, scope: !1083)
!1101 = !DILocation(line: 1173, column: 32, scope: !1083)
!1102 = !DILocation(line: 1173, column: 17, scope: !1083)
!1103 = !DILocation(line: 1176, column: 20, scope: !1053)
!1104 = !DILocation(line: 1176, column: 26, scope: !1053)
!1105 = !DILocation(line: 1176, column: 18, scope: !1053)
!1106 = !DILocation(line: 1177, column: 20, scope: !1053)
!1107 = !DILocation(line: 1177, column: 26, scope: !1053)
!1108 = !{!822, !381, i64 24}
!1109 = !DILocation(line: 1177, column: 18, scope: !1053)
!1110 = !DILocation(line: 1178, column: 30, scope: !1053)
!1111 = !DILocation(line: 1178, column: 13, scope: !1053)
!1112 = !DILocation(line: 1178, column: 19, scope: !1053)
!1113 = !DILocation(line: 1178, column: 28, scope: !1053)
!1114 = !DILocation(line: 1179, column: 30, scope: !1053)
!1115 = !DILocation(line: 1179, column: 13, scope: !1053)
!1116 = !DILocation(line: 1179, column: 19, scope: !1053)
!1117 = !DILocation(line: 1179, column: 28, scope: !1053)
!1118 = !DILocation(line: 1181, column: 28, scope: !1053)
!1119 = !DILocation(line: 1181, column: 13, scope: !1053)
!1120 = !DILocation(line: 1187, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 1187, column: 13)
!1122 = !DILocation(line: 1187, column: 27, scope: !1121)
!1123 = !DILocation(line: 1187, column: 13, scope: !1035)
!1124 = !DILocation(line: 1195, column: 29, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !25, line: 1187, column: 42)
!1126 = !DILocation(line: 1195, column: 27, scope: !1125)
!1127 = !DILocation(line: 1196, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 1196, column: 17)
!1129 = !DILocation(line: 1196, column: 31, scope: !1128)
!1130 = !DILocation(line: 1196, column: 17, scope: !1125)
!1131 = !DILocation(line: 1198, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 1196, column: 46)
!1133 = !DILocation(line: 1201, column: 17, scope: !1125)
!1134 = !DILocation(line: 1201, column: 32, scope: !1125)
!1135 = !DILocation(line: 1201, column: 42, scope: !1125)
!1136 = !{!780, !381, i64 40}
!1137 = !DILocation(line: 1200, column: 13, scope: !1125)
!1138 = !DILocation(line: 1200, column: 28, scope: !1125)
!1139 = !DILocation(line: 1200, column: 38, scope: !1125)
!1140 = !{!780, !381, i64 32}
!1141 = !DILocation(line: 1202, column: 9, scope: !1125)
!1142 = !DILocation(line: 1206, column: 16, scope: !1035)
!1143 = !DILocation(line: 1206, column: 31, scope: !1035)
!1144 = !{!780, !381, i64 24}
!1145 = !DILocation(line: 1206, column: 14, scope: !1035)
!1146 = !DILocation(line: 1207, column: 13, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 1207, column: 13)
!1148 = !DILocation(line: 1207, column: 18, scope: !1147)
!1149 = !DILocation(line: 1207, column: 13, scope: !1035)
!1150 = !DILocation(line: 1209, column: 40, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !25, line: 1207, column: 33)
!1152 = !DILocation(line: 1209, column: 46, scope: !1151)
!1153 = !DILocation(line: 1209, column: 13, scope: !1151)
!1154 = !DILocation(line: 1209, column: 28, scope: !1151)
!1155 = !DILocation(line: 1209, column: 38, scope: !1151)
!1156 = !DILocation(line: 1218, column: 15, scope: !1151)
!1157 = !DILocation(line: 1218, column: 30, scope: !1151)
!1158 = !DILocation(line: 1218, column: 13, scope: !1151)
!1159 = !DILocation(line: 1219, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 1219, column: 17)
!1161 = !DILocation(line: 1219, column: 32, scope: !1160)
!1162 = !DILocation(line: 1219, column: 43, scope: !1160)
!1163 = !DILocation(line: 1219, column: 17, scope: !1151)
!1164 = !DILocation(line: 1226, column: 33, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !25, line: 1219, column: 49)
!1166 = !DILocation(line: 1226, column: 48, scope: !1165)
!1167 = !DILocation(line: 1226, column: 31, scope: !1165)
!1168 = !DILocation(line: 1227, column: 21, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !25, line: 1227, column: 21)
!1170 = !DILocation(line: 1227, column: 35, scope: !1169)
!1171 = !DILocation(line: 1227, column: 21, scope: !1165)
!1172 = !DILocation(line: 1228, column: 21, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !25, line: 1227, column: 50)
!1174 = !DILocation(line: 1228, column: 36, scope: !1173)
!1175 = !DILocation(line: 1228, column: 46, scope: !1173)
!1176 = !DILocation(line: 1230, column: 17, scope: !1173)
!1177 = !DILocation(line: 1231, column: 13, scope: !1165)
!1178 = !DILocation(line: 1219, column: 46, scope: !1160)
!1179 = !DILocation(line: 1245, column: 30, scope: !1151)
!1180 = !DILocation(line: 1245, column: 37, scope: !1151)
!1181 = !DILocation(line: 1245, column: 35, scope: !1151)
!1182 = !DILocation(line: 1245, column: 20, scope: !1151)
!1183 = !DILocation(line: 1245, column: 18, scope: !1151)
!1184 = !DILocation(line: 1246, column: 30, scope: !1151)
!1185 = !DILocation(line: 1246, column: 13, scope: !1151)
!1186 = !DILocation(line: 1246, column: 19, scope: !1151)
!1187 = !DILocation(line: 1246, column: 28, scope: !1151)
!1188 = !DILocation(line: 1247, column: 30, scope: !1151)
!1189 = !DILocation(line: 1247, column: 13, scope: !1151)
!1190 = !DILocation(line: 1247, column: 19, scope: !1151)
!1191 = !DILocation(line: 1247, column: 28, scope: !1151)
!1192 = !DILocation(line: 1248, column: 30, scope: !1151)
!1193 = !DILocation(line: 1248, column: 13, scope: !1151)
!1194 = !DILocation(line: 1248, column: 19, scope: !1151)
!1195 = !DILocation(line: 1248, column: 28, scope: !1151)
!1196 = !DILocation(line: 1249, column: 30, scope: !1151)
!1197 = !DILocation(line: 1249, column: 13, scope: !1151)
!1198 = !DILocation(line: 1249, column: 19, scope: !1151)
!1199 = !DILocation(line: 1249, column: 28, scope: !1151)
!1200 = !DILocation(line: 1250, column: 13, scope: !1151)
!1201 = !DILocation(line: 1250, column: 19, scope: !1151)
!1202 = !DILocation(line: 1250, column: 23, scope: !1151)
!1203 = !DILocation(line: 1250, column: 29, scope: !1151)
!1204 = !DILocation(line: 1251, column: 17, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 1251, column: 17)
!1206 = !DILocation(line: 1251, column: 23, scope: !1205)
!1207 = !DILocation(line: 1251, column: 32, scope: !1205)
!1208 = !DILocation(line: 1251, column: 29, scope: !1205)
!1209 = !DILocation(line: 1251, column: 17, scope: !1151)
!1210 = !DILocation(line: 1256, column: 22, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 1251, column: 38)
!1212 = !DILocation(line: 1256, column: 28, scope: !1211)
!1213 = !DILocation(line: 1256, column: 20, scope: !1211)
!1214 = !DILocation(line: 1258, column: 46, scope: !1211)
!1215 = !DILocation(line: 1258, column: 36, scope: !1211)
!1216 = !DILocation(line: 1258, column: 35, scope: !1211)
!1217 = !DILocation(line: 1258, column: 17, scope: !1211)
!1218 = !DILocation(line: 1258, column: 23, scope: !1211)
!1219 = !DILocation(line: 1258, column: 33, scope: !1211)
!1220 = !DILocation(line: 1260, column: 32, scope: !1211)
!1221 = !DILocation(line: 1260, column: 17, scope: !1211)
!1222 = !DILocation(line: 1267, column: 27, scope: !1151)
!1223 = !DILocation(line: 1267, column: 13, scope: !1151)
!1224 = !DILocation(line: 1267, column: 19, scope: !1151)
!1225 = !DILocation(line: 1267, column: 25, scope: !1151)
!1226 = !DILocation(line: 1268, column: 37, scope: !1151)
!1227 = !DILocation(line: 1268, column: 43, scope: !1151)
!1228 = !DILocation(line: 1268, column: 48, scope: !1151)
!1229 = !DILocation(line: 1268, column: 18, scope: !1151)
!1230 = !DILocation(line: 1269, column: 27, scope: !1151)
!1231 = !DILocation(line: 1269, column: 18, scope: !1151)
!1232 = !DILocation(line: 1269, column: 32, scope: !1151)
!1233 = !DILocation(line: 1269, column: 16, scope: !1151)
!1234 = !DILocation(line: 1270, column: 117, scope: !1151)
!1235 = !DILocation(line: 1270, column: 122, scope: !1151)
!1236 = !DILocation(line: 1270, column: 116, scope: !1151)
!1237 = !DILocation(line: 1270, column: 114, scope: !1151)
!1238 = !DILocation(line: 1270, column: 32, scope: !1151)
!1239 = !DILocation(line: 1270, column: 13, scope: !1151)
!1240 = !DILocation(line: 1270, column: 19, scope: !1151)
!1241 = !DILocation(line: 1270, column: 30, scope: !1151)
!1242 = !DILocation(line: 1271, column: 48, scope: !1151)
!1243 = !DILocation(line: 1271, column: 46, scope: !1151)
!1244 = !DILocation(line: 1271, column: 13, scope: !1151)
!1245 = !DILocation(line: 1271, column: 19, scope: !1151)
!1246 = !DILocation(line: 1271, column: 33, scope: !1151)
!1247 = !DILocation(line: 1272, column: 31, scope: !1151)
!1248 = !DILocation(line: 1272, column: 36, scope: !1151)
!1249 = !DILocation(line: 1272, column: 34, scope: !1151)
!1250 = !DILocation(line: 1272, column: 13, scope: !1151)
!1251 = !DILocation(line: 1272, column: 19, scope: !1151)
!1252 = !DILocation(line: 1272, column: 29, scope: !1151)
!1253 = !DILocation(line: 1273, column: 25, scope: !1151)
!1254 = !DILocation(line: 1273, column: 31, scope: !1151)
!1255 = !DILocation(line: 1273, column: 14, scope: !1151)
!1256 = !DILocation(line: 1273, column: 42, scope: !1151)
!1257 = !DILocation(line: 1275, column: 28, scope: !1151)
!1258 = !DILocation(line: 1275, column: 13, scope: !1151)
!1259 = !DILocation(line: 1281, column: 23, scope: !1035)
!1260 = !DILocation(line: 1281, column: 38, scope: !1035)
!1261 = !DILocation(line: 1281, column: 16, scope: !1035)
!1262 = !DILocation(line: 1281, column: 14, scope: !1035)
!1263 = !DILocation(line: 1284, column: 28, scope: !1035)
!1264 = !DILocation(line: 1284, column: 44, scope: !1035)
!1265 = !DILocation(line: 1284, column: 42, scope: !1035)
!1266 = !DILocation(line: 1284, column: 9, scope: !1035)
!1267 = !DILocation(line: 1284, column: 15, scope: !1035)
!1268 = !DILocation(line: 1284, column: 26, scope: !1035)
!1269 = !{!822, !590, i64 32}
!1270 = !DILocation(line: 1286, column: 9, scope: !1035)
!1271 = !DILocation(line: 1286, column: 15, scope: !1035)
!1272 = !DILocation(line: 1286, column: 21, scope: !1035)
!1273 = !DILocation(line: 1287, column: 9, scope: !1035)
!1274 = !DILocation(line: 1287, column: 24, scope: !1035)
!1275 = !DILocation(line: 1287, column: 37, scope: !1035)
!1276 = !DILocation(line: 1288, column: 11, scope: !1035)
!1277 = !DILocation(line: 1288, column: 26, scope: !1035)
!1278 = !DILocation(line: 1288, column: 9, scope: !1035)
!1279 = !DILocation(line: 1290, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 1290, column: 13)
!1281 = !DILocation(line: 1290, column: 28, scope: !1280)
!1282 = !DILocation(line: 1290, column: 39, scope: !1280)
!1283 = !DILocation(line: 1290, column: 13, scope: !1035)
!1284 = !DILocation(line: 1295, column: 29, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !25, line: 1290, column: 45)
!1286 = !DILocation(line: 1295, column: 44, scope: !1285)
!1287 = !DILocation(line: 1295, column: 27, scope: !1285)
!1288 = !DILocation(line: 1296, column: 17, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !25, line: 1296, column: 17)
!1290 = !DILocation(line: 1296, column: 31, scope: !1289)
!1291 = !DILocation(line: 1296, column: 17, scope: !1285)
!1292 = !DILocation(line: 1297, column: 17, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !25, line: 1296, column: 46)
!1294 = !DILocation(line: 1297, column: 32, scope: !1293)
!1295 = !DILocation(line: 1297, column: 42, scope: !1293)
!1296 = !DILocation(line: 1299, column: 13, scope: !1293)
!1297 = !DILocation(line: 1300, column: 9, scope: !1285)
!1298 = !DILocation(line: 1302, column: 9, scope: !1035)
!1299 = !DILocation(line: 1144, column: 24, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1030, file: !25, discriminator: 1)
!1301 = !DILocation(line: 1314, column: 9, scope: !291)
!1302 = !DILocation(line: 1314, column: 15, scope: !291)
!1303 = !DILocation(line: 1314, column: 40, scope: !291)
!1304 = !DILocation(line: 1314, column: 24, scope: !291)
!1305 = !DILocation(line: 1315, column: 14, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !291, file: !25, line: 1315, column: 13)
!1307 = !DILocation(line: 1315, column: 13, scope: !291)
!1308 = !DILocation(line: 1316, column: 32, scope: !1306)
!1309 = !DILocation(line: 1316, column: 13, scope: !1306)
!1310 = !DILocation(line: 1317, column: 16, scope: !291)
!1311 = !DILocation(line: 1317, column: 9, scope: !291)
!1312 = !DILocation(line: 1318, column: 5, scope: !282)
!1313 = !DILocation(line: 1319, column: 1, scope: !282)
!1314 = !DILocation(line: 1554, column: 25, scope: !304)
!1315 = !DILocation(line: 1554, column: 36, scope: !304)
!1316 = !DILocation(line: 1554, column: 46, scope: !304)
!1317 = !DILocation(line: 1556, column: 5, scope: !304)
!1318 = !DILocation(line: 1556, column: 11, scope: !304)
!1319 = !DILocation(line: 1557, column: 5, scope: !304)
!1320 = !DILocation(line: 1557, column: 11, scope: !304)
!1321 = !DILocation(line: 1558, column: 5, scope: !304)
!1322 = !DILocation(line: 1558, column: 12, scope: !304)
!1323 = !DILocation(line: 1560, column: 5, scope: !304)
!1324 = !DILocation(line: 1560, column: 18, scope: !304)
!1325 = !DILocation(line: 1563, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1563, column: 9)
!1327 = !DILocation(line: 1563, column: 11, scope: !1326)
!1328 = !DILocation(line: 1563, column: 9, scope: !304)
!1329 = !DILocation(line: 1564, column: 33, scope: !1326)
!1330 = !DILocation(line: 1564, column: 38, scope: !1326)
!1331 = !DILocation(line: 1564, column: 16, scope: !1326)
!1332 = !DILocation(line: 1564, column: 9, scope: !1326)
!1333 = !DILocation(line: 1572, column: 46, scope: !304)
!1334 = !DILocation(line: 1572, column: 30, scope: !304)
!1335 = !DILocation(line: 1572, column: 50, scope: !304)
!1336 = !DILocation(line: 1572, column: 21, scope: !304)
!1337 = !DILocation(line: 1572, column: 13, scope: !304)
!1338 = !DILocation(line: 1572, column: 10, scope: !304)
!1339 = !DILocation(line: 1573, column: 30, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1573, column: 9)
!1341 = !DILocation(line: 1573, column: 37, scope: !1340)
!1342 = !DILocation(line: 1573, column: 27, scope: !1340)
!1343 = !DILocation(line: 1573, column: 51, scope: !1340)
!1344 = !DILocation(line: 1573, column: 49, scope: !1340)
!1345 = !DILocation(line: 1573, column: 61, scope: !1340)
!1346 = !DILocation(line: 1573, column: 79, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1340, file: !25, discriminator: 1)
!1348 = !DILocation(line: 1573, column: 64, scope: !1340)
!1349 = !DILocation(line: 1573, column: 91, scope: !1340)
!1350 = !DILocation(line: 1573, column: 84, scope: !1340)
!1351 = !DILocation(line: 1573, column: 108, scope: !1340)
!1352 = !DILocation(line: 1573, column: 82, scope: !1340)
!1353 = !DILocation(line: 1573, column: 116, scope: !1340)
!1354 = !DILocation(line: 1573, column: 144, scope: !1340)
!1355 = !DILocation(line: 1573, column: 154, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1340, file: !25, discriminator: 2)
!1357 = !DILocation(line: 1573, column: 147, scope: !1340)
!1358 = !DILocation(line: 1573, column: 171, scope: !1340)
!1359 = !DILocation(line: 1573, column: 179, scope: !1340)
!1360 = !DILocation(line: 1573, column: 9, scope: !304)
!1361 = !DILocation(line: 1575, column: 33, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1340, file: !25, line: 1573, column: 186)
!1363 = !DILocation(line: 1575, column: 39, scope: !1362)
!1364 = !DILocation(line: 1575, column: 46, scope: !1362)
!1365 = !DILocation(line: 1575, column: 51, scope: !1362)
!1366 = !DILocation(line: 1575, column: 16, scope: !1362)
!1367 = !DILocation(line: 1575, column: 14, scope: !1362)
!1368 = !DILocation(line: 1576, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !25, line: 1576, column: 13)
!1370 = !DILocation(line: 1576, column: 23, scope: !1369)
!1371 = !DILocation(line: 1576, column: 20, scope: !1369)
!1372 = !DILocation(line: 1576, column: 13, scope: !1362)
!1373 = !DILocation(line: 1584, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !25, line: 1584, column: 17)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !25, line: 1576, column: 29)
!1376 = !DILocation(line: 1584, column: 19, scope: !1374)
!1377 = !DILocation(line: 1584, column: 34, scope: !1374)
!1378 = !DILocation(line: 1584, column: 32, scope: !1374)
!1379 = !DILocation(line: 1584, column: 28, scope: !1374)
!1380 = !DILocation(line: 1584, column: 17, scope: !1375)
!1381 = !DILocation(line: 1588, column: 24, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1374, file: !25, line: 1584, column: 40)
!1383 = !DILocation(line: 1588, column: 17, scope: !1382)
!1384 = !DILocation(line: 1590, column: 20, scope: !1375)
!1385 = !DILocation(line: 1590, column: 18, scope: !1375)
!1386 = !DILocation(line: 1591, column: 9, scope: !1375)
!1387 = !DILocation(line: 1592, column: 31, scope: !1362)
!1388 = !DILocation(line: 1592, column: 36, scope: !1362)
!1389 = !DILocation(line: 1592, column: 14, scope: !1362)
!1390 = !DILocation(line: 1592, column: 12, scope: !1362)
!1391 = !DILocation(line: 1593, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1362, file: !25, line: 1593, column: 13)
!1393 = !DILocation(line: 1593, column: 16, scope: !1392)
!1394 = !DILocation(line: 1593, column: 13, scope: !1362)
!1395 = !DILocation(line: 1594, column: 20, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !25, line: 1593, column: 31)
!1397 = !DILocation(line: 1594, column: 24, scope: !1396)
!1398 = !DILocation(line: 1594, column: 27, scope: !1396)
!1399 = !DILocation(line: 1594, column: 13, scope: !1396)
!1400 = !DILocation(line: 1595, column: 28, scope: !1396)
!1401 = !DILocation(line: 1595, column: 33, scope: !1396)
!1402 = !DILocation(line: 1595, column: 13, scope: !1396)
!1403 = !DILocation(line: 1596, column: 9, scope: !1396)
!1404 = !DILocation(line: 1597, column: 16, scope: !1362)
!1405 = !DILocation(line: 1597, column: 9, scope: !1362)
!1406 = !DILocation(line: 1612, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1612, column: 9)
!1408 = !DILocation(line: 1612, column: 9, scope: !304)
!1409 = !DILocation(line: 1613, column: 33, scope: !1407)
!1410 = !DILocation(line: 1613, column: 36, scope: !1407)
!1411 = !DILocation(line: 1613, column: 16, scope: !1407)
!1412 = !DILocation(line: 1613, column: 9, scope: !1407)
!1413 = !DILocation(line: 1620, column: 27, scope: !304)
!1414 = !DILocation(line: 1620, column: 10, scope: !304)
!1415 = !DILocation(line: 1620, column: 8, scope: !304)
!1416 = !DILocation(line: 1621, column: 12, scope: !304)
!1417 = !DILocation(line: 1621, column: 17, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 1)
!1419 = !DILocation(line: 1621, column: 22, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 2)
!1421 = !DILocation(line: 1621, column: 5, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !25, discriminator: 4)
!1423 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 3)
!1424 = !DILocation(line: 1621, column: 5, scope: !304)
!1425 = !DILocation(line: 1622, column: 1, scope: !304)
!1426 = !DILocation(line: 1325, column: 22, scope: !313)
!1427 = !DILocation(line: 1325, column: 33, scope: !313)
!1428 = !DILocation(line: 1327, column: 5, scope: !313)
!1429 = !DILocation(line: 1327, column: 11, scope: !313)
!1430 = !DILocation(line: 1328, column: 5, scope: !313)
!1431 = !DILocation(line: 1328, column: 12, scope: !313)
!1432 = !DILocation(line: 1329, column: 5, scope: !313)
!1433 = !DILocation(line: 1329, column: 11, scope: !313)
!1434 = !DILocation(line: 1329, column: 17, scope: !313)
!1435 = !DILocation(line: 1330, column: 5, scope: !313)
!1436 = !DILocation(line: 1330, column: 18, scope: !313)
!1437 = !DILocation(line: 1332, column: 5, scope: !313)
!1438 = !DILocation(line: 1332, column: 18, scope: !313)
!1439 = !DILocation(line: 1335, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !313, file: !25, line: 1335, column: 9)
!1441 = !DILocation(line: 1335, column: 11, scope: !1440)
!1442 = !DILocation(line: 1335, column: 9, scope: !313)
!1443 = !DILocation(line: 1336, column: 9, scope: !1440)
!1444 = !DILocation(line: 1338, column: 24, scope: !313)
!1445 = !DILocation(line: 1345, column: 46, scope: !313)
!1446 = !DILocation(line: 1345, column: 30, scope: !313)
!1447 = !DILocation(line: 1345, column: 50, scope: !313)
!1448 = !DILocation(line: 1345, column: 21, scope: !313)
!1449 = !DILocation(line: 1345, column: 13, scope: !313)
!1450 = !DILocation(line: 1345, column: 10, scope: !313)
!1451 = !DILocation(line: 1346, column: 30, scope: !327)
!1452 = !DILocation(line: 1346, column: 37, scope: !327)
!1453 = !DILocation(line: 1346, column: 27, scope: !327)
!1454 = !DILocation(line: 1346, column: 51, scope: !327)
!1455 = !DILocation(line: 1346, column: 49, scope: !327)
!1456 = !DILocation(line: 1346, column: 61, scope: !327)
!1457 = !DILocation(line: 1346, column: 79, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !327, file: !25, discriminator: 1)
!1459 = !DILocation(line: 1346, column: 64, scope: !327)
!1460 = !DILocation(line: 1346, column: 91, scope: !327)
!1461 = !DILocation(line: 1346, column: 84, scope: !327)
!1462 = !DILocation(line: 1346, column: 108, scope: !327)
!1463 = !DILocation(line: 1346, column: 82, scope: !327)
!1464 = !DILocation(line: 1346, column: 116, scope: !327)
!1465 = !DILocation(line: 1346, column: 144, scope: !327)
!1466 = !DILocation(line: 1346, column: 154, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !327, file: !25, discriminator: 2)
!1468 = !DILocation(line: 1346, column: 147, scope: !327)
!1469 = !DILocation(line: 1346, column: 171, scope: !327)
!1470 = !DILocation(line: 1346, column: 179, scope: !327)
!1471 = !DILocation(line: 1346, column: 9, scope: !313)
!1472 = !DILocation(line: 1356, column: 35, scope: !326)
!1473 = !DILocation(line: 1356, column: 41, scope: !326)
!1474 = !DILocation(line: 1356, column: 33, scope: !326)
!1475 = !DILocation(line: 1356, column: 20, scope: !326)
!1476 = !DILocation(line: 1356, column: 10, scope: !326)
!1477 = !DILocation(line: 1356, column: 22, scope: !326)
!1478 = !DILocation(line: 1357, column: 36, scope: !326)
!1479 = !DILocation(line: 1357, column: 9, scope: !326)
!1480 = !DILocation(line: 1357, column: 15, scope: !326)
!1481 = !DILocation(line: 1357, column: 25, scope: !326)
!1482 = !DILocation(line: 1358, column: 13, scope: !325)
!1483 = !DILocation(line: 1358, column: 13, scope: !326)
!1484 = !DILocation(line: 1359, column: 13, scope: !324)
!1485 = !DILocation(line: 1359, column: 34, scope: !324)
!1486 = !DILocation(line: 1360, column: 13, scope: !324)
!1487 = !DILocation(line: 1360, column: 26, scope: !324)
!1488 = !DILocation(line: 1365, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1365, column: 17)
!1490 = !DILocation(line: 1365, column: 25, scope: !1489)
!1491 = !DILocation(line: 1365, column: 29, scope: !1489)
!1492 = !DILocation(line: 1365, column: 17, scope: !1489)
!1493 = !DILocation(line: 1365, column: 35, scope: !1489)
!1494 = !DILocation(line: 1365, column: 17, scope: !324)
!1495 = !DILocation(line: 1368, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !25, line: 1365, column: 41)
!1497 = !DILocation(line: 1375, column: 20, scope: !324)
!1498 = !DILocation(line: 1375, column: 26, scope: !324)
!1499 = !DILocation(line: 1375, column: 18, scope: !324)
!1500 = !DILocation(line: 1376, column: 20, scope: !324)
!1501 = !DILocation(line: 1376, column: 26, scope: !324)
!1502 = !DILocation(line: 1376, column: 18, scope: !324)
!1503 = !DILocation(line: 1377, column: 30, scope: !324)
!1504 = !DILocation(line: 1377, column: 13, scope: !324)
!1505 = !DILocation(line: 1377, column: 19, scope: !324)
!1506 = !DILocation(line: 1377, column: 28, scope: !324)
!1507 = !DILocation(line: 1378, column: 30, scope: !324)
!1508 = !DILocation(line: 1378, column: 13, scope: !324)
!1509 = !DILocation(line: 1378, column: 19, scope: !324)
!1510 = !DILocation(line: 1378, column: 28, scope: !324)
!1511 = !DILocation(line: 1383, column: 26, scope: !324)
!1512 = !DILocation(line: 1383, column: 32, scope: !324)
!1513 = !DILocation(line: 1383, column: 19, scope: !324)
!1514 = !DILocation(line: 1383, column: 16, scope: !324)
!1515 = !DILocation(line: 1384, column: 30, scope: !324)
!1516 = !DILocation(line: 1384, column: 34, scope: !324)
!1517 = !DILocation(line: 1384, column: 13, scope: !324)
!1518 = !DILocation(line: 1384, column: 19, scope: !324)
!1519 = !DILocation(line: 1384, column: 28, scope: !324)
!1520 = !DILocation(line: 1385, column: 29, scope: !324)
!1521 = !DILocation(line: 1385, column: 13, scope: !324)
!1522 = !DILocation(line: 1385, column: 17, scope: !324)
!1523 = !DILocation(line: 1385, column: 27, scope: !324)
!1524 = !DILocation(line: 1386, column: 20, scope: !324)
!1525 = !DILocation(line: 1386, column: 24, scope: !324)
!1526 = !DILocation(line: 1386, column: 18, scope: !324)
!1527 = !DILocation(line: 1386, column: 16, scope: !324)
!1528 = !DILocation(line: 1400, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1400, column: 17)
!1530 = !DILocation(line: 1400, column: 23, scope: !1529)
!1531 = !DILocation(line: 1400, column: 27, scope: !1529)
!1532 = !{!780, !590, i64 20}
!1533 = !DILocation(line: 1400, column: 20, scope: !1529)
!1534 = !DILocation(line: 1400, column: 17, scope: !324)
!1535 = !DILocation(line: 1411, column: 21, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !25, line: 1411, column: 21)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !25, line: 1400, column: 40)
!1538 = !DILocation(line: 1411, column: 25, scope: !1536)
!1539 = !DILocation(line: 1411, column: 35, scope: !1536)
!1540 = !DILocation(line: 1411, column: 21, scope: !1537)
!1541 = !DILocation(line: 1412, column: 37, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !25, line: 1411, column: 50)
!1543 = !DILocation(line: 1412, column: 41, scope: !1542)
!1544 = !DILocation(line: 1412, column: 35, scope: !1542)
!1545 = !DILocation(line: 1415, column: 17, scope: !1542)
!1546 = !DILocation(line: 1419, column: 25, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1536, file: !25, line: 1416, column: 22)
!1548 = !DILocation(line: 1419, column: 29, scope: !1547)
!1549 = !DILocation(line: 1418, column: 21, scope: !1547)
!1550 = !DILocation(line: 1418, column: 25, scope: !1547)
!1551 = !DILocation(line: 1418, column: 36, scope: !1547)
!1552 = !DILocation(line: 1418, column: 46, scope: !1547)
!1553 = !DILocation(line: 1422, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1537, file: !25, line: 1422, column: 21)
!1555 = !DILocation(line: 1422, column: 25, scope: !1554)
!1556 = !DILocation(line: 1422, column: 35, scope: !1554)
!1557 = !DILocation(line: 1422, column: 21, scope: !1537)
!1558 = !DILocation(line: 1425, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !25, line: 1422, column: 50)
!1560 = !DILocation(line: 1425, column: 29, scope: !1559)
!1561 = !DILocation(line: 1424, column: 21, scope: !1559)
!1562 = !DILocation(line: 1424, column: 25, scope: !1559)
!1563 = !DILocation(line: 1424, column: 36, scope: !1559)
!1564 = !DILocation(line: 1424, column: 46, scope: !1559)
!1565 = !DILocation(line: 1426, column: 17, scope: !1559)
!1566 = !DILocation(line: 1430, column: 33, scope: !1537)
!1567 = !DILocation(line: 1430, column: 17, scope: !1537)
!1568 = !DILocation(line: 1430, column: 21, scope: !1537)
!1569 = !DILocation(line: 1430, column: 31, scope: !1537)
!1570 = !DILocation(line: 1431, column: 40, scope: !1537)
!1571 = !DILocation(line: 1431, column: 38, scope: !1537)
!1572 = !DILocation(line: 1434, column: 33, scope: !1537)
!1573 = !{!1574, !381, i64 16}
!1574 = !{!"", !381, i64 0, !381, i64 8, !381, i64 16}
!1575 = !DILocation(line: 1434, column: 54, scope: !1537)
!1576 = !{!1574, !381, i64 0}
!1577 = !DILocation(line: 1435, column: 46, scope: !1537)
!1578 = !DILocation(line: 1435, column: 50, scope: !1537)
!1579 = !DILocation(line: 1435, column: 38, scope: !1537)
!1580 = !DILocation(line: 1434, column: 17, scope: !1537)
!1581 = !DILocation(line: 1436, column: 17, scope: !1537)
!1582 = !DILocation(line: 1436, column: 21, scope: !1537)
!1583 = !DILocation(line: 1436, column: 29, scope: !1537)
!1584 = !DILocation(line: 1437, column: 17, scope: !1537)
!1585 = !DILocation(line: 1440, column: 17, scope: !1537)
!1586 = !DILocation(line: 1442, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1442, column: 17)
!1588 = !DILocation(line: 1442, column: 20, scope: !1587)
!1589 = !DILocation(line: 1442, column: 17, scope: !324)
!1590 = !DILocation(line: 1448, column: 33, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !25, line: 1442, column: 26)
!1592 = !DILocation(line: 1448, column: 17, scope: !1591)
!1593 = !DILocation(line: 1448, column: 21, scope: !1591)
!1594 = !DILocation(line: 1448, column: 31, scope: !1591)
!1595 = !DILocation(line: 1449, column: 17, scope: !1591)
!1596 = !DILocation(line: 1449, column: 21, scope: !1591)
!1597 = !DILocation(line: 1449, column: 31, scope: !1591)
!1598 = !DILocation(line: 1450, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !25, line: 1450, column: 21)
!1600 = !DILocation(line: 1450, column: 21, scope: !1591)
!1601 = !DILocation(line: 1451, column: 48, scope: !1599)
!1602 = !DILocation(line: 1451, column: 21, scope: !1599)
!1603 = !DILocation(line: 1451, column: 36, scope: !1599)
!1604 = !DILocation(line: 1451, column: 46, scope: !1599)
!1605 = !DILocation(line: 1452, column: 33, scope: !1591)
!1606 = !DILocation(line: 1452, column: 31, scope: !1591)
!1607 = !DILocation(line: 1456, column: 17, scope: !1591)
!1608 = !DILocation(line: 1465, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1465, column: 17)
!1610 = !DILocation(line: 1465, column: 21, scope: !1609)
!1611 = !DILocation(line: 1465, column: 31, scope: !1609)
!1612 = !DILocation(line: 1465, column: 45, scope: !1609)
!1613 = !DILocation(line: 1466, column: 26, scope: !1609)
!1614 = !DILocation(line: 1466, column: 32, scope: !1609)
!1615 = !DILocation(line: 1466, column: 36, scope: !1609)
!1616 = !DILocation(line: 1466, column: 47, scope: !1609)
!1617 = !DILocation(line: 1466, column: 29, scope: !1609)
!1618 = !DILocation(line: 1465, column: 17, scope: !324)
!1619 = !DILocation(line: 1469, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1609, file: !25, line: 1466, column: 59)
!1621 = !DILocation(line: 1476, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1476, column: 17)
!1623 = !DILocation(line: 1476, column: 21, scope: !1622)
!1624 = !DILocation(line: 1476, column: 31, scope: !1622)
!1625 = !DILocation(line: 1476, column: 17, scope: !324)
!1626 = !DILocation(line: 1479, column: 44, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !25, line: 1476, column: 46)
!1628 = !DILocation(line: 1479, column: 48, scope: !1627)
!1629 = !DILocation(line: 1479, column: 17, scope: !1627)
!1630 = !DILocation(line: 1479, column: 21, scope: !1627)
!1631 = !DILocation(line: 1479, column: 32, scope: !1627)
!1632 = !DILocation(line: 1479, column: 42, scope: !1627)
!1633 = !DILocation(line: 1480, column: 13, scope: !1627)
!1634 = !DILocation(line: 1484, column: 33, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1622, file: !25, line: 1481, column: 18)
!1636 = !DILocation(line: 1484, column: 37, scope: !1635)
!1637 = !DILocation(line: 1484, column: 31, scope: !1635)
!1638 = !DILocation(line: 1486, column: 40, scope: !324)
!1639 = !DILocation(line: 1486, column: 44, scope: !324)
!1640 = !DILocation(line: 1486, column: 13, scope: !324)
!1641 = !DILocation(line: 1486, column: 17, scope: !324)
!1642 = !DILocation(line: 1486, column: 28, scope: !324)
!1643 = !DILocation(line: 1486, column: 38, scope: !324)
!1644 = !DILocation(line: 1491, column: 13, scope: !324)
!1645 = !DILocation(line: 1491, column: 20, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !25, discriminator: 3)
!1647 = !DILexicalBlockFile(scope: !324, file: !25, discriminator: 1)
!1648 = !DILocation(line: 1491, column: 24, scope: !324)
!1649 = !DILocation(line: 1491, column: 34, scope: !324)
!1650 = !DILocation(line: 1491, column: 48, scope: !324)
!1651 = !DILocation(line: 1492, column: 29, scope: !324)
!1652 = !DILocation(line: 1492, column: 34, scope: !324)
!1653 = !DILocation(line: 1492, column: 38, scope: !324)
!1654 = !DILocation(line: 1492, column: 49, scope: !324)
!1655 = !DILocation(line: 1492, column: 32, scope: !324)
!1656 = !DILocation(line: 1491, column: 13, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !324, file: !25, discriminator: 2)
!1658 = !DILocation(line: 1493, column: 33, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1492, column: 61)
!1660 = !DILocation(line: 1493, column: 37, scope: !1659)
!1661 = !DILocation(line: 1493, column: 17, scope: !1659)
!1662 = !DILocation(line: 1493, column: 21, scope: !1659)
!1663 = !DILocation(line: 1493, column: 31, scope: !1659)
!1664 = !DILocation(line: 1494, column: 33, scope: !1659)
!1665 = !DILocation(line: 1494, column: 37, scope: !1659)
!1666 = !DILocation(line: 1494, column: 48, scope: !1659)
!1667 = !DILocation(line: 1494, column: 17, scope: !1659)
!1668 = !DILocation(line: 1494, column: 21, scope: !1659)
!1669 = !DILocation(line: 1494, column: 31, scope: !1659)
!1670 = !DILocation(line: 1502, column: 40, scope: !324)
!1671 = !DILocation(line: 1502, column: 13, scope: !324)
!1672 = !DILocation(line: 1502, column: 17, scope: !324)
!1673 = !DILocation(line: 1502, column: 28, scope: !324)
!1674 = !DILocation(line: 1502, column: 38, scope: !324)
!1675 = !DILocation(line: 1503, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1503, column: 17)
!1677 = !DILocation(line: 1503, column: 21, scope: !1676)
!1678 = !DILocation(line: 1503, column: 31, scope: !1676)
!1679 = !DILocation(line: 1503, column: 17, scope: !324)
!1680 = !DILocation(line: 1504, column: 44, scope: !1676)
!1681 = !DILocation(line: 1504, column: 17, scope: !1676)
!1682 = !DILocation(line: 1504, column: 21, scope: !1676)
!1683 = !DILocation(line: 1504, column: 32, scope: !1676)
!1684 = !DILocation(line: 1504, column: 42, scope: !1676)
!1685 = !DILocation(line: 1518, column: 13, scope: !324)
!1686 = !DILocation(line: 1519, column: 9, scope: !325)
!1687 = !DILocation(line: 1526, column: 11, scope: !326)
!1688 = !DILocation(line: 1526, column: 17, scope: !326)
!1689 = !DILocation(line: 1526, column: 21, scope: !326)
!1690 = !DILocation(line: 1526, column: 9, scope: !326)
!1691 = !DILocation(line: 1528, column: 16, scope: !326)
!1692 = !DILocation(line: 1528, column: 22, scope: !326)
!1693 = !DILocation(line: 1528, column: 14, scope: !326)
!1694 = !DILocation(line: 1529, column: 26, scope: !326)
!1695 = !DILocation(line: 1529, column: 33, scope: !326)
!1696 = !DILocation(line: 1529, column: 31, scope: !326)
!1697 = !DILocation(line: 1529, column: 16, scope: !326)
!1698 = !DILocation(line: 1529, column: 14, scope: !326)
!1699 = !DILocation(line: 1530, column: 16, scope: !326)
!1700 = !DILocation(line: 1530, column: 22, scope: !326)
!1701 = !DILocation(line: 1530, column: 14, scope: !326)
!1702 = !DILocation(line: 1532, column: 26, scope: !326)
!1703 = !DILocation(line: 1532, column: 9, scope: !326)
!1704 = !DILocation(line: 1532, column: 15, scope: !326)
!1705 = !DILocation(line: 1532, column: 24, scope: !326)
!1706 = !DILocation(line: 1533, column: 26, scope: !326)
!1707 = !DILocation(line: 1533, column: 9, scope: !326)
!1708 = !DILocation(line: 1533, column: 15, scope: !326)
!1709 = !DILocation(line: 1533, column: 24, scope: !326)
!1710 = !DILocation(line: 1534, column: 26, scope: !326)
!1711 = !DILocation(line: 1534, column: 9, scope: !326)
!1712 = !DILocation(line: 1534, column: 15, scope: !326)
!1713 = !DILocation(line: 1534, column: 24, scope: !326)
!1714 = !DILocation(line: 1535, column: 26, scope: !326)
!1715 = !DILocation(line: 1535, column: 9, scope: !326)
!1716 = !DILocation(line: 1535, column: 15, scope: !326)
!1717 = !DILocation(line: 1535, column: 24, scope: !326)
!1718 = !DILocation(line: 1537, column: 9, scope: !326)
!1719 = !DILocation(line: 1544, column: 19, scope: !313)
!1720 = !DILocation(line: 1544, column: 5, scope: !313)
!1721 = !DILocation(line: 1545, column: 1, scope: !313)
!1722 = !DILocation(line: 1545, column: 1, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !313, file: !25, discriminator: 1)
!1724 = !DILocation(line: 905, column: 5, scope: !292)
!1725 = !DILocation(line: 905, column: 26, scope: !292)
!1726 = !DILocation(line: 906, column: 5, scope: !292)
!1727 = !DILocation(line: 906, column: 18, scope: !292)
!1728 = !DILocation(line: 907, column: 5, scope: !292)
!1729 = !DILocation(line: 907, column: 11, scope: !292)
!1730 = !DILocation(line: 913, column: 9, scope: !301)
!1731 = !DILocation(line: 913, column: 30, scope: !301)
!1732 = !DILocation(line: 913, column: 9, scope: !292)
!1733 = !DILocation(line: 914, column: 9, scope: !300)
!1734 = !DILocation(line: 914, column: 22, scope: !300)
!1735 = !DILocation(line: 915, column: 9, scope: !300)
!1736 = !DILocation(line: 915, column: 22, scope: !300)
!1737 = !DILocation(line: 916, column: 9, scope: !300)
!1738 = !DILocation(line: 916, column: 16, scope: !300)
!1739 = !DILocation(line: 921, column: 21, scope: !300)
!1740 = !DILocation(line: 921, column: 33, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 1)
!1742 = !DILocation(line: 921, column: 43, scope: !300)
!1743 = !DILocation(line: 921, column: 21, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 2)
!1745 = !DILocation(line: 921, column: 19, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !25, discriminator: 4)
!1747 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 3)
!1748 = !DILocation(line: 922, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !300, file: !25, line: 922, column: 13)
!1750 = !DILocation(line: 922, column: 26, scope: !1749)
!1751 = !DILocation(line: 922, column: 23, scope: !1749)
!1752 = !DILocation(line: 922, column: 13, scope: !300)
!1753 = !DILocation(line: 923, column: 13, scope: !1749)
!1754 = !DILocation(line: 928, column: 18, scope: !300)
!1755 = !DILocation(line: 928, column: 28, scope: !300)
!1756 = !DILocation(line: 928, column: 16, scope: !300)
!1757 = !DILocation(line: 929, column: 60, scope: !300)
!1758 = !DILocation(line: 929, column: 68, scope: !300)
!1759 = !DILocation(line: 929, column: 43, scope: !300)
!1760 = !DILocation(line: 929, column: 20, scope: !300)
!1761 = !DILocation(line: 929, column: 18, scope: !300)
!1762 = !DILocation(line: 930, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !300, file: !25, line: 930, column: 13)
!1764 = !DILocation(line: 930, column: 22, scope: !1763)
!1765 = !DILocation(line: 930, column: 13, scope: !300)
!1766 = !DILocation(line: 931, column: 13, scope: !1763)
!1767 = !DILocation(line: 932, column: 18, scope: !300)
!1768 = !DILocation(line: 932, column: 16, scope: !300)
!1769 = !DILocation(line: 944, column: 18, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !300, file: !25, line: 944, column: 9)
!1771 = !DILocation(line: 944, column: 16, scope: !1770)
!1772 = !DILocation(line: 944, column: 14, scope: !1770)
!1773 = !DILocation(line: 944, column: 29, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !25, discriminator: 2)
!1775 = !DILexicalBlockFile(scope: !1776, file: !25, discriminator: 1)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !25, line: 944, column: 9)
!1777 = !DILocation(line: 944, column: 33, scope: !1776)
!1778 = !DILocation(line: 944, column: 31, scope: !1776)
!1779 = !DILocation(line: 944, column: 9, scope: !1770)
!1780 = !DILocation(line: 945, column: 20, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !25, line: 944, column: 49)
!1782 = !DILocation(line: 945, column: 13, scope: !1781)
!1783 = !DILocation(line: 945, column: 23, scope: !1781)
!1784 = !DILocation(line: 945, column: 31, scope: !1781)
!1785 = !DILocation(line: 946, column: 35, scope: !1781)
!1786 = !DILocation(line: 946, column: 39, scope: !1781)
!1787 = !DILocation(line: 946, column: 49, scope: !1781)
!1788 = !DILocation(line: 946, column: 37, scope: !1781)
!1789 = !DILocation(line: 947, column: 44, scope: !1781)
!1790 = !DILocation(line: 947, column: 45, scope: !1781)
!1791 = !DILocation(line: 947, column: 37, scope: !1781)
!1792 = !DILocation(line: 946, column: 35, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1781, file: !25, discriminator: 1)
!1794 = !DILocation(line: 946, column: 20, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !25, discriminator: 3)
!1796 = !DILexicalBlockFile(scope: !1781, file: !25, discriminator: 2)
!1797 = !DILocation(line: 946, column: 13, scope: !1781)
!1798 = !DILocation(line: 946, column: 23, scope: !1781)
!1799 = !DILocation(line: 946, column: 33, scope: !1781)
!1800 = !DILocation(line: 948, column: 9, scope: !1781)
!1801 = !DILocation(line: 944, column: 44, scope: !1776)
!1802 = !DILocation(line: 944, column: 9, scope: !1776)
!1803 = !DILocation(line: 951, column: 40, scope: !300)
!1804 = !DILocation(line: 951, column: 33, scope: !300)
!1805 = !DILocation(line: 951, column: 30, scope: !300)
!1806 = !DILocation(line: 952, column: 21, scope: !300)
!1807 = !DILocation(line: 952, column: 19, scope: !300)
!1808 = !DILocation(line: 953, column: 5, scope: !301)
!1809 = !DILocation(line: 953, column: 5, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !301, file: !25, discriminator: 1)
!1811 = !DILocation(line: 953, column: 5, scope: !300)
!1812 = !DILocation(line: 957, column: 16, scope: !292)
!1813 = !DILocation(line: 957, column: 14, scope: !292)
!1814 = !DILocation(line: 958, column: 28, scope: !292)
!1815 = !DILocation(line: 958, column: 38, scope: !292)
!1816 = !DILocation(line: 958, column: 26, scope: !292)
!1817 = !DILocation(line: 960, column: 31, scope: !292)
!1818 = !{!1574, !381, i64 8}
!1819 = !DILocation(line: 960, column: 53, scope: !292)
!1820 = !DILocation(line: 960, column: 15, scope: !292)
!1821 = !DILocation(line: 960, column: 13, scope: !292)
!1822 = !DILocation(line: 961, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !292, file: !25, line: 961, column: 9)
!1824 = !DILocation(line: 961, column: 17, scope: !1823)
!1825 = !DILocation(line: 961, column: 9, scope: !292)
!1826 = !DILocation(line: 965, column: 31, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !25, line: 961, column: 32)
!1828 = !DILocation(line: 965, column: 9, scope: !1827)
!1829 = !DILocation(line: 965, column: 19, scope: !1827)
!1830 = !DILocation(line: 965, column: 29, scope: !1827)
!1831 = !DILocation(line: 966, column: 32, scope: !1827)
!1832 = !DILocation(line: 966, column: 30, scope: !1827)
!1833 = !DILocation(line: 967, column: 9, scope: !1827)
!1834 = !DILocation(line: 969, column: 39, scope: !292)
!1835 = !DILocation(line: 969, column: 25, scope: !292)
!1836 = !DILocation(line: 969, column: 5, scope: !292)
!1837 = !DILocation(line: 969, column: 15, scope: !292)
!1838 = !DILocation(line: 969, column: 23, scope: !292)
!1839 = !DILocation(line: 971, column: 5, scope: !292)
!1840 = !DILocation(line: 972, column: 5, scope: !292)
!1841 = !DILocation(line: 973, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !292, file: !25, line: 973, column: 9)
!1843 = !DILocation(line: 973, column: 39, scope: !1842)
!1844 = !DILocation(line: 973, column: 37, scope: !1842)
!1845 = !DILocation(line: 973, column: 9, scope: !292)
!1846 = !DILocation(line: 974, column: 29, scope: !1842)
!1847 = !DILocation(line: 974, column: 27, scope: !1842)
!1848 = !DILocation(line: 974, column: 9, scope: !1842)
!1849 = !DILocation(line: 975, column: 5, scope: !292)
!1850 = !DILocation(line: 975, column: 15, scope: !292)
!1851 = !DILocation(line: 975, column: 25, scope: !292)
!1852 = !DILocation(line: 978, column: 38, scope: !292)
!1853 = !DILocation(line: 978, column: 48, scope: !292)
!1854 = !DILocation(line: 978, column: 30, scope: !292)
!1855 = !DILocation(line: 978, column: 5, scope: !292)
!1856 = !DILocation(line: 978, column: 15, scope: !292)
!1857 = !DILocation(line: 978, column: 28, scope: !292)
!1858 = !DILocation(line: 979, column: 5, scope: !292)
!1859 = !DILocation(line: 979, column: 15, scope: !292)
!1860 = !DILocation(line: 979, column: 26, scope: !292)
!1861 = !DILocation(line: 981, column: 29, scope: !292)
!1862 = !DILocation(line: 981, column: 39, scope: !292)
!1863 = !DILocation(line: 981, column: 47, scope: !292)
!1864 = !DILocation(line: 981, column: 14, scope: !292)
!1865 = !DILocation(line: 981, column: 12, scope: !292)
!1866 = !DILocation(line: 982, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !292, file: !25, line: 982, column: 9)
!1868 = !DILocation(line: 982, column: 16, scope: !1867)
!1869 = !DILocation(line: 982, column: 9, scope: !292)
!1870 = !DILocation(line: 983, column: 11, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !25, line: 982, column: 22)
!1872 = !DILocation(line: 983, column: 21, scope: !1871)
!1873 = !DILocation(line: 983, column: 9, scope: !1871)
!1874 = !DILocation(line: 984, column: 48, scope: !1871)
!1875 = !DILocation(line: 984, column: 46, scope: !1871)
!1876 = !DILocation(line: 984, column: 9, scope: !1871)
!1877 = !DILocation(line: 984, column: 19, scope: !1871)
!1878 = !DILocation(line: 984, column: 32, scope: !1871)
!1879 = !DILocation(line: 985, column: 5, scope: !1871)
!1880 = !DILocation(line: 986, column: 29, scope: !292)
!1881 = !DILocation(line: 986, column: 39, scope: !292)
!1882 = !DILocation(line: 986, column: 5, scope: !292)
!1883 = !DILocation(line: 986, column: 15, scope: !292)
!1884 = !DILocation(line: 986, column: 27, scope: !292)
!1885 = !DILocation(line: 988, column: 12, scope: !292)
!1886 = !DILocation(line: 988, column: 5, scope: !292)
!1887 = !DILocation(line: 989, column: 1, scope: !292)
!1888 = !DILocation(line: 94, column: 27, scope: !329)
!1889 = !DILocation(line: 94, column: 39, scope: !329)
!1890 = !DILocation(line: 96, column: 5, scope: !329)
!1891 = !DILocation(line: 96, column: 11, scope: !329)
!1892 = !DILocation(line: 97, column: 28, scope: !329)
!1893 = !DILocation(line: 97, column: 11, scope: !329)
!1894 = !DILocation(line: 97, column: 9, scope: !329)
!1895 = !DILocation(line: 99, column: 9, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !329, file: !25, line: 99, column: 9)
!1897 = !DILocation(line: 99, column: 13, scope: !1896)
!1898 = !DILocation(line: 99, column: 9, scope: !329)
!1899 = !DILocation(line: 100, column: 9, scope: !1896)
!1900 = !DILocation(line: 102, column: 12, scope: !329)
!1901 = !DILocation(line: 102, column: 5, scope: !329)
!1902 = !DILocation(line: 103, column: 1, scope: !329)
!1903 = !DILocation(line: 106, column: 29, scope: !334)
!1904 = !DILocation(line: 106, column: 40, scope: !334)
!1905 = !DILocation(line: 106, column: 52, scope: !334)
!1906 = !DILocation(line: 108, column: 12, scope: !334)
!1907 = !DILocation(line: 108, column: 17, scope: !334)
!1908 = !DILocation(line: 108, column: 5, scope: !334)
!1909 = !DILocation(line: 109, column: 1, scope: !334)
