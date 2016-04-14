; ModuleID = 'programs_new/Python-new/obmalloc.bc.ll'
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
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %entry
  %Pivot.4 = icmp slt i32 %0, 1
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %sw.bb.1, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 2
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %0, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !384, !tbaa !380
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*, !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i64 32, i32 8, i1 false), !dbg !386, !tbaa.struct !387
  br label %sw.epilog, !dbg !388

sw.bb.1:                                          ; preds = %NodeBlock
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !389, !tbaa !380
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*, !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i64 32, i32 8, i1 false), !dbg !390, !tbaa.struct !387
  br label %sw.epilog, !dbg !391

sw.bb.2:                                          ; preds = %LeafBlock.1
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !392, !tbaa !380
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*, !dbg !393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i64 32, i32 8, i1 false), !dbg !393, !tbaa.struct !387
  br label %sw.epilog, !dbg !394

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %7 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !395, !tbaa !380
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %7, i32 0, i32 0, !dbg !396
  store i8* null, i8** %ctx, align 8, !dbg !397, !tbaa !398
  %8 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !400, !tbaa !380
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %8, i32 0, i32 1, !dbg !401
  store i8* (i8*, i64)* null, i8* (i8*, i64)** %malloc, align 8, !dbg !402, !tbaa !403
  %9 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !404, !tbaa !380
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %9, i32 0, i32 2, !dbg !405
  store i8* (i8*, i8*, i64)* null, i8* (i8*, i8*, i64)** %realloc, align 8, !dbg !406, !tbaa !407
  %10 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !408, !tbaa !380
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %10, i32 0, i32 3, !dbg !409
  store void (i8*, i8*)* null, void (i8*, i8*)** %free, align 8, !dbg !410, !tbaa !411
  br label %sw.epilog, !dbg !412

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !413
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
  call void @llvm.dbg.declare(metadata i32* %domain.addr, metadata !89, metadata !378), !dbg !414
  store %struct.PyMemAllocator* %allocator, %struct.PyMemAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyMemAllocator** %allocator.addr, metadata !90, metadata !378), !dbg !415
  %0 = load i32, i32* %domain.addr, align 4, !dbg !416, !tbaa !375
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %entry
  %Pivot.4 = icmp slt i32 %0, 1
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %sw.bb.1, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 2
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %0, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %1 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !417, !tbaa !380
  %2 = bitcast %struct.PyMemAllocator* %1 to i8*, !dbg !419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem_Raw to i8*), i8* %2, i64 32, i32 8, i1 false), !dbg !419, !tbaa.struct !387
  br label %sw.epilog, !dbg !420

sw.bb.1:                                          ; preds = %NodeBlock
  %3 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !421, !tbaa !380
  %4 = bitcast %struct.PyMemAllocator* %3 to i8*, !dbg !422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyMem to i8*), i8* %4, i64 32, i32 8, i1 false), !dbg !422, !tbaa.struct !387
  br label %sw.epilog, !dbg !423

sw.bb.2:                                          ; preds = %LeafBlock.1
  %5 = load %struct.PyMemAllocator*, %struct.PyMemAllocator** %allocator.addr, align 8, !dbg !424, !tbaa !380
  %6 = bitcast %struct.PyMemAllocator* %5 to i8*, !dbg !425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyMemAllocator* @_PyObject to i8*), i8* %6, i64 32, i32 8, i1 false), !dbg !425, !tbaa.struct !387
  br label %sw.epilog, !dbg !426

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void, !dbg !427
}

; Function Attrs: nounwind uwtable
define void @PyObject_GetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyObjectArenaAllocator** %allocator.addr, metadata !106, metadata !378), !dbg !428
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !dbg !429, !tbaa !380
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*, !dbg !430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i64 24, i32 8, i1 false), !dbg !430, !tbaa.struct !431
  ret void, !dbg !432
}

; Function Attrs: nounwind uwtable
define void @PyObject_SetArenaAllocator(%struct.PyObjectArenaAllocator* %allocator) #0 {
entry:
  %allocator.addr = alloca %struct.PyObjectArenaAllocator*, align 8
  store %struct.PyObjectArenaAllocator* %allocator, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata %struct.PyObjectArenaAllocator** %allocator.addr, metadata !109, metadata !378), !dbg !433
  %0 = load %struct.PyObjectArenaAllocator*, %struct.PyObjectArenaAllocator** %allocator.addr, align 8, !dbg !434, !tbaa !380
  %1 = bitcast %struct.PyObjectArenaAllocator* %0 to i8*, !dbg !435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PyObjectArenaAllocator* @_PyObject_Arena to i8*), i8* %1, i64 24, i32 8, i1 false), !dbg !435, !tbaa.struct !431
  ret void, !dbg !436
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawMalloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !114, metadata !378), !dbg !439
  %0 = load i64, i64* %size.addr, align 8, !dbg !440, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !442
  br i1 %cmp, label %if.then, label %if.end, !dbg !443

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !444
  br label %return, !dbg !444

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 1), align 8, !dbg !445, !tbaa !403
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !446, !tbaa !398
  %3 = load i64, i64* %size.addr, align 8, !dbg !447, !tbaa !437
  %call = call i8* %1(i8* %2, i64 %3), !dbg !448
  store i8* %call, i8** %retval, !dbg !449
  br label %return, !dbg !449

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !450
  ret i8* %4, !dbg !450
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_RawRealloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !117, metadata !378), !dbg !451
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !118, metadata !378), !dbg !452
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !453, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !455
  br i1 %cmp, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !457
  br label %return, !dbg !457

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 2), align 8, !dbg !458, !tbaa !407
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !459, !tbaa !398
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !460, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !461, !tbaa !437
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !462
  store i8* %call, i8** %retval, !dbg !463
  br label %return, !dbg !463

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !464
  ret i8* %5, !dbg !464
}

; Function Attrs: nounwind uwtable
define void @PyMem_RawFree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !123, metadata !378), !dbg !465
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 3), align 8, !dbg !466, !tbaa !411
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem_Raw, i32 0, i32 0), align 8, !dbg !467, !tbaa !398
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !468, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !126, metadata !378), !dbg !471
  %0 = load i64, i64* %size.addr, align 8, !dbg !472, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !474
  br i1 %cmp, label %if.then, label %if.end, !dbg !475

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !476
  br label %return, !dbg !476

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 1), align 8, !dbg !477, !tbaa !403
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !478, !tbaa !398
  %3 = load i64, i64* %size.addr, align 8, !dbg !479, !tbaa !437
  %call = call i8* %1(i8* %2, i64 %3), !dbg !480
  store i8* %call, i8** %retval, !dbg !481
  br label %return, !dbg !481

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !482
  ret i8* %4, !dbg !482
}

; Function Attrs: nounwind uwtable
define i8* @PyMem_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !129, metadata !378), !dbg !483
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !130, metadata !378), !dbg !484
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !485, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !487
  br i1 %cmp, label %if.then, label %if.end, !dbg !488

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !489
  br label %return, !dbg !489

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 2), align 8, !dbg !490, !tbaa !407
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !491, !tbaa !398
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !492, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !493, !tbaa !437
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !494
  store i8* %call, i8** %retval, !dbg !495
  br label %return, !dbg !495

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !496
  ret i8* %5, !dbg !496
}

; Function Attrs: nounwind uwtable
define void @PyMem_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !133, metadata !378), !dbg !497
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 3), align 8, !dbg !498, !tbaa !411
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyMem, i32 0, i32 0), align 8, !dbg !499, !tbaa !398
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !500, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !501
  ret void, !dbg !502
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
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !141, metadata !378), !dbg !503
  %0 = bitcast i64* %size to i8*, !dbg !504
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %size, metadata !142, metadata !378), !dbg !505
  %1 = bitcast i8** %copy to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !506
  call void @llvm.dbg.declare(metadata i8** %copy, metadata !143, metadata !378), !dbg !507
  %2 = load i8*, i8** %str.addr, align 8, !dbg !508, !tbaa !380
  %call = call i64 @strlen(i8* %2) #6, !dbg !509
  %add = add i64 %call, 1, !dbg !510
  store i64 %add, i64* %size, align 8, !dbg !511, !tbaa !437
  %3 = load i64, i64* %size, align 8, !dbg !512, !tbaa !437
  %call1 = call i8* @PyMem_RawMalloc(i64 %3), !dbg !513
  store i8* %call1, i8** %copy, align 8, !dbg !514, !tbaa !380
  %4 = load i8*, i8** %copy, align 8, !dbg !515, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !517
  br i1 %cmp, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !519

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %copy, align 8, !dbg !520, !tbaa !380
  %6 = load i8*, i8** %str.addr, align 8, !dbg !521, !tbaa !380
  %7 = load i64, i64* %size, align 8, !dbg !522, !tbaa !437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false), !dbg !523
  %8 = load i8*, i8** %copy, align 8, !dbg !524, !tbaa !380
  store i8* %8, i8** %retval, !dbg !525
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !525

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %copy to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !526
  %10 = bitcast i64* %size to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !526
  %11 = load i8*, i8** %retval, !dbg !526
  ret i8* %11, !dbg !526
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
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !146, metadata !378), !dbg !527
  %0 = bitcast i64* %size to i8*, !dbg !528
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !528
  call void @llvm.dbg.declare(metadata i64* %size, metadata !147, metadata !378), !dbg !529
  %1 = bitcast i8** %copy to i8*, !dbg !530
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !530
  call void @llvm.dbg.declare(metadata i8** %copy, metadata !148, metadata !378), !dbg !531
  %2 = load i8*, i8** %str.addr, align 8, !dbg !532, !tbaa !380
  %call = call i64 @strlen(i8* %2) #6, !dbg !533
  %add = add i64 %call, 1, !dbg !534
  store i64 %add, i64* %size, align 8, !dbg !535, !tbaa !437
  %3 = load i64, i64* %size, align 8, !dbg !536, !tbaa !437
  %call1 = call i8* @PyMem_Malloc(i64 %3), !dbg !537
  store i8* %call1, i8** %copy, align 8, !dbg !538, !tbaa !380
  %4 = load i8*, i8** %copy, align 8, !dbg !539, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !541
  br i1 %cmp, label %if.then, label %if.end, !dbg !542

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !543
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !543

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %copy, align 8, !dbg !544, !tbaa !380
  %6 = load i8*, i8** %str.addr, align 8, !dbg !545, !tbaa !380
  %7 = load i64, i64* %size, align 8, !dbg !546, !tbaa !437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false), !dbg !547
  %8 = load i8*, i8** %copy, align 8, !dbg !548, !tbaa !380
  store i8* %8, i8** %retval, !dbg !549
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !549

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %copy to i8*, !dbg !550
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !550
  %10 = bitcast i64* %size to i8*, !dbg !550
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !550
  %11 = load i8*, i8** %retval, !dbg !550
  ret i8* %11, !dbg !550
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !151, metadata !378), !dbg !551
  %0 = load i64, i64* %size.addr, align 8, !dbg !552, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !554
  br i1 %cmp, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !556
  br label %return, !dbg !556

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 1), align 8, !dbg !557, !tbaa !403
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !558, !tbaa !398
  %3 = load i64, i64* %size.addr, align 8, !dbg !559, !tbaa !437
  %call = call i8* %1(i8* %2, i64 %3), !dbg !560
  store i8* %call, i8** %retval, !dbg !561
  br label %return, !dbg !561

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !562
  ret i8* %4, !dbg !562
}

; Function Attrs: nounwind uwtable
define i8* @PyObject_Realloc(i8* %ptr, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !154, metadata !378), !dbg !563
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !155, metadata !378), !dbg !564
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !565, !tbaa !437
  %cmp = icmp ugt i64 %0, 9223372036854775807, !dbg !567
  br i1 %cmp, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !569
  br label %return, !dbg !569

if.end:                                           ; preds = %entry
  %1 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 2), align 8, !dbg !570, !tbaa !407
  %2 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !571, !tbaa !398
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !572, !tbaa !380
  %4 = load i64, i64* %new_size.addr, align 8, !dbg !573, !tbaa !437
  %call = call i8* %1(i8* %2, i8* %3, i64 %4), !dbg !574
  store i8* %call, i8** %retval, !dbg !575
  br label %return, !dbg !575

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, !dbg !576
  ret i8* %5, !dbg !576
}

; Function Attrs: nounwind uwtable
define void @PyObject_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !158, metadata !378), !dbg !577
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 3), align 8, !dbg !578, !tbaa !411
  %1 = load i8*, i8** getelementptr inbounds (%struct.PyMemAllocator, %struct.PyMemAllocator* @_PyObject, i32 0, i32 0), align 8, !dbg !579, !tbaa !398
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !580, !tbaa !380
  call void %0(i8* %1, i8* %2), !dbg !581
  ret void, !dbg !582
}

; Function Attrs: nounwind uwtable
define i64 @_Py_GetAllocatedBlocks() #0 {
entry:
  %0 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !583, !tbaa !437
  ret i64 %0, !dbg !584
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !219, metadata !378), !dbg !585
  store i8* %block_name, i8** %block_name.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %block_name.addr, metadata !220, metadata !378), !dbg !586
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !587
  call void @llvm.dbg.declare(metadata i32* %num_blocks.addr, metadata !221, metadata !378), !dbg !589
  store i64 %sizeof_block, i64* %sizeof_block.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %sizeof_block.addr, metadata !222, metadata !378), !dbg !590
  %0 = bitcast [128 x i8]* %buf1 to i8*, !dbg !591
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !591
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf1, metadata !223, metadata !378), !dbg !592
  %1 = bitcast [128 x i8]* %buf2 to i8*, !dbg !593
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !593
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf2, metadata !227, metadata !378), !dbg !594
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0, !dbg !595
  %2 = load i32, i32* %num_blocks.addr, align 4, !dbg !596, !tbaa !587
  %3 = load i8*, i8** %block_name.addr, align 8, !dbg !597, !tbaa !380
  %4 = load i64, i64* %sizeof_block.addr, align 8, !dbg !598, !tbaa !437
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %2, i8* %3, i64 %4), !dbg !599
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0, !dbg !600
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %buf1, i32 0, i32 0, !dbg !601
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay2), !dbg !602
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !603, !tbaa !380
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0, !dbg !604
  %6 = load i32, i32* %num_blocks.addr, align 4, !dbg !605, !tbaa !587
  %conv = sext i32 %6 to i64, !dbg !605
  %7 = load i64, i64* %sizeof_block.addr, align 8, !dbg !606, !tbaa !437
  %mul = mul i64 %conv, %7, !dbg !607
  %call5 = call i64 @printone(%struct._IO_FILE* %5, i8* %arraydecay4, i64 %mul), !dbg !608
  %8 = bitcast [128 x i8]* %buf2 to i8*, !dbg !609
  call void @llvm.lifetime.end(i64 128, i8* %8) #2, !dbg !609
  %9 = bitcast [128 x i8]* %buf1 to i8*, !dbg !609
  call void @llvm.lifetime.end(i64 128, i8* %9) #2, !dbg !609
  ret void, !dbg !609
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !343, metadata !378), !dbg !610
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !344, metadata !378), !dbg !611
  store i64 %value, i64* %value.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !345, metadata !378), !dbg !612
  %0 = bitcast i32* %i to i8*, !dbg !613
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !613
  call void @llvm.dbg.declare(metadata i32* %i, metadata !346, metadata !378), !dbg !614
  %1 = bitcast i32* %k to i8*, !dbg !613
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !613
  call void @llvm.dbg.declare(metadata i32* %k, metadata !347, metadata !378), !dbg !615
  %2 = bitcast [100 x i8]* %buf to i8*, !dbg !616
  call void @llvm.lifetime.start(i64 100, i8* %2) #2, !dbg !616
  call void @llvm.dbg.declare(metadata [100 x i8]* %buf, metadata !348, metadata !378), !dbg !617
  %3 = bitcast i64* %origvalue to i8*, !dbg !618
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %origvalue, metadata !352, metadata !378), !dbg !619
  %4 = load i64, i64* %value.addr, align 8, !dbg !620, !tbaa !437
  store i64 %4, i64* %origvalue, align 8, !dbg !619, !tbaa !437
  %5 = load i8*, i8** %msg.addr, align 8, !dbg !621, !tbaa !380
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !622, !tbaa !380
  %call = call i32 @fputs(i8* %5, %struct._IO_FILE* %6), !dbg !623
  %7 = load i8*, i8** %msg.addr, align 8, !dbg !624, !tbaa !380
  %call1 = call i64 @strlen(i8* %7) #6, !dbg !626
  %conv = trunc i64 %call1 to i32, !dbg !627
  store i32 %conv, i32* %i, align 4, !dbg !628, !tbaa !587
  br label %for.cond, !dbg !629

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !630, !tbaa !587
  %cmp = icmp slt i32 %8, 35, !dbg !634
  br i1 %cmp, label %for.body, label %for.end, !dbg !635

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !636, !tbaa !380
  %call3 = call i32 @fputc(i32 32, %struct._IO_FILE* %9), !dbg !637
  br label %for.inc, !dbg !637

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !638, !tbaa !587
  %inc = add i32 %10, 1, !dbg !638
  store i32 %inc, i32* %i, align 4, !dbg !638, !tbaa !587
  br label %for.cond, !dbg !639

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !640, !tbaa !380
  %call4 = call i32 @fputc(i32 61, %struct._IO_FILE* %11), !dbg !641
  store i32 22, i32* %i, align 4, !dbg !642, !tbaa !587
  %12 = load i32, i32* %i, align 4, !dbg !643, !tbaa !587
  %dec = add i32 %12, -1, !dbg !643
  store i32 %dec, i32* %i, align 4, !dbg !643, !tbaa !587
  %idxprom = sext i32 %12 to i64, !dbg !644
  %arrayidx = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom, !dbg !644
  store i8 0, i8* %arrayidx, align 1, !dbg !645, !tbaa !375
  %13 = load i32, i32* %i, align 4, !dbg !646, !tbaa !587
  %dec5 = add i32 %13, -1, !dbg !646
  store i32 %dec5, i32* %i, align 4, !dbg !646, !tbaa !587
  %idxprom6 = sext i32 %13 to i64, !dbg !647
  %arrayidx7 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom6, !dbg !647
  store i8 10, i8* %arrayidx7, align 1, !dbg !648, !tbaa !375
  store i32 3, i32* %k, align 4, !dbg !649, !tbaa !587
  br label %do.body, !dbg !650

do.body:                                          ; preds = %land.end, %for.end
  %14 = bitcast i64* %nextvalue to i8*, !dbg !651
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !651
  call void @llvm.dbg.declare(metadata i64* %nextvalue, metadata !353, metadata !378), !dbg !652
  %15 = load i64, i64* %value.addr, align 8, !dbg !653, !tbaa !437
  %div = udiv i64 %15, 10, !dbg !654
  store i64 %div, i64* %nextvalue, align 8, !dbg !652, !tbaa !437
  %16 = bitcast i32* %digit to i8*, !dbg !655
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !655
  call void @llvm.dbg.declare(metadata i32* %digit, metadata !355, metadata !378), !dbg !656
  %17 = load i64, i64* %value.addr, align 8, !dbg !657, !tbaa !437
  %18 = load i64, i64* %nextvalue, align 8, !dbg !658, !tbaa !437
  %mul = mul i64 %18, 10, !dbg !659
  %sub = sub i64 %17, %mul, !dbg !660
  %conv8 = trunc i64 %sub to i32, !dbg !661
  store i32 %conv8, i32* %digit, align 4, !dbg !656, !tbaa !587
  %19 = load i64, i64* %nextvalue, align 8, !dbg !662, !tbaa !437
  store i64 %19, i64* %value.addr, align 8, !dbg !663, !tbaa !437
  %20 = load i32, i32* %digit, align 4, !dbg !664, !tbaa !587
  %add = add i32 %20, 48, !dbg !665
  %conv9 = trunc i32 %add to i8, !dbg !666
  %21 = load i32, i32* %i, align 4, !dbg !667, !tbaa !587
  %dec10 = add i32 %21, -1, !dbg !667
  store i32 %dec10, i32* %i, align 4, !dbg !667, !tbaa !587
  %idxprom11 = sext i32 %21 to i64, !dbg !668
  %arrayidx12 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom11, !dbg !668
  store i8 %conv9, i8* %arrayidx12, align 1, !dbg !669, !tbaa !375
  %22 = load i32, i32* %k, align 4, !dbg !670, !tbaa !587
  %dec13 = add i32 %22, -1, !dbg !670
  store i32 %dec13, i32* %k, align 4, !dbg !670, !tbaa !587
  %23 = load i32, i32* %k, align 4, !dbg !671, !tbaa !587
  %cmp14 = icmp eq i32 %23, 0, !dbg !673
  br i1 %cmp14, label %land.lhs.true, label %if.end, !dbg !674

land.lhs.true:                                    ; preds = %do.body
  %24 = load i64, i64* %value.addr, align 8, !dbg !675, !tbaa !437
  %tobool = icmp ne i64 %24, 0, !dbg !675
  br i1 %tobool, label %land.lhs.true.16, label %if.end, !dbg !677

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %i, align 4, !dbg !678, !tbaa !587
  %cmp17 = icmp sge i32 %25, 0, !dbg !680
  br i1 %cmp17, label %if.then, label %if.end, !dbg !681

if.then:                                          ; preds = %land.lhs.true.16
  store i32 3, i32* %k, align 4, !dbg !682, !tbaa !587
  %26 = load i32, i32* %i, align 4, !dbg !684, !tbaa !587
  %dec19 = add i32 %26, -1, !dbg !684
  store i32 %dec19, i32* %i, align 4, !dbg !684, !tbaa !587
  %idxprom20 = sext i32 %26 to i64, !dbg !685
  %arrayidx21 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom20, !dbg !685
  store i8 44, i8* %arrayidx21, align 1, !dbg !686, !tbaa !375
  br label %if.end, !dbg !687

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true, %do.body
  %27 = bitcast i32* %digit to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 4, i8* %27) #2, !dbg !688
  %28 = bitcast i64* %nextvalue to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !688
  br label %do.cond, !dbg !689

do.cond:                                          ; preds = %if.end
  %29 = load i64, i64* %value.addr, align 8, !dbg !690, !tbaa !437
  %tobool22 = icmp ne i64 %29, 0, !dbg !690
  br i1 %tobool22, label %land.rhs, label %land.end, !dbg !692

land.rhs:                                         ; preds = %do.cond
  %30 = load i32, i32* %i, align 4, !dbg !693, !tbaa !587
  %cmp23 = icmp sge i32 %30, 0, !dbg !695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %cmp23, %land.rhs ]
  br i1 %31, label %do.body, label %do.end, !dbg !696

do.end:                                           ; preds = %land.end
  br label %while.cond, !dbg !698

while.cond:                                       ; preds = %while.body, %do.end
  %32 = load i32, i32* %i, align 4, !dbg !699, !tbaa !587
  %cmp25 = icmp sge i32 %32, 0, !dbg !701
  br i1 %cmp25, label %while.body, label %while.end, !dbg !698

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %i, align 4, !dbg !702, !tbaa !587
  %dec27 = add i32 %33, -1, !dbg !702
  store i32 %dec27, i32* %i, align 4, !dbg !702, !tbaa !587
  %idxprom28 = sext i32 %33 to i64, !dbg !703
  %arrayidx29 = getelementptr [100 x i8], [100 x i8]* %buf, i32 0, i64 %idxprom28, !dbg !703
  store i8 32, i8* %arrayidx29, align 1, !dbg !704, !tbaa !375
  br label %while.cond, !dbg !698

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0, !dbg !705
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !706, !tbaa !380
  %call30 = call i32 @fputs(i8* %arraydecay, %struct._IO_FILE* %34), !dbg !707
  %35 = load i64, i64* %origvalue, align 8, !dbg !708, !tbaa !437
  %36 = bitcast i64* %origvalue to i8*, !dbg !709
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !709
  %37 = bitcast [100 x i8]* %buf to i8*, !dbg !709
  call void @llvm.lifetime.end(i64 100, i8* %37) #2, !dbg !709
  %38 = bitcast i32* %k to i8*, !dbg !709
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !709
  %39 = bitcast i32* %i to i8*, !dbg !709
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !709
  ret i64 %35, !dbg !710
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !232, metadata !378), !dbg !711
  %0 = bitcast i32* %i to i8*, !dbg !712
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !712
  call void @llvm.dbg.declare(metadata i32* %i, metadata !233, metadata !378), !dbg !713
  %1 = bitcast i32* %numclasses to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i32* %numclasses, metadata !234, metadata !378), !dbg !715
  store i32 64, i32* %numclasses, align 4, !dbg !715, !tbaa !587
  %2 = bitcast [64 x i64]* %numpools to i8*, !dbg !716
  call void @llvm.lifetime.start(i64 512, i8* %2) #2, !dbg !716
  call void @llvm.dbg.declare(metadata [64 x i64]* %numpools, metadata !236, metadata !378), !dbg !717
  %3 = bitcast [64 x i64]* %numblocks to i8*, !dbg !718
  call void @llvm.lifetime.start(i64 512, i8* %3) #2, !dbg !718
  call void @llvm.dbg.declare(metadata [64 x i64]* %numblocks, metadata !240, metadata !378), !dbg !719
  %4 = bitcast [64 x i64]* %numfreeblocks to i8*, !dbg !720
  call void @llvm.lifetime.start(i64 512, i8* %4) #2, !dbg !720
  call void @llvm.dbg.declare(metadata [64 x i64]* %numfreeblocks, metadata !241, metadata !378), !dbg !721
  %5 = bitcast i64* %allocated_bytes to i8*, !dbg !722
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !722
  call void @llvm.dbg.declare(metadata i64* %allocated_bytes, metadata !242, metadata !378), !dbg !723
  store i64 0, i64* %allocated_bytes, align 8, !dbg !723, !tbaa !437
  %6 = bitcast i64* %available_bytes to i8*, !dbg !724
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !724
  call void @llvm.dbg.declare(metadata i64* %available_bytes, metadata !243, metadata !378), !dbg !725
  store i64 0, i64* %available_bytes, align 8, !dbg !725, !tbaa !437
  %7 = bitcast i32* %numfreepools to i8*, !dbg !726
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !726
  call void @llvm.dbg.declare(metadata i32* %numfreepools, metadata !244, metadata !378), !dbg !727
  store i32 0, i32* %numfreepools, align 4, !dbg !727, !tbaa !587
  %8 = bitcast i64* %arena_alignment to i8*, !dbg !728
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !728
  call void @llvm.dbg.declare(metadata i64* %arena_alignment, metadata !245, metadata !378), !dbg !729
  store i64 0, i64* %arena_alignment, align 8, !dbg !729, !tbaa !437
  %9 = bitcast i64* %pool_header_bytes to i8*, !dbg !730
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !730
  call void @llvm.dbg.declare(metadata i64* %pool_header_bytes, metadata !246, metadata !378), !dbg !731
  store i64 0, i64* %pool_header_bytes, align 8, !dbg !731, !tbaa !437
  %10 = bitcast i64* %quantization to i8*, !dbg !732
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %quantization, metadata !247, metadata !378), !dbg !733
  store i64 0, i64* %quantization, align 8, !dbg !733, !tbaa !437
  %11 = bitcast i64* %narenas to i8*, !dbg !734
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !734
  call void @llvm.dbg.declare(metadata i64* %narenas, metadata !248, metadata !378), !dbg !735
  store i64 0, i64* %narenas, align 8, !dbg !735, !tbaa !437
  %12 = bitcast i64* %total to i8*, !dbg !736
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !736
  call void @llvm.dbg.declare(metadata i64* %total, metadata !249, metadata !378), !dbg !737
  %13 = bitcast [128 x i8]* %buf to i8*, !dbg !738
  call void @llvm.lifetime.start(i64 128, i8* %13) #2, !dbg !738
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !250, metadata !378), !dbg !739
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !740, !tbaa !380
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 512, i32 64), !dbg !741
  store i32 0, i32* %i, align 4, !dbg !742, !tbaa !587
  br label %for.cond, !dbg !744

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !dbg !745, !tbaa !587
  %cmp = icmp ult i32 %15, 64, !dbg !749
  br i1 %cmp, label %for.body, label %for.end, !dbg !750

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !751, !tbaa !587
  %idxprom = zext i32 %16 to i64, !dbg !752
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom, !dbg !752
  store i64 0, i64* %arrayidx, align 8, !dbg !753, !tbaa !437
  %17 = load i32, i32* %i, align 4, !dbg !754, !tbaa !587
  %idxprom1 = zext i32 %17 to i64, !dbg !755
  %arrayidx2 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom1, !dbg !755
  store i64 0, i64* %arrayidx2, align 8, !dbg !756, !tbaa !437
  %18 = load i32, i32* %i, align 4, !dbg !757, !tbaa !587
  %idxprom3 = zext i32 %18 to i64, !dbg !758
  %arrayidx4 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom3, !dbg !758
  store i64 0, i64* %arrayidx4, align 8, !dbg !759, !tbaa !437
  br label %for.inc, !dbg !758

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !760, !tbaa !587
  %inc = add i32 %19, 1, !dbg !760
  store i32 %inc, i32* %i, align 4, !dbg !760, !tbaa !587
  br label %for.cond, !dbg !761

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !762, !tbaa !587
  br label %for.cond.5, !dbg !763

for.cond.5:                                       ; preds = %for.inc.55, %for.end
  %20 = load i32, i32* %i, align 4, !dbg !764, !tbaa !587
  %21 = load i32, i32* @maxarenas, align 4, !dbg !767, !tbaa !587
  %cmp6 = icmp ult i32 %20, %21, !dbg !768
  br i1 %cmp6, label %for.body.7, label %for.end.57, !dbg !769

for.body.7:                                       ; preds = %for.cond.5
  %22 = bitcast i32* %j to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !770
  call void @llvm.dbg.declare(metadata i32* %j, metadata !251, metadata !378), !dbg !771
  %23 = bitcast i64* %base to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !772
  call void @llvm.dbg.declare(metadata i64* %base, metadata !255, metadata !378), !dbg !773
  %24 = load i32, i32* %i, align 4, !dbg !774, !tbaa !587
  %idxprom8 = zext i32 %24 to i64, !dbg !775
  %25 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !775, !tbaa !380
  %arrayidx9 = getelementptr %struct.arena_object, %struct.arena_object* %25, i64 %idxprom8, !dbg !775
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx9, i32 0, i32 0, !dbg !776
  %26 = load i64, i64* %address, align 8, !dbg !776, !tbaa !777
  store i64 %26, i64* %base, align 8, !dbg !773, !tbaa !437
  %27 = load i32, i32* %i, align 4, !dbg !779, !tbaa !587
  %idxprom10 = zext i32 %27 to i64, !dbg !781
  %28 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !781, !tbaa !380
  %arrayidx11 = getelementptr %struct.arena_object, %struct.arena_object* %28, i64 %idxprom10, !dbg !781
  %address12 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx11, i32 0, i32 0, !dbg !782
  %29 = load i64, i64* %address12, align 8, !dbg !782, !tbaa !777
  %cmp13 = icmp eq i64 %29, 0, !dbg !783
  br i1 %cmp13, label %if.then, label %if.end, !dbg !784

if.then:                                          ; preds = %for.body.7
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.51, !dbg !785

if.end:                                           ; preds = %for.body.7
  %30 = load i64, i64* %narenas, align 8, !dbg !786, !tbaa !437
  %add = add i64 %30, 1, !dbg !786
  store i64 %add, i64* %narenas, align 8, !dbg !786, !tbaa !437
  %31 = load i32, i32* %i, align 4, !dbg !787, !tbaa !587
  %idxprom14 = zext i32 %31 to i64, !dbg !788
  %32 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !788, !tbaa !380
  %arrayidx15 = getelementptr %struct.arena_object, %struct.arena_object* %32, i64 %idxprom14, !dbg !788
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx15, i32 0, i32 2, !dbg !789
  %33 = load i32, i32* %nfreepools, align 4, !dbg !789, !tbaa !790
  %34 = load i32, i32* %numfreepools, align 4, !dbg !791, !tbaa !587
  %add16 = add i32 %34, %33, !dbg !791
  store i32 %add16, i32* %numfreepools, align 4, !dbg !791, !tbaa !587
  %35 = load i64, i64* %base, align 8, !dbg !792, !tbaa !437
  %and = and i64 %35, 4095, !dbg !794
  %tobool = icmp ne i64 %and, 0, !dbg !794
  br i1 %tobool, label %if.then.17, label %if.end.21, !dbg !795

if.then.17:                                       ; preds = %if.end
  %36 = load i64, i64* %arena_alignment, align 8, !dbg !796, !tbaa !437
  %add18 = add i64 %36, 4096, !dbg !796
  store i64 %add18, i64* %arena_alignment, align 8, !dbg !796, !tbaa !437
  %37 = load i64, i64* %base, align 8, !dbg !798, !tbaa !437
  %and19 = and i64 %37, -4096, !dbg !798
  store i64 %and19, i64* %base, align 8, !dbg !798, !tbaa !437
  %38 = load i64, i64* %base, align 8, !dbg !799, !tbaa !437
  %add20 = add i64 %38, 4096, !dbg !799
  store i64 %add20, i64* %base, align 8, !dbg !799, !tbaa !437
  br label %if.end.21, !dbg !800

if.end.21:                                        ; preds = %if.then.17, %if.end
  store i32 0, i32* %j, align 4, !dbg !801, !tbaa !587
  br label %for.cond.22, !dbg !802

for.cond.22:                                      ; preds = %for.inc.47, %if.end.21
  %39 = load i64, i64* %base, align 8, !dbg !803, !tbaa !437
  %40 = load i32, i32* %i, align 4, !dbg !804, !tbaa !587
  %idxprom23 = zext i32 %40 to i64, !dbg !805
  %41 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !805, !tbaa !380
  %arrayidx24 = getelementptr %struct.arena_object, %struct.arena_object* %41, i64 %idxprom23, !dbg !805
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx24, i32 0, i32 1, !dbg !806
  %42 = load i8*, i8** %pool_address, align 8, !dbg !806, !tbaa !807
  %43 = ptrtoint i8* %42 to i64, !dbg !808
  %cmp25 = icmp ult i64 %39, %43, !dbg !809
  br i1 %cmp25, label %for.body.26, label %for.end.50, !dbg !810

for.body.26:                                      ; preds = %for.cond.22
  %44 = bitcast %struct.pool_header** %p to i8*, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !811
  call void @llvm.dbg.declare(metadata %struct.pool_header** %p, metadata !256, metadata !378), !dbg !812
  %45 = load i64, i64* %base, align 8, !dbg !813, !tbaa !437
  %46 = inttoptr i64 %45 to %struct.pool_header*, !dbg !814
  store %struct.pool_header* %46, %struct.pool_header** %p, align 8, !dbg !812, !tbaa !380
  %47 = bitcast i32* %sz to i8*, !dbg !815
  call void @llvm.lifetime.start(i64 4, i8* %47) #2, !dbg !815
  call void @llvm.dbg.declare(metadata i32* %sz, metadata !260, metadata !378), !dbg !816
  %48 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !817, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %48, i32 0, i32 5, !dbg !818
  %49 = load i32, i32* %szidx, align 4, !dbg !818, !tbaa !819
  store i32 %49, i32* %sz, align 4, !dbg !816, !tbaa !587
  %50 = bitcast i32* %freeblocks to i8*, !dbg !821
  call void @llvm.lifetime.start(i64 4, i8* %50) #2, !dbg !821
  call void @llvm.dbg.declare(metadata i32* %freeblocks, metadata !261, metadata !378), !dbg !822
  %51 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !823, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %51, i32 0, i32 0, !dbg !825
  %count = bitcast %union.anon* %ref to i32*, !dbg !826
  %52 = load i32, i32* %count, align 4, !dbg !826, !tbaa !587
  %cmp27 = icmp eq i32 %52, 0, !dbg !827
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !828

if.then.28:                                       ; preds = %for.body.26
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !829

if.end.29:                                        ; preds = %for.body.26
  %53 = load i32, i32* %sz, align 4, !dbg !831, !tbaa !587
  %idxprom30 = zext i32 %53 to i64, !dbg !832
  %arrayidx31 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom30, !dbg !832
  %54 = load i64, i64* %arrayidx31, align 8, !dbg !833, !tbaa !437
  %inc32 = add i64 %54, 1, !dbg !833
  store i64 %inc32, i64* %arrayidx31, align 8, !dbg !833, !tbaa !437
  %55 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !834, !tbaa !380
  %ref33 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %55, i32 0, i32 0, !dbg !835
  %count34 = bitcast %union.anon* %ref33 to i32*, !dbg !836
  %56 = load i32, i32* %count34, align 4, !dbg !836, !tbaa !587
  %conv = zext i32 %56 to i64, !dbg !834
  %57 = load i32, i32* %sz, align 4, !dbg !837, !tbaa !587
  %idxprom35 = zext i32 %57 to i64, !dbg !838
  %arrayidx36 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom35, !dbg !838
  %58 = load i64, i64* %arrayidx36, align 8, !dbg !839, !tbaa !437
  %add37 = add i64 %58, %conv, !dbg !839
  store i64 %add37, i64* %arrayidx36, align 8, !dbg !839, !tbaa !437
  %59 = load i32, i32* %sz, align 4, !dbg !840, !tbaa !587
  %add38 = add i32 %59, 1, !dbg !841
  %shl = shl i32 %add38, 3, !dbg !842
  %div = udiv i32 4048, %shl, !dbg !843
  %60 = load %struct.pool_header*, %struct.pool_header** %p, align 8, !dbg !844, !tbaa !380
  %ref39 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %60, i32 0, i32 0, !dbg !845
  %count40 = bitcast %union.anon* %ref39 to i32*, !dbg !846
  %61 = load i32, i32* %count40, align 4, !dbg !846, !tbaa !587
  %sub = sub i32 %div, %61, !dbg !847
  store i32 %sub, i32* %freeblocks, align 4, !dbg !848, !tbaa !587
  %62 = load i32, i32* %freeblocks, align 4, !dbg !849, !tbaa !587
  %conv41 = zext i32 %62 to i64, !dbg !849
  %63 = load i32, i32* %sz, align 4, !dbg !850, !tbaa !587
  %idxprom42 = zext i32 %63 to i64, !dbg !851
  %arrayidx43 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom42, !dbg !851
  %64 = load i64, i64* %arrayidx43, align 8, !dbg !852, !tbaa !437
  %add44 = add i64 %64, %conv41, !dbg !852
  store i64 %add44, i64* %arrayidx43, align 8, !dbg !852, !tbaa !437
  store i32 0, i32* %cleanup.dest.slot, !dbg !853
  br label %cleanup, !dbg !853

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %65 = bitcast i32* %freeblocks to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !854
  %66 = bitcast i32* %sz to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 4, i8* %66) #2, !dbg !854
  %67 = bitcast %struct.pool_header** %p to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !854
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 10
  br i1 %SwitchLeaf, label %for.inc.47, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %for.inc.47, !dbg !856

for.inc.47:                                       ; preds = %LeafBlock, %cleanup.cont
  %68 = load i32, i32* %j, align 4, !dbg !857, !tbaa !587
  %inc48 = add i32 %68, 1, !dbg !857
  store i32 %inc48, i32* %j, align 4, !dbg !857, !tbaa !587
  %69 = load i64, i64* %base, align 8, !dbg !858, !tbaa !437
  %add49 = add i64 %69, 4096, !dbg !858
  store i64 %add49, i64* %base, align 8, !dbg !858, !tbaa !437
  br label %for.cond.22, !dbg !859

for.end.50:                                       ; preds = %for.cond.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !860
  br label %cleanup.51, !dbg !860

cleanup.51:                                       ; preds = %for.end.50, %if.then
  %70 = bitcast i64* %base to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !861
  %71 = bitcast i32* %j to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !861
  %cleanup.dest.53 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.51
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.53, 7
  br i1 %SwitchLeaf3, label %for.inc.55, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.54

cleanup.cont.54:                                  ; preds = %NewDefault.1
  br label %for.inc.55, !dbg !862

for.inc.55:                                       ; preds = %LeafBlock.2, %cleanup.cont.54
  %72 = load i32, i32* %i, align 4, !dbg !863, !tbaa !587
  %inc56 = add i32 %72, 1, !dbg !863
  store i32 %inc56, i32* %i, align 4, !dbg !863, !tbaa !587
  br label %for.cond.5, !dbg !864

for.end.57:                                       ; preds = %for.cond.5
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !865, !tbaa !380
  %call58 = call i32 @fputc(i32 10, %struct._IO_FILE* %73), !dbg !866
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !867, !tbaa !380
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %74), !dbg !868
  store i32 0, i32* %i, align 4, !dbg !869, !tbaa !587
  br label %for.cond.60, !dbg !870

for.cond.60:                                      ; preds = %for.inc.94, %for.end.57
  %75 = load i32, i32* %i, align 4, !dbg !871, !tbaa !587
  %cmp61 = icmp ult i32 %75, 64, !dbg !874
  br i1 %cmp61, label %for.body.63, label %for.end.96, !dbg !875

for.body.63:                                      ; preds = %for.cond.60
  %76 = bitcast i64* %p64 to i8*, !dbg !876
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !876
  call void @llvm.dbg.declare(metadata i64* %p64, metadata !262, metadata !378), !dbg !877
  %77 = load i32, i32* %i, align 4, !dbg !878, !tbaa !587
  %idxprom65 = zext i32 %77 to i64, !dbg !879
  %arrayidx66 = getelementptr [64 x i64], [64 x i64]* %numpools, i32 0, i64 %idxprom65, !dbg !879
  %78 = load i64, i64* %arrayidx66, align 8, !dbg !879, !tbaa !437
  store i64 %78, i64* %p64, align 8, !dbg !877, !tbaa !437
  %79 = bitcast i64* %b to i8*, !dbg !880
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !880
  call void @llvm.dbg.declare(metadata i64* %b, metadata !266, metadata !378), !dbg !881
  %80 = load i32, i32* %i, align 4, !dbg !882, !tbaa !587
  %idxprom67 = zext i32 %80 to i64, !dbg !883
  %arrayidx68 = getelementptr [64 x i64], [64 x i64]* %numblocks, i32 0, i64 %idxprom67, !dbg !883
  %81 = load i64, i64* %arrayidx68, align 8, !dbg !883, !tbaa !437
  store i64 %81, i64* %b, align 8, !dbg !881, !tbaa !437
  %82 = bitcast i64* %f to i8*, !dbg !884
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !884
  call void @llvm.dbg.declare(metadata i64* %f, metadata !267, metadata !378), !dbg !885
  %83 = load i32, i32* %i, align 4, !dbg !886, !tbaa !587
  %idxprom69 = zext i32 %83 to i64, !dbg !887
  %arrayidx70 = getelementptr [64 x i64], [64 x i64]* %numfreeblocks, i32 0, i64 %idxprom69, !dbg !887
  %84 = load i64, i64* %arrayidx70, align 8, !dbg !887, !tbaa !437
  store i64 %84, i64* %f, align 8, !dbg !885, !tbaa !437
  %85 = bitcast i32* %size to i8*, !dbg !888
  call void @llvm.lifetime.start(i64 4, i8* %85) #2, !dbg !888
  call void @llvm.dbg.declare(metadata i32* %size, metadata !268, metadata !378), !dbg !889
  %86 = load i32, i32* %i, align 4, !dbg !890, !tbaa !587
  %add71 = add i32 %86, 1, !dbg !891
  %shl72 = shl i32 %add71, 3, !dbg !892
  store i32 %shl72, i32* %size, align 4, !dbg !889, !tbaa !587
  %87 = load i64, i64* %p64, align 8, !dbg !893, !tbaa !437
  %cmp73 = icmp eq i64 %87, 0, !dbg !895
  br i1 %cmp73, label %if.then.75, label %if.end.76, !dbg !896

if.then.75:                                       ; preds = %for.body.63
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.88, !dbg !897

if.end.76:                                        ; preds = %for.body.63
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !899, !tbaa !380
  %89 = load i32, i32* %i, align 4, !dbg !900, !tbaa !587
  %90 = load i32, i32* %size, align 4, !dbg !901, !tbaa !587
  %91 = load i64, i64* %p64, align 8, !dbg !902, !tbaa !437
  %92 = load i64, i64* %b, align 8, !dbg !903, !tbaa !437
  %93 = load i64, i64* %f, align 8, !dbg !904, !tbaa !437
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %89, i32 %90, i64 %91, i64 %92, i64 %93), !dbg !905
  %94 = load i64, i64* %b, align 8, !dbg !906, !tbaa !437
  %95 = load i32, i32* %size, align 4, !dbg !907, !tbaa !587
  %conv78 = zext i32 %95 to i64, !dbg !907
  %mul = mul i64 %94, %conv78, !dbg !908
  %96 = load i64, i64* %allocated_bytes, align 8, !dbg !909, !tbaa !437
  %add79 = add i64 %96, %mul, !dbg !909
  store i64 %add79, i64* %allocated_bytes, align 8, !dbg !909, !tbaa !437
  %97 = load i64, i64* %f, align 8, !dbg !910, !tbaa !437
  %98 = load i32, i32* %size, align 4, !dbg !911, !tbaa !587
  %conv80 = zext i32 %98 to i64, !dbg !911
  %mul81 = mul i64 %97, %conv80, !dbg !912
  %99 = load i64, i64* %available_bytes, align 8, !dbg !913, !tbaa !437
  %add82 = add i64 %99, %mul81, !dbg !913
  store i64 %add82, i64* %available_bytes, align 8, !dbg !913, !tbaa !437
  %100 = load i64, i64* %p64, align 8, !dbg !914, !tbaa !437
  %mul83 = mul i64 %100, 48, !dbg !915
  %101 = load i64, i64* %pool_header_bytes, align 8, !dbg !916, !tbaa !437
  %add84 = add i64 %101, %mul83, !dbg !916
  store i64 %add84, i64* %pool_header_bytes, align 8, !dbg !916, !tbaa !437
  %102 = load i64, i64* %p64, align 8, !dbg !917, !tbaa !437
  %103 = load i32, i32* %size, align 4, !dbg !918, !tbaa !587
  %conv85 = zext i32 %103 to i64, !dbg !918
  %rem = urem i64 4048, %conv85, !dbg !919
  %mul86 = mul i64 %102, %rem, !dbg !920
  %104 = load i64, i64* %quantization, align 8, !dbg !921, !tbaa !437
  %add87 = add i64 %104, %mul86, !dbg !921
  store i64 %add87, i64* %quantization, align 8, !dbg !921, !tbaa !437
  store i32 0, i32* %cleanup.dest.slot, !dbg !922
  br label %cleanup.88, !dbg !922

cleanup.88:                                       ; preds = %if.end.76, %if.then.75
  %105 = bitcast i32* %size to i8*, !dbg !923
  call void @llvm.lifetime.end(i64 4, i8* %105) #2, !dbg !923
  %106 = bitcast i64* %f to i8*, !dbg !923
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !923
  %107 = bitcast i64* %b to i8*, !dbg !923
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !923
  %108 = bitcast i64* %p64 to i8*, !dbg !923
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !923
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.88
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.92, 13
  br i1 %SwitchLeaf6, label %for.inc.94, label %NewDefault.4

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.cont.93

cleanup.cont.93:                                  ; preds = %NewDefault.4
  br label %for.inc.94, !dbg !924

for.inc.94:                                       ; preds = %LeafBlock.5, %cleanup.cont.93
  %109 = load i32, i32* %i, align 4, !dbg !925, !tbaa !587
  %inc95 = add i32 %109, 1, !dbg !925
  store i32 %inc95, i32* %i, align 4, !dbg !925, !tbaa !587
  br label %for.cond.60, !dbg !926

for.end.96:                                       ; preds = %for.cond.60
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !927, !tbaa !380
  %call97 = call i32 @fputc(i32 10, %struct._IO_FILE* %110), !dbg !928
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !929, !tbaa !380
  %112 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !930, !tbaa !437
  %call98 = call i64 @printone(%struct._IO_FILE* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i64 %112), !dbg !931
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !932, !tbaa !380
  %114 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !933, !tbaa !437
  %115 = load i64, i64* %narenas, align 8, !dbg !934, !tbaa !437
  %sub99 = sub i64 %114, %115, !dbg !935
  %call100 = call i64 @printone(%struct._IO_FILE* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %sub99), !dbg !936
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !937, !tbaa !380
  %117 = load i64, i64* @narenas_highwater, align 8, !dbg !938, !tbaa !437
  %call101 = call i64 @printone(%struct._IO_FILE* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i64 %117), !dbg !939
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !940, !tbaa !380
  %119 = load i64, i64* %narenas, align 8, !dbg !941, !tbaa !437
  %call102 = call i64 @printone(%struct._IO_FILE* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 %119), !dbg !942
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !943
  %120 = load i64, i64* %narenas, align 8, !dbg !944, !tbaa !437
  %call103 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i64 %120, i32 262144), !dbg !945
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !946, !tbaa !380
  %arraydecay104 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !947
  %122 = load i64, i64* %narenas, align 8, !dbg !948, !tbaa !437
  %mul105 = mul i64 %122, 262144, !dbg !949
  %call106 = call i64 @printone(%struct._IO_FILE* %121, i8* %arraydecay104, i64 %mul105), !dbg !950
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !951, !tbaa !380
  %call107 = call i32 @fputc(i32 10, %struct._IO_FILE* %123), !dbg !952
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !953, !tbaa !380
  %125 = load i64, i64* %allocated_bytes, align 8, !dbg !954, !tbaa !437
  %call108 = call i64 @printone(%struct._IO_FILE* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i64 %125), !dbg !955
  store i64 %call108, i64* %total, align 8, !dbg !956, !tbaa !437
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !957, !tbaa !380
  %127 = load i64, i64* %available_bytes, align 8, !dbg !958, !tbaa !437
  %call109 = call i64 @printone(%struct._IO_FILE* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i64 %127), !dbg !959
  %128 = load i64, i64* %total, align 8, !dbg !960, !tbaa !437
  %add110 = add i64 %128, %call109, !dbg !960
  store i64 %add110, i64* %total, align 8, !dbg !960, !tbaa !437
  %arraydecay111 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !961
  %129 = load i32, i32* %numfreepools, align 4, !dbg !962, !tbaa !587
  %call112 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay111, i64 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %129, i32 4096), !dbg !963
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !964, !tbaa !380
  %arraydecay113 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0, !dbg !965
  %131 = load i32, i32* %numfreepools, align 4, !dbg !966, !tbaa !587
  %conv114 = zext i32 %131 to i64, !dbg !967
  %mul115 = mul i64 %conv114, 4096, !dbg !968
  %call116 = call i64 @printone(%struct._IO_FILE* %130, i8* %arraydecay113, i64 %mul115), !dbg !969
  %132 = load i64, i64* %total, align 8, !dbg !970, !tbaa !437
  %add117 = add i64 %132, %call116, !dbg !970
  store i64 %add117, i64* %total, align 8, !dbg !970, !tbaa !437
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !971, !tbaa !380
  %134 = load i64, i64* %pool_header_bytes, align 8, !dbg !972, !tbaa !437
  %call118 = call i64 @printone(%struct._IO_FILE* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i64 %134), !dbg !973
  %135 = load i64, i64* %total, align 8, !dbg !974, !tbaa !437
  %add119 = add i64 %135, %call118, !dbg !974
  store i64 %add119, i64* %total, align 8, !dbg !974, !tbaa !437
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !975, !tbaa !380
  %137 = load i64, i64* %quantization, align 8, !dbg !976, !tbaa !437
  %call120 = call i64 @printone(%struct._IO_FILE* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 %137), !dbg !977
  %138 = load i64, i64* %total, align 8, !dbg !978, !tbaa !437
  %add121 = add i64 %138, %call120, !dbg !978
  store i64 %add121, i64* %total, align 8, !dbg !978, !tbaa !437
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !979, !tbaa !380
  %140 = load i64, i64* %arena_alignment, align 8, !dbg !980, !tbaa !437
  %call122 = call i64 @printone(%struct._IO_FILE* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i64 %140), !dbg !981
  %141 = load i64, i64* %total, align 8, !dbg !982, !tbaa !437
  %add123 = add i64 %141, %call122, !dbg !982
  store i64 %add123, i64* %total, align 8, !dbg !982, !tbaa !437
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !983, !tbaa !380
  %143 = load i64, i64* %total, align 8, !dbg !984, !tbaa !437
  %call124 = call i64 @printone(%struct._IO_FILE* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 %143), !dbg !985
  %144 = bitcast [128 x i8]* %buf to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 128, i8* %144) #2, !dbg !986
  %145 = bitcast i64* %total to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !986
  %146 = bitcast i64* %narenas to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !986
  %147 = bitcast i64* %quantization to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !986
  %148 = bitcast i64* %pool_header_bytes to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %148) #2, !dbg !986
  %149 = bitcast i64* %arena_alignment to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %149) #2, !dbg !986
  %150 = bitcast i32* %numfreepools to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 4, i8* %150) #2, !dbg !986
  %151 = bitcast i64* %available_bytes to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !986
  %152 = bitcast i64* %allocated_bytes to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !986
  %153 = bitcast [64 x i64]* %numfreeblocks to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 512, i8* %153) #2, !dbg !986
  %154 = bitcast [64 x i64]* %numblocks to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 512, i8* %154) #2, !dbg !986
  %155 = bitcast [64 x i64]* %numpools to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 512, i8* %155) #2, !dbg !986
  %156 = bitcast i32* %numclasses to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 4, i8* %156) #2, !dbg !986
  %157 = bitcast i32* %i to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 4, i8* %157) #2, !dbg !986
  ret void, !dbg !986
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
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !271, metadata !378), !dbg !987
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !272, metadata !378), !dbg !988
  %0 = load i64, i64* %size.addr, align 8, !dbg !989, !tbaa !437
  %cmp = icmp eq i64 %0, 0, !dbg !991
  br i1 %cmp, label %if.then, label %if.end, !dbg !992

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8, !dbg !993, !tbaa !437
  br label %if.end, !dbg !994

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %size.addr, align 8, !dbg !995, !tbaa !437
  %call = call noalias i8* @malloc(i64 %1) #2, !dbg !996
  ret i8* %call, !dbg !997
}

; Function Attrs: nounwind uwtable
define internal i8* @_PyMem_RawRealloc(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !275, metadata !378), !dbg !998
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !276, metadata !378), !dbg !999
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !277, metadata !378), !dbg !1000
  %0 = load i64, i64* %size.addr, align 8, !dbg !1001, !tbaa !437
  %cmp = icmp eq i64 %0, 0, !dbg !1003
  br i1 %cmp, label %if.then, label %if.end, !dbg !1004

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8, !dbg !1005, !tbaa !437
  br label %if.end, !dbg !1006

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !1007, !tbaa !380
  %2 = load i64, i64* %size.addr, align 8, !dbg !1008, !tbaa !437
  %call = call i8* @realloc(i8* %1, i64 %2) #2, !dbg !1009
  ret i8* %call, !dbg !1010
}

; Function Attrs: nounwind uwtable
define internal void @_PyMem_RawFree(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !280, metadata !378), !dbg !1011
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !281, metadata !378), !dbg !1012
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1013, !tbaa !380
  call void @free(i8* %0) #2, !dbg !1014
  ret void, !dbg !1015
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
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !284, metadata !378), !dbg !1016
  store i64 %nbytes, i64* %nbytes.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !285, metadata !378), !dbg !1017
  %0 = bitcast i8** %bp to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1018
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !286, metadata !378), !dbg !1019
  %1 = bitcast %struct.pool_header** %pool to i8*, !dbg !1020
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !287, metadata !378), !dbg !1021
  %2 = bitcast %struct.pool_header** %next to i8*, !dbg !1022
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1022
  call void @llvm.dbg.declare(metadata %struct.pool_header** %next, metadata !288, metadata !378), !dbg !1023
  %3 = bitcast i32* %size to i8*, !dbg !1024
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %size, metadata !289, metadata !378), !dbg !1025
  %4 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1026, !tbaa !437
  %inc = add i64 %4, 1, !dbg !1026
  store i64 %inc, i64* @_Py_AllocatedBlocks, align 8, !dbg !1026, !tbaa !437
  %5 = load i64, i64* %nbytes.addr, align 8, !dbg !1027, !tbaa !437
  %sub = sub i64 %5, 1, !dbg !1029
  %cmp = icmp ult i64 %sub, 512, !dbg !1030
  br i1 %cmp, label %if.then, label %if.end.96, !dbg !1031

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %nbytes.addr, align 8, !dbg !1032, !tbaa !437
  %sub1 = sub i64 %6, 1, !dbg !1034
  %conv = trunc i64 %sub1 to i32, !dbg !1035
  %shr = lshr i32 %conv, 3, !dbg !1036
  store i32 %shr, i32* %size, align 4, !dbg !1037, !tbaa !587
  %7 = load i32, i32* %size, align 4, !dbg !1038, !tbaa !587
  %8 = load i32, i32* %size, align 4, !dbg !1039, !tbaa !587
  %add = add i32 %7, %8, !dbg !1040
  %idxprom = zext i32 %add to i64, !dbg !1041
  %arrayidx = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom, !dbg !1041
  %9 = load %struct.pool_header*, %struct.pool_header** %arrayidx, align 8, !dbg !1041, !tbaa !380
  store %struct.pool_header* %9, %struct.pool_header** %pool, align 8, !dbg !1042, !tbaa !380
  %10 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1043, !tbaa !380
  %11 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1045, !tbaa !380
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i32 0, i32 2, !dbg !1046
  %12 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8, !dbg !1046, !tbaa !1047
  %cmp2 = icmp ne %struct.pool_header* %10, %12, !dbg !1048
  br i1 %cmp2, label %if.then.4, label %if.end.23, !dbg !1049

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1050, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %13, i32 0, i32 0, !dbg !1052
  %count = bitcast %union.anon* %ref to i32*, !dbg !1053
  %14 = load i32, i32* %count, align 4, !dbg !1054, !tbaa !587
  %inc5 = add i32 %14, 1, !dbg !1054
  store i32 %inc5, i32* %count, align 4, !dbg !1054, !tbaa !587
  %15 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1055, !tbaa !380
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %15, i32 0, i32 1, !dbg !1056
  %16 = load i8*, i8** %freeblock, align 8, !dbg !1056, !tbaa !1057
  store i8* %16, i8** %bp, align 8, !dbg !1058, !tbaa !380
  %17 = load i8*, i8** %bp, align 8, !dbg !1059, !tbaa !380
  %18 = bitcast i8* %17 to i8**, !dbg !1061
  %19 = load i8*, i8** %18, align 8, !dbg !1062, !tbaa !380
  %20 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1063, !tbaa !380
  %freeblock6 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %20, i32 0, i32 1, !dbg !1064
  store i8* %19, i8** %freeblock6, align 8, !dbg !1065, !tbaa !1057
  %cmp7 = icmp ne i8* %19, null, !dbg !1066
  br i1 %cmp7, label %if.then.9, label %if.end, !dbg !1067

if.then.9:                                        ; preds = %if.then.4
  %21 = load i8*, i8** %bp, align 8, !dbg !1068, !tbaa !380
  store i8* %21, i8** %retval, !dbg !1070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1070

if.end:                                           ; preds = %if.then.4
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1071, !tbaa !380
  %nextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %22, i32 0, i32 6, !dbg !1073
  %23 = load i32, i32* %nextoffset, align 4, !dbg !1073, !tbaa !1074
  %24 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1075, !tbaa !380
  %maxnextoffset = getelementptr inbounds %struct.pool_header, %struct.pool_header* %24, i32 0, i32 7, !dbg !1076
  %25 = load i32, i32* %maxnextoffset, align 4, !dbg !1076, !tbaa !1077
  %cmp10 = icmp ule i32 %23, %25, !dbg !1078
  br i1 %cmp10, label %if.then.12, label %if.end.19, !dbg !1079

if.then.12:                                       ; preds = %if.end
  %26 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1080, !tbaa !380
  %27 = bitcast %struct.pool_header* %26 to i8*, !dbg !1082
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1083, !tbaa !380
  %nextoffset13 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 6, !dbg !1084
  %29 = load i32, i32* %nextoffset13, align 4, !dbg !1084, !tbaa !1074
  %idx.ext = zext i32 %29 to i64, !dbg !1085
  %add.ptr = getelementptr i8, i8* %27, i64 %idx.ext, !dbg !1085
  %30 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1086, !tbaa !380
  %freeblock14 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %30, i32 0, i32 1, !dbg !1087
  store i8* %add.ptr, i8** %freeblock14, align 8, !dbg !1088, !tbaa !1057
  %31 = load i32, i32* %size, align 4, !dbg !1089, !tbaa !587
  %add15 = add i32 %31, 1, !dbg !1090
  %shl = shl i32 %add15, 3, !dbg !1091
  %32 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1092, !tbaa !380
  %nextoffset16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %32, i32 0, i32 6, !dbg !1093
  %33 = load i32, i32* %nextoffset16, align 4, !dbg !1094, !tbaa !1074
  %add17 = add i32 %33, %shl, !dbg !1094
  store i32 %add17, i32* %nextoffset16, align 4, !dbg !1094, !tbaa !1074
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1095, !tbaa !380
  %freeblock18 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 1, !dbg !1096
  %35 = load i8*, i8** %freeblock18, align 8, !dbg !1096, !tbaa !1057
  %36 = bitcast i8* %35 to i8**, !dbg !1097
  store i8* null, i8** %36, align 8, !dbg !1098, !tbaa !380
  %37 = load i8*, i8** %bp, align 8, !dbg !1099, !tbaa !380
  store i8* %37, i8** %retval, !dbg !1100
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1100

if.end.19:                                        ; preds = %if.end
  %38 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1101, !tbaa !380
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %38, i32 0, i32 2, !dbg !1102
  %39 = load %struct.pool_header*, %struct.pool_header** %nextpool20, align 8, !dbg !1102, !tbaa !1047
  store %struct.pool_header* %39, %struct.pool_header** %next, align 8, !dbg !1103, !tbaa !380
  %40 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1104, !tbaa !380
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %40, i32 0, i32 3, !dbg !1105
  %41 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !1105, !tbaa !1106
  store %struct.pool_header* %41, %struct.pool_header** %pool, align 8, !dbg !1107, !tbaa !380
  %42 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1108, !tbaa !380
  %43 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1109, !tbaa !380
  %prevpool21 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %43, i32 0, i32 3, !dbg !1110
  store %struct.pool_header* %42, %struct.pool_header** %prevpool21, align 8, !dbg !1111, !tbaa !1106
  %44 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1112, !tbaa !380
  %45 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1113, !tbaa !380
  %nextpool22 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %45, i32 0, i32 2, !dbg !1114
  store %struct.pool_header* %44, %struct.pool_header** %nextpool22, align 8, !dbg !1115, !tbaa !1047
  %46 = load i8*, i8** %bp, align 8, !dbg !1116, !tbaa !380
  store i8* %46, i8** %retval, !dbg !1117
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1117

if.end.23:                                        ; preds = %if.then
  %47 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1118, !tbaa !380
  %cmp24 = icmp eq %struct.arena_object* %47, null, !dbg !1120
  br i1 %cmp24, label %if.then.26, label %if.end.31, !dbg !1121

if.then.26:                                       ; preds = %if.end.23
  %call = call %struct.arena_object* @new_arena(), !dbg !1122
  store %struct.arena_object* %call, %struct.arena_object** @usable_arenas, align 8, !dbg !1124, !tbaa !380
  %48 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1125, !tbaa !380
  %cmp27 = icmp eq %struct.arena_object* %48, null, !dbg !1127
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !1128

if.then.29:                                       ; preds = %if.then.26
  br label %redirect, !dbg !1129

if.end.30:                                        ; preds = %if.then.26
  %49 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1131, !tbaa !380
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 6, !dbg !1132
  store %struct.arena_object* null, %struct.arena_object** %prevarena, align 8, !dbg !1133, !tbaa !1134
  %50 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1135, !tbaa !380
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %50, i32 0, i32 5, !dbg !1136
  store %struct.arena_object* null, %struct.arena_object** %nextarena, align 8, !dbg !1137, !tbaa !1138
  br label %if.end.31, !dbg !1139

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %51 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1140, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %51, i32 0, i32 4, !dbg !1141
  %52 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8, !dbg !1141, !tbaa !1142
  store %struct.pool_header* %52, %struct.pool_header** %pool, align 8, !dbg !1143, !tbaa !380
  %53 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1144, !tbaa !380
  %cmp32 = icmp ne %struct.pool_header* %53, null, !dbg !1146
  br i1 %cmp32, label %if.then.34, label %if.end.78, !dbg !1147

if.then.34:                                       ; preds = %if.end.31
  %54 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1148, !tbaa !380
  %nextpool35 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %54, i32 0, i32 2, !dbg !1150
  %55 = load %struct.pool_header*, %struct.pool_header** %nextpool35, align 8, !dbg !1150, !tbaa !1047
  %56 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1151, !tbaa !380
  %freepools36 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %56, i32 0, i32 4, !dbg !1152
  store %struct.pool_header* %55, %struct.pool_header** %freepools36, align 8, !dbg !1153, !tbaa !1142
  %57 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1154, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 2, !dbg !1155
  %58 = load i32, i32* %nfreepools, align 4, !dbg !1156, !tbaa !790
  %dec = add i32 %58, -1, !dbg !1156
  store i32 %dec, i32* %nfreepools, align 4, !dbg !1156, !tbaa !790
  %59 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1157, !tbaa !380
  %nfreepools37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 2, !dbg !1159
  %60 = load i32, i32* %nfreepools37, align 4, !dbg !1159, !tbaa !790
  %cmp38 = icmp eq i32 %60, 0, !dbg !1160
  br i1 %cmp38, label %if.then.40, label %if.else, !dbg !1161

if.then.40:                                       ; preds = %if.then.34
  %61 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1162, !tbaa !380
  %nextarena41 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %61, i32 0, i32 5, !dbg !1164
  %62 = load %struct.arena_object*, %struct.arena_object** %nextarena41, align 8, !dbg !1164, !tbaa !1138
  store %struct.arena_object* %62, %struct.arena_object** @usable_arenas, align 8, !dbg !1165, !tbaa !380
  %63 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1166, !tbaa !380
  %cmp42 = icmp ne %struct.arena_object* %63, null, !dbg !1168
  br i1 %cmp42, label %if.then.44, label %if.end.46, !dbg !1169

if.then.44:                                       ; preds = %if.then.40
  %64 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1170, !tbaa !380
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %64, i32 0, i32 6, !dbg !1172
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !1173, !tbaa !1134
  br label %if.end.46, !dbg !1174

if.end.46:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.47, !dbg !1175

if.else:                                          ; preds = %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.end.46
  br label %init_pool, !dbg !1176

init_pool:                                        ; preds = %if.end.95, %if.end.47
  %65 = load i32, i32* %size, align 4, !dbg !1177, !tbaa !587
  %66 = load i32, i32* %size, align 4, !dbg !1178, !tbaa !587
  %add48 = add i32 %65, %66, !dbg !1179
  %idxprom49 = zext i32 %add48 to i64, !dbg !1180
  %arrayidx50 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom49, !dbg !1180
  %67 = load %struct.pool_header*, %struct.pool_header** %arrayidx50, align 8, !dbg !1180, !tbaa !380
  store %struct.pool_header* %67, %struct.pool_header** %next, align 8, !dbg !1181, !tbaa !380
  %68 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1182, !tbaa !380
  %69 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1183, !tbaa !380
  %nextpool51 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %69, i32 0, i32 2, !dbg !1184
  store %struct.pool_header* %68, %struct.pool_header** %nextpool51, align 8, !dbg !1185, !tbaa !1047
  %70 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1186, !tbaa !380
  %71 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1187, !tbaa !380
  %prevpool52 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %71, i32 0, i32 3, !dbg !1188
  store %struct.pool_header* %70, %struct.pool_header** %prevpool52, align 8, !dbg !1189, !tbaa !1106
  %72 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1190, !tbaa !380
  %73 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1191, !tbaa !380
  %nextpool53 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %73, i32 0, i32 2, !dbg !1192
  store %struct.pool_header* %72, %struct.pool_header** %nextpool53, align 8, !dbg !1193, !tbaa !1047
  %74 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1194, !tbaa !380
  %75 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1195, !tbaa !380
  %prevpool54 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %75, i32 0, i32 3, !dbg !1196
  store %struct.pool_header* %74, %struct.pool_header** %prevpool54, align 8, !dbg !1197, !tbaa !1106
  %76 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1198, !tbaa !380
  %ref55 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %76, i32 0, i32 0, !dbg !1199
  %count56 = bitcast %union.anon* %ref55 to i32*, !dbg !1200
  store i32 1, i32* %count56, align 4, !dbg !1201, !tbaa !587
  %77 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1202, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %77, i32 0, i32 5, !dbg !1204
  %78 = load i32, i32* %szidx, align 4, !dbg !1204, !tbaa !819
  %79 = load i32, i32* %size, align 4, !dbg !1205, !tbaa !587
  %cmp57 = icmp eq i32 %78, %79, !dbg !1206
  br i1 %cmp57, label %if.then.59, label %if.end.62, !dbg !1207

if.then.59:                                       ; preds = %init_pool
  %80 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1208, !tbaa !380
  %freeblock60 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %80, i32 0, i32 1, !dbg !1210
  %81 = load i8*, i8** %freeblock60, align 8, !dbg !1210, !tbaa !1057
  store i8* %81, i8** %bp, align 8, !dbg !1211, !tbaa !380
  %82 = load i8*, i8** %bp, align 8, !dbg !1212, !tbaa !380
  %83 = bitcast i8* %82 to i8**, !dbg !1213
  %84 = load i8*, i8** %83, align 8, !dbg !1214, !tbaa !380
  %85 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1215, !tbaa !380
  %freeblock61 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %85, i32 0, i32 1, !dbg !1216
  store i8* %84, i8** %freeblock61, align 8, !dbg !1217, !tbaa !1057
  %86 = load i8*, i8** %bp, align 8, !dbg !1218, !tbaa !380
  store i8* %86, i8** %retval, !dbg !1219
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1219

if.end.62:                                        ; preds = %init_pool
  %87 = load i32, i32* %size, align 4, !dbg !1220, !tbaa !587
  %88 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1221, !tbaa !380
  %szidx63 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %88, i32 0, i32 5, !dbg !1222
  store i32 %87, i32* %szidx63, align 4, !dbg !1223, !tbaa !819
  %89 = load i32, i32* %size, align 4, !dbg !1224, !tbaa !587
  %add64 = add i32 %89, 1, !dbg !1225
  %shl65 = shl i32 %add64, 3, !dbg !1226
  store i32 %shl65, i32* %size, align 4, !dbg !1227, !tbaa !587
  %90 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1228, !tbaa !380
  %91 = bitcast %struct.pool_header* %90 to i8*, !dbg !1229
  %add.ptr66 = getelementptr i8, i8* %91, i64 48, !dbg !1230
  store i8* %add.ptr66, i8** %bp, align 8, !dbg !1231, !tbaa !380
  %92 = load i32, i32* %size, align 4, !dbg !1232, !tbaa !587
  %shl67 = shl i32 %92, 1, !dbg !1233
  %conv68 = zext i32 %shl67 to i64, !dbg !1234
  %add69 = add i64 48, %conv68, !dbg !1235
  %conv70 = trunc i64 %add69 to i32, !dbg !1236
  %93 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1237, !tbaa !380
  %nextoffset71 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %93, i32 0, i32 6, !dbg !1238
  store i32 %conv70, i32* %nextoffset71, align 4, !dbg !1239, !tbaa !1074
  %94 = load i32, i32* %size, align 4, !dbg !1240, !tbaa !587
  %sub72 = sub i32 4096, %94, !dbg !1241
  %95 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1242, !tbaa !380
  %maxnextoffset73 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %95, i32 0, i32 7, !dbg !1243
  store i32 %sub72, i32* %maxnextoffset73, align 4, !dbg !1244, !tbaa !1077
  %96 = load i8*, i8** %bp, align 8, !dbg !1245, !tbaa !380
  %97 = load i32, i32* %size, align 4, !dbg !1246, !tbaa !587
  %idx.ext74 = zext i32 %97 to i64, !dbg !1247
  %add.ptr75 = getelementptr i8, i8* %96, i64 %idx.ext74, !dbg !1247
  %98 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1248, !tbaa !380
  %freeblock76 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %98, i32 0, i32 1, !dbg !1249
  store i8* %add.ptr75, i8** %freeblock76, align 8, !dbg !1250, !tbaa !1057
  %99 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1251, !tbaa !380
  %freeblock77 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %99, i32 0, i32 1, !dbg !1252
  %100 = load i8*, i8** %freeblock77, align 8, !dbg !1252, !tbaa !1057
  %101 = bitcast i8* %100 to i8**, !dbg !1253
  store i8* null, i8** %101, align 8, !dbg !1254, !tbaa !380
  %102 = load i8*, i8** %bp, align 8, !dbg !1255, !tbaa !380
  store i8* %102, i8** %retval, !dbg !1256
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1256

if.end.78:                                        ; preds = %if.end.31
  %103 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1257, !tbaa !380
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %103, i32 0, i32 1, !dbg !1258
  %104 = load i8*, i8** %pool_address, align 8, !dbg !1258, !tbaa !807
  %105 = bitcast i8* %104 to %struct.pool_header*, !dbg !1259
  store %struct.pool_header* %105, %struct.pool_header** %pool, align 8, !dbg !1260, !tbaa !380
  %106 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1261, !tbaa !380
  %107 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1262, !tbaa !380
  %sub.ptr.lhs.cast = ptrtoint %struct.arena_object* %106 to i64, !dbg !1263
  %sub.ptr.rhs.cast = ptrtoint %struct.arena_object* %107 to i64, !dbg !1263
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1263
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48, !dbg !1263
  %conv79 = trunc i64 %sub.ptr.div to i32, !dbg !1261
  %108 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1264, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %108, i32 0, i32 4, !dbg !1265
  store i32 %conv79, i32* %arenaindex, align 4, !dbg !1266, !tbaa !1267
  %109 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1268, !tbaa !380
  %szidx80 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %109, i32 0, i32 5, !dbg !1269
  store i32 65535, i32* %szidx80, align 4, !dbg !1270, !tbaa !819
  %110 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1271, !tbaa !380
  %pool_address81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %110, i32 0, i32 1, !dbg !1272
  %111 = load i8*, i8** %pool_address81, align 8, !dbg !1273, !tbaa !807
  %add.ptr82 = getelementptr i8, i8* %111, i64 4096, !dbg !1273
  store i8* %add.ptr82, i8** %pool_address81, align 8, !dbg !1273, !tbaa !807
  %112 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1274, !tbaa !380
  %nfreepools83 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 2, !dbg !1275
  %113 = load i32, i32* %nfreepools83, align 4, !dbg !1276, !tbaa !790
  %dec84 = add i32 %113, -1, !dbg !1276
  store i32 %dec84, i32* %nfreepools83, align 4, !dbg !1276, !tbaa !790
  %114 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1277, !tbaa !380
  %nfreepools85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %114, i32 0, i32 2, !dbg !1279
  %115 = load i32, i32* %nfreepools85, align 4, !dbg !1279, !tbaa !790
  %cmp86 = icmp eq i32 %115, 0, !dbg !1280
  br i1 %cmp86, label %if.then.88, label %if.end.95, !dbg !1281

if.then.88:                                       ; preds = %if.end.78
  %116 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1282, !tbaa !380
  %nextarena89 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %116, i32 0, i32 5, !dbg !1284
  %117 = load %struct.arena_object*, %struct.arena_object** %nextarena89, align 8, !dbg !1284, !tbaa !1138
  store %struct.arena_object* %117, %struct.arena_object** @usable_arenas, align 8, !dbg !1285, !tbaa !380
  %118 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1286, !tbaa !380
  %cmp90 = icmp ne %struct.arena_object* %118, null, !dbg !1288
  br i1 %cmp90, label %if.then.92, label %if.end.94, !dbg !1289

if.then.92:                                       ; preds = %if.then.88
  %119 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1290, !tbaa !380
  %prevarena93 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %119, i32 0, i32 6, !dbg !1292
  store %struct.arena_object* null, %struct.arena_object** %prevarena93, align 8, !dbg !1293, !tbaa !1134
  br label %if.end.94, !dbg !1294

if.end.94:                                        ; preds = %if.then.92, %if.then.88
  br label %if.end.95, !dbg !1295

if.end.95:                                        ; preds = %if.end.94, %if.end.78
  br label %init_pool, !dbg !1296

if.end.96:                                        ; preds = %entry
  br label %redirect, !dbg !1297

redirect:                                         ; preds = %if.end.96, %if.then.29
  %120 = bitcast i8** %result to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %120) #2, !dbg !1299
  call void @llvm.dbg.declare(metadata i8** %result, metadata !290, metadata !378), !dbg !1300
  %121 = load i64, i64* %nbytes.addr, align 8, !dbg !1301, !tbaa !437
  %call97 = call i8* @PyMem_RawMalloc(i64 %121), !dbg !1302
  store i8* %call97, i8** %result, align 8, !dbg !1300, !tbaa !380
  %122 = load i8*, i8** %result, align 8, !dbg !1303, !tbaa !380
  %tobool = icmp ne i8* %122, null, !dbg !1303
  br i1 %tobool, label %if.end.100, label %if.then.98, !dbg !1305

if.then.98:                                       ; preds = %redirect
  %123 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1306, !tbaa !437
  %dec99 = add i64 %123, -1, !dbg !1306
  store i64 %dec99, i64* @_Py_AllocatedBlocks, align 8, !dbg !1306, !tbaa !437
  br label %if.end.100, !dbg !1307

if.end.100:                                       ; preds = %if.then.98, %redirect
  %124 = load i8*, i8** %result, align 8, !dbg !1308, !tbaa !380
  store i8* %124, i8** %retval, !dbg !1309
  store i32 1, i32* %cleanup.dest.slot
  %125 = bitcast i8** %result to i8*, !dbg !1310
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1310
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.end.62, %if.then.59, %if.end.19, %if.then.12, %if.then.9
  %126 = bitcast i32* %size to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 4, i8* %126) #2, !dbg !1311
  %127 = bitcast %struct.pool_header** %next to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !1311
  %128 = bitcast %struct.pool_header** %pool to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !1311
  %129 = bitcast i8** %bp to i8*, !dbg !1311
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !1311
  %130 = load i8*, i8** %retval, !dbg !1311
  ret i8* %130, !dbg !1311
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
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !306, metadata !378), !dbg !1312
  store i8* %p, i8** %p.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !307, metadata !378), !dbg !1313
  store i64 %nbytes, i64* %nbytes.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !308, metadata !378), !dbg !1314
  %0 = bitcast i8** %bp to i8*, !dbg !1315
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !309, metadata !378), !dbg !1316
  %1 = bitcast %struct.pool_header** %pool to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1317
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !310, metadata !378), !dbg !1318
  %2 = bitcast i64* %size to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1319
  call void @llvm.dbg.declare(metadata i64* %size, metadata !311, metadata !378), !dbg !1320
  %3 = bitcast i32* %arenaindex_temp to i8*, !dbg !1321
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %arenaindex_temp, metadata !312, metadata !378), !dbg !1322
  %4 = load i8*, i8** %p.addr, align 8, !dbg !1323, !tbaa !380
  %cmp = icmp eq i8* %4, null, !dbg !1325
  br i1 %cmp, label %if.then, label %if.end, !dbg !1326

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %ctx.addr, align 8, !dbg !1327, !tbaa !380
  %6 = load i64, i64* %nbytes.addr, align 8, !dbg !1328, !tbaa !437
  %call = call i8* @_PyObject_Malloc(i8* %5, i64 %6), !dbg !1329
  store i8* %call, i8** %retval, !dbg !1330
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1330

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %p.addr, align 8, !dbg !1331, !tbaa !380
  %8 = ptrtoint i8* %7 to i64, !dbg !1332
  %and = and i64 %8, -4096, !dbg !1333
  %9 = inttoptr i64 %and to i8*, !dbg !1334
  %10 = bitcast i8* %9 to %struct.pool_header*, !dbg !1335
  store %struct.pool_header* %10, %struct.pool_header** %pool, align 8, !dbg !1336, !tbaa !380
  %11 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1337, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %11, i32 0, i32 4, !dbg !1339
  %12 = load i32, i32* %arenaindex, align 4, !dbg !1339, !tbaa !1267
  store i32 %12, i32* %arenaindex_temp, align 4, !dbg !1340, !tbaa !587
  %13 = load i32, i32* @maxarenas, align 4, !dbg !1341, !tbaa !587
  %cmp1 = icmp ult i32 %12, %13, !dbg !1342
  br i1 %cmp1, label %land.lhs.true, label %if.end.23, !dbg !1343

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %p.addr, align 8, !dbg !1344, !tbaa !380
  %15 = ptrtoint i8* %14 to i64, !dbg !1346
  %16 = load i32, i32* %arenaindex_temp, align 4, !dbg !1347, !tbaa !587
  %idxprom = zext i32 %16 to i64, !dbg !1348
  %17 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1348, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %17, i64 %idxprom, !dbg !1348
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1349
  %18 = load i64, i64* %address, align 8, !dbg !1349, !tbaa !777
  %sub = sub i64 %15, %18, !dbg !1350
  %cmp2 = icmp ult i64 %sub, 262144, !dbg !1351
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.23, !dbg !1352

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %19 = load i32, i32* %arenaindex_temp, align 4, !dbg !1353, !tbaa !587
  %idxprom4 = zext i32 %19 to i64, !dbg !1355
  %20 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1355, !tbaa !380
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %20, i64 %idxprom4, !dbg !1355
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0, !dbg !1356
  %21 = load i64, i64* %address6, align 8, !dbg !1356, !tbaa !777
  %cmp7 = icmp ne i64 %21, 0, !dbg !1357
  br i1 %cmp7, label %if.then.8, label %if.end.23, !dbg !1358

if.then.8:                                        ; preds = %land.lhs.true.3
  %22 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1359, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %22, i32 0, i32 5, !dbg !1361
  %23 = load i32, i32* %szidx, align 4, !dbg !1361, !tbaa !819
  %add = add i32 %23, 1, !dbg !1362
  %shl = shl i32 %add, 3, !dbg !1363
  %conv = zext i32 %shl to i64, !dbg !1364
  store i64 %conv, i64* %size, align 8, !dbg !1365, !tbaa !437
  %24 = load i64, i64* %nbytes.addr, align 8, !dbg !1366, !tbaa !437
  %25 = load i64, i64* %size, align 8, !dbg !1368, !tbaa !437
  %cmp9 = icmp ule i64 %24, %25, !dbg !1369
  br i1 %cmp9, label %if.then.11, label %if.end.17, !dbg !1370

if.then.11:                                       ; preds = %if.then.8
  %26 = load i64, i64* %nbytes.addr, align 8, !dbg !1371, !tbaa !437
  %mul = mul i64 4, %26, !dbg !1374
  %27 = load i64, i64* %size, align 8, !dbg !1375, !tbaa !437
  %mul12 = mul i64 3, %27, !dbg !1376
  %cmp13 = icmp ugt i64 %mul, %mul12, !dbg !1377
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !1378

if.then.15:                                       ; preds = %if.then.11
  %28 = load i8*, i8** %p.addr, align 8, !dbg !1379, !tbaa !380
  store i8* %28, i8** %retval, !dbg !1381
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1381

if.end.16:                                        ; preds = %if.then.11
  %29 = load i64, i64* %nbytes.addr, align 8, !dbg !1382, !tbaa !437
  store i64 %29, i64* %size, align 8, !dbg !1383, !tbaa !437
  br label %if.end.17, !dbg !1384

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  %30 = load i8*, i8** %ctx.addr, align 8, !dbg !1385, !tbaa !380
  %31 = load i64, i64* %nbytes.addr, align 8, !dbg !1386, !tbaa !437
  %call18 = call i8* @_PyObject_Malloc(i8* %30, i64 %31), !dbg !1387
  store i8* %call18, i8** %bp, align 8, !dbg !1388, !tbaa !380
  %32 = load i8*, i8** %bp, align 8, !dbg !1389, !tbaa !380
  %cmp19 = icmp ne i8* %32, null, !dbg !1391
  br i1 %cmp19, label %if.then.21, label %if.end.22, !dbg !1392

if.then.21:                                       ; preds = %if.end.17
  %33 = load i8*, i8** %bp, align 8, !dbg !1393, !tbaa !380
  %34 = load i8*, i8** %p.addr, align 8, !dbg !1395, !tbaa !380
  %35 = load i64, i64* %size, align 8, !dbg !1396, !tbaa !437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %35, i32 1, i1 false), !dbg !1397
  %36 = load i8*, i8** %ctx.addr, align 8, !dbg !1398, !tbaa !380
  %37 = load i8*, i8** %p.addr, align 8, !dbg !1399, !tbaa !380
  call void @_PyObject_Free(i8* %36, i8* %37), !dbg !1400
  br label %if.end.22, !dbg !1401

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  %38 = load i8*, i8** %bp, align 8, !dbg !1402, !tbaa !380
  store i8* %38, i8** %retval, !dbg !1403
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1403

if.end.23:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %39 = load i64, i64* %nbytes.addr, align 8, !dbg !1404, !tbaa !437
  %tobool = icmp ne i64 %39, 0, !dbg !1404
  br i1 %tobool, label %if.then.24, label %if.end.26, !dbg !1406

if.then.24:                                       ; preds = %if.end.23
  %40 = load i8*, i8** %p.addr, align 8, !dbg !1407, !tbaa !380
  %41 = load i64, i64* %nbytes.addr, align 8, !dbg !1408, !tbaa !437
  %call25 = call i8* @PyMem_RawRealloc(i8* %40, i64 %41), !dbg !1409
  store i8* %call25, i8** %retval, !dbg !1410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1410

if.end.26:                                        ; preds = %if.end.23
  %42 = load i8*, i8** %p.addr, align 8, !dbg !1411, !tbaa !380
  %call27 = call i8* @PyMem_RawRealloc(i8* %42, i64 1), !dbg !1412
  store i8* %call27, i8** %bp, align 8, !dbg !1413, !tbaa !380
  %43 = load i8*, i8** %bp, align 8, !dbg !1414, !tbaa !380
  %tobool28 = icmp ne i8* %43, null, !dbg !1414
  br i1 %tobool28, label %cond.true, label %cond.false, !dbg !1414

cond.true:                                        ; preds = %if.end.26
  %44 = load i8*, i8** %bp, align 8, !dbg !1415, !tbaa !380
  br label %cond.end, !dbg !1414

cond.false:                                       ; preds = %if.end.26
  %45 = load i8*, i8** %p.addr, align 8, !dbg !1417, !tbaa !380
  br label %cond.end, !dbg !1414

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %44, %cond.true ], [ %45, %cond.false ], !dbg !1414
  store i8* %cond, i8** %retval, !dbg !1419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1422

cleanup:                                          ; preds = %cond.end, %if.then.24, %if.end.22, %if.then.15, %if.then
  %46 = bitcast i32* %arenaindex_temp to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 4, i8* %46) #2, !dbg !1423
  %47 = bitcast i64* %size to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1423
  %48 = bitcast %struct.pool_header** %pool to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1423
  %49 = bitcast i8** %bp to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1423
  %50 = load i8*, i8** %retval, !dbg !1423
  ret i8* %50, !dbg !1423
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
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !315, metadata !378), !dbg !1424
  store i8* %p, i8** %p.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !316, metadata !378), !dbg !1425
  %0 = bitcast %struct.pool_header** %pool to i8*, !dbg !1426
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1426
  call void @llvm.dbg.declare(metadata %struct.pool_header** %pool, metadata !317, metadata !378), !dbg !1427
  %1 = bitcast i8** %lastfree to i8*, !dbg !1428
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1428
  call void @llvm.dbg.declare(metadata i8** %lastfree, metadata !318, metadata !378), !dbg !1429
  %2 = bitcast %struct.pool_header** %next to i8*, !dbg !1430
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1430
  call void @llvm.dbg.declare(metadata %struct.pool_header** %next, metadata !319, metadata !378), !dbg !1431
  %3 = bitcast %struct.pool_header** %prev to i8*, !dbg !1430
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1430
  call void @llvm.dbg.declare(metadata %struct.pool_header** %prev, metadata !320, metadata !378), !dbg !1432
  %4 = bitcast i32* %size to i8*, !dbg !1433
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %size, metadata !321, metadata !378), !dbg !1434
  %5 = bitcast i32* %arenaindex_temp to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %arenaindex_temp, metadata !322, metadata !378), !dbg !1436
  %6 = load i8*, i8** %p.addr, align 8, !dbg !1437, !tbaa !380
  %cmp = icmp eq i8* %6, null, !dbg !1439
  br i1 %cmp, label %if.then, label %if.end, !dbg !1440

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.101, !dbg !1441

if.end:                                           ; preds = %entry
  %7 = load i64, i64* @_Py_AllocatedBlocks, align 8, !dbg !1442, !tbaa !437
  %dec = add i64 %7, -1, !dbg !1442
  store i64 %dec, i64* @_Py_AllocatedBlocks, align 8, !dbg !1442, !tbaa !437
  %8 = load i8*, i8** %p.addr, align 8, !dbg !1443, !tbaa !380
  %9 = ptrtoint i8* %8 to i64, !dbg !1444
  %and = and i64 %9, -4096, !dbg !1445
  %10 = inttoptr i64 %and to i8*, !dbg !1446
  %11 = bitcast i8* %10 to %struct.pool_header*, !dbg !1447
  store %struct.pool_header* %11, %struct.pool_header** %pool, align 8, !dbg !1448, !tbaa !380
  %12 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1449, !tbaa !380
  %arenaindex = getelementptr inbounds %struct.pool_header, %struct.pool_header* %12, i32 0, i32 4, !dbg !1450
  %13 = load i32, i32* %arenaindex, align 4, !dbg !1450, !tbaa !1267
  store i32 %13, i32* %arenaindex_temp, align 4, !dbg !1451, !tbaa !587
  %14 = load i32, i32* @maxarenas, align 4, !dbg !1452, !tbaa !587
  %cmp1 = icmp ult i32 %13, %14, !dbg !1453
  br i1 %cmp1, label %land.lhs.true, label %if.end.100, !dbg !1454

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %p.addr, align 8, !dbg !1455, !tbaa !380
  %16 = ptrtoint i8* %15 to i64, !dbg !1457
  %17 = load i32, i32* %arenaindex_temp, align 4, !dbg !1458, !tbaa !587
  %idxprom = zext i32 %17 to i64, !dbg !1459
  %18 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1459, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %18, i64 %idxprom, !dbg !1459
  %address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1460
  %19 = load i64, i64* %address, align 8, !dbg !1460, !tbaa !777
  %sub = sub i64 %16, %19, !dbg !1461
  %cmp2 = icmp ult i64 %sub, 262144, !dbg !1462
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.100, !dbg !1463

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* %arenaindex_temp, align 4, !dbg !1464, !tbaa !587
  %idxprom4 = zext i32 %20 to i64, !dbg !1466
  %21 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1466, !tbaa !380
  %arrayidx5 = getelementptr %struct.arena_object, %struct.arena_object* %21, i64 %idxprom4, !dbg !1466
  %address6 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx5, i32 0, i32 0, !dbg !1467
  %22 = load i64, i64* %address6, align 8, !dbg !1467, !tbaa !777
  %cmp7 = icmp ne i64 %22, 0, !dbg !1468
  br i1 %cmp7, label %if.then.8, label %if.end.100, !dbg !1469

if.then.8:                                        ; preds = %land.lhs.true.3
  %23 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1470, !tbaa !380
  %freeblock = getelementptr inbounds %struct.pool_header, %struct.pool_header* %23, i32 0, i32 1, !dbg !1471
  %24 = load i8*, i8** %freeblock, align 8, !dbg !1471, !tbaa !1057
  store i8* %24, i8** %lastfree, align 8, !dbg !1472, !tbaa !380
  %25 = load i8*, i8** %p.addr, align 8, !dbg !1473, !tbaa !380
  %26 = bitcast i8* %25 to i8**, !dbg !1474
  store i8* %24, i8** %26, align 8, !dbg !1475, !tbaa !380
  %27 = load i8*, i8** %p.addr, align 8, !dbg !1476, !tbaa !380
  %28 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1477, !tbaa !380
  %freeblock9 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %28, i32 0, i32 1, !dbg !1478
  store i8* %27, i8** %freeblock9, align 8, !dbg !1479, !tbaa !1057
  %29 = load i8*, i8** %lastfree, align 8, !dbg !1480, !tbaa !380
  %tobool = icmp ne i8* %29, null, !dbg !1480
  br i1 %tobool, label %if.then.10, label %if.end.89, !dbg !1481

if.then.10:                                       ; preds = %if.then.8
  %30 = bitcast %struct.arena_object** %ao to i8*, !dbg !1482
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.arena_object** %ao, metadata !323, metadata !378), !dbg !1483
  %31 = bitcast i32* %nf to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 4, i8* %31) #2, !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %nf, metadata !328, metadata !378), !dbg !1485
  %32 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1486, !tbaa !380
  %ref = getelementptr inbounds %struct.pool_header, %struct.pool_header* %32, i32 0, i32 0, !dbg !1488
  %count = bitcast %union.anon* %ref to i32*, !dbg !1489
  %33 = load i32, i32* %count, align 4, !dbg !1490, !tbaa !587
  %dec11 = add i32 %33, -1, !dbg !1490
  store i32 %dec11, i32* %count, align 4, !dbg !1490, !tbaa !587
  %cmp12 = icmp ne i32 %dec11, 0, !dbg !1491
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1492

if.then.13:                                       ; preds = %if.then.10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1493

if.end.14:                                        ; preds = %if.then.10
  %34 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1495, !tbaa !380
  %nextpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %34, i32 0, i32 2, !dbg !1496
  %35 = load %struct.pool_header*, %struct.pool_header** %nextpool, align 8, !dbg !1496, !tbaa !1047
  store %struct.pool_header* %35, %struct.pool_header** %next, align 8, !dbg !1497, !tbaa !380
  %36 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1498, !tbaa !380
  %prevpool = getelementptr inbounds %struct.pool_header, %struct.pool_header* %36, i32 0, i32 3, !dbg !1499
  %37 = load %struct.pool_header*, %struct.pool_header** %prevpool, align 8, !dbg !1499, !tbaa !1106
  store %struct.pool_header* %37, %struct.pool_header** %prev, align 8, !dbg !1500, !tbaa !380
  %38 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1501, !tbaa !380
  %39 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1502, !tbaa !380
  %prevpool15 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %39, i32 0, i32 3, !dbg !1503
  store %struct.pool_header* %38, %struct.pool_header** %prevpool15, align 8, !dbg !1504, !tbaa !1106
  %40 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1505, !tbaa !380
  %41 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1506, !tbaa !380
  %nextpool16 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %41, i32 0, i32 2, !dbg !1507
  store %struct.pool_header* %40, %struct.pool_header** %nextpool16, align 8, !dbg !1508, !tbaa !1047
  %42 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1509, !tbaa !380
  %arenaindex17 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %42, i32 0, i32 4, !dbg !1510
  %43 = load i32, i32* %arenaindex17, align 4, !dbg !1510, !tbaa !1267
  %idxprom18 = zext i32 %43 to i64, !dbg !1511
  %44 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1511, !tbaa !380
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %44, i64 %idxprom18, !dbg !1511
  store %struct.arena_object* %arrayidx19, %struct.arena_object** %ao, align 8, !dbg !1512, !tbaa !380
  %45 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1513, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %45, i32 0, i32 4, !dbg !1514
  %46 = load %struct.pool_header*, %struct.pool_header** %freepools, align 8, !dbg !1514, !tbaa !1142
  %47 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1515, !tbaa !380
  %nextpool20 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %47, i32 0, i32 2, !dbg !1516
  store %struct.pool_header* %46, %struct.pool_header** %nextpool20, align 8, !dbg !1517, !tbaa !1047
  %48 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1518, !tbaa !380
  %49 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1519, !tbaa !380
  %freepools21 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %49, i32 0, i32 4, !dbg !1520
  store %struct.pool_header* %48, %struct.pool_header** %freepools21, align 8, !dbg !1521, !tbaa !1142
  %50 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1522, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %50, i32 0, i32 2, !dbg !1523
  %51 = load i32, i32* %nfreepools, align 4, !dbg !1524, !tbaa !790
  %inc = add i32 %51, 1, !dbg !1524
  store i32 %inc, i32* %nfreepools, align 4, !dbg !1524, !tbaa !790
  store i32 %inc, i32* %nf, align 4, !dbg !1525, !tbaa !587
  %52 = load i32, i32* %nf, align 4, !dbg !1526, !tbaa !587
  %53 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1528, !tbaa !380
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 3, !dbg !1529
  %54 = load i32, i32* %ntotalpools, align 4, !dbg !1529, !tbaa !1530
  %cmp22 = icmp eq i32 %52, %54, !dbg !1531
  br i1 %cmp22, label %if.then.23, label %if.end.41, !dbg !1532

if.then.23:                                       ; preds = %if.end.14
  %55 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1533, !tbaa !380
  %prevarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %55, i32 0, i32 6, !dbg !1536
  %56 = load %struct.arena_object*, %struct.arena_object** %prevarena, align 8, !dbg !1536, !tbaa !1134
  %cmp24 = icmp eq %struct.arena_object* %56, null, !dbg !1537
  br i1 %cmp24, label %if.then.25, label %if.else, !dbg !1538

if.then.25:                                       ; preds = %if.then.23
  %57 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1539, !tbaa !380
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 5, !dbg !1541
  %58 = load %struct.arena_object*, %struct.arena_object** %nextarena, align 8, !dbg !1541, !tbaa !1138
  store %struct.arena_object* %58, %struct.arena_object** @usable_arenas, align 8, !dbg !1542, !tbaa !380
  br label %if.end.29, !dbg !1543

if.else:                                          ; preds = %if.then.23
  %59 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1544, !tbaa !380
  %nextarena26 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 5, !dbg !1546
  %60 = load %struct.arena_object*, %struct.arena_object** %nextarena26, align 8, !dbg !1546, !tbaa !1138
  %61 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1547, !tbaa !380
  %prevarena27 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %61, i32 0, i32 6, !dbg !1548
  %62 = load %struct.arena_object*, %struct.arena_object** %prevarena27, align 8, !dbg !1548, !tbaa !1134
  %nextarena28 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %62, i32 0, i32 5, !dbg !1549
  store %struct.arena_object* %60, %struct.arena_object** %nextarena28, align 8, !dbg !1550, !tbaa !1138
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %63 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1551, !tbaa !380
  %nextarena30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %63, i32 0, i32 5, !dbg !1553
  %64 = load %struct.arena_object*, %struct.arena_object** %nextarena30, align 8, !dbg !1553, !tbaa !1138
  %cmp31 = icmp ne %struct.arena_object* %64, null, !dbg !1554
  br i1 %cmp31, label %if.then.32, label %if.end.36, !dbg !1555

if.then.32:                                       ; preds = %if.end.29
  %65 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1556, !tbaa !380
  %prevarena33 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %65, i32 0, i32 6, !dbg !1558
  %66 = load %struct.arena_object*, %struct.arena_object** %prevarena33, align 8, !dbg !1558, !tbaa !1134
  %67 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1559, !tbaa !380
  %nextarena34 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %67, i32 0, i32 5, !dbg !1560
  %68 = load %struct.arena_object*, %struct.arena_object** %nextarena34, align 8, !dbg !1560, !tbaa !1138
  %prevarena35 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %68, i32 0, i32 6, !dbg !1561
  store %struct.arena_object* %66, %struct.arena_object** %prevarena35, align 8, !dbg !1562, !tbaa !1134
  br label %if.end.36, !dbg !1563

if.end.36:                                        ; preds = %if.then.32, %if.end.29
  %69 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1564, !tbaa !380
  %70 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1565, !tbaa !380
  %nextarena37 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %70, i32 0, i32 5, !dbg !1566
  store %struct.arena_object* %69, %struct.arena_object** %nextarena37, align 8, !dbg !1567, !tbaa !1138
  %71 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1568, !tbaa !380
  store %struct.arena_object* %71, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1569, !tbaa !380
  %72 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 2), align 8, !dbg !1570, !tbaa !1571
  %73 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8, !dbg !1573, !tbaa !1574
  %74 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1575, !tbaa !380
  %address38 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %74, i32 0, i32 0, !dbg !1576
  %75 = load i64, i64* %address38, align 8, !dbg !1576, !tbaa !777
  %76 = inttoptr i64 %75 to i8*, !dbg !1577
  call void %72(i8* %73, i8* %76, i64 262144), !dbg !1578
  %77 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1579, !tbaa !380
  %address39 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %77, i32 0, i32 0, !dbg !1580
  store i64 0, i64* %address39, align 8, !dbg !1581, !tbaa !777
  %78 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1582, !tbaa !437
  %dec40 = add i64 %78, -1, !dbg !1582
  store i64 %dec40, i64* @narenas_currently_allocated, align 8, !dbg !1582, !tbaa !437
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1583

if.end.41:                                        ; preds = %if.end.14
  %79 = load i32, i32* %nf, align 4, !dbg !1584, !tbaa !587
  %cmp42 = icmp eq i32 %79, 1, !dbg !1586
  br i1 %cmp42, label %if.then.43, label %if.end.50, !dbg !1587

if.then.43:                                       ; preds = %if.end.41
  %80 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1588, !tbaa !380
  %81 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1590, !tbaa !380
  %nextarena44 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %81, i32 0, i32 5, !dbg !1591
  store %struct.arena_object* %80, %struct.arena_object** %nextarena44, align 8, !dbg !1592, !tbaa !1138
  %82 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1593, !tbaa !380
  %prevarena45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %82, i32 0, i32 6, !dbg !1594
  store %struct.arena_object* null, %struct.arena_object** %prevarena45, align 8, !dbg !1595, !tbaa !1134
  %83 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1596, !tbaa !380
  %tobool46 = icmp ne %struct.arena_object* %83, null, !dbg !1596
  br i1 %tobool46, label %if.then.47, label %if.end.49, !dbg !1598

if.then.47:                                       ; preds = %if.then.43
  %84 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1599, !tbaa !380
  %85 = load %struct.arena_object*, %struct.arena_object** @usable_arenas, align 8, !dbg !1600, !tbaa !380
  %prevarena48 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %85, i32 0, i32 6, !dbg !1601
  store %struct.arena_object* %84, %struct.arena_object** %prevarena48, align 8, !dbg !1602, !tbaa !1134
  br label %if.end.49, !dbg !1600

if.end.49:                                        ; preds = %if.then.47, %if.then.43
  %86 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1603, !tbaa !380
  store %struct.arena_object* %86, %struct.arena_object** @usable_arenas, align 8, !dbg !1604, !tbaa !380
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1605

if.end.50:                                        ; preds = %if.end.41
  %87 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1606, !tbaa !380
  %nextarena51 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %87, i32 0, i32 5, !dbg !1608
  %88 = load %struct.arena_object*, %struct.arena_object** %nextarena51, align 8, !dbg !1608, !tbaa !1138
  %cmp52 = icmp eq %struct.arena_object* %88, null, !dbg !1609
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false, !dbg !1610

lor.lhs.false:                                    ; preds = %if.end.50
  %89 = load i32, i32* %nf, align 4, !dbg !1611, !tbaa !587
  %90 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1612, !tbaa !380
  %nextarena53 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %90, i32 0, i32 5, !dbg !1613
  %91 = load %struct.arena_object*, %struct.arena_object** %nextarena53, align 8, !dbg !1613, !tbaa !1138
  %nfreepools54 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %91, i32 0, i32 2, !dbg !1614
  %92 = load i32, i32* %nfreepools54, align 4, !dbg !1614, !tbaa !790
  %cmp55 = icmp ule i32 %89, %92, !dbg !1615
  br i1 %cmp55, label %if.then.56, label %if.end.57, !dbg !1616

if.then.56:                                       ; preds = %lor.lhs.false, %if.end.50
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1617

if.end.57:                                        ; preds = %lor.lhs.false
  %93 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1619, !tbaa !380
  %prevarena58 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %93, i32 0, i32 6, !dbg !1621
  %94 = load %struct.arena_object*, %struct.arena_object** %prevarena58, align 8, !dbg !1621, !tbaa !1134
  %cmp59 = icmp ne %struct.arena_object* %94, null, !dbg !1622
  br i1 %cmp59, label %if.then.60, label %if.else.64, !dbg !1623

if.then.60:                                       ; preds = %if.end.57
  %95 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1624, !tbaa !380
  %nextarena61 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %95, i32 0, i32 5, !dbg !1626
  %96 = load %struct.arena_object*, %struct.arena_object** %nextarena61, align 8, !dbg !1626, !tbaa !1138
  %97 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1627, !tbaa !380
  %prevarena62 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %97, i32 0, i32 6, !dbg !1628
  %98 = load %struct.arena_object*, %struct.arena_object** %prevarena62, align 8, !dbg !1628, !tbaa !1134
  %nextarena63 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %98, i32 0, i32 5, !dbg !1629
  store %struct.arena_object* %96, %struct.arena_object** %nextarena63, align 8, !dbg !1630, !tbaa !1138
  br label %if.end.66, !dbg !1631

if.else.64:                                       ; preds = %if.end.57
  %99 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1632, !tbaa !380
  %nextarena65 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %99, i32 0, i32 5, !dbg !1634
  %100 = load %struct.arena_object*, %struct.arena_object** %nextarena65, align 8, !dbg !1634, !tbaa !1138
  store %struct.arena_object* %100, %struct.arena_object** @usable_arenas, align 8, !dbg !1635, !tbaa !380
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.60
  %101 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1636, !tbaa !380
  %prevarena67 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %101, i32 0, i32 6, !dbg !1637
  %102 = load %struct.arena_object*, %struct.arena_object** %prevarena67, align 8, !dbg !1637, !tbaa !1134
  %103 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1638, !tbaa !380
  %nextarena68 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %103, i32 0, i32 5, !dbg !1639
  %104 = load %struct.arena_object*, %struct.arena_object** %nextarena68, align 8, !dbg !1639, !tbaa !1138
  %prevarena69 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %104, i32 0, i32 6, !dbg !1640
  store %struct.arena_object* %102, %struct.arena_object** %prevarena69, align 8, !dbg !1641, !tbaa !1134
  br label %while.cond, !dbg !1642

while.cond:                                       ; preds = %while.body, %if.end.66
  %105 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1643, !tbaa !380
  %nextarena70 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %105, i32 0, i32 5, !dbg !1646
  %106 = load %struct.arena_object*, %struct.arena_object** %nextarena70, align 8, !dbg !1646, !tbaa !1138
  %cmp71 = icmp ne %struct.arena_object* %106, null, !dbg !1647
  br i1 %cmp71, label %land.rhs, label %land.end, !dbg !1648

land.rhs:                                         ; preds = %while.cond
  %107 = load i32, i32* %nf, align 4, !dbg !1649, !tbaa !587
  %108 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1650, !tbaa !380
  %nextarena72 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %108, i32 0, i32 5, !dbg !1651
  %109 = load %struct.arena_object*, %struct.arena_object** %nextarena72, align 8, !dbg !1651, !tbaa !1138
  %nfreepools73 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %109, i32 0, i32 2, !dbg !1652
  %110 = load i32, i32* %nfreepools73, align 4, !dbg !1652, !tbaa !790
  %cmp74 = icmp ugt i32 %107, %110, !dbg !1653
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %111 = phi i1 [ false, %while.cond ], [ %cmp74, %land.rhs ]
  br i1 %111, label %while.body, label %while.end, !dbg !1654

while.body:                                       ; preds = %land.end
  %112 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1656, !tbaa !380
  %nextarena75 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %112, i32 0, i32 5, !dbg !1658
  %113 = load %struct.arena_object*, %struct.arena_object** %nextarena75, align 8, !dbg !1658, !tbaa !1138
  %114 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1659, !tbaa !380
  %prevarena76 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %114, i32 0, i32 6, !dbg !1660
  store %struct.arena_object* %113, %struct.arena_object** %prevarena76, align 8, !dbg !1661, !tbaa !1134
  %115 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1662, !tbaa !380
  %nextarena77 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %115, i32 0, i32 5, !dbg !1663
  %116 = load %struct.arena_object*, %struct.arena_object** %nextarena77, align 8, !dbg !1663, !tbaa !1138
  %nextarena78 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %116, i32 0, i32 5, !dbg !1664
  %117 = load %struct.arena_object*, %struct.arena_object** %nextarena78, align 8, !dbg !1664, !tbaa !1138
  %118 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1665, !tbaa !380
  %nextarena79 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %118, i32 0, i32 5, !dbg !1666
  store %struct.arena_object* %117, %struct.arena_object** %nextarena79, align 8, !dbg !1667, !tbaa !1138
  br label %while.cond, !dbg !1642

while.end:                                        ; preds = %land.end
  %119 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1668, !tbaa !380
  %120 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1669, !tbaa !380
  %prevarena80 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %120, i32 0, i32 6, !dbg !1670
  %121 = load %struct.arena_object*, %struct.arena_object** %prevarena80, align 8, !dbg !1670, !tbaa !1134
  %nextarena81 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %121, i32 0, i32 5, !dbg !1671
  store %struct.arena_object* %119, %struct.arena_object** %nextarena81, align 8, !dbg !1672, !tbaa !1138
  %122 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1673, !tbaa !380
  %nextarena82 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %122, i32 0, i32 5, !dbg !1675
  %123 = load %struct.arena_object*, %struct.arena_object** %nextarena82, align 8, !dbg !1675, !tbaa !1138
  %cmp83 = icmp ne %struct.arena_object* %123, null, !dbg !1676
  br i1 %cmp83, label %if.then.84, label %if.end.87, !dbg !1677

if.then.84:                                       ; preds = %while.end
  %124 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1678, !tbaa !380
  %125 = load %struct.arena_object*, %struct.arena_object** %ao, align 8, !dbg !1679, !tbaa !380
  %nextarena85 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %125, i32 0, i32 5, !dbg !1680
  %126 = load %struct.arena_object*, %struct.arena_object** %nextarena85, align 8, !dbg !1680, !tbaa !1138
  %prevarena86 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %126, i32 0, i32 6, !dbg !1681
  store %struct.arena_object* %124, %struct.arena_object** %prevarena86, align 8, !dbg !1682, !tbaa !1134
  br label %if.end.87, !dbg !1679

if.end.87:                                        ; preds = %if.then.84, %while.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1683

cleanup:                                          ; preds = %if.end.87, %if.then.56, %if.end.49, %if.end.36, %if.then.13
  %127 = bitcast i32* %nf to i8*, !dbg !1684
  call void @llvm.lifetime.end(i64 4, i8* %127) #2, !dbg !1684
  %128 = bitcast %struct.arena_object** %ao to i8*, !dbg !1684
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !1684
  br label %cleanup.101

if.end.89:                                        ; preds = %if.then.8
  %129 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1685, !tbaa !380
  %ref90 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %129, i32 0, i32 0, !dbg !1686
  %count91 = bitcast %union.anon* %ref90 to i32*, !dbg !1687
  %130 = load i32, i32* %count91, align 4, !dbg !1688, !tbaa !587
  %dec92 = add i32 %130, -1, !dbg !1688
  store i32 %dec92, i32* %count91, align 4, !dbg !1688, !tbaa !587
  %131 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1689, !tbaa !380
  %szidx = getelementptr inbounds %struct.pool_header, %struct.pool_header* %131, i32 0, i32 5, !dbg !1690
  %132 = load i32, i32* %szidx, align 4, !dbg !1690, !tbaa !819
  store i32 %132, i32* %size, align 4, !dbg !1691, !tbaa !587
  %133 = load i32, i32* %size, align 4, !dbg !1692, !tbaa !587
  %134 = load i32, i32* %size, align 4, !dbg !1693, !tbaa !587
  %add = add i32 %133, %134, !dbg !1694
  %idxprom93 = zext i32 %add to i64, !dbg !1695
  %arrayidx94 = getelementptr [128 x %struct.pool_header*], [128 x %struct.pool_header*]* @usedpools, i32 0, i64 %idxprom93, !dbg !1695
  %135 = load %struct.pool_header*, %struct.pool_header** %arrayidx94, align 8, !dbg !1695, !tbaa !380
  store %struct.pool_header* %135, %struct.pool_header** %next, align 8, !dbg !1696, !tbaa !380
  %136 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1697, !tbaa !380
  %prevpool95 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %136, i32 0, i32 3, !dbg !1698
  %137 = load %struct.pool_header*, %struct.pool_header** %prevpool95, align 8, !dbg !1698, !tbaa !1106
  store %struct.pool_header* %137, %struct.pool_header** %prev, align 8, !dbg !1699, !tbaa !380
  %138 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1700, !tbaa !380
  %139 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1701, !tbaa !380
  %nextpool96 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %139, i32 0, i32 2, !dbg !1702
  store %struct.pool_header* %138, %struct.pool_header** %nextpool96, align 8, !dbg !1703, !tbaa !1047
  %140 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1704, !tbaa !380
  %141 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1705, !tbaa !380
  %prevpool97 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %141, i32 0, i32 3, !dbg !1706
  store %struct.pool_header* %140, %struct.pool_header** %prevpool97, align 8, !dbg !1707, !tbaa !1106
  %142 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1708, !tbaa !380
  %143 = load %struct.pool_header*, %struct.pool_header** %next, align 8, !dbg !1709, !tbaa !380
  %prevpool98 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %143, i32 0, i32 3, !dbg !1710
  store %struct.pool_header* %142, %struct.pool_header** %prevpool98, align 8, !dbg !1711, !tbaa !1106
  %144 = load %struct.pool_header*, %struct.pool_header** %pool, align 8, !dbg !1712, !tbaa !380
  %145 = load %struct.pool_header*, %struct.pool_header** %prev, align 8, !dbg !1713, !tbaa !380
  %nextpool99 = getelementptr inbounds %struct.pool_header, %struct.pool_header* %145, i32 0, i32 2, !dbg !1714
  store %struct.pool_header* %144, %struct.pool_header** %nextpool99, align 8, !dbg !1715, !tbaa !1047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.101, !dbg !1716

if.end.100:                                       ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %146 = load i8*, i8** %p.addr, align 8, !dbg !1717, !tbaa !380
  call void @PyMem_RawFree(i8* %146), !dbg !1718
  store i32 0, i32* %cleanup.dest.slot, !dbg !1719
  br label %cleanup.101, !dbg !1719

cleanup.101:                                      ; preds = %if.end.100, %if.end.89, %cleanup, %if.then
  %147 = bitcast i32* %arenaindex_temp to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 4, i8* %147) #2, !dbg !1720
  %148 = bitcast i32* %size to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 4, i8* %148) #2, !dbg !1720
  %149 = bitcast %struct.pool_header** %prev to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 8, i8* %149) #2, !dbg !1720
  %150 = bitcast %struct.pool_header** %next to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 8, i8* %150) #2, !dbg !1720
  %151 = bitcast i8** %lastfree to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1720
  %152 = bitcast %struct.pool_header** %pool to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !1720
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup.101
  ret void, !dbg !1719

unreachable:                                      ; No predecessors!
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
  %0 = bitcast %struct.arena_object** %arenaobj to i8*, !dbg !1722
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.arena_object** %arenaobj, metadata !296, metadata !378), !dbg !1723
  %1 = bitcast i32* %excess to i8*, !dbg !1724
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1724
  call void @llvm.dbg.declare(metadata i32* %excess, metadata !297, metadata !378), !dbg !1725
  %2 = bitcast i8** %address to i8*, !dbg !1726
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1726
  call void @llvm.dbg.declare(metadata i8** %address, metadata !298, metadata !378), !dbg !1727
  %3 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1728, !tbaa !380
  %cmp = icmp eq %struct.arena_object* %3, null, !dbg !1729
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !1730

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %i to i8*, !dbg !1731
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1731
  call void @llvm.dbg.declare(metadata i32* %i, metadata !299, metadata !378), !dbg !1732
  %5 = bitcast i32* %numarenas to i8*, !dbg !1733
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1733
  call void @llvm.dbg.declare(metadata i32* %numarenas, metadata !302, metadata !378), !dbg !1734
  %6 = bitcast i64* %nbytes to i8*, !dbg !1735
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1735
  call void @llvm.dbg.declare(metadata i64* %nbytes, metadata !303, metadata !378), !dbg !1736
  %7 = load i32, i32* @maxarenas, align 4, !dbg !1737, !tbaa !587
  %tobool = icmp ne i32 %7, 0, !dbg !1737
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1737

cond.true:                                        ; preds = %if.then
  %8 = load i32, i32* @maxarenas, align 4, !dbg !1738, !tbaa !587
  %shl = shl i32 %8, 1, !dbg !1740
  br label %cond.end, !dbg !1737

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1741

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 16, %cond.false ], !dbg !1737
  store i32 %cond, i32* %numarenas, align 4, !dbg !1743, !tbaa !587
  %9 = load i32, i32* %numarenas, align 4, !dbg !1746, !tbaa !587
  %10 = load i32, i32* @maxarenas, align 4, !dbg !1748, !tbaa !587
  %cmp1 = icmp ule i32 %9, %10, !dbg !1749
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1750

if.then.2:                                        ; preds = %cond.end
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1751
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1751

if.end:                                           ; preds = %cond.end
  %11 = load i32, i32* %numarenas, align 4, !dbg !1752, !tbaa !587
  %conv = zext i32 %11 to i64, !dbg !1752
  %mul = mul i64 %conv, 48, !dbg !1753
  store i64 %mul, i64* %nbytes, align 8, !dbg !1754, !tbaa !437
  %12 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1755, !tbaa !380
  %13 = bitcast %struct.arena_object* %12 to i8*, !dbg !1755
  %14 = load i64, i64* %nbytes, align 8, !dbg !1756, !tbaa !437
  %call = call i8* @PyMem_RawRealloc(i8* %13, i64 %14), !dbg !1757
  %15 = bitcast i8* %call to %struct.arena_object*, !dbg !1758
  store %struct.arena_object* %15, %struct.arena_object** %arenaobj, align 8, !dbg !1759, !tbaa !380
  %16 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1760, !tbaa !380
  %cmp3 = icmp eq %struct.arena_object* %16, null, !dbg !1762
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !1763

if.then.5:                                        ; preds = %if.end
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1764

if.end.6:                                         ; preds = %if.end
  %17 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1765, !tbaa !380
  store %struct.arena_object* %17, %struct.arena_object** @arenas, align 8, !dbg !1766, !tbaa !380
  %18 = load i32, i32* @maxarenas, align 4, !dbg !1767, !tbaa !587
  store i32 %18, i32* %i, align 4, !dbg !1769, !tbaa !587
  br label %for.cond, !dbg !1770

for.cond:                                         ; preds = %for.inc, %if.end.6
  %19 = load i32, i32* %i, align 4, !dbg !1771, !tbaa !587
  %20 = load i32, i32* %numarenas, align 4, !dbg !1775, !tbaa !587
  %cmp7 = icmp ult i32 %19, %20, !dbg !1776
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1777

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !1778, !tbaa !587
  %idxprom = zext i32 %21 to i64, !dbg !1780
  %22 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1780, !tbaa !380
  %arrayidx = getelementptr %struct.arena_object, %struct.arena_object* %22, i64 %idxprom, !dbg !1780
  %address9 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx, i32 0, i32 0, !dbg !1781
  store i64 0, i64* %address9, align 8, !dbg !1782, !tbaa !777
  %23 = load i32, i32* %i, align 4, !dbg !1783, !tbaa !587
  %24 = load i32, i32* %numarenas, align 4, !dbg !1784, !tbaa !587
  %sub = sub i32 %24, 1, !dbg !1785
  %cmp10 = icmp ult i32 %23, %sub, !dbg !1786
  br i1 %cmp10, label %cond.true.12, label %cond.false.15, !dbg !1783

cond.true.12:                                     ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !1787, !tbaa !587
  %add = add i32 %25, 1, !dbg !1788
  %idxprom13 = zext i32 %add to i64, !dbg !1789
  %26 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1789, !tbaa !380
  %arrayidx14 = getelementptr %struct.arena_object, %struct.arena_object* %26, i64 %idxprom13, !dbg !1789
  br label %cond.end.16, !dbg !1783

cond.false.15:                                    ; preds = %for.body
  br label %cond.end.16, !dbg !1790

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.12
  %cond17 = phi %struct.arena_object* [ %arrayidx14, %cond.true.12 ], [ null, %cond.false.15 ], !dbg !1783
  %27 = load i32, i32* %i, align 4, !dbg !1792, !tbaa !587
  %idxprom18 = zext i32 %27 to i64, !dbg !1795
  %28 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1795, !tbaa !380
  %arrayidx19 = getelementptr %struct.arena_object, %struct.arena_object* %28, i64 %idxprom18, !dbg !1795
  %nextarena = getelementptr inbounds %struct.arena_object, %struct.arena_object* %arrayidx19, i32 0, i32 5, !dbg !1796
  store %struct.arena_object* %cond17, %struct.arena_object** %nextarena, align 8, !dbg !1797, !tbaa !1138
  br label %for.inc, !dbg !1798

for.inc:                                          ; preds = %cond.end.16
  %29 = load i32, i32* %i, align 4, !dbg !1799, !tbaa !587
  %inc = add i32 %29, 1, !dbg !1799
  store i32 %inc, i32* %i, align 4, !dbg !1799, !tbaa !587
  br label %for.cond, !dbg !1800

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* @maxarenas, align 4, !dbg !1801, !tbaa !587
  %idxprom20 = zext i32 %30 to i64, !dbg !1802
  %31 = load %struct.arena_object*, %struct.arena_object** @arenas, align 8, !dbg !1802, !tbaa !380
  %arrayidx21 = getelementptr %struct.arena_object, %struct.arena_object* %31, i64 %idxprom20, !dbg !1802
  store %struct.arena_object* %arrayidx21, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1803, !tbaa !380
  %32 = load i32, i32* %numarenas, align 4, !dbg !1804, !tbaa !587
  store i32 %32, i32* @maxarenas, align 4, !dbg !1805, !tbaa !587
  store i32 0, i32* %cleanup.dest.slot, !dbg !1806
  br label %cleanup, !dbg !1806

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then.2
  %33 = bitcast i64* %nbytes to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1807
  %34 = bitcast i32* %numarenas to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !1807
  %35 = bitcast i32* %i to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 4, i8* %35) #2, !dbg !1807
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.24, !dbg !1809

if.end.24:                                        ; preds = %cleanup.cont, %entry
  %36 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1810, !tbaa !380
  store %struct.arena_object* %36, %struct.arena_object** %arenaobj, align 8, !dbg !1811, !tbaa !380
  %37 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1812, !tbaa !380
  %nextarena25 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %37, i32 0, i32 5, !dbg !1813
  %38 = load %struct.arena_object*, %struct.arena_object** %nextarena25, align 8, !dbg !1813, !tbaa !1138
  store %struct.arena_object* %38, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1814, !tbaa !380
  %39 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 1), align 8, !dbg !1815, !tbaa !1816
  %40 = load i8*, i8** getelementptr inbounds (%struct.PyObjectArenaAllocator, %struct.PyObjectArenaAllocator* @_PyObject_Arena, i32 0, i32 0), align 8, !dbg !1817, !tbaa !1574
  %call26 = call i8* %39(i8* %40, i64 262144), !dbg !1818
  store i8* %call26, i8** %address, align 8, !dbg !1819, !tbaa !380
  %41 = load i8*, i8** %address, align 8, !dbg !1820, !tbaa !380
  %cmp27 = icmp eq i8* %41, null, !dbg !1822
  br i1 %cmp27, label %if.then.29, label %if.end.31, !dbg !1823

if.then.29:                                       ; preds = %if.end.24
  %42 = load %struct.arena_object*, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1824, !tbaa !380
  %43 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1826, !tbaa !380
  %nextarena30 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %43, i32 0, i32 5, !dbg !1827
  store %struct.arena_object* %42, %struct.arena_object** %nextarena30, align 8, !dbg !1828, !tbaa !1138
  %44 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1829, !tbaa !380
  store %struct.arena_object* %44, %struct.arena_object** @unused_arena_objects, align 8, !dbg !1830, !tbaa !380
  store %struct.arena_object* null, %struct.arena_object** %retval, !dbg !1831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !1831

if.end.31:                                        ; preds = %if.end.24
  %45 = load i8*, i8** %address, align 8, !dbg !1832, !tbaa !380
  %46 = ptrtoint i8* %45 to i64, !dbg !1833
  %47 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1834, !tbaa !380
  %address32 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %47, i32 0, i32 0, !dbg !1835
  store i64 %46, i64* %address32, align 8, !dbg !1836, !tbaa !777
  %48 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1837, !tbaa !437
  %inc33 = add i64 %48, 1, !dbg !1837
  store i64 %inc33, i64* @narenas_currently_allocated, align 8, !dbg !1837, !tbaa !437
  %49 = load i64, i64* @ntimes_arena_allocated, align 8, !dbg !1838, !tbaa !437
  %inc34 = add i64 %49, 1, !dbg !1838
  store i64 %inc34, i64* @ntimes_arena_allocated, align 8, !dbg !1838, !tbaa !437
  %50 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1839, !tbaa !437
  %51 = load i64, i64* @narenas_highwater, align 8, !dbg !1841, !tbaa !437
  %cmp35 = icmp ugt i64 %50, %51, !dbg !1842
  br i1 %cmp35, label %if.then.37, label %if.end.38, !dbg !1843

if.then.37:                                       ; preds = %if.end.31
  %52 = load i64, i64* @narenas_currently_allocated, align 8, !dbg !1844, !tbaa !437
  store i64 %52, i64* @narenas_highwater, align 8, !dbg !1845, !tbaa !437
  br label %if.end.38, !dbg !1846

if.end.38:                                        ; preds = %if.then.37, %if.end.31
  %53 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1847, !tbaa !380
  %freepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %53, i32 0, i32 4, !dbg !1848
  store %struct.pool_header* null, %struct.pool_header** %freepools, align 8, !dbg !1849, !tbaa !1142
  %54 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1850, !tbaa !380
  %address39 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %54, i32 0, i32 0, !dbg !1851
  %55 = load i64, i64* %address39, align 8, !dbg !1851, !tbaa !777
  %56 = inttoptr i64 %55 to i8*, !dbg !1852
  %57 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1853, !tbaa !380
  %pool_address = getelementptr inbounds %struct.arena_object, %struct.arena_object* %57, i32 0, i32 1, !dbg !1854
  store i8* %56, i8** %pool_address, align 8, !dbg !1855, !tbaa !807
  %58 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1856, !tbaa !380
  %nfreepools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %58, i32 0, i32 2, !dbg !1857
  store i32 64, i32* %nfreepools, align 4, !dbg !1858, !tbaa !790
  %59 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1859, !tbaa !380
  %address40 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %59, i32 0, i32 0, !dbg !1860
  %60 = load i64, i64* %address40, align 8, !dbg !1860, !tbaa !777
  %and = and i64 %60, 4095, !dbg !1861
  %conv41 = trunc i64 %and to i32, !dbg !1862
  store i32 %conv41, i32* %excess, align 4, !dbg !1863, !tbaa !587
  %61 = load i32, i32* %excess, align 4, !dbg !1864, !tbaa !587
  %cmp42 = icmp ne i32 %61, 0, !dbg !1866
  br i1 %cmp42, label %if.then.44, label %if.end.48, !dbg !1867

if.then.44:                                       ; preds = %if.end.38
  %62 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1868, !tbaa !380
  %nfreepools45 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %62, i32 0, i32 2, !dbg !1870
  %63 = load i32, i32* %nfreepools45, align 4, !dbg !1871, !tbaa !790
  %dec = add i32 %63, -1, !dbg !1871
  store i32 %dec, i32* %nfreepools45, align 4, !dbg !1871, !tbaa !790
  %64 = load i32, i32* %excess, align 4, !dbg !1872, !tbaa !587
  %sub46 = sub i32 4096, %64, !dbg !1873
  %65 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1874, !tbaa !380
  %pool_address47 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %65, i32 0, i32 1, !dbg !1875
  %66 = load i8*, i8** %pool_address47, align 8, !dbg !1876, !tbaa !807
  %idx.ext = zext i32 %sub46 to i64, !dbg !1876
  %add.ptr = getelementptr i8, i8* %66, i64 %idx.ext, !dbg !1876
  store i8* %add.ptr, i8** %pool_address47, align 8, !dbg !1876, !tbaa !807
  br label %if.end.48, !dbg !1877

if.end.48:                                        ; preds = %if.then.44, %if.end.38
  %67 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1878, !tbaa !380
  %nfreepools49 = getelementptr inbounds %struct.arena_object, %struct.arena_object* %67, i32 0, i32 2, !dbg !1879
  %68 = load i32, i32* %nfreepools49, align 4, !dbg !1879, !tbaa !790
  %69 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1880, !tbaa !380
  %ntotalpools = getelementptr inbounds %struct.arena_object, %struct.arena_object* %69, i32 0, i32 3, !dbg !1881
  store i32 %68, i32* %ntotalpools, align 4, !dbg !1882, !tbaa !1530
  %70 = load %struct.arena_object*, %struct.arena_object** %arenaobj, align 8, !dbg !1883, !tbaa !380
  store %struct.arena_object* %70, %struct.arena_object** %retval, !dbg !1884
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !1884

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.50

cleanup.50:                                       ; preds = %NewDefault, %if.end.48, %if.then.29
  %71 = bitcast i8** %address to i8*, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1885
  %72 = bitcast i32* %excess to i8*, !dbg !1885
  call void @llvm.lifetime.end(i64 4, i8* %72) #2, !dbg !1885
  %73 = bitcast %struct.arena_object** %arenaobj to i8*, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1885
  %74 = load %struct.arena_object*, %struct.arena_object** %retval, !dbg !1885
  ret %struct.arena_object* %74, !dbg !1885
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
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !331, metadata !378), !dbg !1886
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !332, metadata !378), !dbg !1887
  %0 = bitcast i8** %ptr to i8*, !dbg !1888
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1888
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !333, metadata !378), !dbg !1889
  %1 = load i64, i64* %size.addr, align 8, !dbg !1890, !tbaa !437
  %call = call i8* @mmap64(i8* null, i64 %1, i32 3, i32 34, i32 -1, i64 0) #2, !dbg !1891
  store i8* %call, i8** %ptr, align 8, !dbg !1892, !tbaa !380
  %2 = load i8*, i8** %ptr, align 8, !dbg !1893, !tbaa !380
  %cmp = icmp eq i8* %2, inttoptr (i64 -1 to i8*), !dbg !1895
  br i1 %cmp, label %if.then, label %if.end, !dbg !1896

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1897
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1897

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr, align 8, !dbg !1898, !tbaa !380
  store i8* %3, i8** %retval, !dbg !1899
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i8** %ptr to i8*, !dbg !1900
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1900
  %5 = load i8*, i8** %retval, !dbg !1900
  ret i8* %5, !dbg !1900
}

; Function Attrs: nounwind uwtable
define internal void @_PyObject_ArenaMunmap(i8* %ctx, i8* %ptr, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !336, metadata !378), !dbg !1901
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !380
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !337, metadata !378), !dbg !1902
  store i64 %size, i64* %size.addr, align 8, !tbaa !437
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !338, metadata !378), !dbg !1903
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1904, !tbaa !380
  %1 = load i64, i64* %size.addr, align 8, !dbg !1905, !tbaa !437
  %call = call i32 @munmap(i8* %0, i64 %1) #2, !dbg !1906
  ret void, !dbg !1907
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
!384 = !DILocation(line: 227, column: 29, scope: !385)
!385 = distinct !DILexicalBlock(scope: !63, file: !25, line: 226, column: 5)
!386 = !DILocation(line: 227, column: 41, scope: !385)
!387 = !{i64 0, i64 8, !380, i64 8, i64 8, !380, i64 16, i64 8, !380, i64 24, i64 8, !380}
!388 = !DILocation(line: 227, column: 53, scope: !385)
!389 = !DILocation(line: 228, column: 29, scope: !385)
!390 = !DILocation(line: 228, column: 41, scope: !385)
!391 = !DILocation(line: 228, column: 49, scope: !385)
!392 = !DILocation(line: 229, column: 29, scope: !385)
!393 = !DILocation(line: 229, column: 41, scope: !385)
!394 = !DILocation(line: 229, column: 52, scope: !385)
!395 = !DILocation(line: 232, column: 9, scope: !385)
!396 = !DILocation(line: 232, column: 20, scope: !385)
!397 = !DILocation(line: 232, column: 24, scope: !385)
!398 = !{!399, !381, i64 0}
!399 = !{!"", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24}
!400 = !DILocation(line: 233, column: 9, scope: !385)
!401 = !DILocation(line: 233, column: 20, scope: !385)
!402 = !DILocation(line: 233, column: 27, scope: !385)
!403 = !{!399, !381, i64 8}
!404 = !DILocation(line: 234, column: 9, scope: !385)
!405 = !DILocation(line: 234, column: 20, scope: !385)
!406 = !DILocation(line: 234, column: 28, scope: !385)
!407 = !{!399, !381, i64 16}
!408 = !DILocation(line: 235, column: 9, scope: !385)
!409 = !DILocation(line: 235, column: 20, scope: !385)
!410 = !DILocation(line: 235, column: 25, scope: !385)
!411 = !{!399, !381, i64 24}
!412 = !DILocation(line: 236, column: 5, scope: !385)
!413 = !DILocation(line: 237, column: 1, scope: !63)
!414 = !DILocation(line: 240, column: 41, scope: !87)
!415 = !DILocation(line: 240, column: 65, scope: !87)
!416 = !DILocation(line: 242, column: 12, scope: !87)
!417 = !DILocation(line: 244, column: 42, scope: !418)
!418 = distinct !DILexicalBlock(scope: !87, file: !25, line: 243, column: 5)
!419 = !DILocation(line: 244, column: 41, scope: !418)
!420 = !DILocation(line: 244, column: 53, scope: !418)
!421 = !DILocation(line: 245, column: 38, scope: !418)
!422 = !DILocation(line: 245, column: 37, scope: !418)
!423 = !DILocation(line: 245, column: 49, scope: !418)
!424 = !DILocation(line: 246, column: 41, scope: !418)
!425 = !DILocation(line: 246, column: 40, scope: !418)
!426 = !DILocation(line: 246, column: 52, scope: !418)
!427 = !DILocation(line: 250, column: 1, scope: !87)
!428 = !DILocation(line: 253, column: 52, scope: !91)
!429 = !DILocation(line: 255, column: 6, scope: !91)
!430 = !DILocation(line: 255, column: 18, scope: !91)
!431 = !{i64 0, i64 8, !380, i64 8, i64 8, !380, i64 16, i64 8, !380}
!432 = !DILocation(line: 256, column: 1, scope: !91)
!433 = !DILocation(line: 259, column: 52, scope: !107)
!434 = !DILocation(line: 261, column: 24, scope: !107)
!435 = !DILocation(line: 261, column: 23, scope: !107)
!436 = !DILocation(line: 262, column: 1, scope: !107)
!437 = !{!438, !438, i64 0}
!438 = !{!"long", !376, i64 0}
!439 = !DILocation(line: 265, column: 24, scope: !110)
!440 = !DILocation(line: 273, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !110, file: !25, line: 273, column: 9)
!442 = !DILocation(line: 273, column: 14, scope: !441)
!443 = !DILocation(line: 273, column: 9, scope: !110)
!444 = !DILocation(line: 274, column: 9, scope: !441)
!445 = !DILocation(line: 276, column: 23, scope: !110)
!446 = !DILocation(line: 276, column: 41, scope: !110)
!447 = !DILocation(line: 276, column: 46, scope: !110)
!448 = !DILocation(line: 276, column: 12, scope: !110)
!449 = !DILocation(line: 276, column: 5, scope: !110)
!450 = !DILocation(line: 277, column: 1, scope: !110)
!451 = !DILocation(line: 280, column: 24, scope: !115)
!452 = !DILocation(line: 280, column: 36, scope: !115)
!453 = !DILocation(line: 283, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !115, file: !25, line: 283, column: 9)
!455 = !DILocation(line: 283, column: 18, scope: !454)
!456 = !DILocation(line: 283, column: 9, scope: !115)
!457 = !DILocation(line: 284, column: 9, scope: !454)
!458 = !DILocation(line: 285, column: 23, scope: !115)
!459 = !DILocation(line: 285, column: 42, scope: !115)
!460 = !DILocation(line: 285, column: 47, scope: !115)
!461 = !DILocation(line: 285, column: 52, scope: !115)
!462 = !DILocation(line: 285, column: 12, scope: !115)
!463 = !DILocation(line: 285, column: 5, scope: !115)
!464 = !DILocation(line: 286, column: 1, scope: !115)
!465 = !DILocation(line: 288, column: 26, scope: !119)
!466 = !DILocation(line: 290, column: 16, scope: !119)
!467 = !DILocation(line: 290, column: 32, scope: !119)
!468 = !DILocation(line: 290, column: 37, scope: !119)
!469 = !DILocation(line: 290, column: 5, scope: !119)
!470 = !DILocation(line: 291, column: 1, scope: !119)
!471 = !DILocation(line: 294, column: 21, scope: !124)
!472 = !DILocation(line: 297, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !124, file: !25, line: 297, column: 9)
!474 = !DILocation(line: 297, column: 14, scope: !473)
!475 = !DILocation(line: 297, column: 9, scope: !124)
!476 = !DILocation(line: 298, column: 9, scope: !473)
!477 = !DILocation(line: 299, column: 19, scope: !124)
!478 = !DILocation(line: 299, column: 33, scope: !124)
!479 = !DILocation(line: 299, column: 38, scope: !124)
!480 = !DILocation(line: 299, column: 12, scope: !124)
!481 = !DILocation(line: 299, column: 5, scope: !124)
!482 = !DILocation(line: 300, column: 1, scope: !124)
!483 = !DILocation(line: 303, column: 21, scope: !127)
!484 = !DILocation(line: 303, column: 33, scope: !127)
!485 = !DILocation(line: 306, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !127, file: !25, line: 306, column: 9)
!487 = !DILocation(line: 306, column: 18, scope: !486)
!488 = !DILocation(line: 306, column: 9, scope: !127)
!489 = !DILocation(line: 307, column: 9, scope: !486)
!490 = !DILocation(line: 308, column: 19, scope: !127)
!491 = !DILocation(line: 308, column: 34, scope: !127)
!492 = !DILocation(line: 308, column: 39, scope: !127)
!493 = !DILocation(line: 308, column: 44, scope: !127)
!494 = !DILocation(line: 308, column: 12, scope: !127)
!495 = !DILocation(line: 308, column: 5, scope: !127)
!496 = !DILocation(line: 309, column: 1, scope: !127)
!497 = !DILocation(line: 312, column: 18, scope: !131)
!498 = !DILocation(line: 314, column: 12, scope: !131)
!499 = !DILocation(line: 314, column: 24, scope: !131)
!500 = !DILocation(line: 314, column: 29, scope: !131)
!501 = !DILocation(line: 314, column: 5, scope: !131)
!502 = !DILocation(line: 315, column: 1, scope: !131)
!503 = !DILocation(line: 318, column: 30, scope: !134)
!504 = !DILocation(line: 320, column: 5, scope: !134)
!505 = !DILocation(line: 320, column: 12, scope: !134)
!506 = !DILocation(line: 321, column: 5, scope: !134)
!507 = !DILocation(line: 321, column: 11, scope: !134)
!508 = !DILocation(line: 323, column: 19, scope: !134)
!509 = !DILocation(line: 323, column: 12, scope: !134)
!510 = !DILocation(line: 323, column: 24, scope: !134)
!511 = !DILocation(line: 323, column: 10, scope: !134)
!512 = !DILocation(line: 324, column: 28, scope: !134)
!513 = !DILocation(line: 324, column: 12, scope: !134)
!514 = !DILocation(line: 324, column: 10, scope: !134)
!515 = !DILocation(line: 325, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !134, file: !25, line: 325, column: 9)
!517 = !DILocation(line: 325, column: 14, scope: !516)
!518 = !DILocation(line: 325, column: 9, scope: !134)
!519 = !DILocation(line: 326, column: 9, scope: !516)
!520 = !DILocation(line: 327, column: 12, scope: !134)
!521 = !DILocation(line: 327, column: 18, scope: !134)
!522 = !DILocation(line: 327, column: 23, scope: !134)
!523 = !DILocation(line: 327, column: 5, scope: !134)
!524 = !DILocation(line: 328, column: 12, scope: !134)
!525 = !DILocation(line: 328, column: 5, scope: !134)
!526 = !DILocation(line: 329, column: 1, scope: !134)
!527 = !DILocation(line: 332, column: 27, scope: !144)
!528 = !DILocation(line: 334, column: 5, scope: !144)
!529 = !DILocation(line: 334, column: 12, scope: !144)
!530 = !DILocation(line: 335, column: 5, scope: !144)
!531 = !DILocation(line: 335, column: 11, scope: !144)
!532 = !DILocation(line: 337, column: 19, scope: !144)
!533 = !DILocation(line: 337, column: 12, scope: !144)
!534 = !DILocation(line: 337, column: 24, scope: !144)
!535 = !DILocation(line: 337, column: 10, scope: !144)
!536 = !DILocation(line: 338, column: 25, scope: !144)
!537 = !DILocation(line: 338, column: 12, scope: !144)
!538 = !DILocation(line: 338, column: 10, scope: !144)
!539 = !DILocation(line: 339, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !144, file: !25, line: 339, column: 9)
!541 = !DILocation(line: 339, column: 14, scope: !540)
!542 = !DILocation(line: 339, column: 9, scope: !144)
!543 = !DILocation(line: 340, column: 9, scope: !540)
!544 = !DILocation(line: 341, column: 12, scope: !144)
!545 = !DILocation(line: 341, column: 18, scope: !144)
!546 = !DILocation(line: 341, column: 23, scope: !144)
!547 = !DILocation(line: 341, column: 5, scope: !144)
!548 = !DILocation(line: 342, column: 12, scope: !144)
!549 = !DILocation(line: 342, column: 5, scope: !144)
!550 = !DILocation(line: 343, column: 1, scope: !144)
!551 = !DILocation(line: 346, column: 24, scope: !149)
!552 = !DILocation(line: 349, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !149, file: !25, line: 349, column: 9)
!554 = !DILocation(line: 349, column: 14, scope: !553)
!555 = !DILocation(line: 349, column: 9, scope: !149)
!556 = !DILocation(line: 350, column: 9, scope: !553)
!557 = !DILocation(line: 351, column: 22, scope: !149)
!558 = !DILocation(line: 351, column: 39, scope: !149)
!559 = !DILocation(line: 351, column: 44, scope: !149)
!560 = !DILocation(line: 351, column: 12, scope: !149)
!561 = !DILocation(line: 351, column: 5, scope: !149)
!562 = !DILocation(line: 352, column: 1, scope: !149)
!563 = !DILocation(line: 355, column: 24, scope: !152)
!564 = !DILocation(line: 355, column: 36, scope: !152)
!565 = !DILocation(line: 358, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !152, file: !25, line: 358, column: 9)
!567 = !DILocation(line: 358, column: 18, scope: !566)
!568 = !DILocation(line: 358, column: 9, scope: !152)
!569 = !DILocation(line: 359, column: 9, scope: !566)
!570 = !DILocation(line: 360, column: 22, scope: !152)
!571 = !DILocation(line: 360, column: 40, scope: !152)
!572 = !DILocation(line: 360, column: 45, scope: !152)
!573 = !DILocation(line: 360, column: 50, scope: !152)
!574 = !DILocation(line: 360, column: 12, scope: !152)
!575 = !DILocation(line: 360, column: 5, scope: !152)
!576 = !DILocation(line: 361, column: 1, scope: !152)
!577 = !DILocation(line: 364, column: 21, scope: !156)
!578 = !DILocation(line: 366, column: 15, scope: !156)
!579 = !DILocation(line: 366, column: 30, scope: !156)
!580 = !DILocation(line: 366, column: 35, scope: !156)
!581 = !DILocation(line: 366, column: 5, scope: !156)
!582 = !DILocation(line: 367, column: 1, scope: !156)
!583 = !DILocation(line: 893, column: 12, scope: !159)
!584 = !DILocation(line: 893, column: 5, scope: !159)
!585 = !DILocation(line: 2056, column: 30, scope: !162)
!586 = !DILocation(line: 2057, column: 36, scope: !162)
!587 = !{!588, !588, i64 0}
!588 = !{!"int", !376, i64 0}
!589 = !DILocation(line: 2057, column: 52, scope: !162)
!590 = !DILocation(line: 2057, column: 71, scope: !162)
!591 = !DILocation(line: 2059, column: 5, scope: !162)
!592 = !DILocation(line: 2059, column: 10, scope: !162)
!593 = !DILocation(line: 2060, column: 5, scope: !162)
!594 = !DILocation(line: 2060, column: 10, scope: !162)
!595 = !DILocation(line: 2061, column: 19, scope: !162)
!596 = !DILocation(line: 2063, column: 19, scope: !162)
!597 = !DILocation(line: 2063, column: 31, scope: !162)
!598 = !DILocation(line: 2063, column: 43, scope: !162)
!599 = !DILocation(line: 2061, column: 5, scope: !162)
!600 = !DILocation(line: 2064, column: 19, scope: !162)
!601 = !DILocation(line: 2065, column: 28, scope: !162)
!602 = !DILocation(line: 2064, column: 5, scope: !162)
!603 = !DILocation(line: 2066, column: 20, scope: !162)
!604 = !DILocation(line: 2066, column: 25, scope: !162)
!605 = !DILocation(line: 2066, column: 31, scope: !162)
!606 = !DILocation(line: 2066, column: 44, scope: !162)
!607 = !DILocation(line: 2066, column: 42, scope: !162)
!608 = !DILocation(line: 2066, column: 11, scope: !162)
!609 = !DILocation(line: 2067, column: 1, scope: !162)
!610 = !DILocation(line: 2020, column: 16, scope: !339)
!611 = !DILocation(line: 2020, column: 33, scope: !339)
!612 = !DILocation(line: 2020, column: 45, scope: !339)
!613 = !DILocation(line: 2022, column: 5, scope: !339)
!614 = !DILocation(line: 2022, column: 9, scope: !339)
!615 = !DILocation(line: 2022, column: 12, scope: !339)
!616 = !DILocation(line: 2023, column: 5, scope: !339)
!617 = !DILocation(line: 2023, column: 10, scope: !339)
!618 = !DILocation(line: 2024, column: 5, scope: !339)
!619 = !DILocation(line: 2024, column: 12, scope: !339)
!620 = !DILocation(line: 2024, column: 24, scope: !339)
!621 = !DILocation(line: 2026, column: 11, scope: !339)
!622 = !DILocation(line: 2026, column: 16, scope: !339)
!623 = !DILocation(line: 2026, column: 5, scope: !339)
!624 = !DILocation(line: 2027, column: 26, scope: !625)
!625 = distinct !DILexicalBlock(scope: !339, file: !25, line: 2027, column: 5)
!626 = !DILocation(line: 2027, column: 19, scope: !625)
!627 = !DILocation(line: 2027, column: 14, scope: !625)
!628 = !DILocation(line: 2027, column: 12, scope: !625)
!629 = !DILocation(line: 2027, column: 10, scope: !625)
!630 = !DILocation(line: 2027, column: 32, scope: !631)
!631 = !DILexicalBlockFile(scope: !632, file: !25, discriminator: 2)
!632 = !DILexicalBlockFile(scope: !633, file: !25, discriminator: 1)
!633 = distinct !DILexicalBlock(scope: !625, file: !25, line: 2027, column: 5)
!634 = !DILocation(line: 2027, column: 34, scope: !633)
!635 = !DILocation(line: 2027, column: 5, scope: !625)
!636 = !DILocation(line: 2028, column: 20, scope: !633)
!637 = !DILocation(line: 2028, column: 9, scope: !633)
!638 = !DILocation(line: 2027, column: 40, scope: !633)
!639 = !DILocation(line: 2027, column: 5, scope: !633)
!640 = !DILocation(line: 2029, column: 16, scope: !339)
!641 = !DILocation(line: 2029, column: 5, scope: !339)
!642 = !DILocation(line: 2032, column: 7, scope: !339)
!643 = !DILocation(line: 2033, column: 10, scope: !339)
!644 = !DILocation(line: 2033, column: 5, scope: !339)
!645 = !DILocation(line: 2033, column: 14, scope: !339)
!646 = !DILocation(line: 2034, column: 10, scope: !339)
!647 = !DILocation(line: 2034, column: 5, scope: !339)
!648 = !DILocation(line: 2034, column: 14, scope: !339)
!649 = !DILocation(line: 2035, column: 7, scope: !339)
!650 = !DILocation(line: 2036, column: 5, scope: !339)
!651 = !DILocation(line: 2037, column: 9, scope: !354)
!652 = !DILocation(line: 2037, column: 16, scope: !354)
!653 = !DILocation(line: 2037, column: 28, scope: !354)
!654 = !DILocation(line: 2037, column: 34, scope: !354)
!655 = !DILocation(line: 2038, column: 9, scope: !354)
!656 = !DILocation(line: 2038, column: 22, scope: !354)
!657 = !DILocation(line: 2038, column: 45, scope: !354)
!658 = !DILocation(line: 2038, column: 53, scope: !354)
!659 = !DILocation(line: 2038, column: 63, scope: !354)
!660 = !DILocation(line: 2038, column: 51, scope: !354)
!661 = !DILocation(line: 2038, column: 30, scope: !354)
!662 = !DILocation(line: 2039, column: 17, scope: !354)
!663 = !DILocation(line: 2039, column: 15, scope: !354)
!664 = !DILocation(line: 2040, column: 27, scope: !354)
!665 = !DILocation(line: 2040, column: 33, scope: !354)
!666 = !DILocation(line: 2040, column: 20, scope: !354)
!667 = !DILocation(line: 2040, column: 14, scope: !354)
!668 = !DILocation(line: 2040, column: 9, scope: !354)
!669 = !DILocation(line: 2040, column: 18, scope: !354)
!670 = !DILocation(line: 2041, column: 9, scope: !354)
!671 = !DILocation(line: 2042, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !354, file: !25, line: 2042, column: 13)
!673 = !DILocation(line: 2042, column: 15, scope: !672)
!674 = !DILocation(line: 2042, column: 20, scope: !672)
!675 = !DILocation(line: 2042, column: 23, scope: !676)
!676 = !DILexicalBlockFile(scope: !672, file: !25, discriminator: 1)
!677 = !DILocation(line: 2042, column: 29, scope: !672)
!678 = !DILocation(line: 2042, column: 32, scope: !679)
!679 = !DILexicalBlockFile(scope: !672, file: !25, discriminator: 2)
!680 = !DILocation(line: 2042, column: 34, scope: !672)
!681 = !DILocation(line: 2042, column: 13, scope: !354)
!682 = !DILocation(line: 2043, column: 15, scope: !683)
!683 = distinct !DILexicalBlock(scope: !672, file: !25, line: 2042, column: 40)
!684 = !DILocation(line: 2044, column: 18, scope: !683)
!685 = !DILocation(line: 2044, column: 13, scope: !683)
!686 = !DILocation(line: 2044, column: 22, scope: !683)
!687 = !DILocation(line: 2045, column: 9, scope: !683)
!688 = !DILocation(line: 2046, column: 5, scope: !339)
!689 = !DILocation(line: 2046, column: 5, scope: !354)
!690 = !DILocation(line: 2046, column: 14, scope: !691)
!691 = !DILexicalBlockFile(scope: !339, file: !25, discriminator: 1)
!692 = !DILocation(line: 2046, column: 20, scope: !339)
!693 = !DILocation(line: 2046, column: 23, scope: !694)
!694 = !DILexicalBlockFile(scope: !339, file: !25, discriminator: 2)
!695 = !DILocation(line: 2046, column: 25, scope: !339)
!696 = !DILocation(line: 2046, column: 5, scope: !697)
!697 = !DILexicalBlockFile(scope: !354, file: !25, discriminator: 3)
!698 = !DILocation(line: 2048, column: 5, scope: !339)
!699 = !DILocation(line: 2048, column: 12, scope: !700)
!700 = !DILexicalBlockFile(scope: !691, file: !25, discriminator: 2)
!701 = !DILocation(line: 2048, column: 14, scope: !339)
!702 = !DILocation(line: 2049, column: 14, scope: !339)
!703 = !DILocation(line: 2049, column: 9, scope: !339)
!704 = !DILocation(line: 2049, column: 18, scope: !339)
!705 = !DILocation(line: 2050, column: 11, scope: !339)
!706 = !DILocation(line: 2050, column: 16, scope: !339)
!707 = !DILocation(line: 2050, column: 5, scope: !339)
!708 = !DILocation(line: 2052, column: 12, scope: !339)
!709 = !DILocation(line: 2053, column: 1, scope: !339)
!710 = !DILocation(line: 2052, column: 5, scope: !339)
!711 = !DILocation(line: 2076, column: 34, scope: !228)
!712 = !DILocation(line: 2078, column: 5, scope: !228)
!713 = !DILocation(line: 2078, column: 18, scope: !228)
!714 = !DILocation(line: 2079, column: 5, scope: !228)
!715 = !DILocation(line: 2079, column: 24, scope: !228)
!716 = !DILocation(line: 2081, column: 5, scope: !228)
!717 = !DILocation(line: 2081, column: 12, scope: !228)
!718 = !DILocation(line: 2082, column: 5, scope: !228)
!719 = !DILocation(line: 2082, column: 12, scope: !228)
!720 = !DILocation(line: 2083, column: 5, scope: !228)
!721 = !DILocation(line: 2083, column: 12, scope: !228)
!722 = !DILocation(line: 2085, column: 5, scope: !228)
!723 = !DILocation(line: 2085, column: 12, scope: !228)
!724 = !DILocation(line: 2087, column: 5, scope: !228)
!725 = !DILocation(line: 2087, column: 12, scope: !228)
!726 = !DILocation(line: 2089, column: 5, scope: !228)
!727 = !DILocation(line: 2089, column: 18, scope: !228)
!728 = !DILocation(line: 2091, column: 5, scope: !228)
!729 = !DILocation(line: 2091, column: 12, scope: !228)
!730 = !DILocation(line: 2093, column: 5, scope: !228)
!731 = !DILocation(line: 2093, column: 12, scope: !228)
!732 = !DILocation(line: 2098, column: 5, scope: !228)
!733 = !DILocation(line: 2098, column: 12, scope: !228)
!734 = !DILocation(line: 2100, column: 5, scope: !228)
!735 = !DILocation(line: 2100, column: 12, scope: !228)
!736 = !DILocation(line: 2102, column: 5, scope: !228)
!737 = !DILocation(line: 2102, column: 12, scope: !228)
!738 = !DILocation(line: 2103, column: 5, scope: !228)
!739 = !DILocation(line: 2103, column: 10, scope: !228)
!740 = !DILocation(line: 2105, column: 13, scope: !228)
!741 = !DILocation(line: 2105, column: 5, scope: !228)
!742 = !DILocation(line: 2108, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !228, file: !25, line: 2108, column: 5)
!744 = !DILocation(line: 2108, column: 10, scope: !743)
!745 = !DILocation(line: 2108, column: 17, scope: !746)
!746 = !DILexicalBlockFile(scope: !747, file: !25, discriminator: 2)
!747 = !DILexicalBlockFile(scope: !748, file: !25, discriminator: 1)
!748 = distinct !DILexicalBlock(scope: !743, file: !25, line: 2108, column: 5)
!749 = !DILocation(line: 2108, column: 19, scope: !748)
!750 = !DILocation(line: 2108, column: 5, scope: !743)
!751 = !DILocation(line: 2109, column: 52, scope: !748)
!752 = !DILocation(line: 2109, column: 38, scope: !748)
!753 = !DILocation(line: 2109, column: 55, scope: !748)
!754 = !DILocation(line: 2109, column: 33, scope: !748)
!755 = !DILocation(line: 2109, column: 23, scope: !748)
!756 = !DILocation(line: 2109, column: 36, scope: !748)
!757 = !DILocation(line: 2109, column: 18, scope: !748)
!758 = !DILocation(line: 2109, column: 9, scope: !748)
!759 = !DILocation(line: 2109, column: 21, scope: !748)
!760 = !DILocation(line: 2108, column: 33, scope: !748)
!761 = !DILocation(line: 2108, column: 5, scope: !748)
!762 = !DILocation(line: 2115, column: 12, scope: !254)
!763 = !DILocation(line: 2115, column: 10, scope: !254)
!764 = !DILocation(line: 2115, column: 17, scope: !765)
!765 = !DILexicalBlockFile(scope: !766, file: !25, discriminator: 2)
!766 = !DILexicalBlockFile(scope: !253, file: !25, discriminator: 1)
!767 = !DILocation(line: 2115, column: 21, scope: !253)
!768 = !DILocation(line: 2115, column: 19, scope: !253)
!769 = !DILocation(line: 2115, column: 5, scope: !254)
!770 = !DILocation(line: 2116, column: 9, scope: !252)
!771 = !DILocation(line: 2116, column: 22, scope: !252)
!772 = !DILocation(line: 2117, column: 9, scope: !252)
!773 = !DILocation(line: 2117, column: 22, scope: !252)
!774 = !DILocation(line: 2117, column: 36, scope: !252)
!775 = !DILocation(line: 2117, column: 29, scope: !252)
!776 = !DILocation(line: 2117, column: 39, scope: !252)
!777 = !{!778, !438, i64 0}
!778 = !{!"arena_object", !438, i64 0, !381, i64 8, !588, i64 16, !588, i64 20, !381, i64 24, !381, i64 32, !381, i64 40}
!779 = !DILocation(line: 2120, column: 20, scope: !780)
!780 = distinct !DILexicalBlock(scope: !252, file: !25, line: 2120, column: 13)
!781 = !DILocation(line: 2120, column: 13, scope: !780)
!782 = !DILocation(line: 2120, column: 23, scope: !780)
!783 = !DILocation(line: 2120, column: 31, scope: !780)
!784 = !DILocation(line: 2120, column: 13, scope: !252)
!785 = !DILocation(line: 2121, column: 13, scope: !780)
!786 = !DILocation(line: 2122, column: 17, scope: !252)
!787 = !DILocation(line: 2124, column: 32, scope: !252)
!788 = !DILocation(line: 2124, column: 25, scope: !252)
!789 = !DILocation(line: 2124, column: 35, scope: !252)
!790 = !{!778, !588, i64 16}
!791 = !DILocation(line: 2124, column: 22, scope: !252)
!792 = !DILocation(line: 2127, column: 13, scope: !793)
!793 = distinct !DILexicalBlock(scope: !252, file: !25, line: 2127, column: 13)
!794 = !DILocation(line: 2127, column: 18, scope: !793)
!795 = !DILocation(line: 2127, column: 13, scope: !252)
!796 = !DILocation(line: 2128, column: 29, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !25, line: 2127, column: 52)
!798 = !DILocation(line: 2129, column: 18, scope: !797)
!799 = !DILocation(line: 2130, column: 18, scope: !797)
!800 = !DILocation(line: 2131, column: 9, scope: !797)
!801 = !DILocation(line: 2135, column: 16, scope: !259)
!802 = !DILocation(line: 2135, column: 14, scope: !259)
!803 = !DILocation(line: 2136, column: 21, scope: !258)
!804 = !DILocation(line: 2136, column: 50, scope: !258)
!805 = !DILocation(line: 2136, column: 43, scope: !258)
!806 = !DILocation(line: 2136, column: 53, scope: !258)
!807 = !{!778, !381, i64 8}
!808 = !DILocation(line: 2136, column: 28, scope: !258)
!809 = !DILocation(line: 2136, column: 26, scope: !258)
!810 = !DILocation(line: 2135, column: 9, scope: !259)
!811 = !DILocation(line: 2138, column: 13, scope: !257)
!812 = !DILocation(line: 2138, column: 19, scope: !257)
!813 = !DILocation(line: 2138, column: 30, scope: !257)
!814 = !DILocation(line: 2138, column: 23, scope: !257)
!815 = !DILocation(line: 2139, column: 13, scope: !257)
!816 = !DILocation(line: 2139, column: 32, scope: !257)
!817 = !DILocation(line: 2139, column: 37, scope: !257)
!818 = !DILocation(line: 2139, column: 40, scope: !257)
!819 = !{!820, !588, i64 36}
!820 = !{!"pool_header", !376, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !588, i64 32, !588, i64 36, !588, i64 40, !588, i64 44}
!821 = !DILocation(line: 2140, column: 13, scope: !257)
!822 = !DILocation(line: 2140, column: 26, scope: !257)
!823 = !DILocation(line: 2142, column: 17, scope: !824)
!824 = distinct !DILexicalBlock(scope: !257, file: !25, line: 2142, column: 17)
!825 = !DILocation(line: 2142, column: 20, scope: !824)
!826 = !DILocation(line: 2142, column: 24, scope: !824)
!827 = !DILocation(line: 2142, column: 30, scope: !824)
!828 = !DILocation(line: 2142, column: 17, scope: !257)
!829 = !DILocation(line: 2145, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !25, line: 2142, column: 36)
!831 = !DILocation(line: 2147, column: 24, scope: !257)
!832 = !DILocation(line: 2147, column: 15, scope: !257)
!833 = !DILocation(line: 2147, column: 13, scope: !257)
!834 = !DILocation(line: 2148, column: 30, scope: !257)
!835 = !DILocation(line: 2148, column: 33, scope: !257)
!836 = !DILocation(line: 2148, column: 37, scope: !257)
!837 = !DILocation(line: 2148, column: 23, scope: !257)
!838 = !DILocation(line: 2148, column: 13, scope: !257)
!839 = !DILocation(line: 2148, column: 27, scope: !257)
!840 = !DILocation(line: 2149, column: 157, scope: !257)
!841 = !DILocation(line: 2149, column: 161, scope: !257)
!842 = !DILocation(line: 2149, column: 166, scope: !257)
!843 = !DILocation(line: 2149, column: 138, scope: !257)
!844 = !DILocation(line: 2149, column: 175, scope: !257)
!845 = !DILocation(line: 2149, column: 178, scope: !257)
!846 = !DILocation(line: 2149, column: 182, scope: !257)
!847 = !DILocation(line: 2149, column: 173, scope: !257)
!848 = !DILocation(line: 2149, column: 24, scope: !257)
!849 = !DILocation(line: 2150, column: 34, scope: !257)
!850 = !DILocation(line: 2150, column: 27, scope: !257)
!851 = !DILocation(line: 2150, column: 13, scope: !257)
!852 = !DILocation(line: 2150, column: 31, scope: !257)
!853 = !DILocation(line: 2155, column: 9, scope: !258)
!854 = !DILocation(line: 2155, column: 9, scope: !855)
!855 = !DILexicalBlockFile(scope: !258, file: !25, discriminator: 1)
!856 = !DILocation(line: 2155, column: 9, scope: !257)
!857 = !DILocation(line: 2137, column: 21, scope: !258)
!858 = !DILocation(line: 2137, column: 31, scope: !258)
!859 = !DILocation(line: 2135, column: 9, scope: !258)
!860 = !DILocation(line: 2156, column: 5, scope: !253)
!861 = !DILocation(line: 2156, column: 5, scope: !766)
!862 = !DILocation(line: 2156, column: 5, scope: !252)
!863 = !DILocation(line: 2115, column: 32, scope: !253)
!864 = !DILocation(line: 2115, column: 5, scope: !253)
!865 = !DILocation(line: 2159, column: 17, scope: !228)
!866 = !DILocation(line: 2159, column: 5, scope: !228)
!867 = !DILocation(line: 2162, column: 11, scope: !228)
!868 = !DILocation(line: 2160, column: 5, scope: !228)
!869 = !DILocation(line: 2164, column: 12, scope: !265)
!870 = !DILocation(line: 2164, column: 10, scope: !265)
!871 = !DILocation(line: 2164, column: 17, scope: !872)
!872 = !DILexicalBlockFile(scope: !873, file: !25, discriminator: 2)
!873 = !DILexicalBlockFile(scope: !264, file: !25, discriminator: 1)
!874 = !DILocation(line: 2164, column: 19, scope: !264)
!875 = !DILocation(line: 2164, column: 5, scope: !265)
!876 = !DILocation(line: 2165, column: 9, scope: !263)
!877 = !DILocation(line: 2165, column: 16, scope: !263)
!878 = !DILocation(line: 2165, column: 29, scope: !263)
!879 = !DILocation(line: 2165, column: 20, scope: !263)
!880 = !DILocation(line: 2166, column: 9, scope: !263)
!881 = !DILocation(line: 2166, column: 16, scope: !263)
!882 = !DILocation(line: 2166, column: 30, scope: !263)
!883 = !DILocation(line: 2166, column: 20, scope: !263)
!884 = !DILocation(line: 2167, column: 9, scope: !263)
!885 = !DILocation(line: 2167, column: 16, scope: !263)
!886 = !DILocation(line: 2167, column: 34, scope: !263)
!887 = !DILocation(line: 2167, column: 20, scope: !263)
!888 = !DILocation(line: 2168, column: 9, scope: !263)
!889 = !DILocation(line: 2168, column: 22, scope: !263)
!890 = !DILocation(line: 2168, column: 46, scope: !263)
!891 = !DILocation(line: 2168, column: 49, scope: !263)
!892 = !DILocation(line: 2168, column: 54, scope: !263)
!893 = !DILocation(line: 2169, column: 13, scope: !894)
!894 = distinct !DILexicalBlock(scope: !263, file: !25, line: 2169, column: 13)
!895 = !DILocation(line: 2169, column: 15, scope: !894)
!896 = !DILocation(line: 2169, column: 13, scope: !263)
!897 = !DILocation(line: 2171, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !25, line: 2169, column: 21)
!899 = !DILocation(line: 2173, column: 17, scope: !263)
!900 = !DILocation(line: 2177, column: 17, scope: !263)
!901 = !DILocation(line: 2177, column: 20, scope: !263)
!902 = !DILocation(line: 2177, column: 26, scope: !263)
!903 = !DILocation(line: 2177, column: 29, scope: !263)
!904 = !DILocation(line: 2177, column: 32, scope: !263)
!905 = !DILocation(line: 2173, column: 9, scope: !263)
!906 = !DILocation(line: 2178, column: 28, scope: !263)
!907 = !DILocation(line: 2178, column: 32, scope: !263)
!908 = !DILocation(line: 2178, column: 30, scope: !263)
!909 = !DILocation(line: 2178, column: 25, scope: !263)
!910 = !DILocation(line: 2179, column: 28, scope: !263)
!911 = !DILocation(line: 2179, column: 32, scope: !263)
!912 = !DILocation(line: 2179, column: 30, scope: !263)
!913 = !DILocation(line: 2179, column: 25, scope: !263)
!914 = !DILocation(line: 2180, column: 30, scope: !263)
!915 = !DILocation(line: 2180, column: 32, scope: !263)
!916 = !DILocation(line: 2180, column: 27, scope: !263)
!917 = !DILocation(line: 2181, column: 25, scope: !263)
!918 = !DILocation(line: 2181, column: 129, scope: !263)
!919 = !DILocation(line: 2181, column: 127, scope: !263)
!920 = !DILocation(line: 2181, column: 27, scope: !263)
!921 = !DILocation(line: 2181, column: 22, scope: !263)
!922 = !DILocation(line: 2182, column: 5, scope: !264)
!923 = !DILocation(line: 2182, column: 5, scope: !873)
!924 = !DILocation(line: 2182, column: 5, scope: !263)
!925 = !DILocation(line: 2164, column: 33, scope: !264)
!926 = !DILocation(line: 2164, column: 5, scope: !264)
!927 = !DILocation(line: 2183, column: 17, scope: !228)
!928 = !DILocation(line: 2183, column: 5, scope: !228)
!929 = !DILocation(line: 2187, column: 20, scope: !228)
!930 = !DILocation(line: 2187, column: 53, scope: !228)
!931 = !DILocation(line: 2187, column: 11, scope: !228)
!932 = !DILocation(line: 2188, column: 20, scope: !228)
!933 = !DILocation(line: 2188, column: 47, scope: !228)
!934 = !DILocation(line: 2188, column: 72, scope: !228)
!935 = !DILocation(line: 2188, column: 70, scope: !228)
!936 = !DILocation(line: 2188, column: 11, scope: !228)
!937 = !DILocation(line: 2189, column: 20, scope: !228)
!938 = !DILocation(line: 2189, column: 52, scope: !228)
!939 = !DILocation(line: 2189, column: 11, scope: !228)
!940 = !DILocation(line: 2190, column: 20, scope: !228)
!941 = !DILocation(line: 2190, column: 55, scope: !228)
!942 = !DILocation(line: 2190, column: 11, scope: !228)
!943 = !DILocation(line: 2192, column: 19, scope: !228)
!944 = !DILocation(line: 2194, column: 9, scope: !228)
!945 = !DILocation(line: 2192, column: 5, scope: !228)
!946 = !DILocation(line: 2195, column: 20, scope: !228)
!947 = !DILocation(line: 2195, column: 25, scope: !228)
!948 = !DILocation(line: 2195, column: 30, scope: !228)
!949 = !DILocation(line: 2195, column: 38, scope: !228)
!950 = !DILocation(line: 2195, column: 11, scope: !228)
!951 = !DILocation(line: 2197, column: 17, scope: !228)
!952 = !DILocation(line: 2197, column: 5, scope: !228)
!953 = !DILocation(line: 2199, column: 22, scope: !228)
!954 = !DILocation(line: 2199, column: 58, scope: !228)
!955 = !DILocation(line: 2199, column: 13, scope: !228)
!956 = !DILocation(line: 2199, column: 11, scope: !228)
!957 = !DILocation(line: 2200, column: 23, scope: !228)
!958 = !DILocation(line: 2200, column: 59, scope: !228)
!959 = !DILocation(line: 2200, column: 14, scope: !228)
!960 = !DILocation(line: 2200, column: 11, scope: !228)
!961 = !DILocation(line: 2202, column: 19, scope: !228)
!962 = !DILocation(line: 2203, column: 39, scope: !228)
!963 = !DILocation(line: 2202, column: 5, scope: !228)
!964 = !DILocation(line: 2204, column: 23, scope: !228)
!965 = !DILocation(line: 2204, column: 28, scope: !228)
!966 = !DILocation(line: 2204, column: 41, scope: !228)
!967 = !DILocation(line: 2204, column: 33, scope: !228)
!968 = !DILocation(line: 2204, column: 54, scope: !228)
!969 = !DILocation(line: 2204, column: 14, scope: !228)
!970 = !DILocation(line: 2204, column: 11, scope: !228)
!971 = !DILocation(line: 2206, column: 23, scope: !228)
!972 = !DILocation(line: 2206, column: 60, scope: !228)
!973 = !DILocation(line: 2206, column: 14, scope: !228)
!974 = !DILocation(line: 2206, column: 11, scope: !228)
!975 = !DILocation(line: 2207, column: 23, scope: !228)
!976 = !DILocation(line: 2207, column: 60, scope: !228)
!977 = !DILocation(line: 2207, column: 14, scope: !228)
!978 = !DILocation(line: 2207, column: 11, scope: !228)
!979 = !DILocation(line: 2208, column: 23, scope: !228)
!980 = !DILocation(line: 2208, column: 63, scope: !228)
!981 = !DILocation(line: 2208, column: 14, scope: !228)
!982 = !DILocation(line: 2208, column: 11, scope: !228)
!983 = !DILocation(line: 2209, column: 20, scope: !228)
!984 = !DILocation(line: 2209, column: 34, scope: !228)
!985 = !DILocation(line: 2209, column: 11, scope: !228)
!986 = !DILocation(line: 2210, column: 1, scope: !228)
!987 = !DILocation(line: 52, column: 24, scope: !269)
!988 = !DILocation(line: 52, column: 36, scope: !269)
!989 = !DILocation(line: 58, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !269, file: !25, line: 58, column: 9)
!991 = !DILocation(line: 58, column: 14, scope: !990)
!992 = !DILocation(line: 58, column: 9, scope: !269)
!993 = !DILocation(line: 59, column: 14, scope: !990)
!994 = !DILocation(line: 59, column: 9, scope: !990)
!995 = !DILocation(line: 60, column: 19, scope: !269)
!996 = !DILocation(line: 60, column: 12, scope: !269)
!997 = !DILocation(line: 60, column: 5, scope: !269)
!998 = !DILocation(line: 64, column: 25, scope: !273)
!999 = !DILocation(line: 64, column: 36, scope: !273)
!1000 = !DILocation(line: 64, column: 48, scope: !273)
!1001 = !DILocation(line: 66, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !273, file: !25, line: 66, column: 9)
!1003 = !DILocation(line: 66, column: 14, scope: !1002)
!1004 = !DILocation(line: 66, column: 9, scope: !273)
!1005 = !DILocation(line: 67, column: 14, scope: !1002)
!1006 = !DILocation(line: 67, column: 9, scope: !1002)
!1007 = !DILocation(line: 68, column: 20, scope: !273)
!1008 = !DILocation(line: 68, column: 25, scope: !273)
!1009 = !DILocation(line: 68, column: 12, scope: !273)
!1010 = !DILocation(line: 68, column: 5, scope: !273)
!1011 = !DILocation(line: 72, column: 22, scope: !278)
!1012 = !DILocation(line: 72, column: 33, scope: !278)
!1013 = !DILocation(line: 74, column: 10, scope: !278)
!1014 = !DILocation(line: 74, column: 5, scope: !278)
!1015 = !DILocation(line: 75, column: 1, scope: !278)
!1016 = !DILocation(line: 1125, column: 24, scope: !282)
!1017 = !DILocation(line: 1125, column: 36, scope: !282)
!1018 = !DILocation(line: 1127, column: 5, scope: !282)
!1019 = !DILocation(line: 1127, column: 12, scope: !282)
!1020 = !DILocation(line: 1128, column: 5, scope: !282)
!1021 = !DILocation(line: 1128, column: 11, scope: !282)
!1022 = !DILocation(line: 1129, column: 5, scope: !282)
!1023 = !DILocation(line: 1129, column: 11, scope: !282)
!1024 = !DILocation(line: 1130, column: 5, scope: !282)
!1025 = !DILocation(line: 1130, column: 18, scope: !282)
!1026 = !DILocation(line: 1132, column: 24, scope: !282)
!1027 = !DILocation(line: 1144, column: 10, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !282, file: !25, line: 1144, column: 9)
!1029 = !DILocation(line: 1144, column: 17, scope: !1028)
!1030 = !DILocation(line: 1144, column: 22, scope: !1028)
!1031 = !DILocation(line: 1144, column: 9, scope: !282)
!1032 = !DILocation(line: 1149, column: 31, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !25, line: 1144, column: 29)
!1034 = !DILocation(line: 1149, column: 38, scope: !1033)
!1035 = !DILocation(line: 1149, column: 16, scope: !1033)
!1036 = !DILocation(line: 1149, column: 43, scope: !1033)
!1037 = !DILocation(line: 1149, column: 14, scope: !1033)
!1038 = !DILocation(line: 1150, column: 26, scope: !1033)
!1039 = !DILocation(line: 1150, column: 33, scope: !1033)
!1040 = !DILocation(line: 1150, column: 31, scope: !1033)
!1041 = !DILocation(line: 1150, column: 16, scope: !1033)
!1042 = !DILocation(line: 1150, column: 14, scope: !1033)
!1043 = !DILocation(line: 1151, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 1151, column: 13)
!1045 = !DILocation(line: 1151, column: 21, scope: !1044)
!1046 = !DILocation(line: 1151, column: 27, scope: !1044)
!1047 = !{!820, !381, i64 16}
!1048 = !DILocation(line: 1151, column: 18, scope: !1044)
!1049 = !DILocation(line: 1151, column: 13, scope: !1033)
!1050 = !DILocation(line: 1156, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !25, line: 1151, column: 37)
!1052 = !DILocation(line: 1156, column: 21, scope: !1051)
!1053 = !DILocation(line: 1156, column: 25, scope: !1051)
!1054 = !DILocation(line: 1156, column: 13, scope: !1051)
!1055 = !DILocation(line: 1157, column: 18, scope: !1051)
!1056 = !DILocation(line: 1157, column: 24, scope: !1051)
!1057 = !{!820, !381, i64 8}
!1058 = !DILocation(line: 1157, column: 16, scope: !1051)
!1059 = !DILocation(line: 1159, column: 47, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !25, line: 1159, column: 17)
!1061 = !DILocation(line: 1159, column: 37, scope: !1060)
!1062 = !DILocation(line: 1159, column: 36, scope: !1060)
!1063 = !DILocation(line: 1159, column: 18, scope: !1060)
!1064 = !DILocation(line: 1159, column: 24, scope: !1060)
!1065 = !DILocation(line: 1159, column: 34, scope: !1060)
!1066 = !DILocation(line: 1159, column: 51, scope: !1060)
!1067 = !DILocation(line: 1159, column: 17, scope: !1051)
!1068 = !DILocation(line: 1161, column: 32, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 1159, column: 66)
!1070 = !DILocation(line: 1161, column: 17, scope: !1069)
!1071 = !DILocation(line: 1166, column: 17, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1051, file: !25, line: 1166, column: 17)
!1073 = !DILocation(line: 1166, column: 23, scope: !1072)
!1074 = !{!820, !588, i64 40}
!1075 = !DILocation(line: 1166, column: 37, scope: !1072)
!1076 = !DILocation(line: 1166, column: 43, scope: !1072)
!1077 = !{!820, !588, i64 44}
!1078 = !DILocation(line: 1166, column: 34, scope: !1072)
!1079 = !DILocation(line: 1166, column: 17, scope: !1051)
!1080 = !DILocation(line: 1168, column: 43, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !25, line: 1166, column: 58)
!1082 = !DILocation(line: 1168, column: 35, scope: !1081)
!1083 = !DILocation(line: 1169, column: 35, scope: !1081)
!1084 = !DILocation(line: 1169, column: 41, scope: !1081)
!1085 = !DILocation(line: 1168, column: 48, scope: !1081)
!1086 = !DILocation(line: 1168, column: 17, scope: !1081)
!1087 = !DILocation(line: 1168, column: 23, scope: !1081)
!1088 = !DILocation(line: 1168, column: 33, scope: !1081)
!1089 = !DILocation(line: 1170, column: 54, scope: !1081)
!1090 = !DILocation(line: 1170, column: 60, scope: !1081)
!1091 = !DILocation(line: 1170, column: 65, scope: !1081)
!1092 = !DILocation(line: 1170, column: 17, scope: !1081)
!1093 = !DILocation(line: 1170, column: 23, scope: !1081)
!1094 = !DILocation(line: 1170, column: 34, scope: !1081)
!1095 = !DILocation(line: 1171, column: 29, scope: !1081)
!1096 = !DILocation(line: 1171, column: 35, scope: !1081)
!1097 = !DILocation(line: 1171, column: 18, scope: !1081)
!1098 = !DILocation(line: 1171, column: 46, scope: !1081)
!1099 = !DILocation(line: 1173, column: 32, scope: !1081)
!1100 = !DILocation(line: 1173, column: 17, scope: !1081)
!1101 = !DILocation(line: 1176, column: 20, scope: !1051)
!1102 = !DILocation(line: 1176, column: 26, scope: !1051)
!1103 = !DILocation(line: 1176, column: 18, scope: !1051)
!1104 = !DILocation(line: 1177, column: 20, scope: !1051)
!1105 = !DILocation(line: 1177, column: 26, scope: !1051)
!1106 = !{!820, !381, i64 24}
!1107 = !DILocation(line: 1177, column: 18, scope: !1051)
!1108 = !DILocation(line: 1178, column: 30, scope: !1051)
!1109 = !DILocation(line: 1178, column: 13, scope: !1051)
!1110 = !DILocation(line: 1178, column: 19, scope: !1051)
!1111 = !DILocation(line: 1178, column: 28, scope: !1051)
!1112 = !DILocation(line: 1179, column: 30, scope: !1051)
!1113 = !DILocation(line: 1179, column: 13, scope: !1051)
!1114 = !DILocation(line: 1179, column: 19, scope: !1051)
!1115 = !DILocation(line: 1179, column: 28, scope: !1051)
!1116 = !DILocation(line: 1181, column: 28, scope: !1051)
!1117 = !DILocation(line: 1181, column: 13, scope: !1051)
!1118 = !DILocation(line: 1187, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 1187, column: 13)
!1120 = !DILocation(line: 1187, column: 27, scope: !1119)
!1121 = !DILocation(line: 1187, column: 13, scope: !1033)
!1122 = !DILocation(line: 1195, column: 29, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !25, line: 1187, column: 42)
!1124 = !DILocation(line: 1195, column: 27, scope: !1123)
!1125 = !DILocation(line: 1196, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !25, line: 1196, column: 17)
!1127 = !DILocation(line: 1196, column: 31, scope: !1126)
!1128 = !DILocation(line: 1196, column: 17, scope: !1123)
!1129 = !DILocation(line: 1198, column: 17, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !25, line: 1196, column: 46)
!1131 = !DILocation(line: 1201, column: 17, scope: !1123)
!1132 = !DILocation(line: 1201, column: 32, scope: !1123)
!1133 = !DILocation(line: 1201, column: 42, scope: !1123)
!1134 = !{!778, !381, i64 40}
!1135 = !DILocation(line: 1200, column: 13, scope: !1123)
!1136 = !DILocation(line: 1200, column: 28, scope: !1123)
!1137 = !DILocation(line: 1200, column: 38, scope: !1123)
!1138 = !{!778, !381, i64 32}
!1139 = !DILocation(line: 1202, column: 9, scope: !1123)
!1140 = !DILocation(line: 1206, column: 16, scope: !1033)
!1141 = !DILocation(line: 1206, column: 31, scope: !1033)
!1142 = !{!778, !381, i64 24}
!1143 = !DILocation(line: 1206, column: 14, scope: !1033)
!1144 = !DILocation(line: 1207, column: 13, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 1207, column: 13)
!1146 = !DILocation(line: 1207, column: 18, scope: !1145)
!1147 = !DILocation(line: 1207, column: 13, scope: !1033)
!1148 = !DILocation(line: 1209, column: 40, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 1207, column: 33)
!1150 = !DILocation(line: 1209, column: 46, scope: !1149)
!1151 = !DILocation(line: 1209, column: 13, scope: !1149)
!1152 = !DILocation(line: 1209, column: 28, scope: !1149)
!1153 = !DILocation(line: 1209, column: 38, scope: !1149)
!1154 = !DILocation(line: 1218, column: 15, scope: !1149)
!1155 = !DILocation(line: 1218, column: 30, scope: !1149)
!1156 = !DILocation(line: 1218, column: 13, scope: !1149)
!1157 = !DILocation(line: 1219, column: 17, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 1219, column: 17)
!1159 = !DILocation(line: 1219, column: 32, scope: !1158)
!1160 = !DILocation(line: 1219, column: 43, scope: !1158)
!1161 = !DILocation(line: 1219, column: 17, scope: !1149)
!1162 = !DILocation(line: 1226, column: 33, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !25, line: 1219, column: 49)
!1164 = !DILocation(line: 1226, column: 48, scope: !1163)
!1165 = !DILocation(line: 1226, column: 31, scope: !1163)
!1166 = !DILocation(line: 1227, column: 21, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !25, line: 1227, column: 21)
!1168 = !DILocation(line: 1227, column: 35, scope: !1167)
!1169 = !DILocation(line: 1227, column: 21, scope: !1163)
!1170 = !DILocation(line: 1228, column: 21, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !25, line: 1227, column: 50)
!1172 = !DILocation(line: 1228, column: 36, scope: !1171)
!1173 = !DILocation(line: 1228, column: 46, scope: !1171)
!1174 = !DILocation(line: 1230, column: 17, scope: !1171)
!1175 = !DILocation(line: 1231, column: 13, scope: !1163)
!1176 = !DILocation(line: 1219, column: 46, scope: !1158)
!1177 = !DILocation(line: 1245, column: 30, scope: !1149)
!1178 = !DILocation(line: 1245, column: 37, scope: !1149)
!1179 = !DILocation(line: 1245, column: 35, scope: !1149)
!1180 = !DILocation(line: 1245, column: 20, scope: !1149)
!1181 = !DILocation(line: 1245, column: 18, scope: !1149)
!1182 = !DILocation(line: 1246, column: 30, scope: !1149)
!1183 = !DILocation(line: 1246, column: 13, scope: !1149)
!1184 = !DILocation(line: 1246, column: 19, scope: !1149)
!1185 = !DILocation(line: 1246, column: 28, scope: !1149)
!1186 = !DILocation(line: 1247, column: 30, scope: !1149)
!1187 = !DILocation(line: 1247, column: 13, scope: !1149)
!1188 = !DILocation(line: 1247, column: 19, scope: !1149)
!1189 = !DILocation(line: 1247, column: 28, scope: !1149)
!1190 = !DILocation(line: 1248, column: 30, scope: !1149)
!1191 = !DILocation(line: 1248, column: 13, scope: !1149)
!1192 = !DILocation(line: 1248, column: 19, scope: !1149)
!1193 = !DILocation(line: 1248, column: 28, scope: !1149)
!1194 = !DILocation(line: 1249, column: 30, scope: !1149)
!1195 = !DILocation(line: 1249, column: 13, scope: !1149)
!1196 = !DILocation(line: 1249, column: 19, scope: !1149)
!1197 = !DILocation(line: 1249, column: 28, scope: !1149)
!1198 = !DILocation(line: 1250, column: 13, scope: !1149)
!1199 = !DILocation(line: 1250, column: 19, scope: !1149)
!1200 = !DILocation(line: 1250, column: 23, scope: !1149)
!1201 = !DILocation(line: 1250, column: 29, scope: !1149)
!1202 = !DILocation(line: 1251, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1149, file: !25, line: 1251, column: 17)
!1204 = !DILocation(line: 1251, column: 23, scope: !1203)
!1205 = !DILocation(line: 1251, column: 32, scope: !1203)
!1206 = !DILocation(line: 1251, column: 29, scope: !1203)
!1207 = !DILocation(line: 1251, column: 17, scope: !1149)
!1208 = !DILocation(line: 1256, column: 22, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1203, file: !25, line: 1251, column: 38)
!1210 = !DILocation(line: 1256, column: 28, scope: !1209)
!1211 = !DILocation(line: 1256, column: 20, scope: !1209)
!1212 = !DILocation(line: 1258, column: 46, scope: !1209)
!1213 = !DILocation(line: 1258, column: 36, scope: !1209)
!1214 = !DILocation(line: 1258, column: 35, scope: !1209)
!1215 = !DILocation(line: 1258, column: 17, scope: !1209)
!1216 = !DILocation(line: 1258, column: 23, scope: !1209)
!1217 = !DILocation(line: 1258, column: 33, scope: !1209)
!1218 = !DILocation(line: 1260, column: 32, scope: !1209)
!1219 = !DILocation(line: 1260, column: 17, scope: !1209)
!1220 = !DILocation(line: 1267, column: 27, scope: !1149)
!1221 = !DILocation(line: 1267, column: 13, scope: !1149)
!1222 = !DILocation(line: 1267, column: 19, scope: !1149)
!1223 = !DILocation(line: 1267, column: 25, scope: !1149)
!1224 = !DILocation(line: 1268, column: 37, scope: !1149)
!1225 = !DILocation(line: 1268, column: 43, scope: !1149)
!1226 = !DILocation(line: 1268, column: 48, scope: !1149)
!1227 = !DILocation(line: 1268, column: 18, scope: !1149)
!1228 = !DILocation(line: 1269, column: 27, scope: !1149)
!1229 = !DILocation(line: 1269, column: 18, scope: !1149)
!1230 = !DILocation(line: 1269, column: 32, scope: !1149)
!1231 = !DILocation(line: 1269, column: 16, scope: !1149)
!1232 = !DILocation(line: 1270, column: 117, scope: !1149)
!1233 = !DILocation(line: 1270, column: 122, scope: !1149)
!1234 = !DILocation(line: 1270, column: 116, scope: !1149)
!1235 = !DILocation(line: 1270, column: 114, scope: !1149)
!1236 = !DILocation(line: 1270, column: 32, scope: !1149)
!1237 = !DILocation(line: 1270, column: 13, scope: !1149)
!1238 = !DILocation(line: 1270, column: 19, scope: !1149)
!1239 = !DILocation(line: 1270, column: 30, scope: !1149)
!1240 = !DILocation(line: 1271, column: 48, scope: !1149)
!1241 = !DILocation(line: 1271, column: 46, scope: !1149)
!1242 = !DILocation(line: 1271, column: 13, scope: !1149)
!1243 = !DILocation(line: 1271, column: 19, scope: !1149)
!1244 = !DILocation(line: 1271, column: 33, scope: !1149)
!1245 = !DILocation(line: 1272, column: 31, scope: !1149)
!1246 = !DILocation(line: 1272, column: 36, scope: !1149)
!1247 = !DILocation(line: 1272, column: 34, scope: !1149)
!1248 = !DILocation(line: 1272, column: 13, scope: !1149)
!1249 = !DILocation(line: 1272, column: 19, scope: !1149)
!1250 = !DILocation(line: 1272, column: 29, scope: !1149)
!1251 = !DILocation(line: 1273, column: 25, scope: !1149)
!1252 = !DILocation(line: 1273, column: 31, scope: !1149)
!1253 = !DILocation(line: 1273, column: 14, scope: !1149)
!1254 = !DILocation(line: 1273, column: 42, scope: !1149)
!1255 = !DILocation(line: 1275, column: 28, scope: !1149)
!1256 = !DILocation(line: 1275, column: 13, scope: !1149)
!1257 = !DILocation(line: 1281, column: 23, scope: !1033)
!1258 = !DILocation(line: 1281, column: 38, scope: !1033)
!1259 = !DILocation(line: 1281, column: 16, scope: !1033)
!1260 = !DILocation(line: 1281, column: 14, scope: !1033)
!1261 = !DILocation(line: 1284, column: 28, scope: !1033)
!1262 = !DILocation(line: 1284, column: 44, scope: !1033)
!1263 = !DILocation(line: 1284, column: 42, scope: !1033)
!1264 = !DILocation(line: 1284, column: 9, scope: !1033)
!1265 = !DILocation(line: 1284, column: 15, scope: !1033)
!1266 = !DILocation(line: 1284, column: 26, scope: !1033)
!1267 = !{!820, !588, i64 32}
!1268 = !DILocation(line: 1286, column: 9, scope: !1033)
!1269 = !DILocation(line: 1286, column: 15, scope: !1033)
!1270 = !DILocation(line: 1286, column: 21, scope: !1033)
!1271 = !DILocation(line: 1287, column: 9, scope: !1033)
!1272 = !DILocation(line: 1287, column: 24, scope: !1033)
!1273 = !DILocation(line: 1287, column: 37, scope: !1033)
!1274 = !DILocation(line: 1288, column: 11, scope: !1033)
!1275 = !DILocation(line: 1288, column: 26, scope: !1033)
!1276 = !DILocation(line: 1288, column: 9, scope: !1033)
!1277 = !DILocation(line: 1290, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 1290, column: 13)
!1279 = !DILocation(line: 1290, column: 28, scope: !1278)
!1280 = !DILocation(line: 1290, column: 39, scope: !1278)
!1281 = !DILocation(line: 1290, column: 13, scope: !1033)
!1282 = !DILocation(line: 1295, column: 29, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !25, line: 1290, column: 45)
!1284 = !DILocation(line: 1295, column: 44, scope: !1283)
!1285 = !DILocation(line: 1295, column: 27, scope: !1283)
!1286 = !DILocation(line: 1296, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !25, line: 1296, column: 17)
!1288 = !DILocation(line: 1296, column: 31, scope: !1287)
!1289 = !DILocation(line: 1296, column: 17, scope: !1283)
!1290 = !DILocation(line: 1297, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !25, line: 1296, column: 46)
!1292 = !DILocation(line: 1297, column: 32, scope: !1291)
!1293 = !DILocation(line: 1297, column: 42, scope: !1291)
!1294 = !DILocation(line: 1299, column: 13, scope: !1291)
!1295 = !DILocation(line: 1300, column: 9, scope: !1283)
!1296 = !DILocation(line: 1302, column: 9, scope: !1033)
!1297 = !DILocation(line: 1144, column: 24, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1028, file: !25, discriminator: 1)
!1299 = !DILocation(line: 1314, column: 9, scope: !291)
!1300 = !DILocation(line: 1314, column: 15, scope: !291)
!1301 = !DILocation(line: 1314, column: 40, scope: !291)
!1302 = !DILocation(line: 1314, column: 24, scope: !291)
!1303 = !DILocation(line: 1315, column: 14, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !291, file: !25, line: 1315, column: 13)
!1305 = !DILocation(line: 1315, column: 13, scope: !291)
!1306 = !DILocation(line: 1316, column: 32, scope: !1304)
!1307 = !DILocation(line: 1316, column: 13, scope: !1304)
!1308 = !DILocation(line: 1317, column: 16, scope: !291)
!1309 = !DILocation(line: 1317, column: 9, scope: !291)
!1310 = !DILocation(line: 1318, column: 5, scope: !282)
!1311 = !DILocation(line: 1319, column: 1, scope: !282)
!1312 = !DILocation(line: 1554, column: 25, scope: !304)
!1313 = !DILocation(line: 1554, column: 36, scope: !304)
!1314 = !DILocation(line: 1554, column: 46, scope: !304)
!1315 = !DILocation(line: 1556, column: 5, scope: !304)
!1316 = !DILocation(line: 1556, column: 11, scope: !304)
!1317 = !DILocation(line: 1557, column: 5, scope: !304)
!1318 = !DILocation(line: 1557, column: 11, scope: !304)
!1319 = !DILocation(line: 1558, column: 5, scope: !304)
!1320 = !DILocation(line: 1558, column: 12, scope: !304)
!1321 = !DILocation(line: 1560, column: 5, scope: !304)
!1322 = !DILocation(line: 1560, column: 18, scope: !304)
!1323 = !DILocation(line: 1563, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1563, column: 9)
!1325 = !DILocation(line: 1563, column: 11, scope: !1324)
!1326 = !DILocation(line: 1563, column: 9, scope: !304)
!1327 = !DILocation(line: 1564, column: 33, scope: !1324)
!1328 = !DILocation(line: 1564, column: 38, scope: !1324)
!1329 = !DILocation(line: 1564, column: 16, scope: !1324)
!1330 = !DILocation(line: 1564, column: 9, scope: !1324)
!1331 = !DILocation(line: 1572, column: 46, scope: !304)
!1332 = !DILocation(line: 1572, column: 30, scope: !304)
!1333 = !DILocation(line: 1572, column: 50, scope: !304)
!1334 = !DILocation(line: 1572, column: 21, scope: !304)
!1335 = !DILocation(line: 1572, column: 13, scope: !304)
!1336 = !DILocation(line: 1572, column: 10, scope: !304)
!1337 = !DILocation(line: 1573, column: 30, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1573, column: 9)
!1339 = !DILocation(line: 1573, column: 37, scope: !1338)
!1340 = !DILocation(line: 1573, column: 27, scope: !1338)
!1341 = !DILocation(line: 1573, column: 51, scope: !1338)
!1342 = !DILocation(line: 1573, column: 49, scope: !1338)
!1343 = !DILocation(line: 1573, column: 61, scope: !1338)
!1344 = !DILocation(line: 1573, column: 79, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1338, file: !25, discriminator: 1)
!1346 = !DILocation(line: 1573, column: 64, scope: !1338)
!1347 = !DILocation(line: 1573, column: 91, scope: !1338)
!1348 = !DILocation(line: 1573, column: 84, scope: !1338)
!1349 = !DILocation(line: 1573, column: 108, scope: !1338)
!1350 = !DILocation(line: 1573, column: 82, scope: !1338)
!1351 = !DILocation(line: 1573, column: 116, scope: !1338)
!1352 = !DILocation(line: 1573, column: 144, scope: !1338)
!1353 = !DILocation(line: 1573, column: 154, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1338, file: !25, discriminator: 2)
!1355 = !DILocation(line: 1573, column: 147, scope: !1338)
!1356 = !DILocation(line: 1573, column: 171, scope: !1338)
!1357 = !DILocation(line: 1573, column: 179, scope: !1338)
!1358 = !DILocation(line: 1573, column: 9, scope: !304)
!1359 = !DILocation(line: 1575, column: 33, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1338, file: !25, line: 1573, column: 186)
!1361 = !DILocation(line: 1575, column: 39, scope: !1360)
!1362 = !DILocation(line: 1575, column: 46, scope: !1360)
!1363 = !DILocation(line: 1575, column: 51, scope: !1360)
!1364 = !DILocation(line: 1575, column: 16, scope: !1360)
!1365 = !DILocation(line: 1575, column: 14, scope: !1360)
!1366 = !DILocation(line: 1576, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !25, line: 1576, column: 13)
!1368 = !DILocation(line: 1576, column: 23, scope: !1367)
!1369 = !DILocation(line: 1576, column: 20, scope: !1367)
!1370 = !DILocation(line: 1576, column: 13, scope: !1360)
!1371 = !DILocation(line: 1584, column: 21, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !25, line: 1584, column: 17)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !25, line: 1576, column: 29)
!1374 = !DILocation(line: 1584, column: 19, scope: !1372)
!1375 = !DILocation(line: 1584, column: 34, scope: !1372)
!1376 = !DILocation(line: 1584, column: 32, scope: !1372)
!1377 = !DILocation(line: 1584, column: 28, scope: !1372)
!1378 = !DILocation(line: 1584, column: 17, scope: !1373)
!1379 = !DILocation(line: 1588, column: 24, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !25, line: 1584, column: 40)
!1381 = !DILocation(line: 1588, column: 17, scope: !1380)
!1382 = !DILocation(line: 1590, column: 20, scope: !1373)
!1383 = !DILocation(line: 1590, column: 18, scope: !1373)
!1384 = !DILocation(line: 1591, column: 9, scope: !1373)
!1385 = !DILocation(line: 1592, column: 31, scope: !1360)
!1386 = !DILocation(line: 1592, column: 36, scope: !1360)
!1387 = !DILocation(line: 1592, column: 14, scope: !1360)
!1388 = !DILocation(line: 1592, column: 12, scope: !1360)
!1389 = !DILocation(line: 1593, column: 13, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1360, file: !25, line: 1593, column: 13)
!1391 = !DILocation(line: 1593, column: 16, scope: !1390)
!1392 = !DILocation(line: 1593, column: 13, scope: !1360)
!1393 = !DILocation(line: 1594, column: 20, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !25, line: 1593, column: 31)
!1395 = !DILocation(line: 1594, column: 24, scope: !1394)
!1396 = !DILocation(line: 1594, column: 27, scope: !1394)
!1397 = !DILocation(line: 1594, column: 13, scope: !1394)
!1398 = !DILocation(line: 1595, column: 28, scope: !1394)
!1399 = !DILocation(line: 1595, column: 33, scope: !1394)
!1400 = !DILocation(line: 1595, column: 13, scope: !1394)
!1401 = !DILocation(line: 1596, column: 9, scope: !1394)
!1402 = !DILocation(line: 1597, column: 16, scope: !1360)
!1403 = !DILocation(line: 1597, column: 9, scope: !1360)
!1404 = !DILocation(line: 1612, column: 9, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !304, file: !25, line: 1612, column: 9)
!1406 = !DILocation(line: 1612, column: 9, scope: !304)
!1407 = !DILocation(line: 1613, column: 33, scope: !1405)
!1408 = !DILocation(line: 1613, column: 36, scope: !1405)
!1409 = !DILocation(line: 1613, column: 16, scope: !1405)
!1410 = !DILocation(line: 1613, column: 9, scope: !1405)
!1411 = !DILocation(line: 1620, column: 27, scope: !304)
!1412 = !DILocation(line: 1620, column: 10, scope: !304)
!1413 = !DILocation(line: 1620, column: 8, scope: !304)
!1414 = !DILocation(line: 1621, column: 12, scope: !304)
!1415 = !DILocation(line: 1621, column: 17, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 1)
!1417 = !DILocation(line: 1621, column: 22, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 2)
!1419 = !DILocation(line: 1621, column: 5, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !25, discriminator: 4)
!1421 = !DILexicalBlockFile(scope: !304, file: !25, discriminator: 3)
!1422 = !DILocation(line: 1621, column: 5, scope: !304)
!1423 = !DILocation(line: 1622, column: 1, scope: !304)
!1424 = !DILocation(line: 1325, column: 22, scope: !313)
!1425 = !DILocation(line: 1325, column: 33, scope: !313)
!1426 = !DILocation(line: 1327, column: 5, scope: !313)
!1427 = !DILocation(line: 1327, column: 11, scope: !313)
!1428 = !DILocation(line: 1328, column: 5, scope: !313)
!1429 = !DILocation(line: 1328, column: 12, scope: !313)
!1430 = !DILocation(line: 1329, column: 5, scope: !313)
!1431 = !DILocation(line: 1329, column: 11, scope: !313)
!1432 = !DILocation(line: 1329, column: 17, scope: !313)
!1433 = !DILocation(line: 1330, column: 5, scope: !313)
!1434 = !DILocation(line: 1330, column: 18, scope: !313)
!1435 = !DILocation(line: 1332, column: 5, scope: !313)
!1436 = !DILocation(line: 1332, column: 18, scope: !313)
!1437 = !DILocation(line: 1335, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !313, file: !25, line: 1335, column: 9)
!1439 = !DILocation(line: 1335, column: 11, scope: !1438)
!1440 = !DILocation(line: 1335, column: 9, scope: !313)
!1441 = !DILocation(line: 1336, column: 9, scope: !1438)
!1442 = !DILocation(line: 1338, column: 24, scope: !313)
!1443 = !DILocation(line: 1345, column: 46, scope: !313)
!1444 = !DILocation(line: 1345, column: 30, scope: !313)
!1445 = !DILocation(line: 1345, column: 50, scope: !313)
!1446 = !DILocation(line: 1345, column: 21, scope: !313)
!1447 = !DILocation(line: 1345, column: 13, scope: !313)
!1448 = !DILocation(line: 1345, column: 10, scope: !313)
!1449 = !DILocation(line: 1346, column: 30, scope: !327)
!1450 = !DILocation(line: 1346, column: 37, scope: !327)
!1451 = !DILocation(line: 1346, column: 27, scope: !327)
!1452 = !DILocation(line: 1346, column: 51, scope: !327)
!1453 = !DILocation(line: 1346, column: 49, scope: !327)
!1454 = !DILocation(line: 1346, column: 61, scope: !327)
!1455 = !DILocation(line: 1346, column: 79, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !327, file: !25, discriminator: 1)
!1457 = !DILocation(line: 1346, column: 64, scope: !327)
!1458 = !DILocation(line: 1346, column: 91, scope: !327)
!1459 = !DILocation(line: 1346, column: 84, scope: !327)
!1460 = !DILocation(line: 1346, column: 108, scope: !327)
!1461 = !DILocation(line: 1346, column: 82, scope: !327)
!1462 = !DILocation(line: 1346, column: 116, scope: !327)
!1463 = !DILocation(line: 1346, column: 144, scope: !327)
!1464 = !DILocation(line: 1346, column: 154, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !327, file: !25, discriminator: 2)
!1466 = !DILocation(line: 1346, column: 147, scope: !327)
!1467 = !DILocation(line: 1346, column: 171, scope: !327)
!1468 = !DILocation(line: 1346, column: 179, scope: !327)
!1469 = !DILocation(line: 1346, column: 9, scope: !313)
!1470 = !DILocation(line: 1356, column: 35, scope: !326)
!1471 = !DILocation(line: 1356, column: 41, scope: !326)
!1472 = !DILocation(line: 1356, column: 33, scope: !326)
!1473 = !DILocation(line: 1356, column: 20, scope: !326)
!1474 = !DILocation(line: 1356, column: 10, scope: !326)
!1475 = !DILocation(line: 1356, column: 22, scope: !326)
!1476 = !DILocation(line: 1357, column: 36, scope: !326)
!1477 = !DILocation(line: 1357, column: 9, scope: !326)
!1478 = !DILocation(line: 1357, column: 15, scope: !326)
!1479 = !DILocation(line: 1357, column: 25, scope: !326)
!1480 = !DILocation(line: 1358, column: 13, scope: !325)
!1481 = !DILocation(line: 1358, column: 13, scope: !326)
!1482 = !DILocation(line: 1359, column: 13, scope: !324)
!1483 = !DILocation(line: 1359, column: 34, scope: !324)
!1484 = !DILocation(line: 1360, column: 13, scope: !324)
!1485 = !DILocation(line: 1360, column: 26, scope: !324)
!1486 = !DILocation(line: 1365, column: 19, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1365, column: 17)
!1488 = !DILocation(line: 1365, column: 25, scope: !1487)
!1489 = !DILocation(line: 1365, column: 29, scope: !1487)
!1490 = !DILocation(line: 1365, column: 17, scope: !1487)
!1491 = !DILocation(line: 1365, column: 35, scope: !1487)
!1492 = !DILocation(line: 1365, column: 17, scope: !324)
!1493 = !DILocation(line: 1368, column: 17, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !25, line: 1365, column: 41)
!1495 = !DILocation(line: 1375, column: 20, scope: !324)
!1496 = !DILocation(line: 1375, column: 26, scope: !324)
!1497 = !DILocation(line: 1375, column: 18, scope: !324)
!1498 = !DILocation(line: 1376, column: 20, scope: !324)
!1499 = !DILocation(line: 1376, column: 26, scope: !324)
!1500 = !DILocation(line: 1376, column: 18, scope: !324)
!1501 = !DILocation(line: 1377, column: 30, scope: !324)
!1502 = !DILocation(line: 1377, column: 13, scope: !324)
!1503 = !DILocation(line: 1377, column: 19, scope: !324)
!1504 = !DILocation(line: 1377, column: 28, scope: !324)
!1505 = !DILocation(line: 1378, column: 30, scope: !324)
!1506 = !DILocation(line: 1378, column: 13, scope: !324)
!1507 = !DILocation(line: 1378, column: 19, scope: !324)
!1508 = !DILocation(line: 1378, column: 28, scope: !324)
!1509 = !DILocation(line: 1383, column: 26, scope: !324)
!1510 = !DILocation(line: 1383, column: 32, scope: !324)
!1511 = !DILocation(line: 1383, column: 19, scope: !324)
!1512 = !DILocation(line: 1383, column: 16, scope: !324)
!1513 = !DILocation(line: 1384, column: 30, scope: !324)
!1514 = !DILocation(line: 1384, column: 34, scope: !324)
!1515 = !DILocation(line: 1384, column: 13, scope: !324)
!1516 = !DILocation(line: 1384, column: 19, scope: !324)
!1517 = !DILocation(line: 1384, column: 28, scope: !324)
!1518 = !DILocation(line: 1385, column: 29, scope: !324)
!1519 = !DILocation(line: 1385, column: 13, scope: !324)
!1520 = !DILocation(line: 1385, column: 17, scope: !324)
!1521 = !DILocation(line: 1385, column: 27, scope: !324)
!1522 = !DILocation(line: 1386, column: 20, scope: !324)
!1523 = !DILocation(line: 1386, column: 24, scope: !324)
!1524 = !DILocation(line: 1386, column: 18, scope: !324)
!1525 = !DILocation(line: 1386, column: 16, scope: !324)
!1526 = !DILocation(line: 1400, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1400, column: 17)
!1528 = !DILocation(line: 1400, column: 23, scope: !1527)
!1529 = !DILocation(line: 1400, column: 27, scope: !1527)
!1530 = !{!778, !588, i64 20}
!1531 = !DILocation(line: 1400, column: 20, scope: !1527)
!1532 = !DILocation(line: 1400, column: 17, scope: !324)
!1533 = !DILocation(line: 1411, column: 21, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !25, line: 1411, column: 21)
!1535 = distinct !DILexicalBlock(scope: !1527, file: !25, line: 1400, column: 40)
!1536 = !DILocation(line: 1411, column: 25, scope: !1534)
!1537 = !DILocation(line: 1411, column: 35, scope: !1534)
!1538 = !DILocation(line: 1411, column: 21, scope: !1535)
!1539 = !DILocation(line: 1412, column: 37, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !25, line: 1411, column: 50)
!1541 = !DILocation(line: 1412, column: 41, scope: !1540)
!1542 = !DILocation(line: 1412, column: 35, scope: !1540)
!1543 = !DILocation(line: 1415, column: 17, scope: !1540)
!1544 = !DILocation(line: 1419, column: 25, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1534, file: !25, line: 1416, column: 22)
!1546 = !DILocation(line: 1419, column: 29, scope: !1545)
!1547 = !DILocation(line: 1418, column: 21, scope: !1545)
!1548 = !DILocation(line: 1418, column: 25, scope: !1545)
!1549 = !DILocation(line: 1418, column: 36, scope: !1545)
!1550 = !DILocation(line: 1418, column: 46, scope: !1545)
!1551 = !DILocation(line: 1422, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1535, file: !25, line: 1422, column: 21)
!1553 = !DILocation(line: 1422, column: 25, scope: !1552)
!1554 = !DILocation(line: 1422, column: 35, scope: !1552)
!1555 = !DILocation(line: 1422, column: 21, scope: !1535)
!1556 = !DILocation(line: 1425, column: 25, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !25, line: 1422, column: 50)
!1558 = !DILocation(line: 1425, column: 29, scope: !1557)
!1559 = !DILocation(line: 1424, column: 21, scope: !1557)
!1560 = !DILocation(line: 1424, column: 25, scope: !1557)
!1561 = !DILocation(line: 1424, column: 36, scope: !1557)
!1562 = !DILocation(line: 1424, column: 46, scope: !1557)
!1563 = !DILocation(line: 1426, column: 17, scope: !1557)
!1564 = !DILocation(line: 1430, column: 33, scope: !1535)
!1565 = !DILocation(line: 1430, column: 17, scope: !1535)
!1566 = !DILocation(line: 1430, column: 21, scope: !1535)
!1567 = !DILocation(line: 1430, column: 31, scope: !1535)
!1568 = !DILocation(line: 1431, column: 40, scope: !1535)
!1569 = !DILocation(line: 1431, column: 38, scope: !1535)
!1570 = !DILocation(line: 1434, column: 33, scope: !1535)
!1571 = !{!1572, !381, i64 16}
!1572 = !{!"", !381, i64 0, !381, i64 8, !381, i64 16}
!1573 = !DILocation(line: 1434, column: 54, scope: !1535)
!1574 = !{!1572, !381, i64 0}
!1575 = !DILocation(line: 1435, column: 46, scope: !1535)
!1576 = !DILocation(line: 1435, column: 50, scope: !1535)
!1577 = !DILocation(line: 1435, column: 38, scope: !1535)
!1578 = !DILocation(line: 1434, column: 17, scope: !1535)
!1579 = !DILocation(line: 1436, column: 17, scope: !1535)
!1580 = !DILocation(line: 1436, column: 21, scope: !1535)
!1581 = !DILocation(line: 1436, column: 29, scope: !1535)
!1582 = !DILocation(line: 1437, column: 17, scope: !1535)
!1583 = !DILocation(line: 1440, column: 17, scope: !1535)
!1584 = !DILocation(line: 1442, column: 17, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1442, column: 17)
!1586 = !DILocation(line: 1442, column: 20, scope: !1585)
!1587 = !DILocation(line: 1442, column: 17, scope: !324)
!1588 = !DILocation(line: 1448, column: 33, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !25, line: 1442, column: 26)
!1590 = !DILocation(line: 1448, column: 17, scope: !1589)
!1591 = !DILocation(line: 1448, column: 21, scope: !1589)
!1592 = !DILocation(line: 1448, column: 31, scope: !1589)
!1593 = !DILocation(line: 1449, column: 17, scope: !1589)
!1594 = !DILocation(line: 1449, column: 21, scope: !1589)
!1595 = !DILocation(line: 1449, column: 31, scope: !1589)
!1596 = !DILocation(line: 1450, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1589, file: !25, line: 1450, column: 21)
!1598 = !DILocation(line: 1450, column: 21, scope: !1589)
!1599 = !DILocation(line: 1451, column: 48, scope: !1597)
!1600 = !DILocation(line: 1451, column: 21, scope: !1597)
!1601 = !DILocation(line: 1451, column: 36, scope: !1597)
!1602 = !DILocation(line: 1451, column: 46, scope: !1597)
!1603 = !DILocation(line: 1452, column: 33, scope: !1589)
!1604 = !DILocation(line: 1452, column: 31, scope: !1589)
!1605 = !DILocation(line: 1456, column: 17, scope: !1589)
!1606 = !DILocation(line: 1465, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1465, column: 17)
!1608 = !DILocation(line: 1465, column: 21, scope: !1607)
!1609 = !DILocation(line: 1465, column: 31, scope: !1607)
!1610 = !DILocation(line: 1465, column: 45, scope: !1607)
!1611 = !DILocation(line: 1466, column: 26, scope: !1607)
!1612 = !DILocation(line: 1466, column: 32, scope: !1607)
!1613 = !DILocation(line: 1466, column: 36, scope: !1607)
!1614 = !DILocation(line: 1466, column: 47, scope: !1607)
!1615 = !DILocation(line: 1466, column: 29, scope: !1607)
!1616 = !DILocation(line: 1465, column: 17, scope: !324)
!1617 = !DILocation(line: 1469, column: 17, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1607, file: !25, line: 1466, column: 59)
!1619 = !DILocation(line: 1476, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1476, column: 17)
!1621 = !DILocation(line: 1476, column: 21, scope: !1620)
!1622 = !DILocation(line: 1476, column: 31, scope: !1620)
!1623 = !DILocation(line: 1476, column: 17, scope: !324)
!1624 = !DILocation(line: 1479, column: 44, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !25, line: 1476, column: 46)
!1626 = !DILocation(line: 1479, column: 48, scope: !1625)
!1627 = !DILocation(line: 1479, column: 17, scope: !1625)
!1628 = !DILocation(line: 1479, column: 21, scope: !1625)
!1629 = !DILocation(line: 1479, column: 32, scope: !1625)
!1630 = !DILocation(line: 1479, column: 42, scope: !1625)
!1631 = !DILocation(line: 1480, column: 13, scope: !1625)
!1632 = !DILocation(line: 1484, column: 33, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1620, file: !25, line: 1481, column: 18)
!1634 = !DILocation(line: 1484, column: 37, scope: !1633)
!1635 = !DILocation(line: 1484, column: 31, scope: !1633)
!1636 = !DILocation(line: 1486, column: 40, scope: !324)
!1637 = !DILocation(line: 1486, column: 44, scope: !324)
!1638 = !DILocation(line: 1486, column: 13, scope: !324)
!1639 = !DILocation(line: 1486, column: 17, scope: !324)
!1640 = !DILocation(line: 1486, column: 28, scope: !324)
!1641 = !DILocation(line: 1486, column: 38, scope: !324)
!1642 = !DILocation(line: 1491, column: 13, scope: !324)
!1643 = !DILocation(line: 1491, column: 20, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !25, discriminator: 3)
!1645 = !DILexicalBlockFile(scope: !324, file: !25, discriminator: 1)
!1646 = !DILocation(line: 1491, column: 24, scope: !324)
!1647 = !DILocation(line: 1491, column: 34, scope: !324)
!1648 = !DILocation(line: 1491, column: 48, scope: !324)
!1649 = !DILocation(line: 1492, column: 29, scope: !324)
!1650 = !DILocation(line: 1492, column: 34, scope: !324)
!1651 = !DILocation(line: 1492, column: 38, scope: !324)
!1652 = !DILocation(line: 1492, column: 49, scope: !324)
!1653 = !DILocation(line: 1492, column: 32, scope: !324)
!1654 = !DILocation(line: 1491, column: 13, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !324, file: !25, discriminator: 2)
!1656 = !DILocation(line: 1493, column: 33, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1492, column: 61)
!1658 = !DILocation(line: 1493, column: 37, scope: !1657)
!1659 = !DILocation(line: 1493, column: 17, scope: !1657)
!1660 = !DILocation(line: 1493, column: 21, scope: !1657)
!1661 = !DILocation(line: 1493, column: 31, scope: !1657)
!1662 = !DILocation(line: 1494, column: 33, scope: !1657)
!1663 = !DILocation(line: 1494, column: 37, scope: !1657)
!1664 = !DILocation(line: 1494, column: 48, scope: !1657)
!1665 = !DILocation(line: 1494, column: 17, scope: !1657)
!1666 = !DILocation(line: 1494, column: 21, scope: !1657)
!1667 = !DILocation(line: 1494, column: 31, scope: !1657)
!1668 = !DILocation(line: 1502, column: 40, scope: !324)
!1669 = !DILocation(line: 1502, column: 13, scope: !324)
!1670 = !DILocation(line: 1502, column: 17, scope: !324)
!1671 = !DILocation(line: 1502, column: 28, scope: !324)
!1672 = !DILocation(line: 1502, column: 38, scope: !324)
!1673 = !DILocation(line: 1503, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !324, file: !25, line: 1503, column: 17)
!1675 = !DILocation(line: 1503, column: 21, scope: !1674)
!1676 = !DILocation(line: 1503, column: 31, scope: !1674)
!1677 = !DILocation(line: 1503, column: 17, scope: !324)
!1678 = !DILocation(line: 1504, column: 44, scope: !1674)
!1679 = !DILocation(line: 1504, column: 17, scope: !1674)
!1680 = !DILocation(line: 1504, column: 21, scope: !1674)
!1681 = !DILocation(line: 1504, column: 32, scope: !1674)
!1682 = !DILocation(line: 1504, column: 42, scope: !1674)
!1683 = !DILocation(line: 1518, column: 13, scope: !324)
!1684 = !DILocation(line: 1519, column: 9, scope: !325)
!1685 = !DILocation(line: 1526, column: 11, scope: !326)
!1686 = !DILocation(line: 1526, column: 17, scope: !326)
!1687 = !DILocation(line: 1526, column: 21, scope: !326)
!1688 = !DILocation(line: 1526, column: 9, scope: !326)
!1689 = !DILocation(line: 1528, column: 16, scope: !326)
!1690 = !DILocation(line: 1528, column: 22, scope: !326)
!1691 = !DILocation(line: 1528, column: 14, scope: !326)
!1692 = !DILocation(line: 1529, column: 26, scope: !326)
!1693 = !DILocation(line: 1529, column: 33, scope: !326)
!1694 = !DILocation(line: 1529, column: 31, scope: !326)
!1695 = !DILocation(line: 1529, column: 16, scope: !326)
!1696 = !DILocation(line: 1529, column: 14, scope: !326)
!1697 = !DILocation(line: 1530, column: 16, scope: !326)
!1698 = !DILocation(line: 1530, column: 22, scope: !326)
!1699 = !DILocation(line: 1530, column: 14, scope: !326)
!1700 = !DILocation(line: 1532, column: 26, scope: !326)
!1701 = !DILocation(line: 1532, column: 9, scope: !326)
!1702 = !DILocation(line: 1532, column: 15, scope: !326)
!1703 = !DILocation(line: 1532, column: 24, scope: !326)
!1704 = !DILocation(line: 1533, column: 26, scope: !326)
!1705 = !DILocation(line: 1533, column: 9, scope: !326)
!1706 = !DILocation(line: 1533, column: 15, scope: !326)
!1707 = !DILocation(line: 1533, column: 24, scope: !326)
!1708 = !DILocation(line: 1534, column: 26, scope: !326)
!1709 = !DILocation(line: 1534, column: 9, scope: !326)
!1710 = !DILocation(line: 1534, column: 15, scope: !326)
!1711 = !DILocation(line: 1534, column: 24, scope: !326)
!1712 = !DILocation(line: 1535, column: 26, scope: !326)
!1713 = !DILocation(line: 1535, column: 9, scope: !326)
!1714 = !DILocation(line: 1535, column: 15, scope: !326)
!1715 = !DILocation(line: 1535, column: 24, scope: !326)
!1716 = !DILocation(line: 1537, column: 9, scope: !326)
!1717 = !DILocation(line: 1544, column: 19, scope: !313)
!1718 = !DILocation(line: 1544, column: 5, scope: !313)
!1719 = !DILocation(line: 1545, column: 1, scope: !313)
!1720 = !DILocation(line: 1545, column: 1, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !313, file: !25, discriminator: 1)
!1722 = !DILocation(line: 905, column: 5, scope: !292)
!1723 = !DILocation(line: 905, column: 26, scope: !292)
!1724 = !DILocation(line: 906, column: 5, scope: !292)
!1725 = !DILocation(line: 906, column: 18, scope: !292)
!1726 = !DILocation(line: 907, column: 5, scope: !292)
!1727 = !DILocation(line: 907, column: 11, scope: !292)
!1728 = !DILocation(line: 913, column: 9, scope: !301)
!1729 = !DILocation(line: 913, column: 30, scope: !301)
!1730 = !DILocation(line: 913, column: 9, scope: !292)
!1731 = !DILocation(line: 914, column: 9, scope: !300)
!1732 = !DILocation(line: 914, column: 22, scope: !300)
!1733 = !DILocation(line: 915, column: 9, scope: !300)
!1734 = !DILocation(line: 915, column: 22, scope: !300)
!1735 = !DILocation(line: 916, column: 9, scope: !300)
!1736 = !DILocation(line: 916, column: 16, scope: !300)
!1737 = !DILocation(line: 921, column: 21, scope: !300)
!1738 = !DILocation(line: 921, column: 33, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 1)
!1740 = !DILocation(line: 921, column: 43, scope: !300)
!1741 = !DILocation(line: 921, column: 21, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 2)
!1743 = !DILocation(line: 921, column: 19, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1745, file: !25, discriminator: 4)
!1745 = !DILexicalBlockFile(scope: !300, file: !25, discriminator: 3)
!1746 = !DILocation(line: 922, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !300, file: !25, line: 922, column: 13)
!1748 = !DILocation(line: 922, column: 26, scope: !1747)
!1749 = !DILocation(line: 922, column: 23, scope: !1747)
!1750 = !DILocation(line: 922, column: 13, scope: !300)
!1751 = !DILocation(line: 923, column: 13, scope: !1747)
!1752 = !DILocation(line: 928, column: 18, scope: !300)
!1753 = !DILocation(line: 928, column: 28, scope: !300)
!1754 = !DILocation(line: 928, column: 16, scope: !300)
!1755 = !DILocation(line: 929, column: 60, scope: !300)
!1756 = !DILocation(line: 929, column: 68, scope: !300)
!1757 = !DILocation(line: 929, column: 43, scope: !300)
!1758 = !DILocation(line: 929, column: 20, scope: !300)
!1759 = !DILocation(line: 929, column: 18, scope: !300)
!1760 = !DILocation(line: 930, column: 13, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !300, file: !25, line: 930, column: 13)
!1762 = !DILocation(line: 930, column: 22, scope: !1761)
!1763 = !DILocation(line: 930, column: 13, scope: !300)
!1764 = !DILocation(line: 931, column: 13, scope: !1761)
!1765 = !DILocation(line: 932, column: 18, scope: !300)
!1766 = !DILocation(line: 932, column: 16, scope: !300)
!1767 = !DILocation(line: 944, column: 18, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !300, file: !25, line: 944, column: 9)
!1769 = !DILocation(line: 944, column: 16, scope: !1768)
!1770 = !DILocation(line: 944, column: 14, scope: !1768)
!1771 = !DILocation(line: 944, column: 29, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !25, discriminator: 2)
!1773 = !DILexicalBlockFile(scope: !1774, file: !25, discriminator: 1)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !25, line: 944, column: 9)
!1775 = !DILocation(line: 944, column: 33, scope: !1774)
!1776 = !DILocation(line: 944, column: 31, scope: !1774)
!1777 = !DILocation(line: 944, column: 9, scope: !1768)
!1778 = !DILocation(line: 945, column: 20, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !25, line: 944, column: 49)
!1780 = !DILocation(line: 945, column: 13, scope: !1779)
!1781 = !DILocation(line: 945, column: 23, scope: !1779)
!1782 = !DILocation(line: 945, column: 31, scope: !1779)
!1783 = !DILocation(line: 946, column: 35, scope: !1779)
!1784 = !DILocation(line: 946, column: 39, scope: !1779)
!1785 = !DILocation(line: 946, column: 49, scope: !1779)
!1786 = !DILocation(line: 946, column: 37, scope: !1779)
!1787 = !DILocation(line: 947, column: 44, scope: !1779)
!1788 = !DILocation(line: 947, column: 45, scope: !1779)
!1789 = !DILocation(line: 947, column: 37, scope: !1779)
!1790 = !DILocation(line: 946, column: 35, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1779, file: !25, discriminator: 1)
!1792 = !DILocation(line: 946, column: 20, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1794, file: !25, discriminator: 3)
!1794 = !DILexicalBlockFile(scope: !1779, file: !25, discriminator: 2)
!1795 = !DILocation(line: 946, column: 13, scope: !1779)
!1796 = !DILocation(line: 946, column: 23, scope: !1779)
!1797 = !DILocation(line: 946, column: 33, scope: !1779)
!1798 = !DILocation(line: 948, column: 9, scope: !1779)
!1799 = !DILocation(line: 944, column: 44, scope: !1774)
!1800 = !DILocation(line: 944, column: 9, scope: !1774)
!1801 = !DILocation(line: 951, column: 40, scope: !300)
!1802 = !DILocation(line: 951, column: 33, scope: !300)
!1803 = !DILocation(line: 951, column: 30, scope: !300)
!1804 = !DILocation(line: 952, column: 21, scope: !300)
!1805 = !DILocation(line: 952, column: 19, scope: !300)
!1806 = !DILocation(line: 953, column: 5, scope: !301)
!1807 = !DILocation(line: 953, column: 5, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !301, file: !25, discriminator: 1)
!1809 = !DILocation(line: 953, column: 5, scope: !300)
!1810 = !DILocation(line: 957, column: 16, scope: !292)
!1811 = !DILocation(line: 957, column: 14, scope: !292)
!1812 = !DILocation(line: 958, column: 28, scope: !292)
!1813 = !DILocation(line: 958, column: 38, scope: !292)
!1814 = !DILocation(line: 958, column: 26, scope: !292)
!1815 = !DILocation(line: 960, column: 31, scope: !292)
!1816 = !{!1572, !381, i64 8}
!1817 = !DILocation(line: 960, column: 53, scope: !292)
!1818 = !DILocation(line: 960, column: 15, scope: !292)
!1819 = !DILocation(line: 960, column: 13, scope: !292)
!1820 = !DILocation(line: 961, column: 9, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !292, file: !25, line: 961, column: 9)
!1822 = !DILocation(line: 961, column: 17, scope: !1821)
!1823 = !DILocation(line: 961, column: 9, scope: !292)
!1824 = !DILocation(line: 965, column: 31, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !25, line: 961, column: 32)
!1826 = !DILocation(line: 965, column: 9, scope: !1825)
!1827 = !DILocation(line: 965, column: 19, scope: !1825)
!1828 = !DILocation(line: 965, column: 29, scope: !1825)
!1829 = !DILocation(line: 966, column: 32, scope: !1825)
!1830 = !DILocation(line: 966, column: 30, scope: !1825)
!1831 = !DILocation(line: 967, column: 9, scope: !1825)
!1832 = !DILocation(line: 969, column: 39, scope: !292)
!1833 = !DILocation(line: 969, column: 25, scope: !292)
!1834 = !DILocation(line: 969, column: 5, scope: !292)
!1835 = !DILocation(line: 969, column: 15, scope: !292)
!1836 = !DILocation(line: 969, column: 23, scope: !292)
!1837 = !DILocation(line: 971, column: 5, scope: !292)
!1838 = !DILocation(line: 972, column: 5, scope: !292)
!1839 = !DILocation(line: 973, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !292, file: !25, line: 973, column: 9)
!1841 = !DILocation(line: 973, column: 39, scope: !1840)
!1842 = !DILocation(line: 973, column: 37, scope: !1840)
!1843 = !DILocation(line: 973, column: 9, scope: !292)
!1844 = !DILocation(line: 974, column: 29, scope: !1840)
!1845 = !DILocation(line: 974, column: 27, scope: !1840)
!1846 = !DILocation(line: 974, column: 9, scope: !1840)
!1847 = !DILocation(line: 975, column: 5, scope: !292)
!1848 = !DILocation(line: 975, column: 15, scope: !292)
!1849 = !DILocation(line: 975, column: 25, scope: !292)
!1850 = !DILocation(line: 978, column: 38, scope: !292)
!1851 = !DILocation(line: 978, column: 48, scope: !292)
!1852 = !DILocation(line: 978, column: 30, scope: !292)
!1853 = !DILocation(line: 978, column: 5, scope: !292)
!1854 = !DILocation(line: 978, column: 15, scope: !292)
!1855 = !DILocation(line: 978, column: 28, scope: !292)
!1856 = !DILocation(line: 979, column: 5, scope: !292)
!1857 = !DILocation(line: 979, column: 15, scope: !292)
!1858 = !DILocation(line: 979, column: 26, scope: !292)
!1859 = !DILocation(line: 981, column: 29, scope: !292)
!1860 = !DILocation(line: 981, column: 39, scope: !292)
!1861 = !DILocation(line: 981, column: 47, scope: !292)
!1862 = !DILocation(line: 981, column: 14, scope: !292)
!1863 = !DILocation(line: 981, column: 12, scope: !292)
!1864 = !DILocation(line: 982, column: 9, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !292, file: !25, line: 982, column: 9)
!1866 = !DILocation(line: 982, column: 16, scope: !1865)
!1867 = !DILocation(line: 982, column: 9, scope: !292)
!1868 = !DILocation(line: 983, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !25, line: 982, column: 22)
!1870 = !DILocation(line: 983, column: 21, scope: !1869)
!1871 = !DILocation(line: 983, column: 9, scope: !1869)
!1872 = !DILocation(line: 984, column: 48, scope: !1869)
!1873 = !DILocation(line: 984, column: 46, scope: !1869)
!1874 = !DILocation(line: 984, column: 9, scope: !1869)
!1875 = !DILocation(line: 984, column: 19, scope: !1869)
!1876 = !DILocation(line: 984, column: 32, scope: !1869)
!1877 = !DILocation(line: 985, column: 5, scope: !1869)
!1878 = !DILocation(line: 986, column: 29, scope: !292)
!1879 = !DILocation(line: 986, column: 39, scope: !292)
!1880 = !DILocation(line: 986, column: 5, scope: !292)
!1881 = !DILocation(line: 986, column: 15, scope: !292)
!1882 = !DILocation(line: 986, column: 27, scope: !292)
!1883 = !DILocation(line: 988, column: 12, scope: !292)
!1884 = !DILocation(line: 988, column: 5, scope: !292)
!1885 = !DILocation(line: 989, column: 1, scope: !292)
!1886 = !DILocation(line: 94, column: 27, scope: !329)
!1887 = !DILocation(line: 94, column: 39, scope: !329)
!1888 = !DILocation(line: 96, column: 5, scope: !329)
!1889 = !DILocation(line: 96, column: 11, scope: !329)
!1890 = !DILocation(line: 97, column: 28, scope: !329)
!1891 = !DILocation(line: 97, column: 11, scope: !329)
!1892 = !DILocation(line: 97, column: 9, scope: !329)
!1893 = !DILocation(line: 99, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !329, file: !25, line: 99, column: 9)
!1895 = !DILocation(line: 99, column: 13, scope: !1894)
!1896 = !DILocation(line: 99, column: 9, scope: !329)
!1897 = !DILocation(line: 100, column: 9, scope: !1894)
!1898 = !DILocation(line: 102, column: 12, scope: !329)
!1899 = !DILocation(line: 102, column: 5, scope: !329)
!1900 = !DILocation(line: 103, column: 1, scope: !329)
!1901 = !DILocation(line: 106, column: 29, scope: !334)
!1902 = !DILocation(line: 106, column: 40, scope: !334)
!1903 = !DILocation(line: 106, column: 52, scope: !334)
!1904 = !DILocation(line: 108, column: 12, scope: !334)
!1905 = !DILocation(line: 108, column: 17, scope: !334)
!1906 = !DILocation(line: 108, column: 5, scope: !334)
!1907 = !DILocation(line: 109, column: 1, scope: !334)
