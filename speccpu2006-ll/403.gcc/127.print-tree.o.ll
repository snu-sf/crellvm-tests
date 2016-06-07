; ModuleID = 'print-tree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { %union.tree_node*, %struct.bucket* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.realvaluetype = type { [3 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.anon.0 = type { i32 }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_real_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.realvaluetype }
%struct.tree_vector = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_complex = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }

@table = internal global %struct.bucket** null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s <%s \00", align 1
@tree_code_name = external global [256 x i8*], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" overflow\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" Inf\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" Nan\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c" side-effects\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" readonly\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c" constant\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c" addressable\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" unsigned\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c" asm_written\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" used\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" nothrow\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" public\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c" private\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c" protected\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" deprecated\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c" tree_0\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c" tree_1\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" tree_2\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" tree_3\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" tree_4\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c" tree_5\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" tree_6\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c" ignored\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c" abstract\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c" in_system_header\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c" common\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c" external\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" weak\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" regdecl\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c" nonlocal\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c" suppress-debug\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" inline\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c" built-in\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c" built-in-nonansi\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c" no-static-chain\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c" packed\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c" bit-field\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c" nonaddressable\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c" too-late\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c" error-issued\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c" in-text-section\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c" transparent-union\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" virtual\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c" defer-output\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c" decl_0\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c" decl_1\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c" decl_2\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c" decl_3\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c" decl_4\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" decl_5\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c" decl_6\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" decl_7\00", align 1
@mode_name = external constant [59 x i8*], align 16
@.str.65 = private unnamed_addr constant [17 x i8] c" file %s line %d\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit size\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c" user\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c" align %d\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c" offset_align \00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c" built-in BUILT_IN_MD %d\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c" built-in %s:%s\00", align 1
@built_in_class_names = external constant [4 x i8*], align 16
@built_in_names = external constant [95 x i8*], align 16
@.str.73 = private unnamed_addr constant [12 x i8] c" alias set \00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"bit offset\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"abstract_origin\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.83 = private unnamed_addr constant [9 x i8] c"arg-type\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"arg-type-as-written\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"incoming-rtl \00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"saved-insns \00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c" no-force-blk\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c" sizetype\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c" returns-stack-depressed\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c" string-flag\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c" needs-constructing\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c" nonaliased-component\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c" ambient-boundedness\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c" type_0\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c" type_1\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c" type_2\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c" type_3\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c" type_4\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c" type_5\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c" type_6\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c" symtab %d\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c" precision %d\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"method basetype\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"arg-types\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"basetype\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"pointer_to_this\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"reference_to_this\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"supercontext\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"subblocks\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@tree_code_length = external global [256 x i32], align 16
@.str.119 = private unnamed_addr constant [8 x i8] c"rtl %d \00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"arg %d\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"%s:%d:%d\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"(no file info)\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"elt%d: \00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"elt %d\00", align 1

; Function Attrs: nounwind uwtable
define void @debug_tree(%union.tree_node* %node) #0 {
entry:
  %node.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %call = call i8* @permalloc(i32 296)
  %0 = bitcast i8* %call to %struct.bucket**
  store %struct.bucket** %0, %struct.bucket*** @table, align 8
  %1 = load %struct.bucket**, %struct.bucket*** @table, align 8
  %2 = bitcast %struct.bucket** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 296, i32 1, i1 false)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  call void @print_node(%struct._IO_FILE* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %union.tree_node* %4, i32 0)
  store %struct.bucket** null, %struct.bucket*** @table, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i8* @permalloc(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @print_node(%struct._IO_FILE* %file, i8* %prefix, %union.tree_node* %node, i32 %indent) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %prefix.addr = alloca i8*, align 8
  %node.addr = alloca %union.tree_node*, align 8
  %indent.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %b = alloca %struct.bucket*, align 8
  %mode = alloca i32, align 4
  %class = alloca i8, align 1
  %len = alloca i32, align 4
  %first_rtl = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca [10 x i8], align 1
  %d = alloca %struct.realvaluetype, align 8
  %string = alloca [100 x i8], align 16
  %vals = alloca %union.tree_node*, align 8
  %buf = alloca [10 x i8], align 1
  %link = alloca %union.tree_node*, align 8
  %i1500 = alloca i32, align 4
  %temp1552 = alloca [10 x i8], align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %class, align 1
  %3 = load i32, i32* %indent.addr, align 4
  %cmp1 = icmp sgt i32 %3, 24
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load i8*, i8** %prefix.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %7 = load i32, i32* %indent.addr, align 4
  call void @print_node_brief(%struct._IO_FILE* %4, i8* %5, %union.tree_node* %6, i32 %7)
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %indent.addr, align 4
  %cmp4 = icmp sgt i32 %8, 8
  br i1 %cmp4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load i8, i8* %class, align 1
  %conv = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv, 116
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8, i8* %class, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 100
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load i8*, i8** %prefix.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %14 = load i32, i32* %indent.addr, align 4
  call void @print_node_brief(%struct._IO_FILE* %11, i8* %12, %union.tree_node* %13, i32 %14)
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false, %if.end.3
  %15 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common12 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %17 = load i8*, i8** %prefix.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %19 = load i32, i32* %indent.addr, align 4
  call void @print_node_brief(%struct._IO_FILE* %16, i8* %17, %union.tree_node* %18, i32 %19)
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %20 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %21 = ptrtoint %union.tree_node* %20 to i64
  %rem = urem i64 %21, 37
  %conv20 = trunc i64 %rem to i32
  store i32 %conv20, i32* %hash, align 4
  %22 = load i32, i32* %hash, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.bucket**, %struct.bucket*** @table, align 8
  %arrayidx22 = getelementptr inbounds %struct.bucket*, %struct.bucket** %23, i64 %idxprom21
  %24 = load %struct.bucket*, %struct.bucket** %arrayidx22, align 8
  store %struct.bucket* %24, %struct.bucket** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %25 = load %struct.bucket*, %struct.bucket** %b, align 8
  %tobool = icmp ne %struct.bucket* %25, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.bucket*, %struct.bucket** %b, align 8
  %node23 = getelementptr inbounds %struct.bucket, %struct.bucket* %26, i32 0, i32 0
  %27 = load %union.tree_node*, %union.tree_node** %node23, align 8
  %28 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %cmp24 = icmp eq %union.tree_node* %27, %28
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %30 = load i8*, i8** %prefix.addr, align 8
  %31 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %32 = load i32, i32* %indent.addr, align 4
  call void @print_node_brief(%struct._IO_FILE* %29, i8* %30, %union.tree_node* %31, i32 %32)
  br label %return

if.end.27:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %33 = load %struct.bucket*, %struct.bucket** %b, align 8
  %next = getelementptr inbounds %struct.bucket, %struct.bucket* %33, i32 0, i32 1
  %34 = load %struct.bucket*, %struct.bucket** %next, align 8
  store %struct.bucket* %34, %struct.bucket** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i8* @permalloc(i32 16)
  %35 = bitcast i8* %call to %struct.bucket*
  store %struct.bucket* %35, %struct.bucket** %b, align 8
  %36 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %37 = load %struct.bucket*, %struct.bucket** %b, align 8
  %node28 = getelementptr inbounds %struct.bucket, %struct.bucket* %37, i32 0, i32 0
  store %union.tree_node* %36, %union.tree_node** %node28, align 8
  %38 = load i32, i32* %hash, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.bucket**, %struct.bucket*** @table, align 8
  %arrayidx30 = getelementptr inbounds %struct.bucket*, %struct.bucket** %39, i64 %idxprom29
  %40 = load %struct.bucket*, %struct.bucket** %arrayidx30, align 8
  %41 = load %struct.bucket*, %struct.bucket** %b, align 8
  %next31 = getelementptr inbounds %struct.bucket, %struct.bucket* %41, i32 0, i32 1
  store %struct.bucket* %40, %struct.bucket** %next31, align 8
  %42 = load %struct.bucket*, %struct.bucket** %b, align 8
  %43 = load i32, i32* %hash, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load %struct.bucket**, %struct.bucket*** @table, align 8
  %arrayidx33 = getelementptr inbounds %struct.bucket*, %struct.bucket** %44, i64 %idxprom32
  store %struct.bucket* %42, %struct.bucket** %arrayidx33, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %46 = load i32, i32* %indent.addr, align 4
  call void @indent_to(%struct._IO_FILE* %45, i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %48 = load i8*, i8** %prefix.addr, align 8
  %49 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common34 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %code35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %code35, align 8
  %bf.clear37 = and i32 %bf.load36, 255
  %idxprom38 = sext i32 %bf.clear37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8*], [256 x i8*]* @tree_code_name, i32 0, i64 %idxprom38
  %50 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %48, i8* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %52 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %53 = bitcast %union.tree_node* %52 to i8*
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %53)
  %54 = load i8, i8* %class, align 1
  %conv42 = sext i8 %54 to i32
  %cmp43 = icmp eq i32 %conv42, 100
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %for.end
  %55 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl = bitcast %union.tree_node* %55 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %56 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool46 = icmp ne %union.tree_node* %56, null
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.then.45
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %58 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl48 = bitcast %union.tree_node* %58 to %struct.tree_decl*
  %name49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl48, i32 0, i32 8
  %59 = load %union.tree_node*, %union.tree_node** %name49, align 8
  %identifier = bitcast %union.tree_node* %59 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %60 = load i8*, i8** %str, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %60)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.then.45
  br label %if.end.102

if.else:                                          ; preds = %for.end
  %61 = load i8, i8* %class, align 1
  %conv52 = sext i8 %61 to i32
  %cmp53 = icmp eq i32 %conv52, 116
  br i1 %cmp53, label %if.then.55, label %if.end.101

if.then.55:                                       ; preds = %if.else
  %62 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type = bitcast %union.tree_node* %62 to %struct.tree_type*
  %name56 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 11
  %63 = load %union.tree_node*, %union.tree_node** %name56, align 8
  %tobool57 = icmp ne %union.tree_node* %63, null
  br i1 %tobool57, label %if.then.58, label %if.end.100

if.then.58:                                       ; preds = %if.then.55
  %64 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type59 = bitcast %union.tree_node* %64 to %struct.tree_type*
  %name60 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type59, i32 0, i32 11
  %65 = load %union.tree_node*, %union.tree_node** %name60, align 8
  %common61 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 2
  %bf.load63 = load i32, i32* %code62, align 8
  %bf.clear64 = and i32 %bf.load63, 255
  %cmp65 = icmp eq i32 %bf.clear64, 1
  br i1 %cmp65, label %if.then.67, label %if.else.74

if.then.67:                                       ; preds = %if.then.58
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %67 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type68 = bitcast %union.tree_node* %67 to %struct.tree_type*
  %name69 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type68, i32 0, i32 11
  %68 = load %union.tree_node*, %union.tree_node** %name69, align 8
  %identifier70 = bitcast %union.tree_node* %68 to %struct.tree_identifier*
  %id71 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier70, i32 0, i32 1
  %str72 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id71, i32 0, i32 1
  %69 = load i8*, i8** %str72, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %69)
  br label %if.end.99

if.else.74:                                       ; preds = %if.then.58
  %70 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type75 = bitcast %union.tree_node* %70 to %struct.tree_type*
  %name76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type75, i32 0, i32 11
  %71 = load %union.tree_node*, %union.tree_node** %name76, align 8
  %common77 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code78 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common77, i32 0, i32 2
  %bf.load79 = load i32, i32* %code78, align 8
  %bf.clear80 = and i32 %bf.load79, 255
  %cmp81 = icmp eq i32 %bf.clear80, 33
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.98

land.lhs.true.83:                                 ; preds = %if.else.74
  %72 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type84 = bitcast %union.tree_node* %72 to %struct.tree_type*
  %name85 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type84, i32 0, i32 11
  %73 = load %union.tree_node*, %union.tree_node** %name85, align 8
  %decl86 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %name87 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl86, i32 0, i32 8
  %74 = load %union.tree_node*, %union.tree_node** %name87, align 8
  %tobool88 = icmp ne %union.tree_node* %74, null
  br i1 %tobool88, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %land.lhs.true.83
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %76 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type90 = bitcast %union.tree_node* %76 to %struct.tree_type*
  %name91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type90, i32 0, i32 11
  %77 = load %union.tree_node*, %union.tree_node** %name91, align 8
  %decl92 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %name93 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 8
  %78 = load %union.tree_node*, %union.tree_node** %name93, align 8
  %identifier94 = bitcast %union.tree_node* %78 to %struct.tree_identifier*
  %id95 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier94, i32 0, i32 1
  %str96 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id95, i32 0, i32 1
  %79 = load i8*, i8** %str96, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %79)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.89, %land.lhs.true.83, %if.else.74
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.67
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.55
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.else
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.51
  %80 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common103 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %code104 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common103, i32 0, i32 2
  %bf.load105 = load i32, i32* %code104, align 8
  %bf.clear106 = and i32 %bf.load105, 255
  %cmp107 = icmp eq i32 %bf.clear106, 1
  br i1 %cmp107, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %if.end.102
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %82 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %identifier110 = bitcast %union.tree_node* %82 to %struct.tree_identifier*
  %id111 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier110, i32 0, i32 1
  %str112 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id111, i32 0, i32 1
  %83 = load i8*, i8** %str112, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %83)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %if.end.102
  %84 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common115 = bitcast %union.tree_node* %84 to %struct.tree_common*
  %code116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %code116, align 8
  %bf.clear118 = and i32 %bf.load117, 255
  %cmp119 = icmp eq i32 %bf.clear118, 25
  br i1 %cmp119, label %if.then.121, label %if.else.128

if.then.121:                                      ; preds = %if.end.114
  %85 = load i32, i32* %indent.addr, align 4
  %cmp122 = icmp sle i32 %85, 4
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.then.121
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %87 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common125 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %type126 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common125, i32 0, i32 1
  %88 = load %union.tree_node*, %union.tree_node** %type126, align 8
  %89 = load i32, i32* %indent.addr, align 4
  %add = add nsw i32 %89, 4
  call void @print_node_brief(%struct._IO_FILE* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %union.tree_node* %88, i32 %add)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.then.121
  br label %if.end.138

if.else.128:                                      ; preds = %if.end.114
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %91 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common129 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %type130 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common129, i32 0, i32 1
  %92 = load %union.tree_node*, %union.tree_node** %type130, align 8
  %93 = load i32, i32* %indent.addr, align 4
  %add131 = add nsw i32 %93, 4
  call void @print_node(%struct._IO_FILE* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %union.tree_node* %92, i32 %add131)
  %94 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common132 = bitcast %union.tree_node* %94 to %struct.tree_common*
  %type133 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common132, i32 0, i32 1
  %95 = load %union.tree_node*, %union.tree_node** %type133, align 8
  %tobool134 = icmp ne %union.tree_node* %95, null
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.else.128
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %97 = load i32, i32* %indent.addr, align 4
  %add136 = add nsw i32 %97, 3
  call void @indent_to(%struct._IO_FILE* %96, i32 %add136)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.else.128
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.127
  %98 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common139 = bitcast %union.tree_node* %98 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common139, i32 0, i32 2
  %bf.load140 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load140, 8
  %bf.clear141 = and i32 %bf.lshr, 1
  %tobool142 = icmp ne i32 %bf.clear141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.138
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call144 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %99)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.138
  %100 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common146 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common146, i32 0, i32 2
  %bf.load147 = load i32, i32* %readonly_flag, align 8
  %bf.lshr148 = lshr i32 %bf.load147, 12
  %bf.clear149 = and i32 %bf.lshr148, 1
  %tobool150 = icmp ne i32 %bf.clear149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.145
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call152 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %101)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.end.145
  %102 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common154 = bitcast %union.tree_node* %102 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common154, i32 0, i32 2
  %bf.load155 = load i32, i32* %constant_flag, align 8
  %bf.lshr156 = lshr i32 %bf.load155, 9
  %bf.clear157 = and i32 %bf.lshr156, 1
  %tobool158 = icmp ne i32 %bf.clear157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.end.153
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call160 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %103)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.end.153
  %104 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common162 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common162, i32 0, i32 2
  %bf.load163 = load i32, i32* %addressable_flag, align 8
  %bf.lshr164 = lshr i32 %bf.load163, 10
  %bf.clear165 = and i32 %bf.lshr164, 1
  %tobool166 = icmp ne i32 %bf.clear165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %if.end.161
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call168 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %105)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.end.161
  %106 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common170 = bitcast %union.tree_node* %106 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common170, i32 0, i32 2
  %bf.load171 = load i32, i32* %volatile_flag, align 8
  %bf.lshr172 = lshr i32 %bf.load171, 11
  %bf.clear173 = and i32 %bf.lshr172, 1
  %tobool174 = icmp ne i32 %bf.clear173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %if.end.169
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call176 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %107)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %if.end.169
  %108 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common178 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common178, i32 0, i32 2
  %bf.load179 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr180 = lshr i32 %bf.load179, 13
  %bf.clear181 = and i32 %bf.lshr180, 1
  %tobool182 = icmp ne i32 %bf.clear181, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.177
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call184 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %109)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.177
  %110 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common186 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common186, i32 0, i32 2
  %bf.load187 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr188 = lshr i32 %bf.load187, 14
  %bf.clear189 = and i32 %bf.lshr188, 1
  %tobool190 = icmp ne i32 %bf.clear189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.end.185
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call192 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %111)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.end.185
  %112 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common194 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common194, i32 0, i32 2
  %bf.load195 = load i32, i32* %used_flag, align 8
  %bf.lshr196 = lshr i32 %bf.load195, 16
  %bf.clear197 = and i32 %bf.lshr196, 1
  %tobool198 = icmp ne i32 %bf.clear197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %if.end.193
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call200 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %113)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %if.end.193
  %114 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common202 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %nothrow_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common202, i32 0, i32 2
  %bf.load203 = load i32, i32* %nothrow_flag, align 8
  %bf.lshr204 = lshr i32 %bf.load203, 17
  %bf.clear205 = and i32 %bf.lshr204, 1
  %tobool206 = icmp ne i32 %bf.clear205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.end.201
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call208 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %115)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.end.201
  %116 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common210 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common210, i32 0, i32 2
  %bf.load211 = load i32, i32* %public_flag, align 8
  %bf.lshr212 = lshr i32 %bf.load211, 19
  %bf.clear213 = and i32 %bf.lshr212, 1
  %tobool214 = icmp ne i32 %bf.clear213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %if.end.209
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call216 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %117)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %if.end.209
  %118 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common218 = bitcast %union.tree_node* %118 to %struct.tree_common*
  %private_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common218, i32 0, i32 2
  %bf.load219 = load i32, i32* %private_flag, align 8
  %bf.lshr220 = lshr i32 %bf.load219, 20
  %bf.clear221 = and i32 %bf.lshr220, 1
  %tobool222 = icmp ne i32 %bf.clear221, 0
  br i1 %tobool222, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %if.end.217
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call224 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %119)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %if.end.217
  %120 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common226 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %protected_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common226, i32 0, i32 2
  %bf.load227 = load i32, i32* %protected_flag, align 8
  %bf.lshr228 = lshr i32 %bf.load227, 21
  %bf.clear229 = and i32 %bf.lshr228, 1
  %tobool230 = icmp ne i32 %bf.clear229, 0
  br i1 %tobool230, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %if.end.225
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call232 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %121)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %if.end.225
  %122 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common234 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common234, i32 0, i32 2
  %bf.load235 = load i32, i32* %static_flag, align 8
  %bf.lshr236 = lshr i32 %bf.load235, 18
  %bf.clear237 = and i32 %bf.lshr236, 1
  %tobool238 = icmp ne i32 %bf.clear237, 0
  br i1 %tobool238, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.end.233
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call240 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %123)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.233
  %124 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common242 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %deprecated_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common242, i32 0, i32 2
  %bf.load243 = load i32, i32* %deprecated_flag, align 8
  %bf.lshr244 = lshr i32 %bf.load243, 23
  %bf.clear245 = and i32 %bf.lshr244, 1
  %tobool246 = icmp ne i32 %bf.clear245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %if.end.241
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call248 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %125)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.247, %if.end.241
  %126 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common250 = bitcast %union.tree_node* %126 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common250, i32 0, i32 2
  %bf.load251 = load i32, i32* %lang_flag_0, align 8
  %bf.lshr252 = lshr i32 %bf.load251, 24
  %bf.clear253 = and i32 %bf.lshr252, 1
  %tobool254 = icmp ne i32 %bf.clear253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.end.249
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call256 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %127)
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %if.end.249
  %128 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common258 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common258, i32 0, i32 2
  %bf.load259 = load i32, i32* %lang_flag_1, align 8
  %bf.lshr260 = lshr i32 %bf.load259, 25
  %bf.clear261 = and i32 %bf.lshr260, 1
  %tobool262 = icmp ne i32 %bf.clear261, 0
  br i1 %tobool262, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %if.end.257
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call264 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %129)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %if.end.257
  %130 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common266 = bitcast %union.tree_node* %130 to %struct.tree_common*
  %lang_flag_2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common266, i32 0, i32 2
  %bf.load267 = load i32, i32* %lang_flag_2, align 8
  %bf.lshr268 = lshr i32 %bf.load267, 26
  %bf.clear269 = and i32 %bf.lshr268, 1
  %tobool270 = icmp ne i32 %bf.clear269, 0
  br i1 %tobool270, label %if.then.271, label %if.end.273

if.then.271:                                      ; preds = %if.end.265
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call272 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %131)
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.271, %if.end.265
  %132 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common274 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %lang_flag_3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common274, i32 0, i32 2
  %bf.load275 = load i32, i32* %lang_flag_3, align 8
  %bf.lshr276 = lshr i32 %bf.load275, 27
  %bf.clear277 = and i32 %bf.lshr276, 1
  %tobool278 = icmp ne i32 %bf.clear277, 0
  br i1 %tobool278, label %if.then.279, label %if.end.281

if.then.279:                                      ; preds = %if.end.273
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call280 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %133)
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %if.end.273
  %134 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common282 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %lang_flag_4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common282, i32 0, i32 2
  %bf.load283 = load i32, i32* %lang_flag_4, align 8
  %bf.lshr284 = lshr i32 %bf.load283, 28
  %bf.clear285 = and i32 %bf.lshr284, 1
  %tobool286 = icmp ne i32 %bf.clear285, 0
  br i1 %tobool286, label %if.then.287, label %if.end.289

if.then.287:                                      ; preds = %if.end.281
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call288 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %135)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.287, %if.end.281
  %136 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common290 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %lang_flag_5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common290, i32 0, i32 2
  %bf.load291 = load i32, i32* %lang_flag_5, align 8
  %bf.lshr292 = lshr i32 %bf.load291, 29
  %bf.clear293 = and i32 %bf.lshr292, 1
  %tobool294 = icmp ne i32 %bf.clear293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %if.end.289
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call296 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %137)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %if.end.289
  %138 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common298 = bitcast %union.tree_node* %138 to %struct.tree_common*
  %lang_flag_6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common298, i32 0, i32 2
  %bf.load299 = load i32, i32* %lang_flag_6, align 8
  %bf.lshr300 = lshr i32 %bf.load299, 30
  %bf.clear301 = and i32 %bf.lshr300, 1
  %tobool302 = icmp ne i32 %bf.clear301, 0
  br i1 %tobool302, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.end.297
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call304 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %139)
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.end.297
  %140 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common306 = bitcast %union.tree_node* %140 to %struct.tree_common*
  %code307 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common306, i32 0, i32 2
  %bf.load308 = load i32, i32* %code307, align 8
  %bf.clear309 = and i32 %bf.load308, 255
  %idxprom310 = sext i32 %bf.clear309 to i64
  %arrayidx311 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom310
  %141 = load i8, i8* %arrayidx311, align 1
  %conv312 = sext i8 %141 to i32
  switch i32 %conv312, label %sw.epilog.1576 [
    i32 100, label %sw.bb
    i32 116, label %sw.bb.920
    i32 98, label %sw.bb.1316
    i32 101, label %sw.bb.1328
    i32 60, label %sw.bb.1328
    i32 49, label %sw.bb.1328
    i32 50, label %sw.bb.1328
    i32 114, label %sw.bb.1328
    i32 115, label %sw.bb.1328
    i32 99, label %sw.bb.1422
    i32 120, label %sw.bb.1422
  ]

sw.bb:                                            ; preds = %if.end.305
  %142 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl313 = bitcast %union.tree_node* %142 to %struct.tree_decl*
  %mode314 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl313, i32 0, i32 5
  %143 = bitcast i48* %mode314 to i64*
  %bf.load315 = load i64, i64* %143, align 8
  %bf.clear316 = and i64 %bf.load315, 255
  %bf.cast = trunc i64 %bf.clear316 to i32
  store i32 %bf.cast, i32* %mode, align 4
  %144 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl317 = bitcast %union.tree_node* %144 to %struct.tree_decl*
  %ignored_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl317, i32 0, i32 5
  %145 = bitcast i48* %ignored_flag to i64*
  %bf.load318 = load i64, i64* %145, align 8
  %bf.lshr319 = lshr i64 %bf.load318, 14
  %bf.clear320 = and i64 %bf.lshr319, 1
  %bf.cast321 = trunc i64 %bf.clear320 to i32
  %tobool322 = icmp ne i32 %bf.cast321, 0
  br i1 %tobool322, label %if.then.323, label %if.end.325

if.then.323:                                      ; preds = %sw.bb
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call324 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %146)
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.323, %sw.bb
  %147 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl326 = bitcast %union.tree_node* %147 to %struct.tree_decl*
  %abstract_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl326, i32 0, i32 5
  %148 = bitcast i48* %abstract_flag to i64*
  %bf.load327 = load i64, i64* %148, align 8
  %bf.lshr328 = lshr i64 %bf.load327, 15
  %bf.clear329 = and i64 %bf.lshr328, 1
  %bf.cast330 = trunc i64 %bf.clear329 to i32
  %tobool331 = icmp ne i32 %bf.cast330, 0
  br i1 %tobool331, label %if.then.332, label %if.end.334

if.then.332:                                      ; preds = %if.end.325
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call333 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %149)
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %if.end.325
  %150 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl335 = bitcast %union.tree_node* %150 to %struct.tree_decl*
  %in_system_header_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl335, i32 0, i32 5
  %151 = bitcast i48* %in_system_header_flag to i64*
  %bf.load336 = load i64, i64* %151, align 8
  %bf.lshr337 = lshr i64 %bf.load336, 16
  %bf.clear338 = and i64 %bf.lshr337, 1
  %bf.cast339 = trunc i64 %bf.clear338 to i32
  %tobool340 = icmp ne i32 %bf.cast339, 0
  br i1 %tobool340, label %if.then.341, label %if.end.343

if.then.341:                                      ; preds = %if.end.334
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call342 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %152)
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.341, %if.end.334
  %153 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl344 = bitcast %union.tree_node* %153 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl344, i32 0, i32 5
  %154 = bitcast i48* %common_flag to i64*
  %bf.load345 = load i64, i64* %154, align 8
  %bf.lshr346 = lshr i64 %bf.load345, 17
  %bf.clear347 = and i64 %bf.lshr346, 1
  %bf.cast348 = trunc i64 %bf.clear347 to i32
  %tobool349 = icmp ne i32 %bf.cast348, 0
  br i1 %tobool349, label %if.then.350, label %if.end.352

if.then.350:                                      ; preds = %if.end.343
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call351 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %155)
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.350, %if.end.343
  %156 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl353 = bitcast %union.tree_node* %156 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl353, i32 0, i32 5
  %157 = bitcast i48* %external_flag to i64*
  %bf.load354 = load i64, i64* %157, align 8
  %bf.lshr355 = lshr i64 %bf.load354, 8
  %bf.clear356 = and i64 %bf.lshr355, 1
  %bf.cast357 = trunc i64 %bf.clear356 to i32
  %tobool358 = icmp ne i32 %bf.cast357, 0
  br i1 %tobool358, label %if.then.359, label %if.end.361

if.then.359:                                      ; preds = %if.end.352
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call360 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %158)
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.359, %if.end.352
  %159 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl362 = bitcast %union.tree_node* %159 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl362, i32 0, i32 5
  %160 = bitcast i48* %weak_flag to i64*
  %bf.load363 = load i64, i64* %160, align 8
  %bf.lshr364 = lshr i64 %bf.load363, 23
  %bf.clear365 = and i64 %bf.lshr364, 1
  %bf.cast366 = trunc i64 %bf.clear365 to i32
  %tobool367 = icmp ne i32 %bf.cast366, 0
  br i1 %tobool367, label %if.then.368, label %if.end.370

if.then.368:                                      ; preds = %if.end.361
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call369 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %161)
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.368, %if.end.361
  %162 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl371 = bitcast %union.tree_node* %162 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl371, i32 0, i32 5
  %163 = bitcast i48* %regdecl_flag to i64*
  %bf.load372 = load i64, i64* %163, align 8
  %bf.lshr373 = lshr i64 %bf.load372, 10
  %bf.clear374 = and i64 %bf.lshr373, 1
  %bf.cast375 = trunc i64 %bf.clear374 to i32
  %tobool376 = icmp ne i32 %bf.cast375, 0
  br i1 %tobool376, label %land.lhs.true.377, label %if.end.400

land.lhs.true.377:                                ; preds = %if.end.370
  %164 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common378 = bitcast %union.tree_node* %164 to %struct.tree_common*
  %code379 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common378, i32 0, i32 2
  %bf.load380 = load i32, i32* %code379, align 8
  %bf.clear381 = and i32 %bf.load380, 255
  %cmp382 = icmp ne i32 %bf.clear381, 37
  br i1 %cmp382, label %land.lhs.true.384, label %if.end.400

land.lhs.true.384:                                ; preds = %land.lhs.true.377
  %165 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common385 = bitcast %union.tree_node* %165 to %struct.tree_common*
  %code386 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common385, i32 0, i32 2
  %bf.load387 = load i32, i32* %code386, align 8
  %bf.clear388 = and i32 %bf.load387, 255
  %cmp389 = icmp ne i32 %bf.clear388, 30
  br i1 %cmp389, label %land.lhs.true.391, label %if.end.400

land.lhs.true.391:                                ; preds = %land.lhs.true.384
  %166 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common392 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %code393 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common392, i32 0, i32 2
  %bf.load394 = load i32, i32* %code393, align 8
  %bf.clear395 = and i32 %bf.load394, 255
  %cmp396 = icmp ne i32 %bf.clear395, 31
  br i1 %cmp396, label %if.then.398, label %if.end.400

if.then.398:                                      ; preds = %land.lhs.true.391
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call399 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %167)
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.398, %land.lhs.true.391, %land.lhs.true.384, %land.lhs.true.377, %if.end.370
  %168 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl401 = bitcast %union.tree_node* %168 to %struct.tree_decl*
  %nonlocal_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl401, i32 0, i32 5
  %169 = bitcast i48* %nonlocal_flag to i64*
  %bf.load402 = load i64, i64* %169, align 8
  %bf.lshr403 = lshr i64 %bf.load402, 9
  %bf.clear404 = and i64 %bf.lshr403, 1
  %bf.cast405 = trunc i64 %bf.clear404 to i32
  %tobool406 = icmp ne i32 %bf.cast405, 0
  br i1 %tobool406, label %if.then.407, label %if.end.409

if.then.407:                                      ; preds = %if.end.400
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call408 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %170)
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.407, %if.end.400
  %171 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common410 = bitcast %union.tree_node* %171 to %struct.tree_common*
  %code411 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common410, i32 0, i32 2
  %bf.load412 = load i32, i32* %code411, align 8
  %bf.clear413 = and i32 %bf.load412, 255
  %cmp414 = icmp eq i32 %bf.clear413, 33
  br i1 %cmp414, label %land.lhs.true.416, label %if.end.426

land.lhs.true.416:                                ; preds = %if.end.409
  %172 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl417 = bitcast %union.tree_node* %172 to %struct.tree_decl*
  %external_flag418 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl417, i32 0, i32 5
  %173 = bitcast i48* %external_flag418 to i64*
  %bf.load419 = load i64, i64* %173, align 8
  %bf.lshr420 = lshr i64 %bf.load419, 8
  %bf.clear421 = and i64 %bf.lshr420, 1
  %bf.cast422 = trunc i64 %bf.clear421 to i32
  %tobool423 = icmp ne i32 %bf.cast422, 0
  br i1 %tobool423, label %if.then.424, label %if.end.426

if.then.424:                                      ; preds = %land.lhs.true.416
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call425 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %174)
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.424, %land.lhs.true.416, %if.end.409
  %175 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common427 = bitcast %union.tree_node* %175 to %struct.tree_common*
  %code428 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common427, i32 0, i32 2
  %bf.load429 = load i32, i32* %code428, align 8
  %bf.clear430 = and i32 %bf.load429, 255
  %cmp431 = icmp eq i32 %bf.clear430, 30
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.442

land.lhs.true.433:                                ; preds = %if.end.426
  %176 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl434 = bitcast %union.tree_node* %176 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl434, i32 0, i32 5
  %177 = bitcast i48* %inline_flag to i64*
  %bf.load435 = load i64, i64* %177, align 8
  %bf.lshr436 = lshr i64 %bf.load435, 11
  %bf.clear437 = and i64 %bf.lshr436, 1
  %bf.cast438 = trunc i64 %bf.clear437 to i32
  %tobool439 = icmp ne i32 %bf.cast438, 0
  br i1 %tobool439, label %if.then.440, label %if.end.442

if.then.440:                                      ; preds = %land.lhs.true.433
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call441 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct._IO_FILE* %178)
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.440, %land.lhs.true.433, %if.end.426
  %179 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common443 = bitcast %union.tree_node* %179 to %struct.tree_common*
  %code444 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common443, i32 0, i32 2
  %bf.load445 = load i32, i32* %code444, align 8
  %bf.clear446 = and i32 %bf.load445, 255
  %cmp447 = icmp eq i32 %bf.clear446, 30
  br i1 %cmp447, label %land.lhs.true.449, label %if.end.459

land.lhs.true.449:                                ; preds = %if.end.442
  %180 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl450 = bitcast %union.tree_node* %180 to %struct.tree_decl*
  %built_in_class = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl450, i32 0, i32 5
  %181 = bitcast i48* %built_in_class to i64*
  %bf.load451 = load i64, i64* %181, align 8
  %bf.lshr452 = lshr i64 %bf.load451, 29
  %bf.clear453 = and i64 %bf.lshr452, 3
  %bf.cast454 = trunc i64 %bf.clear453 to i32
  %cmp455 = icmp ne i32 %bf.cast454, 0
  br i1 %cmp455, label %if.then.457, label %if.end.459

if.then.457:                                      ; preds = %land.lhs.true.449
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call458 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %182)
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.457, %land.lhs.true.449, %if.end.442
  %183 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common460 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %code461 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common460, i32 0, i32 2
  %bf.load462 = load i32, i32* %code461, align 8
  %bf.clear463 = and i32 %bf.load462, 255
  %cmp464 = icmp eq i32 %bf.clear463, 30
  br i1 %cmp464, label %land.lhs.true.466, label %if.end.475

land.lhs.true.466:                                ; preds = %if.end.459
  %184 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common467 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %unsigned_flag468 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common467, i32 0, i32 2
  %bf.load469 = load i32, i32* %unsigned_flag468, align 8
  %bf.lshr470 = lshr i32 %bf.load469, 13
  %bf.clear471 = and i32 %bf.lshr470, 1
  %tobool472 = icmp ne i32 %bf.clear471, 0
  br i1 %tobool472, label %if.then.473, label %if.end.475

if.then.473:                                      ; preds = %land.lhs.true.466
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call474 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %185)
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.473, %land.lhs.true.466, %if.end.459
  %186 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common476 = bitcast %union.tree_node* %186 to %struct.tree_common*
  %code477 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common476, i32 0, i32 2
  %bf.load478 = load i32, i32* %code477, align 8
  %bf.clear479 = and i32 %bf.load478, 255
  %cmp480 = icmp eq i32 %bf.clear479, 30
  br i1 %cmp480, label %land.lhs.true.482, label %if.end.492

land.lhs.true.482:                                ; preds = %if.end.475
  %187 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl483 = bitcast %union.tree_node* %187 to %struct.tree_decl*
  %regdecl_flag484 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl483, i32 0, i32 5
  %188 = bitcast i48* %regdecl_flag484 to i64*
  %bf.load485 = load i64, i64* %188, align 8
  %bf.lshr486 = lshr i64 %bf.load485, 10
  %bf.clear487 = and i64 %bf.lshr486, 1
  %bf.cast488 = trunc i64 %bf.clear487 to i32
  %tobool489 = icmp ne i32 %bf.cast488, 0
  br i1 %tobool489, label %if.then.490, label %if.end.492

if.then.490:                                      ; preds = %land.lhs.true.482
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call491 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %189)
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.490, %land.lhs.true.482, %if.end.475
  %190 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common493 = bitcast %union.tree_node* %190 to %struct.tree_common*
  %code494 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common493, i32 0, i32 2
  %bf.load495 = load i32, i32* %code494, align 8
  %bf.clear496 = and i32 %bf.load495, 255
  %cmp497 = icmp eq i32 %bf.clear496, 37
  br i1 %cmp497, label %land.lhs.true.499, label %if.end.509

land.lhs.true.499:                                ; preds = %if.end.492
  %191 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl500 = bitcast %union.tree_node* %191 to %struct.tree_decl*
  %regdecl_flag501 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl500, i32 0, i32 5
  %192 = bitcast i48* %regdecl_flag501 to i64*
  %bf.load502 = load i64, i64* %192, align 8
  %bf.lshr503 = lshr i64 %bf.load502, 10
  %bf.clear504 = and i64 %bf.lshr503, 1
  %bf.cast505 = trunc i64 %bf.clear504 to i32
  %tobool506 = icmp ne i32 %bf.cast505, 0
  br i1 %tobool506, label %if.then.507, label %if.end.509

if.then.507:                                      ; preds = %land.lhs.true.499
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call508 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %193)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.507, %land.lhs.true.499, %if.end.492
  %194 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common510 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %code511 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common510, i32 0, i32 2
  %bf.load512 = load i32, i32* %code511, align 8
  %bf.clear513 = and i32 %bf.load512, 255
  %cmp514 = icmp eq i32 %bf.clear513, 37
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.525

land.lhs.true.516:                                ; preds = %if.end.509
  %195 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl517 = bitcast %union.tree_node* %195 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl517, i32 0, i32 5
  %196 = bitcast i48* %bit_field_flag to i64*
  %bf.load518 = load i64, i64* %196, align 8
  %bf.lshr519 = lshr i64 %bf.load518, 12
  %bf.clear520 = and i64 %bf.lshr519, 1
  %bf.cast521 = trunc i64 %bf.clear520 to i32
  %tobool522 = icmp ne i32 %bf.cast521, 0
  br i1 %tobool522, label %if.then.523, label %if.end.525

if.then.523:                                      ; preds = %land.lhs.true.516
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call524 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %197)
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.523, %land.lhs.true.516, %if.end.509
  %198 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common526 = bitcast %union.tree_node* %198 to %struct.tree_common*
  %code527 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common526, i32 0, i32 2
  %bf.load528 = load i32, i32* %code527, align 8
  %bf.clear529 = and i32 %bf.load528, 255
  %cmp530 = icmp eq i32 %bf.clear529, 37
  br i1 %cmp530, label %land.lhs.true.532, label %if.end.541

land.lhs.true.532:                                ; preds = %if.end.525
  %199 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl533 = bitcast %union.tree_node* %199 to %struct.tree_decl*
  %non_addressable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl533, i32 0, i32 5
  %200 = bitcast i48* %non_addressable to i64*
  %bf.load534 = load i64, i64* %200, align 8
  %bf.lshr535 = lshr i64 %bf.load534, 34
  %bf.clear536 = and i64 %bf.lshr535, 1
  %bf.cast537 = trunc i64 %bf.clear536 to i32
  %tobool538 = icmp ne i32 %bf.cast537, 0
  br i1 %tobool538, label %if.then.539, label %if.end.541

if.then.539:                                      ; preds = %land.lhs.true.532
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call540 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %201)
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.539, %land.lhs.true.532, %if.end.525
  %202 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common542 = bitcast %union.tree_node* %202 to %struct.tree_common*
  %code543 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common542, i32 0, i32 2
  %bf.load544 = load i32, i32* %code543, align 8
  %bf.clear545 = and i32 %bf.load544, 255
  %cmp546 = icmp eq i32 %bf.clear545, 31
  br i1 %cmp546, label %land.lhs.true.548, label %if.end.558

land.lhs.true.548:                                ; preds = %if.end.541
  %203 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl549 = bitcast %union.tree_node* %203 to %struct.tree_decl*
  %bit_field_flag550 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl549, i32 0, i32 5
  %204 = bitcast i48* %bit_field_flag550 to i64*
  %bf.load551 = load i64, i64* %204, align 8
  %bf.lshr552 = lshr i64 %bf.load551, 12
  %bf.clear553 = and i64 %bf.lshr552, 1
  %bf.cast554 = trunc i64 %bf.clear553 to i32
  %tobool555 = icmp ne i32 %bf.cast554, 0
  br i1 %tobool555, label %if.then.556, label %if.end.558

if.then.556:                                      ; preds = %land.lhs.true.548
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call557 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %205)
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.556, %land.lhs.true.548, %if.end.541
  %206 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common559 = bitcast %union.tree_node* %206 to %struct.tree_common*
  %code560 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common559, i32 0, i32 2
  %bf.load561 = load i32, i32* %code560, align 8
  %bf.clear562 = and i32 %bf.load561, 255
  %cmp563 = icmp eq i32 %bf.clear562, 31
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.575

land.lhs.true.565:                                ; preds = %if.end.558
  %207 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl566 = bitcast %union.tree_node* %207 to %struct.tree_decl*
  %regdecl_flag567 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl566, i32 0, i32 5
  %208 = bitcast i48* %regdecl_flag567 to i64*
  %bf.load568 = load i64, i64* %208, align 8
  %bf.lshr569 = lshr i64 %bf.load568, 10
  %bf.clear570 = and i64 %bf.lshr569, 1
  %bf.cast571 = trunc i64 %bf.clear570 to i32
  %tobool572 = icmp ne i32 %bf.cast571, 0
  br i1 %tobool572, label %if.then.573, label %if.end.575

if.then.573:                                      ; preds = %land.lhs.true.565
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call574 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %209)
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.573, %land.lhs.true.565, %if.end.558
  %210 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common576 = bitcast %union.tree_node* %210 to %struct.tree_common*
  %code577 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common576, i32 0, i32 2
  %bf.load578 = load i32, i32* %code577, align 8
  %bf.clear579 = and i32 %bf.load578, 255
  %cmp580 = icmp eq i32 %bf.clear579, 34
  br i1 %cmp580, label %land.lhs.true.582, label %if.end.592

land.lhs.true.582:                                ; preds = %if.end.575
  %211 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl583 = bitcast %union.tree_node* %211 to %struct.tree_decl*
  %bit_field_flag584 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl583, i32 0, i32 5
  %212 = bitcast i48* %bit_field_flag584 to i64*
  %bf.load585 = load i64, i64* %212, align 8
  %bf.lshr586 = lshr i64 %bf.load585, 12
  %bf.clear587 = and i64 %bf.lshr586, 1
  %bf.cast588 = trunc i64 %bf.clear587 to i32
  %tobool589 = icmp ne i32 %bf.cast588, 0
  br i1 %tobool589, label %if.then.590, label %if.end.592

if.then.590:                                      ; preds = %land.lhs.true.582
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call591 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), %struct._IO_FILE* %213)
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.590, %land.lhs.true.582, %if.end.575
  %214 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common593 = bitcast %union.tree_node* %214 to %struct.tree_common*
  %code594 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common593, i32 0, i32 2
  %bf.load595 = load i32, i32* %code594, align 8
  %bf.clear596 = and i32 %bf.load595, 255
  %cmp597 = icmp eq i32 %bf.clear596, 35
  br i1 %cmp597, label %land.lhs.true.599, label %if.end.608

land.lhs.true.599:                                ; preds = %if.end.592
  %215 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl600 = bitcast %union.tree_node* %215 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl600, i32 0, i32 5
  %216 = bitcast i48* %transparent_union to i64*
  %bf.load601 = load i64, i64* %216, align 8
  %bf.lshr602 = lshr i64 %bf.load601, 19
  %bf.clear603 = and i64 %bf.lshr602, 1
  %bf.cast604 = trunc i64 %bf.clear603 to i32
  %tobool605 = icmp ne i32 %bf.cast604, 0
  br i1 %tobool605, label %if.then.606, label %if.end.608

if.then.606:                                      ; preds = %land.lhs.true.599
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call607 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), %struct._IO_FILE* %217)
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.606, %land.lhs.true.599, %if.end.592
  %218 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl609 = bitcast %union.tree_node* %218 to %struct.tree_decl*
  %virtual_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl609, i32 0, i32 5
  %219 = bitcast i48* %virtual_flag to i64*
  %bf.load610 = load i64, i64* %219, align 8
  %bf.lshr611 = lshr i64 %bf.load610, 13
  %bf.clear612 = and i64 %bf.lshr611, 1
  %bf.cast613 = trunc i64 %bf.clear612 to i32
  %tobool614 = icmp ne i32 %bf.cast613, 0
  br i1 %tobool614, label %if.then.615, label %if.end.617

if.then.615:                                      ; preds = %if.end.608
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call616 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %struct._IO_FILE* %220)
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.615, %if.end.608
  %221 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl618 = bitcast %union.tree_node* %221 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl618, i32 0, i32 5
  %222 = bitcast i48* %defer_output to i64*
  %bf.load619 = load i64, i64* %222, align 8
  %bf.lshr620 = lshr i64 %bf.load619, 18
  %bf.clear621 = and i64 %bf.lshr620, 1
  %bf.cast622 = trunc i64 %bf.clear621 to i32
  %tobool623 = icmp ne i32 %bf.cast622, 0
  br i1 %tobool623, label %if.then.624, label %if.end.626

if.then.624:                                      ; preds = %if.end.617
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call625 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %223)
  br label %if.end.626

if.end.626:                                       ; preds = %if.then.624, %if.end.617
  %224 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl627 = bitcast %union.tree_node* %224 to %struct.tree_decl*
  %lang_flag_0628 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl627, i32 0, i32 5
  %225 = bitcast i48* %lang_flag_0628 to i64*
  %bf.load629 = load i64, i64* %225, align 8
  %bf.lshr630 = lshr i64 %bf.load629, 37
  %bf.clear631 = and i64 %bf.lshr630, 1
  %bf.cast632 = trunc i64 %bf.clear631 to i32
  %tobool633 = icmp ne i32 %bf.cast632, 0
  br i1 %tobool633, label %if.then.634, label %if.end.636

if.then.634:                                      ; preds = %if.end.626
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call635 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %226)
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.634, %if.end.626
  %227 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl637 = bitcast %union.tree_node* %227 to %struct.tree_decl*
  %lang_flag_1638 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl637, i32 0, i32 5
  %228 = bitcast i48* %lang_flag_1638 to i64*
  %bf.load639 = load i64, i64* %228, align 8
  %bf.lshr640 = lshr i64 %bf.load639, 38
  %bf.clear641 = and i64 %bf.lshr640, 1
  %bf.cast642 = trunc i64 %bf.clear641 to i32
  %tobool643 = icmp ne i32 %bf.cast642, 0
  br i1 %tobool643, label %if.then.644, label %if.end.646

if.then.644:                                      ; preds = %if.end.636
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call645 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %229)
  br label %if.end.646

if.end.646:                                       ; preds = %if.then.644, %if.end.636
  %230 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl647 = bitcast %union.tree_node* %230 to %struct.tree_decl*
  %lang_flag_2648 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl647, i32 0, i32 5
  %231 = bitcast i48* %lang_flag_2648 to i64*
  %bf.load649 = load i64, i64* %231, align 8
  %bf.lshr650 = lshr i64 %bf.load649, 39
  %bf.clear651 = and i64 %bf.lshr650, 1
  %bf.cast652 = trunc i64 %bf.clear651 to i32
  %tobool653 = icmp ne i32 %bf.cast652, 0
  br i1 %tobool653, label %if.then.654, label %if.end.656

if.then.654:                                      ; preds = %if.end.646
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call655 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %232)
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.654, %if.end.646
  %233 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl657 = bitcast %union.tree_node* %233 to %struct.tree_decl*
  %lang_flag_3658 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl657, i32 0, i32 5
  %234 = bitcast i48* %lang_flag_3658 to i64*
  %bf.load659 = load i64, i64* %234, align 8
  %bf.lshr660 = lshr i64 %bf.load659, 40
  %bf.clear661 = and i64 %bf.lshr660, 1
  %bf.cast662 = trunc i64 %bf.clear661 to i32
  %tobool663 = icmp ne i32 %bf.cast662, 0
  br i1 %tobool663, label %if.then.664, label %if.end.666

if.then.664:                                      ; preds = %if.end.656
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call665 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %235)
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.664, %if.end.656
  %236 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl667 = bitcast %union.tree_node* %236 to %struct.tree_decl*
  %lang_flag_4668 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl667, i32 0, i32 5
  %237 = bitcast i48* %lang_flag_4668 to i64*
  %bf.load669 = load i64, i64* %237, align 8
  %bf.lshr670 = lshr i64 %bf.load669, 41
  %bf.clear671 = and i64 %bf.lshr670, 1
  %bf.cast672 = trunc i64 %bf.clear671 to i32
  %tobool673 = icmp ne i32 %bf.cast672, 0
  br i1 %tobool673, label %if.then.674, label %if.end.676

if.then.674:                                      ; preds = %if.end.666
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call675 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %238)
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.674, %if.end.666
  %239 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl677 = bitcast %union.tree_node* %239 to %struct.tree_decl*
  %lang_flag_5678 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl677, i32 0, i32 5
  %240 = bitcast i48* %lang_flag_5678 to i64*
  %bf.load679 = load i64, i64* %240, align 8
  %bf.lshr680 = lshr i64 %bf.load679, 42
  %bf.clear681 = and i64 %bf.lshr680, 1
  %bf.cast682 = trunc i64 %bf.clear681 to i32
  %tobool683 = icmp ne i32 %bf.cast682, 0
  br i1 %tobool683, label %if.then.684, label %if.end.686

if.then.684:                                      ; preds = %if.end.676
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call685 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %241)
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.684, %if.end.676
  %242 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl687 = bitcast %union.tree_node* %242 to %struct.tree_decl*
  %lang_flag_6688 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl687, i32 0, i32 5
  %243 = bitcast i48* %lang_flag_6688 to i64*
  %bf.load689 = load i64, i64* %243, align 8
  %bf.lshr690 = lshr i64 %bf.load689, 43
  %bf.clear691 = and i64 %bf.lshr690, 1
  %bf.cast692 = trunc i64 %bf.clear691 to i32
  %tobool693 = icmp ne i32 %bf.cast692, 0
  br i1 %tobool693, label %if.then.694, label %if.end.696

if.then.694:                                      ; preds = %if.end.686
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call695 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %244)
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.694, %if.end.686
  %245 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl697 = bitcast %union.tree_node* %245 to %struct.tree_decl*
  %lang_flag_7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl697, i32 0, i32 5
  %246 = bitcast i48* %lang_flag_7 to i64*
  %bf.load698 = load i64, i64* %246, align 8
  %bf.lshr699 = lshr i64 %bf.load698, 44
  %bf.clear700 = and i64 %bf.lshr699, 1
  %bf.cast701 = trunc i64 %bf.clear700 to i32
  %tobool702 = icmp ne i32 %bf.cast701, 0
  br i1 %tobool702, label %if.then.703, label %if.end.705

if.then.703:                                      ; preds = %if.end.696
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call704 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %247)
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.703, %if.end.696
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %249 = load i32, i32* %mode, align 4
  %idxprom706 = sext i32 %249 to i64
  %arrayidx707 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom706
  %250 = load i8*, i8** %arrayidx707, align 8
  %call708 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %250)
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %252 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl709 = bitcast %union.tree_node* %252 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl709, i32 0, i32 1
  %253 = load i8*, i8** %filename, align 8
  %254 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl710 = bitcast %union.tree_node* %254 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl710, i32 0, i32 2
  %255 = load i32, i32* %linenum, align 4
  %call711 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i8* %253, i32 %255)
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %257 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl712 = bitcast %union.tree_node* %257 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl712, i32 0, i32 4
  %258 = load %union.tree_node*, %union.tree_node** %size, align 8
  %259 = load i32, i32* %indent.addr, align 4
  %add713 = add nsw i32 %259, 4
  call void @print_node(%struct._IO_FILE* %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), %union.tree_node* %258, i32 %add713)
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %261 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl714 = bitcast %union.tree_node* %261 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl714, i32 0, i32 7
  %262 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %263 = load i32, i32* %indent.addr, align 4
  %add715 = add nsw i32 %263, 4
  call void @print_node(%struct._IO_FILE* %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), %union.tree_node* %262, i32 %add715)
  %264 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common716 = bitcast %union.tree_node* %264 to %struct.tree_common*
  %code717 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common716, i32 0, i32 2
  %bf.load718 = load i32, i32* %code717, align 8
  %bf.clear719 = and i32 %bf.load718, 255
  %cmp720 = icmp ne i32 %bf.clear719, 30
  br i1 %cmp720, label %if.then.739, label %lor.lhs.false.722

lor.lhs.false.722:                                ; preds = %if.end.705
  %265 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl723 = bitcast %union.tree_node* %265 to %struct.tree_decl*
  %inline_flag724 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl723, i32 0, i32 5
  %266 = bitcast i48* %inline_flag724 to i64*
  %bf.load725 = load i64, i64* %266, align 8
  %bf.lshr726 = lshr i64 %bf.load725, 11
  %bf.clear727 = and i64 %bf.lshr726, 1
  %bf.cast728 = trunc i64 %bf.clear727 to i32
  %tobool729 = icmp ne i32 %bf.cast728, 0
  br i1 %tobool729, label %if.then.739, label %lor.lhs.false.730

lor.lhs.false.730:                                ; preds = %lor.lhs.false.722
  %267 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl731 = bitcast %union.tree_node* %267 to %struct.tree_decl*
  %built_in_class732 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl731, i32 0, i32 5
  %268 = bitcast i48* %built_in_class732 to i64*
  %bf.load733 = load i64, i64* %268, align 8
  %bf.lshr734 = lshr i64 %bf.load733, 29
  %bf.clear735 = and i64 %bf.lshr734, 3
  %bf.cast736 = trunc i64 %bf.clear735 to i32
  %cmp737 = icmp ne i32 %bf.cast736, 0
  br i1 %cmp737, label %if.then.739, label %if.end.741

if.then.739:                                      ; preds = %lor.lhs.false.730, %lor.lhs.false.722, %if.end.705
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %270 = load i32, i32* %indent.addr, align 4
  %add740 = add nsw i32 %270, 3
  call void @indent_to(%struct._IO_FILE* %269, i32 %add740)
  br label %if.end.741

if.end.741:                                       ; preds = %if.then.739, %lor.lhs.false.730
  %271 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common742 = bitcast %union.tree_node* %271 to %struct.tree_common*
  %code743 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common742, i32 0, i32 2
  %bf.load744 = load i32, i32* %code743, align 8
  %bf.clear745 = and i32 %bf.load744, 255
  %cmp746 = icmp ne i32 %bf.clear745, 30
  br i1 %cmp746, label %if.then.748, label %if.else.777

if.then.748:                                      ; preds = %if.end.741
  %272 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl749 = bitcast %union.tree_node* %272 to %struct.tree_decl*
  %user_align = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl749, i32 0, i32 5
  %273 = bitcast i48* %user_align to i64*
  %bf.load750 = load i64, i64* %273, align 8
  %bf.lshr751 = lshr i64 %bf.load750, 35
  %bf.clear752 = and i64 %bf.lshr751, 1
  %bf.cast753 = trunc i64 %bf.clear752 to i32
  %tobool754 = icmp ne i32 %bf.cast753, 0
  br i1 %tobool754, label %if.then.755, label %if.end.757

if.then.755:                                      ; preds = %if.then.748
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call756 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.757

if.end.757:                                       ; preds = %if.then.755, %if.then.748
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %276 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl758 = bitcast %union.tree_node* %276 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl758, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %277 = bitcast %struct.anon.0* %a to i32*
  %bf.load759 = load i32, i32* %277, align 4
  %bf.clear760 = and i32 %bf.load759, 16777215
  %call761 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %bf.clear760)
  %278 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common762 = bitcast %union.tree_node* %278 to %struct.tree_common*
  %code763 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common762, i32 0, i32 2
  %bf.load764 = load i32, i32* %code763, align 8
  %bf.clear765 = and i32 %bf.load764, 255
  %cmp766 = icmp eq i32 %bf.clear765, 37
  br i1 %cmp766, label %if.then.768, label %if.end.776

if.then.768:                                      ; preds = %if.end.757
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call769 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0))
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %281 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl770 = bitcast %union.tree_node* %281 to %struct.tree_decl*
  %u1771 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl770, i32 0, i32 6
  %a772 = bitcast %union.anon* %u1771 to %struct.anon.0*
  %282 = bitcast %struct.anon.0* %a772 to i32*
  %bf.load773 = load i32, i32* %282, align 4
  %bf.lshr774 = lshr i32 %bf.load773, 24
  %sh_prom = zext i32 %bf.lshr774 to i64
  %shl = shl i64 1, %sh_prom
  %call775 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %shl)
  br label %if.end.776

if.end.776:                                       ; preds = %if.then.768, %if.end.757
  br label %if.end.816

if.else.777:                                      ; preds = %if.end.741
  %283 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl778 = bitcast %union.tree_node* %283 to %struct.tree_decl*
  %built_in_class779 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl778, i32 0, i32 5
  %284 = bitcast i48* %built_in_class779 to i64*
  %bf.load780 = load i64, i64* %284, align 8
  %bf.lshr781 = lshr i64 %bf.load780, 29
  %bf.clear782 = and i64 %bf.lshr781, 3
  %bf.cast783 = trunc i64 %bf.clear782 to i32
  %cmp784 = icmp ne i32 %bf.cast783, 0
  br i1 %cmp784, label %if.then.786, label %if.end.815

if.then.786:                                      ; preds = %if.else.777
  %285 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl787 = bitcast %union.tree_node* %285 to %struct.tree_decl*
  %built_in_class788 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl787, i32 0, i32 5
  %286 = bitcast i48* %built_in_class788 to i64*
  %bf.load789 = load i64, i64* %286, align 8
  %bf.lshr790 = lshr i64 %bf.load789, 29
  %bf.clear791 = and i64 %bf.lshr790, 3
  %bf.cast792 = trunc i64 %bf.clear791 to i32
  %cmp793 = icmp eq i32 %bf.cast792, 2
  br i1 %cmp793, label %if.then.795, label %if.else.799

if.then.795:                                      ; preds = %if.then.786
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %288 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl796 = bitcast %union.tree_node* %288 to %struct.tree_decl*
  %u1797 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl796, i32 0, i32 6
  %f = bitcast %union.anon* %u1797 to i32*
  %289 = load i32, i32* %f, align 4
  %call798 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i32 %289)
  br label %if.end.814

if.else.799:                                      ; preds = %if.then.786
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %291 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl800 = bitcast %union.tree_node* %291 to %struct.tree_decl*
  %built_in_class801 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl800, i32 0, i32 5
  %292 = bitcast i48* %built_in_class801 to i64*
  %bf.load802 = load i64, i64* %292, align 8
  %bf.lshr803 = lshr i64 %bf.load802, 29
  %bf.clear804 = and i64 %bf.lshr803, 3
  %bf.cast805 = trunc i64 %bf.clear804 to i32
  %idxprom806 = sext i32 %bf.cast805 to i64
  %arrayidx807 = getelementptr inbounds [4 x i8*], [4 x i8*]* @built_in_class_names, i32 0, i64 %idxprom806
  %293 = load i8*, i8** %arrayidx807, align 8
  %294 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl808 = bitcast %union.tree_node* %294 to %struct.tree_decl*
  %u1809 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl808, i32 0, i32 6
  %f810 = bitcast %union.anon* %u1809 to i32*
  %295 = load i32, i32* %f810, align 4
  %idxprom811 = sext i32 %295 to i64
  %arrayidx812 = getelementptr inbounds [95 x i8*], [95 x i8*]* @built_in_names, i32 0, i64 %idxprom811
  %296 = load i8*, i8** %arrayidx812, align 8
  %call813 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i8* %293, i8* %296)
  br label %if.end.814

if.end.814:                                       ; preds = %if.else.799, %if.then.795
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %if.else.777
  br label %if.end.816

if.end.816:                                       ; preds = %if.end.815, %if.end.776
  %297 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl817 = bitcast %union.tree_node* %297 to %struct.tree_decl*
  %pointer_alias_set = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl817, i32 0, i32 23
  %298 = load i64, i64* %pointer_alias_set, align 8
  %cmp818 = icmp ne i64 %298, -1
  br i1 %cmp818, label %if.then.820, label %if.end.825

if.then.820:                                      ; preds = %if.end.816
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call821 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0))
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %301 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl822 = bitcast %union.tree_node* %301 to %struct.tree_decl*
  %pointer_alias_set823 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl822, i32 0, i32 23
  %302 = load i64, i64* %pointer_alias_set823, align 8
  %call824 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i64 %302)
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.820, %if.end.816
  %303 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common826 = bitcast %union.tree_node* %303 to %struct.tree_common*
  %code827 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common826, i32 0, i32 2
  %bf.load828 = load i32, i32* %code827, align 8
  %bf.clear829 = and i32 %bf.load828, 255
  %cmp830 = icmp eq i32 %bf.clear829, 37
  br i1 %cmp830, label %if.then.832, label %if.end.837

if.then.832:                                      ; preds = %if.end.825
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %305 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl833 = bitcast %union.tree_node* %305 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl833, i32 0, i32 10
  %306 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %307 = load i32, i32* %indent.addr, align 4
  %add834 = add nsw i32 %307, 4
  call void @print_node(%struct._IO_FILE* %304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), %union.tree_node* %306, i32 %add834)
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %309 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl835 = bitcast %union.tree_node* %309 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl835, i32 0, i32 19
  %t = bitcast %union.anon.1* %u2 to %union.tree_node**
  %310 = load %union.tree_node*, %union.tree_node** %t, align 8
  %311 = load i32, i32* %indent.addr, align 4
  %add836 = add nsw i32 %311, 4
  call void @print_node(%struct._IO_FILE* %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %310, i32 %add836)
  br label %if.end.837

if.end.837:                                       ; preds = %if.then.832, %if.end.825
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %313 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl838 = bitcast %union.tree_node* %313 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl838, i32 0, i32 9
  %314 = load %union.tree_node*, %union.tree_node** %context, align 8
  %315 = load i32, i32* %indent.addr, align 4
  %add839 = add nsw i32 %315, 4
  call void @print_node_brief(%struct._IO_FILE* %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %314, i32 %add839)
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %317 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl840 = bitcast %union.tree_node* %317 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl840, i32 0, i32 16
  %318 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %319 = load i32, i32* %indent.addr, align 4
  %add841 = add nsw i32 %319, 4
  call void @print_node_brief(%struct._IO_FILE* %316, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %union.tree_node* %318, i32 %add841)
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %321 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl842 = bitcast %union.tree_node* %321 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl842, i32 0, i32 13
  %322 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %323 = load i32, i32* %indent.addr, align 4
  %add843 = add nsw i32 %323, 4
  call void @print_node_brief(%struct._IO_FILE* %320, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), %union.tree_node* %322, i32 %add843)
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %325 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl844 = bitcast %union.tree_node* %325 to %struct.tree_decl*
  %arguments845 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl844, i32 0, i32 10
  %326 = load %union.tree_node*, %union.tree_node** %arguments845, align 8
  %327 = load i32, i32* %indent.addr, align 4
  %add846 = add nsw i32 %327, 4
  call void @print_node(%struct._IO_FILE* %324, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), %union.tree_node* %326, i32 %add846)
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %329 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl847 = bitcast %union.tree_node* %329 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl847, i32 0, i32 11
  %330 = load %union.tree_node*, %union.tree_node** %result, align 8
  %331 = load i32, i32* %indent.addr, align 4
  %add848 = add nsw i32 %331, 4
  call void @print_node(%struct._IO_FILE* %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), %union.tree_node* %330, i32 %add848)
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %333 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl849 = bitcast %union.tree_node* %333 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl849, i32 0, i32 12
  %334 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %335 = load i32, i32* %indent.addr, align 4
  %add850 = add nsw i32 %335, 4
  call void @print_node_brief(%struct._IO_FILE* %332, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), %union.tree_node* %334, i32 %add850)
  %336 = load void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 15), align 8
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %338 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %339 = load i32, i32* %indent.addr, align 4
  call void %336(%struct._IO_FILE* %337, %union.tree_node* %338, i32 %339)
  %340 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl851 = bitcast %union.tree_node* %340 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl851, i32 0, i32 17
  %341 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp852 = icmp ne %struct.rtx_def* %341, null
  br i1 %cmp852, label %if.then.854, label %if.end.863

if.then.854:                                      ; preds = %if.end.837
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %343 = load i32, i32* %indent.addr, align 4
  %add855 = add nsw i32 %343, 4
  call void @indent_to(%struct._IO_FILE* %342, i32 %add855)
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %345 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl856 = bitcast %union.tree_node* %345 to %struct.tree_decl*
  %rtl857 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl856, i32 0, i32 17
  %346 = load %struct.rtx_def*, %struct.rtx_def** %rtl857, align 8
  %tobool858 = icmp ne %struct.rtx_def* %346, null
  br i1 %tobool858, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.854
  %347 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl859 = bitcast %union.tree_node* %347 to %struct.tree_decl*
  %rtl860 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl859, i32 0, i32 17
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtl860, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.854
  %349 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %349, i8* null)
  %350 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl861 = bitcast %union.tree_node* %350 to %struct.tree_decl*
  %rtl862 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl861, i32 0, i32 17
  %351 = load %struct.rtx_def*, %struct.rtx_def** %rtl862, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %348, %cond.true ], [ %351, %cond.false ]
  call void @print_rtl(%struct._IO_FILE* %344, %struct.rtx_def* %cond)
  br label %if.end.863

if.end.863:                                       ; preds = %cond.end, %if.end.837
  %352 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common864 = bitcast %union.tree_node* %352 to %struct.tree_common*
  %code865 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common864, i32 0, i32 2
  %bf.load866 = load i32, i32* %code865, align 8
  %bf.clear867 = and i32 %bf.load866, 255
  %cmp868 = icmp eq i32 %bf.clear867, 35
  br i1 %cmp868, label %if.then.870, label %if.else.888

if.then.870:                                      ; preds = %if.end.863
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %354 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl871 = bitcast %union.tree_node* %354 to %struct.tree_decl*
  %initial872 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl871, i32 0, i32 12
  %355 = load %union.tree_node*, %union.tree_node** %initial872, align 8
  %356 = load i32, i32* %indent.addr, align 4
  %add873 = add nsw i32 %356, 4
  call void @print_node(%struct._IO_FILE* %353, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), %union.tree_node* %355, i32 %add873)
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %358 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl874 = bitcast %union.tree_node* %358 to %struct.tree_decl*
  %result875 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl874, i32 0, i32 11
  %359 = load %union.tree_node*, %union.tree_node** %result875, align 8
  %360 = load i32, i32* %indent.addr, align 4
  %add876 = add nsw i32 %360, 4
  call void @print_node(%struct._IO_FILE* %357, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), %union.tree_node* %359, i32 %add876)
  %361 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl877 = bitcast %union.tree_node* %361 to %struct.tree_decl*
  %u2878 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl877, i32 0, i32 19
  %r = bitcast %union.anon.1* %u2878 to %struct.rtx_def**
  %362 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %cmp879 = icmp ne %struct.rtx_def* %362, null
  br i1 %cmp879, label %if.then.881, label %if.end.887

if.then.881:                                      ; preds = %if.then.870
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %364 = load i32, i32* %indent.addr, align 4
  %add882 = add nsw i32 %364, 4
  call void @indent_to(%struct._IO_FILE* %363, i32 %add882)
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call883 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %365, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0))
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %367 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl884 = bitcast %union.tree_node* %367 to %struct.tree_decl*
  %u2885 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl884, i32 0, i32 19
  %r886 = bitcast %union.anon.1* %u2885 to %struct.rtx_def**
  %368 = load %struct.rtx_def*, %struct.rtx_def** %r886, align 8
  call void @print_rtl(%struct._IO_FILE* %366, %struct.rtx_def* %368)
  br label %if.end.887

if.end.887:                                       ; preds = %if.then.881, %if.then.870
  br label %if.end.909

if.else.888:                                      ; preds = %if.end.863
  %369 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common889 = bitcast %union.tree_node* %369 to %struct.tree_common*
  %code890 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common889, i32 0, i32 2
  %bf.load891 = load i32, i32* %code890, align 8
  %bf.clear892 = and i32 %bf.load891, 255
  %cmp893 = icmp eq i32 %bf.clear892, 30
  br i1 %cmp893, label %land.lhs.true.895, label %if.end.908

land.lhs.true.895:                                ; preds = %if.else.888
  %370 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl896 = bitcast %union.tree_node* %370 to %struct.tree_decl*
  %u2897 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl896, i32 0, i32 19
  %f898 = bitcast %union.anon.1* %u2897 to %struct.function**
  %371 = load %struct.function*, %struct.function** %f898, align 8
  %cmp899 = icmp ne %struct.function* %371, null
  br i1 %cmp899, label %if.then.901, label %if.end.908

if.then.901:                                      ; preds = %land.lhs.true.895
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %373 = load i32, i32* %indent.addr, align 4
  %add902 = add nsw i32 %373, 4
  call void @indent_to(%struct._IO_FILE* %372, i32 %add902)
  %374 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call903 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %374, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0))
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %376 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl904 = bitcast %union.tree_node* %376 to %struct.tree_decl*
  %u2905 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl904, i32 0, i32 19
  %f906 = bitcast %union.anon.1* %u2905 to %struct.function**
  %377 = load %struct.function*, %struct.function** %f906, align 8
  %378 = bitcast %struct.function* %377 to i8*
  %call907 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %375, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %378)
  br label %if.end.908

if.end.908:                                       ; preds = %if.then.901, %land.lhs.true.895, %if.else.888
  br label %if.end.909

if.end.909:                                       ; preds = %if.end.908, %if.end.887
  %379 = load i32, i32* %indent.addr, align 4
  %cmp910 = icmp eq i32 %379, 4
  br i1 %cmp910, label %if.then.912, label %if.else.915

if.then.912:                                      ; preds = %if.end.909
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %381 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common913 = bitcast %union.tree_node* %381 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common913, i32 0, i32 0
  %382 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %383 = load i32, i32* %indent.addr, align 4
  %add914 = add nsw i32 %383, 4
  call void @print_node(%struct._IO_FILE* %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %382, i32 %add914)
  br label %if.end.919

if.else.915:                                      ; preds = %if.end.909
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %385 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common916 = bitcast %union.tree_node* %385 to %struct.tree_common*
  %chain917 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common916, i32 0, i32 0
  %386 = load %union.tree_node*, %union.tree_node** %chain917, align 8
  %387 = load i32, i32* %indent.addr, align 4
  %add918 = add nsw i32 %387, 4
  call void @print_node_brief(%struct._IO_FILE* %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %386, i32 %add918)
  br label %if.end.919

if.end.919:                                       ; preds = %if.else.915, %if.then.912
  br label %sw.epilog.1576

sw.bb.920:                                        ; preds = %if.end.305
  %388 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common921 = bitcast %union.tree_node* %388 to %struct.tree_common*
  %code922 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common921, i32 0, i32 2
  %bf.load923 = load i32, i32* %code922, align 8
  %bf.clear924 = and i32 %bf.load923, 255
  %cmp925 = icmp eq i32 %bf.clear924, 20
  br i1 %cmp925, label %land.lhs.true.941, label %lor.lhs.false.927

lor.lhs.false.927:                                ; preds = %sw.bb.920
  %389 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common928 = bitcast %union.tree_node* %389 to %struct.tree_common*
  %code929 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common928, i32 0, i32 2
  %bf.load930 = load i32, i32* %code929, align 8
  %bf.clear931 = and i32 %bf.load930, 255
  %cmp932 = icmp eq i32 %bf.clear931, 21
  br i1 %cmp932, label %land.lhs.true.941, label %lor.lhs.false.934

lor.lhs.false.934:                                ; preds = %lor.lhs.false.927
  %390 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common935 = bitcast %union.tree_node* %390 to %struct.tree_common*
  %code936 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common935, i32 0, i32 2
  %bf.load937 = load i32, i32* %code936, align 8
  %bf.clear938 = and i32 %bf.load937, 255
  %cmp939 = icmp eq i32 %bf.clear938, 22
  br i1 %cmp939, label %land.lhs.true.941, label %if.else.949

land.lhs.true.941:                                ; preds = %lor.lhs.false.934, %lor.lhs.false.927, %sw.bb.920
  %391 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type942 = bitcast %union.tree_node* %391 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type942, i32 0, i32 6
  %bf.load943 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr944 = lshr i32 %bf.load943, 17
  %bf.clear945 = and i32 %bf.lshr944, 1
  %tobool946 = icmp ne i32 %bf.clear945, 0
  br i1 %tobool946, label %if.then.947, label %if.else.949

if.then.947:                                      ; preds = %land.lhs.true.941
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call948 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), %struct._IO_FILE* %392)
  br label %if.end.983

if.else.949:                                      ; preds = %land.lhs.true.941, %lor.lhs.false.934
  %393 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common950 = bitcast %union.tree_node* %393 to %struct.tree_common*
  %code951 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common950, i32 0, i32 2
  %bf.load952 = load i32, i32* %code951, align 8
  %bf.clear953 = and i32 %bf.load952, 255
  %cmp954 = icmp eq i32 %bf.clear953, 6
  br i1 %cmp954, label %land.lhs.true.956, label %if.else.965

land.lhs.true.956:                                ; preds = %if.else.949
  %394 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type957 = bitcast %union.tree_node* %394 to %struct.tree_type*
  %no_force_blk_flag958 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type957, i32 0, i32 6
  %bf.load959 = load i32, i32* %no_force_blk_flag958, align 4
  %bf.lshr960 = lshr i32 %bf.load959, 17
  %bf.clear961 = and i32 %bf.lshr960, 1
  %tobool962 = icmp ne i32 %bf.clear961, 0
  br i1 %tobool962, label %if.then.963, label %if.else.965

if.then.963:                                      ; preds = %land.lhs.true.956
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call964 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), %struct._IO_FILE* %395)
  br label %if.end.982

if.else.965:                                      ; preds = %land.lhs.true.956, %if.else.949
  %396 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common966 = bitcast %union.tree_node* %396 to %struct.tree_common*
  %code967 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common966, i32 0, i32 2
  %bf.load968 = load i32, i32* %code967, align 8
  %bf.clear969 = and i32 %bf.load968, 255
  %cmp970 = icmp eq i32 %bf.clear969, 23
  br i1 %cmp970, label %land.lhs.true.972, label %if.end.981

land.lhs.true.972:                                ; preds = %if.else.965
  %397 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type973 = bitcast %union.tree_node* %397 to %struct.tree_type*
  %no_force_blk_flag974 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type973, i32 0, i32 6
  %bf.load975 = load i32, i32* %no_force_blk_flag974, align 4
  %bf.lshr976 = lshr i32 %bf.load975, 17
  %bf.clear977 = and i32 %bf.lshr976, 1
  %tobool978 = icmp ne i32 %bf.clear977, 0
  br i1 %tobool978, label %if.then.979, label %if.end.981

if.then.979:                                      ; preds = %land.lhs.true.972
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call980 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i32 0, i32 0), %struct._IO_FILE* %398)
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.979, %land.lhs.true.972, %if.else.965
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.then.963
  br label %if.end.983

if.end.983:                                       ; preds = %if.end.982, %if.then.947
  %399 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type984 = bitcast %union.tree_node* %399 to %struct.tree_type*
  %string_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type984, i32 0, i32 6
  %bf.load985 = load i32, i32* %string_flag, align 4
  %bf.lshr986 = lshr i32 %bf.load985, 16
  %bf.clear987 = and i32 %bf.lshr986, 1
  %tobool988 = icmp ne i32 %bf.clear987, 0
  br i1 %tobool988, label %if.then.989, label %if.end.991

if.then.989:                                      ; preds = %if.end.983
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call990 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), %struct._IO_FILE* %400)
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.989, %if.end.983
  %401 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type992 = bitcast %union.tree_node* %401 to %struct.tree_type*
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type992, i32 0, i32 6
  %bf.load993 = load i32, i32* %needs_constructing_flag, align 4
  %bf.lshr994 = lshr i32 %bf.load993, 18
  %bf.clear995 = and i32 %bf.lshr994, 1
  %tobool996 = icmp ne i32 %bf.clear995, 0
  br i1 %tobool996, label %if.then.997, label %if.end.999

if.then.997:                                      ; preds = %if.end.991
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call998 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), %struct._IO_FILE* %402)
  br label %if.end.999

if.end.999:                                       ; preds = %if.then.997, %if.end.991
  %403 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1000 = bitcast %union.tree_node* %403 to %struct.tree_common*
  %code1001 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1000, i32 0, i32 2
  %bf.load1002 = load i32, i32* %code1001, align 8
  %bf.clear1003 = and i32 %bf.load1002, 255
  %cmp1004 = icmp eq i32 %bf.clear1003, 21
  br i1 %cmp1004, label %land.lhs.true.1006, label %if.else.1014

land.lhs.true.1006:                               ; preds = %if.end.999
  %404 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1007 = bitcast %union.tree_node* %404 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1007, i32 0, i32 6
  %bf.load1008 = load i32, i32* %transparent_union_flag, align 4
  %bf.lshr1009 = lshr i32 %bf.load1008, 19
  %bf.clear1010 = and i32 %bf.lshr1009, 1
  %tobool1011 = icmp ne i32 %bf.clear1010, 0
  br i1 %tobool1011, label %if.then.1012, label %if.else.1014

if.then.1012:                                     ; preds = %land.lhs.true.1006
  %405 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1013 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), %struct._IO_FILE* %405)
  br label %if.end.1048

if.else.1014:                                     ; preds = %land.lhs.true.1006, %if.end.999
  %406 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1015 = bitcast %union.tree_node* %406 to %struct.tree_common*
  %code1016 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1015, i32 0, i32 2
  %bf.load1017 = load i32, i32* %code1016, align 8
  %bf.clear1018 = and i32 %bf.load1017, 255
  %cmp1019 = icmp eq i32 %bf.clear1018, 18
  br i1 %cmp1019, label %land.lhs.true.1021, label %if.else.1030

land.lhs.true.1021:                               ; preds = %if.else.1014
  %407 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1022 = bitcast %union.tree_node* %407 to %struct.tree_type*
  %transparent_union_flag1023 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1022, i32 0, i32 6
  %bf.load1024 = load i32, i32* %transparent_union_flag1023, align 4
  %bf.lshr1025 = lshr i32 %bf.load1024, 19
  %bf.clear1026 = and i32 %bf.lshr1025, 1
  %tobool1027 = icmp ne i32 %bf.clear1026, 0
  br i1 %tobool1027, label %if.then.1028, label %if.else.1030

if.then.1028:                                     ; preds = %land.lhs.true.1021
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1029 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %408)
  br label %if.end.1047

if.else.1030:                                     ; preds = %land.lhs.true.1021, %if.else.1014
  %409 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1031 = bitcast %union.tree_node* %409 to %struct.tree_common*
  %code1032 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1031, i32 0, i32 2
  %bf.load1033 = load i32, i32* %code1032, align 8
  %bf.clear1034 = and i32 %bf.load1033, 255
  %cmp1035 = icmp eq i32 %bf.clear1034, 23
  br i1 %cmp1035, label %land.lhs.true.1037, label %if.end.1046

land.lhs.true.1037:                               ; preds = %if.else.1030
  %410 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1038 = bitcast %union.tree_node* %410 to %struct.tree_type*
  %transparent_union_flag1039 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1038, i32 0, i32 6
  %bf.load1040 = load i32, i32* %transparent_union_flag1039, align 4
  %bf.lshr1041 = lshr i32 %bf.load1040, 19
  %bf.clear1042 = and i32 %bf.lshr1041, 1
  %tobool1043 = icmp ne i32 %bf.clear1042, 0
  br i1 %tobool1043, label %if.then.1044, label %if.end.1046

if.then.1044:                                     ; preds = %land.lhs.true.1037
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1045 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %411)
  br label %if.end.1046

if.end.1046:                                      ; preds = %if.then.1044, %land.lhs.true.1037, %if.else.1030
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %if.then.1028
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.end.1047, %if.then.1012
  %412 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1049 = bitcast %union.tree_node* %412 to %struct.tree_type*
  %packed_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1049, i32 0, i32 6
  %bf.load1050 = load i32, i32* %packed_flag, align 4
  %bf.lshr1051 = lshr i32 %bf.load1050, 20
  %bf.clear1052 = and i32 %bf.lshr1051, 1
  %tobool1053 = icmp ne i32 %bf.clear1052, 0
  br i1 %tobool1053, label %if.then.1054, label %if.end.1056

if.then.1054:                                     ; preds = %if.end.1048
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1055 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %413)
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.then.1054, %if.end.1048
  %414 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1057 = bitcast %union.tree_node* %414 to %struct.tree_type*
  %lang_flag_01058 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1057, i32 0, i32 6
  %bf.load1059 = load i32, i32* %lang_flag_01058, align 4
  %bf.lshr1060 = lshr i32 %bf.load1059, 24
  %bf.clear1061 = and i32 %bf.lshr1060, 1
  %tobool1062 = icmp ne i32 %bf.clear1061, 0
  br i1 %tobool1062, label %if.then.1063, label %if.end.1065

if.then.1063:                                     ; preds = %if.end.1056
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1064 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), %struct._IO_FILE* %415)
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1063, %if.end.1056
  %416 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1066 = bitcast %union.tree_node* %416 to %struct.tree_type*
  %lang_flag_11067 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1066, i32 0, i32 6
  %bf.load1068 = load i32, i32* %lang_flag_11067, align 4
  %bf.lshr1069 = lshr i32 %bf.load1068, 25
  %bf.clear1070 = and i32 %bf.lshr1069, 1
  %tobool1071 = icmp ne i32 %bf.clear1070, 0
  br i1 %tobool1071, label %if.then.1072, label %if.end.1074

if.then.1072:                                     ; preds = %if.end.1065
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1073 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %417)
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.then.1072, %if.end.1065
  %418 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1075 = bitcast %union.tree_node* %418 to %struct.tree_type*
  %lang_flag_21076 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1075, i32 0, i32 6
  %bf.load1077 = load i32, i32* %lang_flag_21076, align 4
  %bf.lshr1078 = lshr i32 %bf.load1077, 26
  %bf.clear1079 = and i32 %bf.lshr1078, 1
  %tobool1080 = icmp ne i32 %bf.clear1079, 0
  br i1 %tobool1080, label %if.then.1081, label %if.end.1083

if.then.1081:                                     ; preds = %if.end.1074
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1082 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %419)
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1081, %if.end.1074
  %420 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1084 = bitcast %union.tree_node* %420 to %struct.tree_type*
  %lang_flag_31085 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1084, i32 0, i32 6
  %bf.load1086 = load i32, i32* %lang_flag_31085, align 4
  %bf.lshr1087 = lshr i32 %bf.load1086, 27
  %bf.clear1088 = and i32 %bf.lshr1087, 1
  %tobool1089 = icmp ne i32 %bf.clear1088, 0
  br i1 %tobool1089, label %if.then.1090, label %if.end.1092

if.then.1090:                                     ; preds = %if.end.1083
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1091 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), %struct._IO_FILE* %421)
  br label %if.end.1092

if.end.1092:                                      ; preds = %if.then.1090, %if.end.1083
  %422 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1093 = bitcast %union.tree_node* %422 to %struct.tree_type*
  %lang_flag_41094 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1093, i32 0, i32 6
  %bf.load1095 = load i32, i32* %lang_flag_41094, align 4
  %bf.lshr1096 = lshr i32 %bf.load1095, 28
  %bf.clear1097 = and i32 %bf.lshr1096, 1
  %tobool1098 = icmp ne i32 %bf.clear1097, 0
  br i1 %tobool1098, label %if.then.1099, label %if.end.1101

if.then.1099:                                     ; preds = %if.end.1092
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1100 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %423)
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.then.1099, %if.end.1092
  %424 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1102 = bitcast %union.tree_node* %424 to %struct.tree_type*
  %lang_flag_51103 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1102, i32 0, i32 6
  %bf.load1104 = load i32, i32* %lang_flag_51103, align 4
  %bf.lshr1105 = lshr i32 %bf.load1104, 29
  %bf.clear1106 = and i32 %bf.lshr1105, 1
  %tobool1107 = icmp ne i32 %bf.clear1106, 0
  br i1 %tobool1107, label %if.then.1108, label %if.end.1110

if.then.1108:                                     ; preds = %if.end.1101
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1109 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), %struct._IO_FILE* %425)
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.then.1108, %if.end.1101
  %426 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1111 = bitcast %union.tree_node* %426 to %struct.tree_type*
  %lang_flag_61112 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1111, i32 0, i32 6
  %bf.load1113 = load i32, i32* %lang_flag_61112, align 4
  %bf.lshr1114 = lshr i32 %bf.load1113, 30
  %bf.clear1115 = and i32 %bf.lshr1114, 1
  %tobool1116 = icmp ne i32 %bf.clear1115, 0
  br i1 %tobool1116, label %if.then.1117, label %if.end.1119

if.then.1117:                                     ; preds = %if.end.1110
  %427 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1118 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %427)
  br label %if.end.1119

if.end.1119:                                      ; preds = %if.then.1117, %if.end.1110
  %428 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1120 = bitcast %union.tree_node* %428 to %struct.tree_type*
  %mode1121 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1120, i32 0, i32 6
  %bf.load1122 = load i32, i32* %mode1121, align 4
  %bf.lshr1123 = lshr i32 %bf.load1122, 9
  %bf.clear1124 = and i32 %bf.lshr1123, 127
  store i32 %bf.clear1124, i32* %mode, align 4
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %430 = load i32, i32* %mode, align 4
  %idxprom1125 = sext i32 %430 to i64
  %arrayidx1126 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom1125
  %431 = load i8*, i8** %arrayidx1126, align 8
  %call1127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %429, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %431)
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %433 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1128 = bitcast %union.tree_node* %433 to %struct.tree_type*
  %size1129 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1128, i32 0, i32 2
  %434 = load %union.tree_node*, %union.tree_node** %size1129, align 8
  %435 = load i32, i32* %indent.addr, align 4
  %add1130 = add nsw i32 %435, 4
  call void @print_node(%struct._IO_FILE* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), %union.tree_node* %434, i32 %add1130)
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %437 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1131 = bitcast %union.tree_node* %437 to %struct.tree_type*
  %size_unit1132 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1131, i32 0, i32 3
  %438 = load %union.tree_node*, %union.tree_node** %size_unit1132, align 8
  %439 = load i32, i32* %indent.addr, align 4
  %add1133 = add nsw i32 %439, 4
  call void @print_node(%struct._IO_FILE* %436, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), %union.tree_node* %438, i32 %add1133)
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %441 = load i32, i32* %indent.addr, align 4
  %add1134 = add nsw i32 %441, 3
  call void @indent_to(%struct._IO_FILE* %440, i32 %add1134)
  %442 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1135 = bitcast %union.tree_node* %442 to %struct.tree_type*
  %user_align1136 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1135, i32 0, i32 6
  %bf.load1137 = load i32, i32* %user_align1136, align 4
  %bf.lshr1138 = lshr i32 %bf.load1137, 31
  %tobool1139 = icmp ne i32 %bf.lshr1138, 0
  br i1 %tobool1139, label %if.then.1140, label %if.end.1142

if.then.1140:                                     ; preds = %if.end.1119
  %443 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %443, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.1142

if.end.1142:                                      ; preds = %if.then.1140, %if.end.1119
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %445 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1143 = bitcast %union.tree_node* %445 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1143, i32 0, i32 7
  %446 = load i32, i32* %align, align 4
  %call1144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %444, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %446)
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %448 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1145 = bitcast %union.tree_node* %448 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1145, i32 0, i32 10
  %address = bitcast %union.anon.2* %symtab to i32*
  %449 = load i32, i32* %address, align 4
  %call1146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i32 %449)
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0))
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %452 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1148 = bitcast %union.tree_node* %452 to %struct.tree_type*
  %alias_set = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1148, i32 0, i32 18
  %453 = load i64, i64* %alias_set, align 8
  %call1149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i64 %453)
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %455 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1150 = bitcast %union.tree_node* %455 to %struct.tree_type*
  %attributes1151 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1150, i32 0, i32 4
  %456 = load %union.tree_node*, %union.tree_node** %attributes1151, align 8
  %457 = load i32, i32* %indent.addr, align 4
  %add1152 = add nsw i32 %457, 4
  call void @print_node(%struct._IO_FILE* %454, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %union.tree_node* %456, i32 %add1152)
  %458 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1153 = bitcast %union.tree_node* %458 to %struct.tree_common*
  %code1154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1153, i32 0, i32 2
  %bf.load1155 = load i32, i32* %code1154, align 8
  %bf.clear1156 = and i32 %bf.load1155, 255
  %cmp1157 = icmp eq i32 %bf.clear1156, 6
  br i1 %cmp1157, label %if.then.1187, label %lor.lhs.false.1159

lor.lhs.false.1159:                               ; preds = %if.end.1142
  %459 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1160 = bitcast %union.tree_node* %459 to %struct.tree_common*
  %code1161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1160, i32 0, i32 2
  %bf.load1162 = load i32, i32* %code1161, align 8
  %bf.clear1163 = and i32 %bf.load1162, 255
  %cmp1164 = icmp eq i32 %bf.clear1163, 10
  br i1 %cmp1164, label %if.then.1187, label %lor.lhs.false.1166

lor.lhs.false.1166:                               ; preds = %lor.lhs.false.1159
  %460 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1167 = bitcast %union.tree_node* %460 to %struct.tree_common*
  %code1168 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1167, i32 0, i32 2
  %bf.load1169 = load i32, i32* %code1168, align 8
  %bf.clear1170 = and i32 %bf.load1169, 255
  %cmp1171 = icmp eq i32 %bf.clear1170, 11
  br i1 %cmp1171, label %if.then.1187, label %lor.lhs.false.1173

lor.lhs.false.1173:                               ; preds = %lor.lhs.false.1166
  %461 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1174 = bitcast %union.tree_node* %461 to %struct.tree_common*
  %code1175 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1174, i32 0, i32 2
  %bf.load1176 = load i32, i32* %code1175, align 8
  %bf.clear1177 = and i32 %bf.load1176, 255
  %cmp1178 = icmp eq i32 %bf.clear1177, 12
  br i1 %cmp1178, label %if.then.1187, label %lor.lhs.false.1180

lor.lhs.false.1180:                               ; preds = %lor.lhs.false.1173
  %462 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1181 = bitcast %union.tree_node* %462 to %struct.tree_common*
  %code1182 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1181, i32 0, i32 2
  %bf.load1183 = load i32, i32* %code1182, align 8
  %bf.clear1184 = and i32 %bf.load1183, 255
  %cmp1185 = icmp eq i32 %bf.clear1184, 7
  br i1 %cmp1185, label %if.then.1187, label %if.end.1196

if.then.1187:                                     ; preds = %lor.lhs.false.1180, %lor.lhs.false.1173, %lor.lhs.false.1166, %lor.lhs.false.1159, %if.end.1142
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %464 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1188 = bitcast %union.tree_node* %464 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1188, i32 0, i32 6
  %bf.load1189 = load i32, i32* %precision, align 4
  %bf.clear1190 = and i32 %bf.load1189, 511
  %call1191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %463, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i32 %bf.clear1190)
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %466 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1192 = bitcast %union.tree_node* %466 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1192, i32 0, i32 12
  %467 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %468 = load i32, i32* %indent.addr, align 4
  %add1193 = add nsw i32 %468, 4
  call void @print_node_brief(%struct._IO_FILE* %465, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), %union.tree_node* %467, i32 %add1193)
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %470 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1194 = bitcast %union.tree_node* %470 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1194, i32 0, i32 13
  %471 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %472 = load i32, i32* %indent.addr, align 4
  %add1195 = add nsw i32 %472, 4
  call void @print_node_brief(%struct._IO_FILE* %469, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), %union.tree_node* %471, i32 %add1195)
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.then.1187, %lor.lhs.false.1180
  %473 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1197 = bitcast %union.tree_node* %473 to %struct.tree_common*
  %code1198 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1197, i32 0, i32 2
  %bf.load1199 = load i32, i32* %code1198, align 8
  %bf.clear1200 = and i32 %bf.load1199, 255
  %cmp1201 = icmp eq i32 %bf.clear1200, 10
  br i1 %cmp1201, label %if.then.1203, label %if.else.1206

if.then.1203:                                     ; preds = %if.end.1196
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %475 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1204 = bitcast %union.tree_node* %475 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1204, i32 0, i32 1
  %476 = load %union.tree_node*, %union.tree_node** %values, align 8
  %477 = load i32, i32* %indent.addr, align 4
  %add1205 = add nsw i32 %477, 4
  call void @print_node(%struct._IO_FILE* %474, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), %union.tree_node* %476, i32 %add1205)
  br label %if.end.1290

if.else.1206:                                     ; preds = %if.end.1196
  %478 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1207 = bitcast %union.tree_node* %478 to %struct.tree_common*
  %code1208 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1207, i32 0, i32 2
  %bf.load1209 = load i32, i32* %code1208, align 8
  %bf.clear1210 = and i32 %bf.load1209, 255
  %cmp1211 = icmp eq i32 %bf.clear1210, 18
  br i1 %cmp1211, label %if.then.1220, label %lor.lhs.false.1213

lor.lhs.false.1213:                               ; preds = %if.else.1206
  %479 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1214 = bitcast %union.tree_node* %479 to %struct.tree_common*
  %code1215 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1214, i32 0, i32 2
  %bf.load1216 = load i32, i32* %code1215, align 8
  %bf.clear1217 = and i32 %bf.load1216, 255
  %cmp1218 = icmp eq i32 %bf.clear1217, 19
  br i1 %cmp1218, label %if.then.1220, label %if.else.1224

if.then.1220:                                     ; preds = %lor.lhs.false.1213, %if.else.1206
  %480 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %481 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1221 = bitcast %union.tree_node* %481 to %struct.tree_type*
  %values1222 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1221, i32 0, i32 1
  %482 = load %union.tree_node*, %union.tree_node** %values1222, align 8
  %483 = load i32, i32* %indent.addr, align 4
  %add1223 = add nsw i32 %483, 4
  call void @print_node(%struct._IO_FILE* %480, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), %union.tree_node* %482, i32 %add1223)
  br label %if.end.1289

if.else.1224:                                     ; preds = %lor.lhs.false.1213
  %484 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1225 = bitcast %union.tree_node* %484 to %struct.tree_common*
  %code1226 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1225, i32 0, i32 2
  %bf.load1227 = load i32, i32* %code1226, align 8
  %bf.clear1228 = and i32 %bf.load1227, 255
  %cmp1229 = icmp eq i32 %bf.clear1228, 20
  br i1 %cmp1229, label %if.then.1245, label %lor.lhs.false.1231

lor.lhs.false.1231:                               ; preds = %if.else.1224
  %485 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1232 = bitcast %union.tree_node* %485 to %struct.tree_common*
  %code1233 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1232, i32 0, i32 2
  %bf.load1234 = load i32, i32* %code1233, align 8
  %bf.clear1235 = and i32 %bf.load1234, 255
  %cmp1236 = icmp eq i32 %bf.clear1235, 21
  br i1 %cmp1236, label %if.then.1245, label %lor.lhs.false.1238

lor.lhs.false.1238:                               ; preds = %lor.lhs.false.1231
  %486 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1239 = bitcast %union.tree_node* %486 to %struct.tree_common*
  %code1240 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1239, i32 0, i32 2
  %bf.load1241 = load i32, i32* %code1240, align 8
  %bf.clear1242 = and i32 %bf.load1241, 255
  %cmp1243 = icmp eq i32 %bf.clear1242, 22
  br i1 %cmp1243, label %if.then.1245, label %if.else.1249

if.then.1245:                                     ; preds = %lor.lhs.false.1238, %lor.lhs.false.1231, %if.else.1224
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %488 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1246 = bitcast %union.tree_node* %488 to %struct.tree_type*
  %values1247 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1246, i32 0, i32 1
  %489 = load %union.tree_node*, %union.tree_node** %values1247, align 8
  %490 = load i32, i32* %indent.addr, align 4
  %add1248 = add nsw i32 %490, 4
  call void @print_node(%struct._IO_FILE* %487, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), %union.tree_node* %489, i32 %add1248)
  br label %if.end.1288

if.else.1249:                                     ; preds = %lor.lhs.false.1238
  %491 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1250 = bitcast %union.tree_node* %491 to %struct.tree_common*
  %code1251 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1250, i32 0, i32 2
  %bf.load1252 = load i32, i32* %code1251, align 8
  %bf.clear1253 = and i32 %bf.load1252, 255
  %cmp1254 = icmp eq i32 %bf.clear1253, 23
  br i1 %cmp1254, label %if.then.1263, label %lor.lhs.false.1256

lor.lhs.false.1256:                               ; preds = %if.else.1249
  %492 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1257 = bitcast %union.tree_node* %492 to %struct.tree_common*
  %code1258 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1257, i32 0, i32 2
  %bf.load1259 = load i32, i32* %code1258, align 8
  %bf.clear1260 = and i32 %bf.load1259, 255
  %cmp1261 = icmp eq i32 %bf.clear1260, 16
  br i1 %cmp1261, label %if.then.1263, label %if.else.1275

if.then.1263:                                     ; preds = %lor.lhs.false.1256, %if.else.1249
  %493 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1264 = bitcast %union.tree_node* %493 to %struct.tree_type*
  %maxval1265 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1264, i32 0, i32 13
  %494 = load %union.tree_node*, %union.tree_node** %maxval1265, align 8
  %tobool1266 = icmp ne %union.tree_node* %494, null
  br i1 %tobool1266, label %if.then.1267, label %if.end.1271

if.then.1267:                                     ; preds = %if.then.1263
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %496 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1268 = bitcast %union.tree_node* %496 to %struct.tree_type*
  %maxval1269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1268, i32 0, i32 13
  %497 = load %union.tree_node*, %union.tree_node** %maxval1269, align 8
  %498 = load i32, i32* %indent.addr, align 4
  %add1270 = add nsw i32 %498, 4
  call void @print_node_brief(%struct._IO_FILE* %495, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0), %union.tree_node* %497, i32 %add1270)
  br label %if.end.1271

if.end.1271:                                      ; preds = %if.then.1267, %if.then.1263
  %499 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %500 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1272 = bitcast %union.tree_node* %500 to %struct.tree_type*
  %values1273 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1272, i32 0, i32 1
  %501 = load %union.tree_node*, %union.tree_node** %values1273, align 8
  %502 = load i32, i32* %indent.addr, align 4
  %add1274 = add nsw i32 %502, 4
  call void @print_node(%struct._IO_FILE* %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), %union.tree_node* %501, i32 %add1274)
  br label %if.end.1287

if.else.1275:                                     ; preds = %lor.lhs.false.1256
  %503 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1276 = bitcast %union.tree_node* %503 to %struct.tree_common*
  %code1277 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1276, i32 0, i32 2
  %bf.load1278 = load i32, i32* %code1277, align 8
  %bf.clear1279 = and i32 %bf.load1278, 255
  %cmp1280 = icmp eq i32 %bf.clear1279, 14
  br i1 %cmp1280, label %if.then.1282, label %if.end.1286

if.then.1282:                                     ; preds = %if.else.1275
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %505 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1283 = bitcast %union.tree_node* %505 to %struct.tree_type*
  %maxval1284 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1283, i32 0, i32 13
  %506 = load %union.tree_node*, %union.tree_node** %maxval1284, align 8
  %507 = load i32, i32* %indent.addr, align 4
  %add1285 = add nsw i32 %507, 4
  call void @print_node_brief(%struct._IO_FILE* %504, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), %union.tree_node* %506, i32 %add1285)
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.then.1282, %if.else.1275
  br label %if.end.1287

if.end.1287:                                      ; preds = %if.end.1286, %if.end.1271
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.end.1287, %if.then.1245
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.end.1288, %if.then.1220
  br label %if.end.1290

if.end.1290:                                      ; preds = %if.end.1289, %if.then.1203
  %508 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1291 = bitcast %union.tree_node* %508 to %struct.tree_type*
  %context1292 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1291, i32 0, i32 17
  %509 = load %union.tree_node*, %union.tree_node** %context1292, align 8
  %tobool1293 = icmp ne %union.tree_node* %509, null
  br i1 %tobool1293, label %if.then.1294, label %if.end.1298

if.then.1294:                                     ; preds = %if.end.1290
  %510 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %511 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1295 = bitcast %union.tree_node* %511 to %struct.tree_type*
  %context1296 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1295, i32 0, i32 17
  %512 = load %union.tree_node*, %union.tree_node** %context1296, align 8
  %513 = load i32, i32* %indent.addr, align 4
  %add1297 = add nsw i32 %513, 4
  call void @print_node_brief(%struct._IO_FILE* %510, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %512, i32 %add1297)
  br label %if.end.1298

if.end.1298:                                      ; preds = %if.then.1294, %if.end.1290
  %514 = load void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 16), align 8
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %516 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %517 = load i32, i32* %indent.addr, align 4
  call void %514(%struct._IO_FILE* %515, %union.tree_node* %516, i32 %517)
  %518 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1299 = bitcast %union.tree_node* %518 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1299, i32 0, i32 8
  %519 = load %union.tree_node*, %union.tree_node** %pointer_to, align 8
  %tobool1300 = icmp ne %union.tree_node* %519, null
  br i1 %tobool1300, label %if.then.1305, label %lor.lhs.false.1301

lor.lhs.false.1301:                               ; preds = %if.end.1298
  %520 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1302 = bitcast %union.tree_node* %520 to %struct.tree_common*
  %chain1303 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1302, i32 0, i32 0
  %521 = load %union.tree_node*, %union.tree_node** %chain1303, align 8
  %tobool1304 = icmp ne %union.tree_node* %521, null
  br i1 %tobool1304, label %if.then.1305, label %if.end.1307

if.then.1305:                                     ; preds = %lor.lhs.false.1301, %if.end.1298
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %523 = load i32, i32* %indent.addr, align 4
  %add1306 = add nsw i32 %523, 3
  call void @indent_to(%struct._IO_FILE* %522, i32 %add1306)
  br label %if.end.1307

if.end.1307:                                      ; preds = %if.then.1305, %lor.lhs.false.1301
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %525 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1308 = bitcast %union.tree_node* %525 to %struct.tree_type*
  %pointer_to1309 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1308, i32 0, i32 8
  %526 = load %union.tree_node*, %union.tree_node** %pointer_to1309, align 8
  %527 = load i32, i32* %indent.addr, align 4
  %add1310 = add nsw i32 %527, 4
  call void @print_node_brief(%struct._IO_FILE* %524, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), %union.tree_node* %526, i32 %add1310)
  %528 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %529 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type1311 = bitcast %union.tree_node* %529 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1311, i32 0, i32 9
  %530 = load %union.tree_node*, %union.tree_node** %reference_to, align 8
  %531 = load i32, i32* %indent.addr, align 4
  %add1312 = add nsw i32 %531, 4
  call void @print_node_brief(%struct._IO_FILE* %528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0), %union.tree_node* %530, i32 %add1312)
  %532 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %533 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1313 = bitcast %union.tree_node* %533 to %struct.tree_common*
  %chain1314 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1313, i32 0, i32 0
  %534 = load %union.tree_node*, %union.tree_node** %chain1314, align 8
  %535 = load i32, i32* %indent.addr, align 4
  %add1315 = add nsw i32 %535, 4
  call void @print_node_brief(%struct._IO_FILE* %532, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %534, i32 %add1315)
  br label %sw.epilog.1576

sw.bb.1316:                                       ; preds = %if.end.305
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %537 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %block = bitcast %union.tree_node* %537 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  %538 = load %union.tree_node*, %union.tree_node** %vars, align 8
  %539 = load i32, i32* %indent.addr, align 4
  %add1317 = add nsw i32 %539, 4
  call void @print_node(%struct._IO_FILE* %536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), %union.tree_node* %538, i32 %add1317)
  %540 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %541 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %block1318 = bitcast %union.tree_node* %541 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1318, i32 0, i32 4
  %542 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  %543 = load i32, i32* %indent.addr, align 4
  %add1319 = add nsw i32 %543, 4
  call void @print_node(%struct._IO_FILE* %540, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), %union.tree_node* %542, i32 %add1319)
  %544 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %545 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %block1320 = bitcast %union.tree_node* %545 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1320, i32 0, i32 3
  %546 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  %547 = load i32, i32* %indent.addr, align 4
  %add1321 = add nsw i32 %547, 4
  call void @print_node(%struct._IO_FILE* %544, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), %union.tree_node* %546, i32 %add1321)
  %548 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %549 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1322 = bitcast %union.tree_node* %549 to %struct.tree_common*
  %chain1323 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1322, i32 0, i32 0
  %550 = load %union.tree_node*, %union.tree_node** %chain1323, align 8
  %551 = load i32, i32* %indent.addr, align 4
  %add1324 = add nsw i32 %551, 4
  call void @print_node(%struct._IO_FILE* %548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %550, i32 %add1324)
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %553 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %block1325 = bitcast %union.tree_node* %553 to %struct.tree_block*
  %abstract_origin1326 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1325, i32 0, i32 5
  %554 = load %union.tree_node*, %union.tree_node** %abstract_origin1326, align 8
  %555 = load i32, i32* %indent.addr, align 4
  %add1327 = add nsw i32 %555, 4
  call void @print_node(%struct._IO_FILE* %552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), %union.tree_node* %554, i32 %add1327)
  br label %sw.epilog.1576

sw.bb.1328:                                       ; preds = %if.end.305, %if.end.305, %if.end.305, %if.end.305, %if.end.305, %if.end.305
  %556 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1329 = bitcast %union.tree_node* %556 to %struct.tree_common*
  %code1330 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1329, i32 0, i32 2
  %bf.load1331 = load i32, i32* %code1330, align 8
  %bf.clear1332 = and i32 %bf.load1331, 255
  %cmp1333 = icmp eq i32 %bf.clear1332, 52
  br i1 %cmp1333, label %if.then.1335, label %if.end.1346

if.then.1335:                                     ; preds = %sw.bb.1328
  %557 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %558 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp = bitcast %union.tree_node* %558 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx1336 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %559 = load %union.tree_node*, %union.tree_node** %arrayidx1336, align 8
  %560 = load i32, i32* %indent.addr, align 4
  %add1337 = add nsw i32 %560, 4
  call void @print_node(%struct._IO_FILE* %557, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), %union.tree_node* %559, i32 %add1337)
  %561 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %562 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1338 = bitcast %union.tree_node* %562 to %struct.tree_exp*
  %operands1339 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1338, i32 0, i32 2
  %arrayidx1340 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1339, i32 0, i64 1
  %563 = load %union.tree_node*, %union.tree_node** %arrayidx1340, align 8
  %564 = load i32, i32* %indent.addr, align 4
  %add1341 = add nsw i32 %564, 4
  call void @print_node(%struct._IO_FILE* %561, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), %union.tree_node* %563, i32 %add1341)
  %565 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %566 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1342 = bitcast %union.tree_node* %566 to %struct.tree_exp*
  %operands1343 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1342, i32 0, i32 2
  %arrayidx1344 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1343, i32 0, i64 2
  %567 = load %union.tree_node*, %union.tree_node** %arrayidx1344, align 8
  %568 = load i32, i32* %indent.addr, align 4
  %add1345 = add nsw i32 %568, 4
  call void @print_node(%struct._IO_FILE* %565, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), %union.tree_node* %567, i32 %add1345)
  br label %sw.epilog.1576

if.end.1346:                                      ; preds = %sw.bb.1328
  %569 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1347 = bitcast %union.tree_node* %569 to %struct.tree_common*
  %code1348 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1347, i32 0, i32 2
  %bf.load1349 = load i32, i32* %code1348, align 8
  %bf.clear1350 = and i32 %bf.load1349, 255
  %idxprom1351 = sext i32 %bf.clear1350 to i64
  %arrayidx1352 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom1351
  %570 = load i32, i32* %arrayidx1352, align 4
  store i32 %570, i32* %len, align 4
  %571 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1353 = bitcast %union.tree_node* %571 to %struct.tree_common*
  %code1354 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1353, i32 0, i32 2
  %bf.load1355 = load i32, i32* %code1354, align 8
  %bf.clear1356 = and i32 %bf.load1355, 255
  %call1357 = call i32 @first_rtl_op(i32 %bf.clear1356)
  store i32 %call1357, i32* %first_rtl, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1358

for.cond.1358:                                    ; preds = %for.inc.1390, %if.end.1346
  %572 = load i32, i32* %i, align 4
  %573 = load i32, i32* %len, align 4
  %cmp1359 = icmp slt i32 %572, %573
  br i1 %cmp1359, label %for.body.1361, label %for.end.1391

for.body.1361:                                    ; preds = %for.cond.1358
  %574 = load i32, i32* %i, align 4
  %575 = load i32, i32* %first_rtl, align 4
  %cmp1362 = icmp sge i32 %574, %575
  br i1 %cmp1362, label %if.then.1364, label %if.else.1381

if.then.1364:                                     ; preds = %for.body.1361
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %577 = load i32, i32* %indent.addr, align 4
  %add1365 = add nsw i32 %577, 4
  call void @indent_to(%struct._IO_FILE* %576, i32 %add1365)
  %578 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %579 = load i32, i32* %i, align 4
  %call1366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %578, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 %579)
  %580 = load i32, i32* %i, align 4
  %idxprom1367 = sext i32 %580 to i64
  %581 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1368 = bitcast %union.tree_node* %581 to %struct.tree_exp*
  %operands1369 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1368, i32 0, i32 2
  %arrayidx1370 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1369, i32 0, i64 %idxprom1367
  %582 = load %union.tree_node*, %union.tree_node** %arrayidx1370, align 8
  %tobool1371 = icmp ne %union.tree_node* %582, null
  br i1 %tobool1371, label %if.then.1372, label %if.else.1377

if.then.1372:                                     ; preds = %if.then.1364
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %584 = load i32, i32* %i, align 4
  %idxprom1373 = sext i32 %584 to i64
  %585 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1374 = bitcast %union.tree_node* %585 to %struct.tree_exp*
  %operands1375 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1374, i32 0, i32 2
  %arrayidx1376 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1375, i32 0, i64 %idxprom1373
  %586 = load %union.tree_node*, %union.tree_node** %arrayidx1376, align 8
  %587 = bitcast %union.tree_node* %586 to %struct.rtx_def*
  call void @print_rtl(%struct._IO_FILE* %583, %struct.rtx_def* %587)
  br label %if.end.1379

if.else.1377:                                     ; preds = %if.then.1364
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %588, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0))
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.else.1377, %if.then.1372
  %589 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1380 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %589, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.1389

if.else.1381:                                     ; preds = %for.body.1361
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i32 0, i32 0
  %590 = load i32, i32* %i, align 4
  %call1382 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i32 %590) #2
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay1383 = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i32 0, i32 0
  %592 = load i32, i32* %i, align 4
  %idxprom1384 = sext i32 %592 to i64
  %593 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1385 = bitcast %union.tree_node* %593 to %struct.tree_exp*
  %operands1386 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1385, i32 0, i32 2
  %arrayidx1387 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1386, i32 0, i64 %idxprom1384
  %594 = load %union.tree_node*, %union.tree_node** %arrayidx1387, align 8
  %595 = load i32, i32* %indent.addr, align 4
  %add1388 = add nsw i32 %595, 4
  call void @print_node(%struct._IO_FILE* %591, i8* %arraydecay1383, %union.tree_node* %594, i32 %add1388)
  br label %if.end.1389

if.end.1389:                                      ; preds = %if.else.1381, %if.end.1379
  br label %for.inc.1390

for.inc.1390:                                     ; preds = %if.end.1389
  %596 = load i32, i32* %i, align 4
  %inc = add nsw i32 %596, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1358

for.end.1391:                                     ; preds = %for.cond.1358
  %597 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1392 = bitcast %union.tree_node* %597 to %struct.tree_common*
  %code1393 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1392, i32 0, i32 2
  %bf.load1394 = load i32, i32* %code1393, align 8
  %bf.clear1395 = and i32 %bf.load1394, 255
  %cmp1396 = icmp eq i32 %bf.clear1395, 144
  br i1 %cmp1396, label %if.then.1398, label %if.end.1418

if.then.1398:                                     ; preds = %for.end.1391
  %598 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %599 = load i32, i32* %indent.addr, align 4
  %add1399 = add nsw i32 %599, 4
  call void @indent_to(%struct._IO_FILE* %598, i32 %add1399)
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %601 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1400 = bitcast %union.tree_node* %601 to %struct.tree_exp*
  %operands1401 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1400, i32 0, i32 2
  %arrayidx1402 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1401, i32 0, i64 1
  %602 = load %union.tree_node*, %union.tree_node** %arrayidx1402, align 8
  %tobool1403 = icmp ne %union.tree_node* %602, null
  br i1 %tobool1403, label %cond.true.1404, label %cond.false.1411

cond.true.1404:                                   ; preds = %if.then.1398
  %603 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1405 = bitcast %union.tree_node* %603 to %struct.tree_exp*
  %operands1406 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1405, i32 0, i32 2
  %arrayidx1407 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1406, i32 0, i64 1
  %604 = load %union.tree_node*, %union.tree_node** %arrayidx1407, align 8
  %identifier1408 = bitcast %union.tree_node* %604 to %struct.tree_identifier*
  %id1409 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier1408, i32 0, i32 1
  %str1410 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id1409, i32 0, i32 1
  %605 = load i8*, i8** %str1410, align 8
  br label %cond.end.1412

cond.false.1411:                                  ; preds = %if.then.1398
  br label %cond.end.1412

cond.end.1412:                                    ; preds = %cond.false.1411, %cond.true.1404
  %cond1413 = phi i8* [ %605, %cond.true.1404 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0), %cond.false.1411 ]
  %606 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1414 = bitcast %union.tree_node* %606 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1414, i32 0, i32 1
  %607 = load i32, i32* %complexity, align 4
  %shr = ashr i32 %607, 12
  %608 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp1415 = bitcast %union.tree_node* %608 to %struct.tree_exp*
  %complexity1416 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1415, i32 0, i32 1
  %609 = load i32, i32* %complexity1416, align 4
  %and = and i32 %609, 4095
  %call1417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i8* %cond1413, i32 %shr, i32 %and)
  br label %if.end.1418

if.end.1418:                                      ; preds = %cond.end.1412, %for.end.1391
  %610 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %611 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1419 = bitcast %union.tree_node* %611 to %struct.tree_common*
  %chain1420 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1419, i32 0, i32 0
  %612 = load %union.tree_node*, %union.tree_node** %chain1420, align 8
  %613 = load i32, i32* %indent.addr, align 4
  %add1421 = add nsw i32 %613, 4
  call void @print_node(%struct._IO_FILE* %610, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %612, i32 %add1421)
  br label %sw.epilog.1576

sw.bb.1422:                                       ; preds = %if.end.305, %if.end.305
  %614 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1423 = bitcast %union.tree_node* %614 to %struct.tree_common*
  %code1424 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1423, i32 0, i32 2
  %bf.load1425 = load i32, i32* %code1424, align 8
  %bf.clear1426 = and i32 %bf.load1425, 255
  switch i32 %bf.clear1426, label %sw.default [
    i32 25, label %sw.bb.1427
    i32 26, label %sw.bb.1473
    i32 28, label %sw.bb.1499
    i32 27, label %sw.bb.1513
    i32 29, label %sw.bb.1517
    i32 1, label %sw.bb.1531
    i32 2, label %sw.bb.1532
    i32 3, label %sw.bb.1541
  ]

sw.bb.1427:                                       ; preds = %sw.bb.1422
  %615 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1428 = bitcast %union.tree_node* %615 to %struct.tree_common*
  %static_flag1429 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1428, i32 0, i32 2
  %bf.load1430 = load i32, i32* %static_flag1429, align 8
  %bf.lshr1431 = lshr i32 %bf.load1430, 18
  %bf.clear1432 = and i32 %bf.lshr1431, 1
  %tobool1433 = icmp ne i32 %bf.clear1432, 0
  br i1 %tobool1433, label %if.then.1434, label %if.end.1436

if.then.1434:                                     ; preds = %sw.bb.1427
  %616 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %616, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.1436

if.end.1436:                                      ; preds = %if.then.1434, %sw.bb.1427
  %617 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %617, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %618 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst = bitcast %union.tree_node* %618 to %struct.tree_int_cst*
  %int_cst1438 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1438, i32 0, i32 1
  %619 = load i64, i64* %high, align 8
  %cmp1439 = icmp eq i64 %619, 0
  br i1 %cmp1439, label %if.then.1441, label %if.else.1445

if.then.1441:                                     ; preds = %if.end.1436
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %621 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1442 = bitcast %union.tree_node* %621 to %struct.tree_int_cst*
  %int_cst1443 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1442, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1443, i32 0, i32 0
  %622 = load i64, i64* %low, align 8
  %call1444 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %620, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %622)
  br label %if.end.1472

if.else.1445:                                     ; preds = %if.end.1436
  %623 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1446 = bitcast %union.tree_node* %623 to %struct.tree_int_cst*
  %int_cst1447 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1446, i32 0, i32 2
  %high1448 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1447, i32 0, i32 1
  %624 = load i64, i64* %high1448, align 8
  %cmp1449 = icmp eq i64 %624, -1
  br i1 %cmp1449, label %land.lhs.true.1451, label %if.else.1463

land.lhs.true.1451:                               ; preds = %if.else.1445
  %625 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1452 = bitcast %union.tree_node* %625 to %struct.tree_int_cst*
  %int_cst1453 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1452, i32 0, i32 2
  %low1454 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1453, i32 0, i32 0
  %626 = load i64, i64* %low1454, align 8
  %cmp1455 = icmp ne i64 %626, 0
  br i1 %cmp1455, label %if.then.1457, label %if.else.1463

if.then.1457:                                     ; preds = %land.lhs.true.1451
  %627 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1458 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %629 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1459 = bitcast %union.tree_node* %629 to %struct.tree_int_cst*
  %int_cst1460 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1459, i32 0, i32 2
  %low1461 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1460, i32 0, i32 0
  %630 = load i64, i64* %low1461, align 8
  %sub = sub i64 0, %630
  %call1462 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %sub)
  br label %if.end.1471

if.else.1463:                                     ; preds = %land.lhs.true.1451, %if.else.1445
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %632 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1464 = bitcast %union.tree_node* %632 to %struct.tree_int_cst*
  %int_cst1465 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1464, i32 0, i32 2
  %high1466 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1465, i32 0, i32 1
  %633 = load i64, i64* %high1466, align 8
  %634 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst1467 = bitcast %union.tree_node* %634 to %struct.tree_int_cst*
  %int_cst1468 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst1467, i32 0, i32 2
  %low1469 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1468, i32 0, i32 0
  %635 = load i64, i64* %low1469, align 8
  %call1470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %631, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %633, i64 %635)
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.else.1463, %if.then.1457
  br label %if.end.1472

if.end.1472:                                      ; preds = %if.end.1471, %if.then.1441
  br label %sw.epilog

sw.bb.1473:                                       ; preds = %sw.bb.1422
  %636 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1474 = bitcast %union.tree_node* %636 to %struct.tree_common*
  %public_flag1475 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1474, i32 0, i32 2
  %bf.load1476 = load i32, i32* %public_flag1475, align 8
  %bf.lshr1477 = lshr i32 %bf.load1476, 19
  %bf.clear1478 = and i32 %bf.lshr1477, 1
  %tobool1479 = icmp ne i32 %bf.clear1478, 0
  br i1 %tobool1479, label %if.then.1480, label %if.end.1482

if.then.1480:                                     ; preds = %sw.bb.1473
  %637 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %637, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.1482

if.end.1482:                                      ; preds = %if.then.1480, %sw.bb.1473
  %638 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %real_cst = bitcast %union.tree_node* %638 to %struct.tree_real_cst*
  %real_cst1483 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %639 = bitcast %struct.realvaluetype* %d to i8*
  %640 = bitcast %struct.realvaluetype* %real_cst1483 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %639, i8* %640, i64 24, i32 8, i1 false)
  %call1484 = call i32 @target_isinf(%struct.realvaluetype* byval align 8 %d)
  %tobool1485 = icmp ne i32 %call1484, 0
  br i1 %tobool1485, label %if.then.1486, label %if.else.1488

if.then.1486:                                     ; preds = %if.end.1482
  %641 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %641, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.1498

if.else.1488:                                     ; preds = %if.end.1482
  %call1489 = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d)
  %tobool1490 = icmp ne i32 %call1489, 0
  br i1 %tobool1490, label %if.then.1491, label %if.else.1493

if.then.1491:                                     ; preds = %if.else.1488
  %642 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1492 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %642, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.1497

if.else.1493:                                     ; preds = %if.else.1488
  %arraydecay1494 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  call void @ereal_to_decimal(%struct.realvaluetype* byval align 8 %d, i8* %arraydecay1494)
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay1495 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call1496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %643, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay1495)
  br label %if.end.1497

if.end.1497:                                      ; preds = %if.else.1493, %if.then.1491
  br label %if.end.1498

if.end.1498:                                      ; preds = %if.end.1497, %if.then.1486
  br label %sw.epilog

sw.bb.1499:                                       ; preds = %sw.bb.1422
  %644 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %vector = bitcast %union.tree_node* %644 to %struct.tree_vector*
  %elements = getelementptr inbounds %struct.tree_vector, %struct.tree_vector* %vector, i32 0, i32 2
  %645 = load %union.tree_node*, %union.tree_node** %elements, align 8
  store %union.tree_node* %645, %union.tree_node** %vals, align 8
  store i32 0, i32* %i1500, align 4
  %646 = load %union.tree_node*, %union.tree_node** %vals, align 8
  store %union.tree_node* %646, %union.tree_node** %link, align 8
  br label %for.cond.1501

for.cond.1501:                                    ; preds = %for.inc.1508, %sw.bb.1499
  %647 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool1502 = icmp ne %union.tree_node* %647, null
  br i1 %tobool1502, label %for.body.1503, label %for.end.1512

for.body.1503:                                    ; preds = %for.cond.1501
  %arraydecay1504 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %648 = load i32, i32* %i1500, align 4
  %call1505 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1504, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i32 %648) #2
  %649 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay1506 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %650 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %650 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %651 = load %union.tree_node*, %union.tree_node** %value, align 8
  %652 = load i32, i32* %indent.addr, align 4
  %add1507 = add nsw i32 %652, 4
  call void @print_node(%struct._IO_FILE* %649, i8* %arraydecay1506, %union.tree_node* %651, i32 %add1507)
  br label %for.inc.1508

for.inc.1508:                                     ; preds = %for.body.1503
  %653 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common1509 = bitcast %union.tree_node* %653 to %struct.tree_common*
  %chain1510 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1509, i32 0, i32 0
  %654 = load %union.tree_node*, %union.tree_node** %chain1510, align 8
  store %union.tree_node* %654, %union.tree_node** %link, align 8
  %655 = load i32, i32* %i1500, align 4
  %inc1511 = add nsw i32 %655, 1
  store i32 %inc1511, i32* %i1500, align 4
  br label %for.cond.1501

for.end.1512:                                     ; preds = %for.cond.1501
  br label %sw.epilog

sw.bb.1513:                                       ; preds = %sw.bb.1422
  %656 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %657 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %complex = bitcast %union.tree_node* %657 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %658 = load %union.tree_node*, %union.tree_node** %real, align 8
  %659 = load i32, i32* %indent.addr, align 4
  %add1514 = add nsw i32 %659, 4
  call void @print_node(%struct._IO_FILE* %656, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), %union.tree_node* %658, i32 %add1514)
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %661 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %complex1515 = bitcast %union.tree_node* %661 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex1515, i32 0, i32 3
  %662 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %663 = load i32, i32* %indent.addr, align 4
  %add1516 = add nsw i32 %663, 4
  call void @print_node(%struct._IO_FILE* %660, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), %union.tree_node* %662, i32 %add1516)
  br label %sw.epilog

sw.bb.1517:                                       ; preds = %sw.bb.1422
  %664 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %665 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %string1518 = bitcast %union.tree_node* %665 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string1518, i32 0, i32 3
  %666 = load i8*, i8** %pointer, align 8
  %call1519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %664, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i8* %666)
  %667 = load i32, i32* %indent.addr, align 4
  %cmp1520 = icmp eq i32 %667, 4
  br i1 %cmp1520, label %if.then.1522, label %if.else.1526

if.then.1522:                                     ; preds = %sw.bb.1517
  %668 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %669 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1523 = bitcast %union.tree_node* %669 to %struct.tree_common*
  %chain1524 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1523, i32 0, i32 0
  %670 = load %union.tree_node*, %union.tree_node** %chain1524, align 8
  %671 = load i32, i32* %indent.addr, align 4
  %add1525 = add nsw i32 %671, 4
  call void @print_node(%struct._IO_FILE* %668, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %670, i32 %add1525)
  br label %if.end.1530

if.else.1526:                                     ; preds = %sw.bb.1517
  %672 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %673 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1527 = bitcast %union.tree_node* %673 to %struct.tree_common*
  %chain1528 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1527, i32 0, i32 0
  %674 = load %union.tree_node*, %union.tree_node** %chain1528, align 8
  %675 = load i32, i32* %indent.addr, align 4
  %add1529 = add nsw i32 %675, 4
  call void @print_node_brief(%struct._IO_FILE* %672, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %674, i32 %add1529)
  br label %if.end.1530

if.end.1530:                                      ; preds = %if.else.1526, %if.then.1522
  br label %sw.epilog

sw.bb.1531:                                       ; preds = %sw.bb.1422
  %676 = load void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 17), align 8
  %677 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %678 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %679 = load i32, i32* %indent.addr, align 4
  call void %676(%struct._IO_FILE* %677, %union.tree_node* %678, i32 %679)
  br label %sw.epilog

sw.bb.1532:                                       ; preds = %sw.bb.1422
  %680 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %681 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %list1533 = bitcast %union.tree_node* %681 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1533, i32 0, i32 1
  %682 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %683 = load i32, i32* %indent.addr, align 4
  %add1534 = add nsw i32 %683, 4
  call void @print_node(%struct._IO_FILE* %680, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), %union.tree_node* %682, i32 %add1534)
  %684 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %685 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %list1535 = bitcast %union.tree_node* %685 to %struct.tree_list*
  %value1536 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1535, i32 0, i32 2
  %686 = load %union.tree_node*, %union.tree_node** %value1536, align 8
  %687 = load i32, i32* %indent.addr, align 4
  %add1537 = add nsw i32 %687, 4
  call void @print_node(%struct._IO_FILE* %684, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), %union.tree_node* %686, i32 %add1537)
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %689 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1538 = bitcast %union.tree_node* %689 to %struct.tree_common*
  %chain1539 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1538, i32 0, i32 0
  %690 = load %union.tree_node*, %union.tree_node** %chain1539, align 8
  %691 = load i32, i32* %indent.addr, align 4
  %add1540 = add nsw i32 %691, 4
  call void @print_node(%struct._IO_FILE* %688, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %690, i32 %add1540)
  br label %sw.epilog

sw.bb.1541:                                       ; preds = %sw.bb.1422
  %692 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %vec = bitcast %union.tree_node* %692 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %693 = load i32, i32* %length, align 4
  store i32 %693, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1542

for.cond.1542:                                    ; preds = %for.inc.1562, %sw.bb.1541
  %694 = load i32, i32* %i, align 4
  %695 = load i32, i32* %len, align 4
  %cmp1543 = icmp slt i32 %694, %695
  br i1 %cmp1543, label %for.body.1545, label %for.end.1564

for.body.1545:                                    ; preds = %for.cond.1542
  %696 = load i32, i32* %i, align 4
  %idxprom1546 = sext i32 %696 to i64
  %697 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %vec1547 = bitcast %union.tree_node* %697 to %struct.tree_vec*
  %a1548 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec1547, i32 0, i32 2
  %arrayidx1549 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a1548, i32 0, i64 %idxprom1546
  %698 = load %union.tree_node*, %union.tree_node** %arrayidx1549, align 8
  %tobool1550 = icmp ne %union.tree_node* %698, null
  br i1 %tobool1550, label %if.then.1551, label %if.end.1561

if.then.1551:                                     ; preds = %for.body.1545
  %arraydecay1553 = getelementptr inbounds [10 x i8], [10 x i8]* %temp1552, i32 0, i32 0
  %699 = load i32, i32* %i, align 4
  %call1554 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1553, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), i32 %699) #2
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %701 = load i32, i32* %indent.addr, align 4
  %add1555 = add nsw i32 %701, 4
  call void @indent_to(%struct._IO_FILE* %700, i32 %add1555)
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay1556 = getelementptr inbounds [10 x i8], [10 x i8]* %temp1552, i32 0, i32 0
  %703 = load i32, i32* %i, align 4
  %idxprom1557 = sext i32 %703 to i64
  %704 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %vec1558 = bitcast %union.tree_node* %704 to %struct.tree_vec*
  %a1559 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec1558, i32 0, i32 2
  %arrayidx1560 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a1559, i32 0, i64 %idxprom1557
  %705 = load %union.tree_node*, %union.tree_node** %arrayidx1560, align 8
  call void @print_node_brief(%struct._IO_FILE* %702, i8* %arraydecay1556, %union.tree_node* %705, i32 0)
  br label %if.end.1561

if.end.1561:                                      ; preds = %if.then.1551, %for.body.1545
  br label %for.inc.1562

for.inc.1562:                                     ; preds = %if.end.1561
  %706 = load i32, i32* %i, align 4
  %inc1563 = add nsw i32 %706, 1
  store i32 %inc1563, i32* %i, align 4
  br label %for.cond.1542

for.end.1564:                                     ; preds = %for.cond.1542
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.1422
  %707 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1565 = bitcast %union.tree_node* %707 to %struct.tree_common*
  %code1566 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1565, i32 0, i32 2
  %bf.load1567 = load i32, i32* %code1566, align 8
  %bf.clear1568 = and i32 %bf.load1567, 255
  %idxprom1569 = sext i32 %bf.clear1568 to i64
  %arrayidx1570 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom1569
  %708 = load i8, i8* %arrayidx1570, align 1
  %conv1571 = sext i8 %708 to i32
  %cmp1572 = icmp eq i32 %conv1571, 120
  br i1 %cmp1572, label %if.then.1574, label %if.end.1575

if.then.1574:                                     ; preds = %sw.default
  %709 = load void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 14), align 8
  %710 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %711 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %712 = load i32, i32* %indent.addr, align 4
  call void %709(%struct._IO_FILE* %710, %union.tree_node* %711, i32 %712)
  br label %if.end.1575

if.end.1575:                                      ; preds = %if.then.1574, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.1575, %for.end.1564, %sw.bb.1532, %sw.bb.1531, %if.end.1530, %sw.bb.1513, %for.end.1512, %if.end.1498, %if.end.1472
  br label %sw.epilog.1576

sw.epilog.1576:                                   ; preds = %if.end.305, %sw.epilog, %if.end.1418, %if.then.1335, %sw.bb.1316, %if.end.1307, %if.end.919
  %713 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %713, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %return

return:                                           ; preds = %sw.epilog.1576, %if.then.26, %if.then.18, %if.then.10, %if.then.2, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @print_node_brief(%struct._IO_FILE* %file, i8* %prefix, %union.tree_node* %node, i32 %indent) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %prefix.addr = alloca i8*, align 8
  %node.addr = alloca %union.tree_node*, align 8
  %indent.addr = alloca i32, align 4
  %class = alloca i8, align 1
  %d = alloca %struct.realvaluetype, align 8
  %string = alloca [100 x i8], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %class, align 1
  %3 = load i32, i32* %indent.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load i8*, i8** %prefix.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %idxprom8 = sext i32 %bf.clear7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8*], [256 x i8*]* @tree_code_name, i32 0, i64 %idxprom8
  %8 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %6, i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %11 = bitcast %union.tree_node* %10 to i8*
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load i8, i8* %class, align 1
  %conv = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv, 100
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.3
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %14 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool = icmp ne %union.tree_node* %14, null
  br i1 %tobool, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl16 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %name17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 8
  %17 = load %union.tree_node*, %union.tree_node** %name17, align 8
  %identifier = bitcast %union.tree_node* %17 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %18 = load i8*, i8** %str, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.then.14
  br label %if.end.69

if.else:                                          ; preds = %if.end.3
  %19 = load i8, i8* %class, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 116
  br i1 %cmp21, label %if.then.23, label %if.end.68

if.then.23:                                       ; preds = %if.else
  %20 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type = bitcast %union.tree_node* %20 to %struct.tree_type*
  %name24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 11
  %21 = load %union.tree_node*, %union.tree_node** %name24, align 8
  %tobool25 = icmp ne %union.tree_node* %21, null
  br i1 %tobool25, label %if.then.26, label %if.end.67

if.then.26:                                       ; preds = %if.then.23
  %22 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type27 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %name28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 11
  %23 = load %union.tree_node*, %union.tree_node** %name28, align 8
  %common29 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 1
  br i1 %cmp33, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.then.26
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type36 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %name37 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i32 0, i32 11
  %26 = load %union.tree_node*, %union.tree_node** %name37, align 8
  %identifier38 = bitcast %union.tree_node* %26 to %struct.tree_identifier*
  %id39 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier38, i32 0, i32 1
  %str40 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id39, i32 0, i32 1
  %27 = load i8*, i8** %str40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %27)
  br label %if.end.66

if.else.42:                                       ; preds = %if.then.26
  %28 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type43 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %name44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type43, i32 0, i32 11
  %29 = load %union.tree_node*, %union.tree_node** %name44, align 8
  %common45 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %code46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 2
  %bf.load47 = load i32, i32* %code46, align 8
  %bf.clear48 = and i32 %bf.load47, 255
  %cmp49 = icmp eq i32 %bf.clear48, 33
  br i1 %cmp49, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.else.42
  %30 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type51 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %name52 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type51, i32 0, i32 11
  %31 = load %union.tree_node*, %union.tree_node** %name52, align 8
  %decl53 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %name54 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 8
  %32 = load %union.tree_node*, %union.tree_node** %name54, align 8
  %tobool55 = icmp ne %union.tree_node* %32, null
  br i1 %tobool55, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %land.lhs.true
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type57 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %name58 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type57, i32 0, i32 11
  %35 = load %union.tree_node*, %union.tree_node** %name58, align 8
  %decl59 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %name60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 8
  %36 = load %union.tree_node*, %union.tree_node** %name60, align 8
  %identifier61 = bitcast %union.tree_node* %36 to %struct.tree_identifier*
  %id62 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier61, i32 0, i32 1
  %str63 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id62, i32 0, i32 1
  %37 = load i8*, i8** %str63, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %37)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.56, %land.lhs.true, %if.else.42
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.35
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.23
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.19
  %38 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common70 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load72 = load i32, i32* %code71, align 8
  %bf.clear73 = and i32 %bf.load72, 255
  %cmp74 = icmp eq i32 %bf.clear73, 1
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.69
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %40 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %identifier77 = bitcast %union.tree_node* %40 to %struct.tree_identifier*
  %id78 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier77, i32 0, i32 1
  %str79 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id78, i32 0, i32 1
  %41 = load i8*, i8** %str79, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %41)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.69
  %42 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common82 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 2
  %bf.load84 = load i32, i32* %code83, align 8
  %bf.clear85 = and i32 %bf.load84, 255
  %cmp86 = icmp eq i32 %bf.clear85, 25
  br i1 %cmp86, label %if.then.88, label %if.end.132

if.then.88:                                       ; preds = %if.end.81
  %43 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common89 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common89, i32 0, i32 2
  %bf.load90 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load90, 18
  %bf.clear91 = and i32 %bf.lshr, 1
  %tobool92 = icmp ne i32 %bf.clear91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.then.88
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.then.88
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %46 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst = bitcast %union.tree_node* %46 to %struct.tree_int_cst*
  %int_cst97 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst97, i32 0, i32 1
  %47 = load i64, i64* %high, align 8
  %cmp98 = icmp eq i64 %47, 0
  br i1 %cmp98, label %if.then.100, label %if.else.104

if.then.100:                                      ; preds = %if.end.95
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %49 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst101 = bitcast %union.tree_node* %49 to %struct.tree_int_cst*
  %int_cst102 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst101, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst102, i32 0, i32 0
  %50 = load i64, i64* %low, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %50)
  br label %if.end.131

if.else.104:                                      ; preds = %if.end.95
  %51 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst105 = bitcast %union.tree_node* %51 to %struct.tree_int_cst*
  %int_cst106 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst105, i32 0, i32 2
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst106, i32 0, i32 1
  %52 = load i64, i64* %high107, align 8
  %cmp108 = icmp eq i64 %52, -1
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.122

land.lhs.true.110:                                ; preds = %if.else.104
  %53 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst111 = bitcast %union.tree_node* %53 to %struct.tree_int_cst*
  %int_cst112 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst111, i32 0, i32 2
  %low113 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst112, i32 0, i32 0
  %54 = load i64, i64* %low113, align 8
  %cmp114 = icmp ne i64 %54, 0
  br i1 %cmp114, label %if.then.116, label %if.else.122

if.then.116:                                      ; preds = %land.lhs.true.110
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %57 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst118 = bitcast %union.tree_node* %57 to %struct.tree_int_cst*
  %int_cst119 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst118, i32 0, i32 2
  %low120 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst119, i32 0, i32 0
  %58 = load i64, i64* %low120, align 8
  %sub = sub i64 0, %58
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %sub)
  br label %if.end.130

if.else.122:                                      ; preds = %land.lhs.true.110, %if.else.104
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %60 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst123 = bitcast %union.tree_node* %60 to %struct.tree_int_cst*
  %int_cst124 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst123, i32 0, i32 2
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst124, i32 0, i32 1
  %61 = load i64, i64* %high125, align 8
  %62 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst126 = bitcast %union.tree_node* %62 to %struct.tree_int_cst*
  %int_cst127 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst126, i32 0, i32 2
  %low128 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst127, i32 0, i32 0
  %63 = load i64, i64* %low128, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %61, i64 %63)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.122, %if.then.116
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.100
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.81
  %64 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common133 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %code134 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common133, i32 0, i32 2
  %bf.load135 = load i32, i32* %code134, align 8
  %bf.clear136 = and i32 %bf.load135, 255
  %cmp137 = icmp eq i32 %bf.clear136, 26
  br i1 %cmp137, label %if.then.139, label %if.end.163

if.then.139:                                      ; preds = %if.end.132
  %65 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common140 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common140, i32 0, i32 2
  %bf.load141 = load i32, i32* %public_flag, align 8
  %bf.lshr142 = lshr i32 %bf.load141, 19
  %bf.clear143 = and i32 %bf.lshr142, 1
  %tobool144 = icmp ne i32 %bf.clear143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.then.139
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.then.139
  %67 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %real_cst = bitcast %union.tree_node* %67 to %struct.tree_real_cst*
  %real_cst148 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %68 = bitcast %struct.realvaluetype* %d to i8*
  %69 = bitcast %struct.realvaluetype* %real_cst148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 24, i32 8, i1 false)
  %call149 = call i32 @target_isinf(%struct.realvaluetype* byval align 8 %d)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %if.end.147
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.162

if.else.153:                                      ; preds = %if.end.147
  %call154 = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %if.else.153
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.161

if.else.158:                                      ; preds = %if.else.153
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  call void @ereal_to_decimal(%struct.realvaluetype* byval align 8 %d, i8* %arraydecay)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay159 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay159)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.156
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.151
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.132
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.163, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @target_isinf(%struct.realvaluetype* byval align 8) #1

declare i32 @target_isnan(%struct.realvaluetype* byval align 8) #1

declare void @ereal_to_decimal(%struct.realvaluetype* byval align 8, i8*) #1

; Function Attrs: nounwind uwtable
define void @indent_to(%struct._IO_FILE* %file, i32 %column) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %column.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  %0 = load i32, i32* %column.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %column.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare i32 @first_rtl_op(i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
