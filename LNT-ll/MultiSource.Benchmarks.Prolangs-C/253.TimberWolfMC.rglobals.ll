; ModuleID = './MultiSource.Benchmarks.Prolangs-C/253.TimberWolfMC.rglobals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct.path = type { i16*, i32, i32, i32, [5 x i32] }

@tempArray = common global i16* null, align 8
@gnodeArray = common global %struct.gnode** null, align 8
@pnodeArray = common global %struct.pnode* null, align 8
@numnodes = common global i32 0, align 4
@numpins = common global i32 0, align 4
@maxpnode = common global i32 0, align 4
@pnameArray = common global i8** null, align 8
@nnameArray = common global i8** null, align 8
@pinOffset = common global i32* null, align 8
@pinlist = common global %struct.quad* null, align 8
@pathList = common global i32** null, align 8
@netSegArray = common global i16** null, align 8
@segList = common global i16* null, align 8
@segPtr = common global i32 0, align 4
@sourceList = common global i16* null, align 8
@sourcePtr = common global i32 0, align 4
@targetList = common global i16* null, align 8
@targetPtr = common global i32 0, align 4
@Mpaths = common global i32 0, align 4
@delSourceList = common global i16* null, align 8
@addTargetList = common global i16* null, align 8
@pathLength = common global i32 0, align 4
@savePaths = common global i16** null, align 8
@largestNet = common global i32 0, align 4
@netRoutes = common global %struct.nrbox* null, align 8
@gtrace = common global i16** null, align 8
@pathArray = common global %struct.path* null, align 8
@MAXPATHS = common global i32 0, align 4
@EXTRASOURCES = common global i32 0, align 4

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
