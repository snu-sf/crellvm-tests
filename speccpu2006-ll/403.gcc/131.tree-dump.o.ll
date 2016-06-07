; ModuleID = 'tree-dump.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_file_info = type { i8*, i8*, i32, i32 }
%struct.dump_option_value_info = type { i8*, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.dump_info = type { %struct._IO_FILE*, %union.tree_node*, i32, i32, i32, %struct.dump_queue*, %struct.dump_queue*, %struct.dump_queue*, %struct.splay_tree_s* }
%struct.dump_queue = type { %struct.splay_tree_node_s*, %struct.dump_queue* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.dump_node_info = type { i32, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type { i32, [1 x %union.tree_node*] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.anon.0 = type { i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%-4s: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%-4s: %-8lx \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%-4s: %-7d \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%-13s \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@dump_files = internal global [5 x %struct.dump_file_info] [%struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i32 0, i32 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i32 0, i32 0), i32 0, i32 0 }], align 16
@dump_base_name = external global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"could not open dump file `%s'\00", align 1
@dump_options = internal constant [4 x %struct.dump_option_value_info] [%struct.dump_option_value_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i32 1 }, %struct.dump_option_value_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i32 2 }, %struct.dump_option_value_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i32 -1 }, %struct.dump_option_value_info zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [41 x i8] c"ignoring unknown option `%.*s' in `-f%s'\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"@%-6u \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"binfo\00", align 1
@tree_code_name = external global [256 x i8*], align 16
@.str.16 = private unnamed_addr constant [7 x i8] c"%-16s \00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.17 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"op 0\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"op 1\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"tree-dump.c\00", align 1
@__FUNCTION__.dequeue_and_dump = private unnamed_addr constant [17 x i8] c"dequeue_and_dump\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"mngl\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"scpe\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"srcp: %s:%-6d \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"qual: %c%c%c     \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"unql\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"algn\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"strg\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"lngt\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"purp\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"valu\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"csts\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"ptd\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"refd\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"clas\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"retn\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"prms\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"elts\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"domn\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"flds\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"fncs\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"binf\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"cnst\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"argt\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"bitfield\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"bpos\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"outs\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"ins\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"clbr\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"labl\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"begn\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"clnp\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"strg: %-7s \00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"op 2\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"%-4s: %-7s \00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c".tu\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"dump-translation-unit\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c".class\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"dump-class-hierarchy\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c".original\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"dump-tree-original\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c".optimized\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"dump-tree-optimized\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c".inlined\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"dump-tree-inlined\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"slim\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: nounwind uwtable
define void @queue_and_dump_index(%struct.dump_info* %di, i8* %field, %union.tree_node* %t, i32 %flags) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %field.addr = alloca i8*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %n = alloca %struct.splay_tree_node_s*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i8* %field, i8** %field.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dump_info, %struct.dump_info* %1, i32 0, i32 8
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %call = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %2, i64 %4)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %n, align 8
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool1 = icmp ne %struct.splay_tree_node_s* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %6, i32 0, i32 1
  %7 = load i64, i64* %value, align 8
  %8 = inttoptr i64 %7 to %struct.dump_node_info*
  %index3 = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %8, i32 0, i32 0
  %9 = load i32, i32* %index3, align 4
  store i32 %9, i32* %index, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %10 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %call4 = call i32 @queue(%struct.dump_info* %10, %union.tree_node* %11, i32 %12)
  store i32 %call4, i32* %index, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %13 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %13)
  %14 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %16 = load i8*, i8** %field.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %16)
  %17 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %17, i32 0, i32 4
  %18 = load i32, i32* %column, align 4
  %add = add i32 %18, 6
  store i32 %add, i32* %column, align 4
  %19 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %20 = load i32, i32* %index, align 4
  call void @dump_index(%struct.dump_info* %19, i32 %20)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @queue(%struct.dump_info* %di, %union.tree_node* %t, i32 %flags) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %dq = alloca %struct.dump_queue*, align 8
  %dni = alloca %struct.dump_node_info*, align 8
  %index = alloca i32, align 4
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %index1 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 3
  %1 = load i32, i32* %index1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %index1, align 4
  store i32 %inc, i32* %index, align 4
  %2 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %free_list = getelementptr inbounds %struct.dump_info, %struct.dump_info* %2, i32 0, i32 7
  %3 = load %struct.dump_queue*, %struct.dump_queue** %free_list, align 8
  %tobool = icmp ne %struct.dump_queue* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %free_list2 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %4, i32 0, i32 7
  %5 = load %struct.dump_queue*, %struct.dump_queue** %free_list2, align 8
  store %struct.dump_queue* %5, %struct.dump_queue** %dq, align 8
  %6 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %next = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %6, i32 0, i32 1
  %7 = load %struct.dump_queue*, %struct.dump_queue** %next, align 8
  %8 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %free_list3 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %8, i32 0, i32 7
  store %struct.dump_queue* %7, %struct.dump_queue** %free_list3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noalias i8* @xmalloc(i64 16)
  %9 = bitcast i8* %call to %struct.dump_queue*
  store %struct.dump_queue* %9, %struct.dump_queue** %dq, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call noalias i8* @xmalloc(i64 8)
  %10 = bitcast i8* %call4 to %struct.dump_node_info*
  store %struct.dump_node_info* %10, %struct.dump_node_info** %dni, align 8
  %11 = load i32, i32* %index, align 4
  %12 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %index5 = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %12, i32 0, i32 0
  store i32 %11, i32* %index5, align 4
  %13 = load i32, i32* %flags.addr, align 4
  %and = and i32 %13, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %14 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %binfo_p = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %14, i32 0, i32 1
  %15 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %binfo_p, align 4
  %bf.value = and i8 %15, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %binfo_p, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %16 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dump_info, %struct.dump_info* %16, i32 0, i32 8
  %17 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes, align 8
  %18 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %19 = ptrtoint %union.tree_node* %18 to i64
  %20 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %21 = ptrtoint %struct.dump_node_info* %20 to i64
  %call6 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %17, i64 %19, i64 %21)
  %22 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %node = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %22, i32 0, i32 0
  store %struct.splay_tree_node_s* %call6, %struct.splay_tree_node_s** %node, align 8
  %23 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %next7 = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %23, i32 0, i32 1
  store %struct.dump_queue* null, %struct.dump_queue** %next7, align 8
  %24 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue_end = getelementptr inbounds %struct.dump_info, %struct.dump_info* %24, i32 0, i32 6
  %25 = load %struct.dump_queue*, %struct.dump_queue** %queue_end, align 8
  %tobool8 = icmp ne %struct.dump_queue* %25, null
  br i1 %tobool8, label %if.else.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %26 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %27 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue = getelementptr inbounds %struct.dump_info, %struct.dump_info* %27, i32 0, i32 5
  store %struct.dump_queue* %26, %struct.dump_queue** %queue, align 8
  br label %if.end.13

if.else.10:                                       ; preds = %if.end
  %28 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %29 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue_end11 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %29, i32 0, i32 6
  %30 = load %struct.dump_queue*, %struct.dump_queue** %queue_end11, align 8
  %next12 = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %30, i32 0, i32 1
  store %struct.dump_queue* %28, %struct.dump_queue** %next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  %31 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %32 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue_end14 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %32, i32 0, i32 6
  store %struct.dump_queue* %31, %struct.dump_queue** %queue_end14, align 8
  %33 = load i32, i32* %index, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @dump_maybe_newline(%struct.dump_info* %di) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %extra = alloca i32, align 4
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 4
  %1 = load i32, i32* %column, align 4
  %cmp = icmp ugt i32 %1, 55
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_new_line(%struct.dump_info* %2)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column1 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %3, i32 0, i32 4
  %4 = load i32, i32* %column1, align 4
  %sub = sub i32 %4, 25
  %rem = urem i32 %sub, 15
  store i32 %rem, i32* %extra, align 4
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %7 = load i32, i32* %extra, align 4
  %sub4 = sub nsw i32 15, %7
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %sub4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0))
  %8 = load i32, i32* %extra, align 4
  %sub5 = sub nsw i32 15, %8
  %9 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column6 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %9, i32 0, i32 4
  %10 = load i32, i32* %column6, align 4
  %add = add i32 %10, %sub5
  store i32 %add, i32* %column6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dump_index(%struct.dump_info* %di, i32 %index) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %index.addr = alloca i32, align 4
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %2 = load i32, i32* %index.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %2)
  %3 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %3, i32 0, i32 4
  %4 = load i32, i32* %column, align 4
  %add = add i32 %4, 8
  store i32 %add, i32* %column, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @queue_and_dump_type(%struct.dump_info* %di, %union.tree_node* %t) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @queue_and_dump_index(%struct.dump_info* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %union.tree_node* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_pointer(%struct.dump_info* %di, i8* %field, i8* %ptr) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %field.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i8* %field, i8** %field.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %0)
  %1 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %3 = load i8*, i8** %field.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = ptrtoint i8* %4 to i64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %3, i64 %5)
  %6 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %6, i32 0, i32 4
  %7 = load i32, i32* %column, align 4
  %add = add i32 %7, 15
  store i32 %add, i32* %column, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_int(%struct.dump_info* %di, i8* %field, i32 %i) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %field.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i8* %field, i8** %field.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %0)
  %1 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %3 = load i8*, i8** %field.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %3, i32 %4)
  %5 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %5, i32 0, i32 4
  %6 = load i32, i32* %column, align 4
  %add = add i32 %6, 14
  store i32 %add, i32* %column, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_string(%struct.dump_info* %di, i8* %string) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %string.addr = alloca i8*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %0)
  %1 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %3)
  %4 = load i8*, i8** %string.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #5
  %cmp = icmp ugt i64 %call1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %string.addr, align 8
  %call2 = call i64 @strlen(i8* %5) #5
  %add = add i64 %call2, 1
  %6 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %6, i32 0, i32 4
  %7 = load i32, i32* %column, align 4
  %conv = zext i32 %7 to i64
  %add3 = add i64 %conv, %add
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* %column, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column5 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %8, i32 0, i32 4
  %9 = load i32, i32* %column5, align 4
  %add6 = add i32 %9, 14
  store i32 %add6, i32* %column5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @dump_stmt(%struct.dump_info* %di, %union.tree_node* %t) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  %2 = load i32, i32* %complexity, align 4
  call void @dump_int(%struct.dump_info* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_next_stmt(%struct.dump_info* %di, %union.tree_node* %t) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  call void @queue_and_dump_index(%struct.dump_info* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %union.tree_node* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dump_flag(%struct.dump_info* %di, i32 %flag, %union.tree_node* %node) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %flag.addr = alloca i32, align 4
  %node.addr = alloca %union.tree_node*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %flags = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %2 = load i32, i32* %flag.addr, align 4
  %and = and i32 %1, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %4 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %node1 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %node1, align 8
  %cmp = icmp ne %union.tree_node* %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @dump_node(%union.tree_node* %t, i32 %flags, %struct._IO_FILE* %stream) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %di = alloca %struct.dump_info, align 8
  %dq = alloca %struct.dump_queue*, align 8
  %next_dq = alloca %struct.dump_queue*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %stream1 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %stream1, align 8
  %index = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 3
  store i32 0, i32* %index, align 4
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 4
  store i32 0, i32* %column, align 4
  %queue = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 5
  store %struct.dump_queue* null, %struct.dump_queue** %queue, align 8
  %queue_end = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 6
  store %struct.dump_queue* null, %struct.dump_queue** %queue_end, align 8
  %free_list = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 7
  store %struct.dump_queue* null, %struct.dump_queue** %free_list, align 8
  %1 = load i32, i32* %flags.addr, align 4
  %flags2 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 2
  store i32 %1, i32* %flags2, align 4
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %node = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 1
  store %union.tree_node* %2, %union.tree_node** %node, align 8
  %call = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* @splay_tree_compare_pointers, void (i64)* null, void (i64)* bitcast (void (i8*)* @free to void (i64)*))
  %nodes = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 8
  store %struct.splay_tree_s* %call, %struct.splay_tree_s** %nodes, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call3 = call i32 @queue(%struct.dump_info* %di, %union.tree_node* %3, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %queue4 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 5
  %4 = load %struct.dump_queue*, %struct.dump_queue** %queue4, align 8
  %tobool = icmp ne %struct.dump_queue* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @dequeue_and_dump(%struct.dump_info* %di)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %free_list5 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 7
  %5 = load %struct.dump_queue*, %struct.dump_queue** %free_list5, align 8
  store %struct.dump_queue* %5, %struct.dump_queue** %dq, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %6 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %tobool6 = icmp ne %struct.dump_queue* %6, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %next = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %7, i32 0, i32 1
  %8 = load %struct.dump_queue*, %struct.dump_queue** %next, align 8
  store %struct.dump_queue* %8, %struct.dump_queue** %next_dq, align 8
  %9 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %10 = bitcast %struct.dump_queue* %9 to i8*
  call void @free(i8* %10) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.dump_queue*, %struct.dump_queue** %next_dq, align 8
  store %struct.dump_queue* %11, %struct.dump_queue** %dq, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %nodes7 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %di, i32 0, i32 8
  %12 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes7, align 8
  call void @splay_tree_delete(%struct.splay_tree_s* %12)
  ret void
}

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #1

declare i32 @splay_tree_compare_pointers(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @dequeue_and_dump(%struct.dump_info* %di) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %dq = alloca %struct.dump_queue*, align 8
  %stn = alloca %struct.splay_tree_node_s*, align 8
  %dni = alloca %struct.dump_node_info*, align 8
  %t = alloca %union.tree_node*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %code_class = alloca i8, align 1
  %code_name = alloca i8*, align 8
  %filename123 = alloca i8*, align 8
  %quals = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [32 x i8], align 16
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 5
  %1 = load %struct.dump_queue*, %struct.dump_queue** %queue, align 8
  store %struct.dump_queue* %1, %struct.dump_queue** %dq, align 8
  %2 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %node = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %2, i32 0, i32 0
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  store %struct.splay_tree_node_s* %3, %struct.splay_tree_node_s** %stn, align 8
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %stn, align 8
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i32 0, i32 0
  %5 = load i64, i64* %key, align 8
  %6 = inttoptr i64 %5 to %union.tree_node*
  store %union.tree_node* %6, %union.tree_node** %t, align 8
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %stn, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 1
  %8 = load i64, i64* %value, align 8
  %9 = inttoptr i64 %8 to %struct.dump_node_info*
  store %struct.dump_node_info* %9, %struct.dump_node_info** %dni, align 8
  %10 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %index1 = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %10, i32 0, i32 0
  %11 = load i32, i32* %index1, align 4
  store i32 %11, i32* %index, align 4
  %12 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %next = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %12, i32 0, i32 1
  %13 = load %struct.dump_queue*, %struct.dump_queue** %next, align 8
  %14 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue2 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %14, i32 0, i32 5
  store %struct.dump_queue* %13, %struct.dump_queue** %queue2, align 8
  %15 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue3 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %15, i32 0, i32 5
  %16 = load %struct.dump_queue*, %struct.dump_queue** %queue3, align 8
  %tobool = icmp ne %struct.dump_queue* %16, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %queue_end = getelementptr inbounds %struct.dump_info, %struct.dump_info* %17, i32 0, i32 6
  store %struct.dump_queue* null, %struct.dump_queue** %queue_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %free_list = getelementptr inbounds %struct.dump_info, %struct.dump_info* %18, i32 0, i32 7
  %19 = load %struct.dump_queue*, %struct.dump_queue** %free_list, align 8
  %20 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %next4 = getelementptr inbounds %struct.dump_queue, %struct.dump_queue* %20, i32 0, i32 1
  store %struct.dump_queue* %19, %struct.dump_queue** %next4, align 8
  %21 = load %struct.dump_queue*, %struct.dump_queue** %dq, align 8
  %22 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %free_list5 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %22, i32 0, i32 7
  store %struct.dump_queue* %21, %struct.dump_queue** %free_list5, align 8
  %23 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %24 = load i32, i32* %index, align 4
  call void @dump_index(%struct.dump_info* %23, i32 %24)
  %25 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %binfo_p = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %25, i32 0, i32 1
  %bf.load = load i8, i8* %binfo_p, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %code_name, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %idxprom = sext i32 %bf.clear10 to i64
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* @tree_code_name, i32 0, i64 %idxprom
  %27 = load i8*, i8** %arrayidx, align 8
  store i8* %27, i8** %code_name, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.7
  %28 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %30 = load i8*, i8** %code_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %30)
  %31 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %31, i32 0, i32 4
  store i32 25, i32* %column, align 4
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common12 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  store i32 %bf.clear15, i32* %code, align 4
  %33 = load i32, i32* %code, align 4
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom16
  %34 = load i8, i8* %arrayidx17, align 1
  store i8 %34, i8* %code_class, align 1
  %35 = load %struct.dump_node_info*, %struct.dump_node_info** %dni, align 8
  %binfo_p18 = getelementptr inbounds %struct.dump_node_info, %struct.dump_node_info* %35, i32 0, i32 1
  %bf.load19 = load i8, i8* %binfo_p18, align 4
  %bf.clear20 = and i8 %bf.load19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  %tobool22 = icmp ne i32 %bf.cast21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.55

if.then.23:                                       ; preds = %if.end.11
  %36 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common24 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load25 = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load25, 19
  %bf.clear26 = and i32 %bf.lshr, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.23
  %37 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.45

if.else.29:                                       ; preds = %if.then.23
  %38 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common30 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %protected_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load31 = load i32, i32* %protected_flag, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 21
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.29
  %39 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.44

if.else.36:                                       ; preds = %if.else.29
  %40 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common37 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %private_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %private_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 20
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.36
  %41 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else.36
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.28
  %42 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common46 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load47 = load i32, i32* %static_flag, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 18
  %bf.clear49 = and i32 %bf.lshr48, 1
  %tobool50 = icmp ne i32 %bf.clear49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.45
  %43 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.45
  %44 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %45 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common53 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 1
  %46 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @queue_and_dump_index(%struct.dump_info* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %union.tree_node* %46, i32 0)
  %47 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %48 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec = bitcast %union.tree_node* %48 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 4
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8
  call void @queue_and_dump_index(%struct.dump_info* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %union.tree_node* %49, i32 0)
  br label %done

if.end.55:                                        ; preds = %if.end.11
  %50 = load i8, i8* %code_class, align 1
  %conv = sext i8 %50 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.55
  %51 = load i8, i8* %code_class, align 1
  %conv57 = sext i8 %51 to i32
  %cmp58 = icmp eq i32 %conv57, 49
  br i1 %cmp58, label %if.then.68, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %52 = load i8, i8* %code_class, align 1
  %conv61 = sext i8 %52 to i32
  %cmp62 = icmp eq i32 %conv61, 50
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.60
  %53 = load i8, i8* %code_class, align 1
  %conv65 = sext i8 %53 to i32
  %cmp66 = icmp eq i32 %conv65, 101
  br i1 %cmp66, label %if.then.68, label %if.else.79

if.then.68:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.60, %lor.lhs.false, %if.end.55
  %54 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %55 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @queue_and_dump_type(%struct.dump_info* %54, %union.tree_node* %55)
  %56 = load i8, i8* %code_class, align 1
  %conv69 = sext i8 %56 to i32
  switch i32 %conv69, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb.71
    i32 60, label %sw.bb.71
    i32 101, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %if.then.68
  %57 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %58 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %58 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx70 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %59 = load %union.tree_node*, %union.tree_node** %arrayidx70, align 8
  call void @queue_and_dump_index(%struct.dump_info* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %union.tree_node* %59, i32 0)
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.then.68, %if.then.68
  %60 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %61 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp72 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands73 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp72, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands73, i32 0, i64 0
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx74, align 8
  call void @queue_and_dump_index(%struct.dump_info* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %union.tree_node* %62, i32 0)
  %63 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %64 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp75 = bitcast %union.tree_node* %64 to %struct.tree_exp*
  %operands76 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp75, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands76, i32 0, i64 1
  %65 = load %union.tree_node*, %union.tree_node** %arrayidx77, align 8
  call void @queue_and_dump_index(%struct.dump_info* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %union.tree_node* %65, i32 0)
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.then.68
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.68
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.dequeue_and_dump, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.78, %sw.bb.71, %sw.bb
  br label %if.end.200

if.else.79:                                       ; preds = %lor.lhs.false.64
  %66 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common80 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %idxprom84 = sext i32 %bf.clear83 to i64
  %arrayidx85 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom84
  %67 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %67 to i32
  %cmp87 = icmp eq i32 %conv86, 100
  br i1 %cmp87, label %if.then.89, label %if.else.160

if.then.89:                                       ; preds = %if.else.79
  %68 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %68 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %69 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool90 = icmp ne %union.tree_node* %69, null
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.then.89
  %70 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %71 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl92 = bitcast %union.tree_node* %71 to %struct.tree_decl*
  %name93 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 8
  %72 = load %union.tree_node*, %union.tree_node** %name93, align 8
  call void @queue_and_dump_index(%struct.dump_info* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %union.tree_node* %72, i32 0)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.then.89
  %73 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl95 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl95, i32 0, i32 14
  %74 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp96 = icmp ne %union.tree_node* %74, null
  br i1 %cmp96, label %land.lhs.true, label %if.end.118

land.lhs.true:                                    ; preds = %if.end.94
  %75 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl98 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %assembler_name99 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl98, i32 0, i32 14
  %76 = load %union.tree_node*, %union.tree_node** %assembler_name99, align 8
  %cmp100 = icmp ne %union.tree_node* %76, null
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %77 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %78 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void %77(%union.tree_node* %78)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %79 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl102 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %assembler_name103 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl102, i32 0, i32 14
  %80 = load %union.tree_node*, %union.tree_node** %assembler_name103, align 8
  %81 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl104 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %name105 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl104, i32 0, i32 8
  %82 = load %union.tree_node*, %union.tree_node** %name105, align 8
  %cmp106 = icmp ne %union.tree_node* %80, %82
  br i1 %cmp106, label %if.then.108, label %if.end.118

if.then.108:                                      ; preds = %cond.end
  %83 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %84 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl109 = bitcast %union.tree_node* %84 to %struct.tree_decl*
  %assembler_name110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl109, i32 0, i32 14
  %85 = load %union.tree_node*, %union.tree_node** %assembler_name110, align 8
  %cmp111 = icmp ne %union.tree_node* %85, null
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.then.108
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.then.108
  %86 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %87 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void %86(%union.tree_node* %87)
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %88 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl116 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %assembler_name117 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl116, i32 0, i32 14
  %89 = load %union.tree_node*, %union.tree_node** %assembler_name117, align 8
  call void @queue_and_dump_index(%struct.dump_info* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %union.tree_node* %89, i32 0)
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.115, %cond.end, %if.end.94
  %90 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %91 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @queue_and_dump_type(%struct.dump_info* %90, %union.tree_node* %91)
  %92 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %93 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl119 = bitcast %union.tree_node* %93 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl119, i32 0, i32 9
  %94 = load %union.tree_node*, %union.tree_node** %context, align 8
  call void @queue_and_dump_index(%struct.dump_info* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %union.tree_node* %94, i32 0)
  %95 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl120 = bitcast %union.tree_node* %95 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl120, i32 0, i32 1
  %96 = load i8*, i8** %filename, align 8
  %tobool121 = icmp ne i8* %96, null
  br i1 %tobool121, label %if.then.122, label %if.end.142

if.then.122:                                      ; preds = %if.end.118
  %97 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl124 = bitcast %union.tree_node* %97 to %struct.tree_decl*
  %filename125 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl124, i32 0, i32 1
  %98 = load i8*, i8** %filename125, align 8
  %call126 = call i8* @strrchr(i8* %98, i32 47) #5
  store i8* %call126, i8** %filename123, align 8
  %99 = load i8*, i8** %filename123, align 8
  %tobool127 = icmp ne i8* %99, null
  br i1 %tobool127, label %if.else.131, label %if.then.128

if.then.128:                                      ; preds = %if.then.122
  %100 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl129 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %filename130 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl129, i32 0, i32 1
  %101 = load i8*, i8** %filename130, align 8
  store i8* %101, i8** %filename123, align 8
  br label %if.end.132

if.else.131:                                      ; preds = %if.then.122
  %102 = load i8*, i8** %filename123, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr, i8** %filename123, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.then.128
  %103 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %103)
  %104 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream133 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %104, i32 0, i32 0
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %stream133, align 8
  %106 = load i8*, i8** %filename123, align 8
  %107 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl134 = bitcast %union.tree_node* %107 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl134, i32 0, i32 2
  %108 = load i32, i32* %linenum, align 4
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* %106, i32 %108)
  %109 = load i8*, i8** %filename123, align 8
  %call136 = call i64 @strlen(i8* %109) #5
  %add = add i64 6, %call136
  %add137 = add i64 %add, 8
  %110 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column138 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %110, i32 0, i32 4
  %111 = load i32, i32* %column138, align 4
  %conv139 = zext i32 %111 to i64
  %add140 = add i64 %conv139, %add137
  %conv141 = trunc i64 %add140 to i32
  store i32 %conv141, i32* %column138, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.132, %if.end.118
  %112 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl143 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl143, i32 0, i32 5
  %113 = bitcast i48* %artificial_flag to i64*
  %bf.load144 = load i64, i64* %113, align 8
  %bf.lshr145 = lshr i64 %bf.load144, 22
  %bf.clear146 = and i64 %bf.lshr145, 1
  %bf.cast147 = trunc i64 %bf.clear146 to i32
  %tobool148 = icmp ne i32 %bf.cast147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.142
  %114 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.142
  %115 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common151 = bitcast %union.tree_node* %115 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common151, i32 0, i32 0
  %116 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %tobool152 = icmp ne %union.tree_node* %116, null
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.159

land.lhs.true.153:                                ; preds = %if.end.150
  %117 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %call154 = call i32 @dump_flag(%struct.dump_info* %117, i32 2, %union.tree_node* null)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.159, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.153
  %118 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %119 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common157 = bitcast %union.tree_node* %119 to %struct.tree_common*
  %chain158 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 0
  %120 = load %union.tree_node*, %union.tree_node** %chain158, align 8
  call void @queue_and_dump_index(%struct.dump_info* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %union.tree_node* %120, i32 0)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %land.lhs.true.153, %if.end.150
  br label %if.end.199

if.else.160:                                      ; preds = %if.else.79
  %121 = load i8, i8* %code_class, align 1
  %conv161 = sext i8 %121 to i32
  %cmp162 = icmp eq i32 %conv161, 116
  br i1 %cmp162, label %if.then.164, label %if.else.192

if.then.164:                                      ; preds = %if.else.160
  %122 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 20, i32 1), align 8
  %123 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call165 = call i32 %122(%union.tree_node* %123)
  store i32 %call165, i32* %quals, align 4
  %124 = load i32, i32* %quals, align 4
  %cmp166 = icmp ne i32 %124, 0
  br i1 %cmp166, label %if.then.168, label %if.end.180

if.then.168:                                      ; preds = %if.then.164
  %125 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream169 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %125, i32 0, i32 0
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %stream169, align 8
  %127 = load i32, i32* %quals, align 4
  %and = and i32 %127, 1
  %tobool170 = icmp ne i32 %and, 0
  %cond = select i1 %tobool170, i32 99, i32 32
  %128 = load i32, i32* %quals, align 4
  %and171 = and i32 %128, 2
  %tobool172 = icmp ne i32 %and171, 0
  %cond173 = select i1 %tobool172, i32 118, i32 32
  %129 = load i32, i32* %quals, align 4
  %and174 = and i32 %129, 4
  %tobool175 = icmp ne i32 %and174, 0
  %cond176 = select i1 %tobool175, i32 114, i32 32
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i32 %cond, i32 %cond173, i32 %cond176)
  %130 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column178 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %130, i32 0, i32 4
  %131 = load i32, i32* %column178, align 4
  %add179 = add i32 %131, 14
  store i32 %add179, i32* %column178, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.168, %if.then.164
  %132 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %133 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type181 = bitcast %union.tree_node* %133 to %struct.tree_type*
  %name182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type181, i32 0, i32 11
  %134 = load %union.tree_node*, %union.tree_node** %name182, align 8
  call void @queue_and_dump_index(%struct.dump_info* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %union.tree_node* %134, i32 0)
  %135 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type183 = bitcast %union.tree_node* %135 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type183, i32 0, i32 15
  %136 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %137 = load %union.tree_node*, %union.tree_node** %t, align 8
  %cmp184 = icmp ne %union.tree_node* %136, %137
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %if.end.180
  %138 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %139 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type187 = bitcast %union.tree_node* %139 to %struct.tree_type*
  %main_variant188 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type187, i32 0, i32 15
  %140 = load %union.tree_node*, %union.tree_node** %main_variant188, align 8
  call void @queue_and_dump_index(%struct.dump_info* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), %union.tree_node* %140, i32 0)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %if.end.180
  %141 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %142 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type190 = bitcast %union.tree_node* %142 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type190, i32 0, i32 2
  %143 = load %union.tree_node*, %union.tree_node** %size, align 8
  call void @queue_and_dump_index(%struct.dump_info* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %union.tree_node* %143, i32 0)
  %144 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %145 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type191 = bitcast %union.tree_node* %145 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type191, i32 0, i32 7
  %146 = load i32, i32* %align, align 4
  call void @dump_int(%struct.dump_info* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 %146)
  br label %if.end.198

if.else.192:                                      ; preds = %if.else.160
  %147 = load i8, i8* %code_class, align 1
  %conv193 = sext i8 %147 to i32
  %cmp194 = icmp eq i32 %conv193, 99
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.else.192
  %148 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %149 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @queue_and_dump_type(%struct.dump_info* %148, %union.tree_node* %149)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %if.else.192
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.189
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.159
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %sw.epilog
  %150 = load i32 (i8*, %union.tree_node*)*, i32 (i8*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 20, i32 0), align 8
  %151 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %152 = bitcast %struct.dump_info* %151 to i8*
  %153 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call201 = call i32 %150(i8* %152, %union.tree_node* %153)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.200
  br label %done

if.end.204:                                       ; preds = %if.end.200
  %154 = load i32, i32* %code, align 4
  switch i32 %154, label %sw.default.593 [
    i32 1, label %sw.bb.205
    i32 2, label %sw.bb.208
    i32 3, label %sw.bb.213
    i32 6, label %sw.bb.225
    i32 10, label %sw.bb.225
    i32 7, label %sw.bb.243
    i32 13, label %sw.bb.248
    i32 15, label %sw.bb.251
    i32 16, label %sw.bb.254
    i32 23, label %sw.bb.257
    i32 18, label %sw.bb.262
    i32 20, label %sw.bb.267
    i32 21, label %sw.bb.267
    i32 32, label %sw.bb.282
    i32 34, label %sw.bb.284
    i32 35, label %sw.bb.284
    i32 37, label %sw.bb.284
    i32 36, label %sw.bb.284
    i32 30, label %sw.bb.354
    i32 165, label %sw.bb.382
    i32 160, label %sw.bb.402
    i32 161, label %sw.bb.402
    i32 168, label %sw.bb.403
    i32 171, label %sw.bb.410
    i32 153, label %sw.bb.417
    i32 154, label %sw.bb.421
    i32 158, label %sw.bb.425
    i32 152, label %sw.bb.432
    i32 156, label %sw.bb.436
    i32 163, label %sw.bb.449
    i32 155, label %sw.bb.453
    i32 164, label %sw.bb.463
    i32 159, label %sw.bb.467
    i32 162, label %sw.bb.471
    i32 157, label %sw.bb.478
    i32 166, label %sw.bb.485
    i32 25, label %sw.bb.508
    i32 29, label %sw.bb.520
    i32 96, label %sw.bb.525
    i32 121, label %sw.bb.525
    i32 41, label %sw.bb.525
    i32 56, label %sw.bb.525
    i32 118, label %sw.bb.525
    i32 91, label %sw.bb.529
    i32 92, label %sw.bb.529
    i32 49, label %sw.bb.529
    i32 48, label %sw.bb.529
    i32 39, label %sw.bb.529
    i32 47, label %sw.bb.529
    i32 43, label %sw.bb.529
    i32 129, label %sw.bb.529
    i32 130, label %sw.bb.529
    i32 131, label %sw.bb.529
    i32 132, label %sw.bb.529
    i32 51, label %sw.bb.536
    i32 53, label %sw.bb.546
    i32 46, label %sw.bb.553
    i32 169, label %sw.bb.557
    i32 52, label %sw.bb.561
    i32 141, label %sw.bb.568
    i32 140, label %sw.bb.572
    i32 50, label %sw.bb.576
    i32 144, label %sw.bb.589
  ]

sw.bb.205:                                        ; preds = %if.end.204
  %155 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %156 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier = bitcast %union.tree_node* %156 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %157 = load i8*, i8** %str, align 8
  call void @dump_string_field(%struct.dump_info* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %157)
  %158 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %159 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier206 = bitcast %union.tree_node* %159 to %struct.tree_identifier*
  %id207 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier206, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id207, i32 0, i32 0
  %160 = load i32, i32* %len, align 4
  call void @dump_int(%struct.dump_info* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %160)
  br label %sw.epilog.594

sw.bb.208:                                        ; preds = %if.end.204
  %161 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %162 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %162 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %163 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  call void @queue_and_dump_index(%struct.dump_info* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %union.tree_node* %163, i32 0)
  %164 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %165 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list209 = bitcast %union.tree_node* %165 to %struct.tree_list*
  %value210 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list209, i32 0, i32 2
  %166 = load %union.tree_node*, %union.tree_node** %value210, align 8
  call void @queue_and_dump_index(%struct.dump_info* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %union.tree_node* %166, i32 0)
  %167 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %168 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common211 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %chain212 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common211, i32 0, i32 0
  %169 = load %union.tree_node*, %union.tree_node** %chain212, align 8
  call void @queue_and_dump_index(%struct.dump_info* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %union.tree_node* %169, i32 0)
  br label %sw.epilog.594

sw.bb.213:                                        ; preds = %if.end.204
  %170 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %171 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec214 = bitcast %union.tree_node* %171 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec214, i32 0, i32 1
  %172 = load i32, i32* %length, align 4
  call void @dump_int(%struct.dump_info* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %172)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.213
  %173 = load i32, i32* %i, align 4
  %174 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec215 = bitcast %union.tree_node* %174 to %struct.tree_vec*
  %length216 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec215, i32 0, i32 1
  %175 = load i32, i32* %length216, align 4
  %cmp217 = icmp slt i32 %173, %175
  br i1 %cmp217, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  %176 = load i32, i32* %i, align 4
  %call219 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %176) #6
  %177 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %arraydecay220 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  %178 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %178 to i64
  %179 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec222 = bitcast %union.tree_node* %179 to %struct.tree_vec*
  %a223 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec222, i32 0, i32 2
  %arrayidx224 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a223, i32 0, i64 %idxprom221
  %180 = load %union.tree_node*, %union.tree_node** %arrayidx224, align 8
  call void @queue_and_dump_index(%struct.dump_info* %177, i8* %arraydecay220, %union.tree_node* %180, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %181 = load i32, i32* %i, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.594

sw.bb.225:                                        ; preds = %if.end.204, %if.end.204
  %182 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %183 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type226 = bitcast %union.tree_node* %183 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type226, i32 0, i32 6
  %bf.load227 = load i32, i32* %precision, align 4
  %bf.clear228 = and i32 %bf.load227, 511
  call void @dump_int(%struct.dump_info* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %bf.clear228)
  %184 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common229 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common229, i32 0, i32 2
  %bf.load230 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr231 = lshr i32 %bf.load230, 13
  %bf.clear232 = and i32 %bf.lshr231, 1
  %tobool233 = icmp ne i32 %bf.clear232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %sw.bb.225
  %185 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %sw.bb.225
  %186 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %187 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type236 = bitcast %union.tree_node* %187 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type236, i32 0, i32 12
  %188 = load %union.tree_node*, %union.tree_node** %minval, align 8
  call void @queue_and_dump_index(%struct.dump_info* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), %union.tree_node* %188, i32 0)
  %189 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %190 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type237 = bitcast %union.tree_node* %190 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type237, i32 0, i32 13
  %191 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  call void @queue_and_dump_index(%struct.dump_info* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), %union.tree_node* %191, i32 0)
  %192 = load i32, i32* %code, align 4
  %cmp238 = icmp eq i32 %192, 10
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %if.end.235
  %193 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %194 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type241 = bitcast %union.tree_node* %194 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type241, i32 0, i32 1
  %195 = load %union.tree_node*, %union.tree_node** %values, align 8
  call void @queue_and_dump_index(%struct.dump_info* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), %union.tree_node* %195, i32 0)
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %if.end.235
  br label %sw.epilog.594

sw.bb.243:                                        ; preds = %if.end.204
  %196 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %197 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type244 = bitcast %union.tree_node* %197 to %struct.tree_type*
  %precision245 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type244, i32 0, i32 6
  %bf.load246 = load i32, i32* %precision245, align 4
  %bf.clear247 = and i32 %bf.load246, 511
  call void @dump_int(%struct.dump_info* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %bf.clear247)
  br label %sw.epilog.594

sw.bb.248:                                        ; preds = %if.end.204
  %198 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %199 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common249 = bitcast %union.tree_node* %199 to %struct.tree_common*
  %type250 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common249, i32 0, i32 1
  %200 = load %union.tree_node*, %union.tree_node** %type250, align 8
  call void @queue_and_dump_index(%struct.dump_info* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %union.tree_node* %200, i32 0)
  br label %sw.epilog.594

sw.bb.251:                                        ; preds = %if.end.204
  %201 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %202 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common252 = bitcast %union.tree_node* %202 to %struct.tree_common*
  %type253 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common252, i32 0, i32 1
  %203 = load %union.tree_node*, %union.tree_node** %type253, align 8
  call void @queue_and_dump_index(%struct.dump_info* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %union.tree_node* %203, i32 0)
  br label %sw.epilog.594

sw.bb.254:                                        ; preds = %if.end.204
  %204 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %205 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type255 = bitcast %union.tree_node* %205 to %struct.tree_type*
  %maxval256 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type255, i32 0, i32 13
  %206 = load %union.tree_node*, %union.tree_node** %maxval256, align 8
  call void @queue_and_dump_index(%struct.dump_info* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), %union.tree_node* %206, i32 0)
  br label %sw.bb.257

sw.bb.257:                                        ; preds = %if.end.204, %sw.bb.254
  %207 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %208 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common258 = bitcast %union.tree_node* %208 to %struct.tree_common*
  %type259 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common258, i32 0, i32 1
  %209 = load %union.tree_node*, %union.tree_node** %type259, align 8
  call void @queue_and_dump_index(%struct.dump_info* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %union.tree_node* %209, i32 0)
  %210 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %211 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type260 = bitcast %union.tree_node* %211 to %struct.tree_type*
  %values261 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type260, i32 0, i32 1
  %212 = load %union.tree_node*, %union.tree_node** %values261, align 8
  call void @queue_and_dump_index(%struct.dump_info* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), %union.tree_node* %212, i32 0)
  br label %sw.epilog.594

sw.bb.262:                                        ; preds = %if.end.204
  %213 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %214 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common263 = bitcast %union.tree_node* %214 to %struct.tree_common*
  %type264 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common263, i32 0, i32 1
  %215 = load %union.tree_node*, %union.tree_node** %type264, align 8
  call void @queue_and_dump_index(%struct.dump_info* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), %union.tree_node* %215, i32 0)
  %216 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %217 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type265 = bitcast %union.tree_node* %217 to %struct.tree_type*
  %values266 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type265, i32 0, i32 1
  %218 = load %union.tree_node*, %union.tree_node** %values266, align 8
  call void @queue_and_dump_index(%struct.dump_info* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), %union.tree_node* %218, i32 0)
  br label %sw.epilog.594

sw.bb.267:                                        ; preds = %if.end.204, %if.end.204
  %219 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common268 = bitcast %union.tree_node* %219 to %struct.tree_common*
  %code269 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common268, i32 0, i32 2
  %bf.load270 = load i32, i32* %code269, align 8
  %bf.clear271 = and i32 %bf.load270, 255
  %cmp272 = icmp eq i32 %bf.clear271, 20
  br i1 %cmp272, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %sw.bb.267
  %220 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.276

if.else.275:                                      ; preds = %sw.bb.267
  %221 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.275, %if.then.274
  %222 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %223 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type277 = bitcast %union.tree_node* %223 to %struct.tree_type*
  %values278 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type277, i32 0, i32 1
  %224 = load %union.tree_node*, %union.tree_node** %values278, align 8
  call void @queue_and_dump_index(%struct.dump_info* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), %union.tree_node* %224, i32 0)
  %225 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %226 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type279 = bitcast %union.tree_node* %226 to %struct.tree_type*
  %maxval280 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type279, i32 0, i32 13
  %227 = load %union.tree_node*, %union.tree_node** %maxval280, align 8
  call void @queue_and_dump_index(%struct.dump_info* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), %union.tree_node* %227, i32 0)
  %228 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %229 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type281 = bitcast %union.tree_node* %229 to %struct.tree_type*
  %binfo = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type281, i32 0, i32 16
  %230 = load %union.tree_node*, %union.tree_node** %binfo, align 8
  call void @queue_and_dump_index(%struct.dump_info* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %union.tree_node* %230, i32 1)
  br label %sw.epilog.594

sw.bb.282:                                        ; preds = %if.end.204
  %231 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %232 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl283 = bitcast %union.tree_node* %232 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl283, i32 0, i32 12
  %233 = load %union.tree_node*, %union.tree_node** %initial, align 8
  call void @queue_and_dump_index(%struct.dump_info* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), %union.tree_node* %233, i32 0)
  br label %sw.epilog.594

sw.bb.284:                                        ; preds = %if.end.204, %if.end.204, %if.end.204, %if.end.204
  %234 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common285 = bitcast %union.tree_node* %234 to %struct.tree_common*
  %code286 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common285, i32 0, i32 2
  %bf.load287 = load i32, i32* %code286, align 8
  %bf.clear288 = and i32 %bf.load287, 255
  %cmp289 = icmp eq i32 %bf.clear288, 35
  br i1 %cmp289, label %if.then.291, label %if.else.294

if.then.291:                                      ; preds = %sw.bb.284
  %235 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %236 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl292 = bitcast %union.tree_node* %236 to %struct.tree_decl*
  %initial293 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl292, i32 0, i32 12
  %237 = load %union.tree_node*, %union.tree_node** %initial293, align 8
  call void @queue_and_dump_index(%struct.dump_info* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), %union.tree_node* %237, i32 0)
  br label %if.end.297

if.else.294:                                      ; preds = %sw.bb.284
  %238 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %239 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl295 = bitcast %union.tree_node* %239 to %struct.tree_decl*
  %initial296 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl295, i32 0, i32 12
  %240 = load %union.tree_node*, %union.tree_node** %initial296, align 8
  call void @queue_and_dump_index(%struct.dump_info* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %union.tree_node* %240, i32 0)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.291
  %241 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %242 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl298 = bitcast %union.tree_node* %242 to %struct.tree_decl*
  %size299 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl298, i32 0, i32 4
  %243 = load %union.tree_node*, %union.tree_node** %size299, align 8
  call void @queue_and_dump_index(%struct.dump_info* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %union.tree_node* %243, i32 0)
  %244 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %245 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl300 = bitcast %union.tree_node* %245 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl300, i32 0, i32 6
  %a301 = bitcast %union.anon* %u1 to %struct.anon.0*
  %246 = bitcast %struct.anon.0* %a301 to i32*
  %bf.load302 = load i32, i32* %246, align 4
  %bf.clear303 = and i32 %bf.load302, 16777215
  call void @dump_int(%struct.dump_info* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 %bf.clear303)
  %247 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common304 = bitcast %union.tree_node* %247 to %struct.tree_common*
  %code305 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common304, i32 0, i32 2
  %bf.load306 = load i32, i32* %code305, align 8
  %bf.clear307 = and i32 %bf.load306, 255
  %cmp308 = icmp eq i32 %bf.clear307, 37
  br i1 %cmp308, label %if.then.310, label %if.else.325

if.then.310:                                      ; preds = %if.end.297
  %248 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl311 = bitcast %union.tree_node* %248 to %struct.tree_decl*
  %lang_flag_4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl311, i32 0, i32 5
  %249 = bitcast i48* %lang_flag_4 to i64*
  %bf.load312 = load i64, i64* %249, align 8
  %bf.lshr313 = lshr i64 %bf.load312, 41
  %bf.clear314 = and i64 %bf.lshr313, 1
  %bf.cast315 = trunc i64 %bf.clear314 to i32
  %cmp316 = icmp eq i32 %bf.cast315, 1
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.then.310
  %250 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %if.then.310
  %251 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl320 = bitcast %union.tree_node* %251 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl320, i32 0, i32 10
  %252 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %tobool321 = icmp ne %union.tree_node* %252, null
  br i1 %tobool321, label %if.then.322, label %if.end.324

if.then.322:                                      ; preds = %if.end.319
  %253 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %254 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call323 = call %union.tree_node* @bit_position(%union.tree_node* %254)
  call void @queue_and_dump_index(%struct.dump_info* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), %union.tree_node* %call323, i32 0)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.322, %if.end.319
  br label %if.end.353

if.else.325:                                      ; preds = %if.end.297
  %255 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common326 = bitcast %union.tree_node* %255 to %struct.tree_common*
  %code327 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common326, i32 0, i32 2
  %bf.load328 = load i32, i32* %code327, align 8
  %bf.clear329 = and i32 %bf.load328, 255
  %cmp330 = icmp eq i32 %bf.clear329, 34
  br i1 %cmp330, label %if.then.339, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %if.else.325
  %256 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common333 = bitcast %union.tree_node* %256 to %struct.tree_common*
  %code334 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common333, i32 0, i32 2
  %bf.load335 = load i32, i32* %code334, align 8
  %bf.clear336 = and i32 %bf.load335, 255
  %cmp337 = icmp eq i32 %bf.clear336, 35
  br i1 %cmp337, label %if.then.339, label %if.end.352

if.then.339:                                      ; preds = %lor.lhs.false.332, %if.else.325
  %257 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %258 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common340 = bitcast %union.tree_node* %258 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common340, i32 0, i32 2
  %bf.load341 = load i32, i32* %used_flag, align 8
  %bf.lshr342 = lshr i32 %bf.load341, 16
  %bf.clear343 = and i32 %bf.lshr342, 1
  call void @dump_int(%struct.dump_info* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 %bf.clear343)
  %259 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl344 = bitcast %union.tree_node* %259 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl344, i32 0, i32 5
  %260 = bitcast i48* %regdecl_flag to i64*
  %bf.load345 = load i64, i64* %260, align 8
  %bf.lshr346 = lshr i64 %bf.load345, 10
  %bf.clear347 = and i64 %bf.lshr346, 1
  %bf.cast348 = trunc i64 %bf.clear347 to i32
  %tobool349 = icmp ne i32 %bf.cast348, 0
  br i1 %tobool349, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.then.339
  %261 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %if.then.339
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %lor.lhs.false.332
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.324
  br label %sw.epilog.594

sw.bb.354:                                        ; preds = %if.end.204
  %262 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %263 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl355 = bitcast %union.tree_node* %263 to %struct.tree_decl*
  %arguments356 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl355, i32 0, i32 10
  %264 = load %union.tree_node*, %union.tree_node** %arguments356, align 8
  call void @queue_and_dump_index(%struct.dump_info* %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %union.tree_node* %264, i32 0)
  %265 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl357 = bitcast %union.tree_node* %265 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl357, i32 0, i32 5
  %266 = bitcast i48* %external_flag to i64*
  %bf.load358 = load i64, i64* %266, align 8
  %bf.lshr359 = lshr i64 %bf.load358, 8
  %bf.clear360 = and i64 %bf.lshr359, 1
  %bf.cast361 = trunc i64 %bf.clear360 to i32
  %tobool362 = icmp ne i32 %bf.cast361, 0
  br i1 %tobool362, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %sw.bb.354
  %267 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.363, %sw.bb.354
  %268 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common365 = bitcast %union.tree_node* %268 to %struct.tree_common*
  %public_flag366 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common365, i32 0, i32 2
  %bf.load367 = load i32, i32* %public_flag366, align 8
  %bf.lshr368 = lshr i32 %bf.load367, 19
  %bf.clear369 = and i32 %bf.lshr368, 1
  %tobool370 = icmp ne i32 %bf.clear369, 0
  br i1 %tobool370, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %if.end.364
  %269 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.373

if.else.372:                                      ; preds = %if.end.364
  %270 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.372, %if.then.371
  %271 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl374 = bitcast %union.tree_node* %271 to %struct.tree_decl*
  %lang_specific = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl374, i32 0, i32 24
  %272 = load %struct.lang_decl*, %struct.lang_decl** %lang_specific, align 8
  %tobool375 = icmp ne %struct.lang_decl* %272, null
  br i1 %tobool375, label %land.lhs.true.376, label %if.end.381

land.lhs.true.376:                                ; preds = %if.end.373
  %273 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %274 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call377 = call i32 @dump_flag(%struct.dump_info* %273, i32 2, %union.tree_node* %274)
  %tobool378 = icmp ne i32 %call377, 0
  br i1 %tobool378, label %if.end.381, label %if.then.379

if.then.379:                                      ; preds = %land.lhs.true.376
  %275 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %276 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl380 = bitcast %union.tree_node* %276 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl380, i32 0, i32 20
  %277 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  call void @queue_and_dump_index(%struct.dump_info* %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %277, i32 0)
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %land.lhs.true.376, %if.end.373
  br label %sw.epilog.594

sw.bb.382:                                        ; preds = %if.end.204
  %278 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %279 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %278, %union.tree_node* %279)
  %280 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp383 = bitcast %union.tree_node* %280 to %struct.tree_exp*
  %operands384 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp383, i32 0, i32 2
  %arrayidx385 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands384, i32 0, i64 0
  %281 = load %union.tree_node*, %union.tree_node** %arrayidx385, align 8
  %cmp386 = icmp ne %union.tree_node* %281, null
  br i1 %cmp386, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %sw.bb.382
  %282 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.388, %sw.bb.382
  %283 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %284 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp390 = bitcast %union.tree_node* %284 to %struct.tree_exp*
  %operands391 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp390, i32 0, i32 2
  %arrayidx392 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands391, i32 0, i64 1
  %285 = load %union.tree_node*, %union.tree_node** %arrayidx392, align 8
  call void @queue_and_dump_index(%struct.dump_info* %283, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), %union.tree_node* %285, i32 0)
  %286 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %287 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp393 = bitcast %union.tree_node* %287 to %struct.tree_exp*
  %operands394 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp393, i32 0, i32 2
  %arrayidx395 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands394, i32 0, i64 2
  %288 = load %union.tree_node*, %union.tree_node** %arrayidx395, align 8
  call void @queue_and_dump_index(%struct.dump_info* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), %union.tree_node* %288, i32 0)
  %289 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %290 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp396 = bitcast %union.tree_node* %290 to %struct.tree_exp*
  %operands397 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp396, i32 0, i32 2
  %arrayidx398 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands397, i32 0, i64 3
  %291 = load %union.tree_node*, %union.tree_node** %arrayidx398, align 8
  call void @queue_and_dump_index(%struct.dump_info* %289, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %union.tree_node* %291, i32 0)
  %292 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %293 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp399 = bitcast %union.tree_node* %293 to %struct.tree_exp*
  %operands400 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp399, i32 0, i32 2
  %arrayidx401 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands400, i32 0, i64 4
  %294 = load %union.tree_node*, %union.tree_node** %arrayidx401, align 8
  call void @queue_and_dump_index(%struct.dump_info* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), %union.tree_node* %294, i32 0)
  %295 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %296 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %295, %union.tree_node* %296)
  br label %sw.epilog.594

sw.bb.402:                                        ; preds = %if.end.204, %if.end.204
  %297 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %298 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %297, %union.tree_node* %298)
  %299 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %300 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %299, %union.tree_node* %300)
  br label %sw.epilog.594

sw.bb.403:                                        ; preds = %if.end.204
  %301 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %302 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp404 = bitcast %union.tree_node* %302 to %struct.tree_exp*
  %operands405 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp404, i32 0, i32 2
  %arrayidx406 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands405, i32 0, i64 0
  %303 = load %union.tree_node*, %union.tree_node** %arrayidx406, align 8
  call void @queue_and_dump_index(%struct.dump_info* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), %union.tree_node* %303, i32 0)
  %304 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %305 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp407 = bitcast %union.tree_node* %305 to %struct.tree_exp*
  %operands408 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp407, i32 0, i32 2
  %arrayidx409 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands408, i32 0, i64 1
  %306 = load %union.tree_node*, %union.tree_node** %arrayidx409, align 8
  call void @queue_and_dump_index(%struct.dump_info* %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), %union.tree_node* %306, i32 0)
  %307 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %308 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %307, %union.tree_node* %308)
  br label %sw.epilog.594

sw.bb.410:                                        ; preds = %if.end.204
  %309 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %310 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %309, %union.tree_node* %310)
  %311 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %312 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp411 = bitcast %union.tree_node* %312 to %struct.tree_exp*
  %operands412 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp411, i32 0, i32 2
  %arrayidx413 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands412, i32 0, i64 0
  %313 = load %union.tree_node*, %union.tree_node** %arrayidx413, align 8
  call void @queue_and_dump_index(%struct.dump_info* %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), %union.tree_node* %313, i32 0)
  %314 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %315 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp414 = bitcast %union.tree_node* %315 to %struct.tree_exp*
  %operands415 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp414, i32 0, i32 2
  %arrayidx416 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands415, i32 0, i64 1
  %316 = load %union.tree_node*, %union.tree_node** %arrayidx416, align 8
  call void @queue_and_dump_index(%struct.dump_info* %314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %316, i32 0)
  %317 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %318 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %317, %union.tree_node* %318)
  br label %sw.epilog.594

sw.bb.417:                                        ; preds = %if.end.204
  %319 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %320 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %319, %union.tree_node* %320)
  %321 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %322 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp418 = bitcast %union.tree_node* %322 to %struct.tree_exp*
  %operands419 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp418, i32 0, i32 2
  %arrayidx420 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands419, i32 0, i64 0
  %323 = load %union.tree_node*, %union.tree_node** %arrayidx420, align 8
  call void @queue_and_dump_index(%struct.dump_info* %321, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %323, i32 0)
  %324 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %325 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %324, %union.tree_node* %325)
  br label %sw.epilog.594

sw.bb.421:                                        ; preds = %if.end.204
  %326 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %327 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %326, %union.tree_node* %327)
  %328 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %329 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp422 = bitcast %union.tree_node* %329 to %struct.tree_exp*
  %operands423 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp422, i32 0, i32 2
  %arrayidx424 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands423, i32 0, i64 0
  %330 = load %union.tree_node*, %union.tree_node** %arrayidx424, align 8
  call void @queue_and_dump_index(%struct.dump_info* %328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), %union.tree_node* %330, i32 0)
  %331 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %332 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %331, %union.tree_node* %332)
  br label %sw.epilog.594

sw.bb.425:                                        ; preds = %if.end.204
  %333 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %334 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %333, %union.tree_node* %334)
  %335 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %336 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp426 = bitcast %union.tree_node* %336 to %struct.tree_exp*
  %operands427 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp426, i32 0, i32 2
  %arrayidx428 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands427, i32 0, i64 1
  %337 = load %union.tree_node*, %union.tree_node** %arrayidx428, align 8
  call void @queue_and_dump_index(%struct.dump_info* %335, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %337, i32 0)
  %338 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %339 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp429 = bitcast %union.tree_node* %339 to %struct.tree_exp*
  %operands430 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp429, i32 0, i32 2
  %arrayidx431 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands430, i32 0, i64 0
  %340 = load %union.tree_node*, %union.tree_node** %arrayidx431, align 8
  call void @queue_and_dump_index(%struct.dump_info* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %340, i32 0)
  %341 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %342 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %341, %union.tree_node* %342)
  br label %sw.epilog.594

sw.bb.432:                                        ; preds = %if.end.204
  %343 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %344 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %343, %union.tree_node* %344)
  %345 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %346 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp433 = bitcast %union.tree_node* %346 to %struct.tree_exp*
  %operands434 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp433, i32 0, i32 2
  %arrayidx435 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands434, i32 0, i64 0
  %347 = load %union.tree_node*, %union.tree_node** %arrayidx435, align 8
  call void @queue_and_dump_index(%struct.dump_info* %345, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %347, i32 0)
  %348 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %349 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %348, %union.tree_node* %349)
  br label %sw.epilog.594

sw.bb.436:                                        ; preds = %if.end.204
  %350 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %351 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %350, %union.tree_node* %351)
  %352 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %353 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp437 = bitcast %union.tree_node* %353 to %struct.tree_exp*
  %operands438 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp437, i32 0, i32 2
  %arrayidx439 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands438, i32 0, i64 0
  %354 = load %union.tree_node*, %union.tree_node** %arrayidx439, align 8
  call void @queue_and_dump_index(%struct.dump_info* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %union.tree_node* %354, i32 0)
  %355 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %356 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp440 = bitcast %union.tree_node* %356 to %struct.tree_exp*
  %operands441 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp440, i32 0, i32 2
  %arrayidx442 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands441, i32 0, i64 1
  %357 = load %union.tree_node*, %union.tree_node** %arrayidx442, align 8
  call void @queue_and_dump_index(%struct.dump_info* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %357, i32 0)
  %358 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %359 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp443 = bitcast %union.tree_node* %359 to %struct.tree_exp*
  %operands444 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp443, i32 0, i32 2
  %arrayidx445 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands444, i32 0, i64 2
  %360 = load %union.tree_node*, %union.tree_node** %arrayidx445, align 8
  call void @queue_and_dump_index(%struct.dump_info* %358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %360, i32 0)
  %361 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %362 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp446 = bitcast %union.tree_node* %362 to %struct.tree_exp*
  %operands447 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp446, i32 0, i32 2
  %arrayidx448 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands447, i32 0, i64 3
  %363 = load %union.tree_node*, %union.tree_node** %arrayidx448, align 8
  call void @queue_and_dump_index(%struct.dump_info* %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %363, i32 0)
  %364 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %365 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %364, %union.tree_node* %365)
  br label %sw.epilog.594

sw.bb.449:                                        ; preds = %if.end.204
  %366 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %367 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %366, %union.tree_node* %367)
  %368 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %369 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp450 = bitcast %union.tree_node* %369 to %struct.tree_exp*
  %operands451 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp450, i32 0, i32 2
  %arrayidx452 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands451, i32 0, i64 0
  %370 = load %union.tree_node*, %union.tree_node** %arrayidx452, align 8
  call void @queue_and_dump_index(%struct.dump_info* %368, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), %union.tree_node* %370, i32 0)
  %371 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %372 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %371, %union.tree_node* %372)
  br label %sw.epilog.594

sw.bb.453:                                        ; preds = %if.end.204
  %373 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %374 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %373, %union.tree_node* %374)
  %375 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %376 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp454 = bitcast %union.tree_node* %376 to %struct.tree_exp*
  %operands455 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp454, i32 0, i32 2
  %arrayidx456 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands455, i32 0, i64 0
  %377 = load %union.tree_node*, %union.tree_node** %arrayidx456, align 8
  call void @queue_and_dump_index(%struct.dump_info* %375, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %377, i32 0)
  %378 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %379 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp457 = bitcast %union.tree_node* %379 to %struct.tree_exp*
  %operands458 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp457, i32 0, i32 2
  %arrayidx459 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands458, i32 0, i64 1
  %380 = load %union.tree_node*, %union.tree_node** %arrayidx459, align 8
  call void @queue_and_dump_index(%struct.dump_info* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), %union.tree_node* %380, i32 0)
  %381 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %382 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp460 = bitcast %union.tree_node* %382 to %struct.tree_exp*
  %operands461 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp460, i32 0, i32 2
  %arrayidx462 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands461, i32 0, i64 2
  %383 = load %union.tree_node*, %union.tree_node** %arrayidx462, align 8
  call void @queue_and_dump_index(%struct.dump_info* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), %union.tree_node* %383, i32 0)
  %384 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %385 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %384, %union.tree_node* %385)
  br label %sw.epilog.594

sw.bb.463:                                        ; preds = %if.end.204
  %386 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %387 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %386, %union.tree_node* %387)
  %388 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %389 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp464 = bitcast %union.tree_node* %389 to %struct.tree_exp*
  %operands465 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp464, i32 0, i32 2
  %arrayidx466 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands465, i32 0, i64 0
  %390 = load %union.tree_node*, %union.tree_node** %arrayidx466, align 8
  call void @queue_and_dump_index(%struct.dump_info* %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), %union.tree_node* %390, i32 0)
  %391 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %392 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %391, %union.tree_node* %392)
  br label %sw.epilog.594

sw.bb.467:                                        ; preds = %if.end.204
  %393 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %394 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %393, %union.tree_node* %394)
  %395 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %396 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp468 = bitcast %union.tree_node* %396 to %struct.tree_exp*
  %operands469 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp468, i32 0, i32 2
  %arrayidx470 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands469, i32 0, i64 0
  %397 = load %union.tree_node*, %union.tree_node** %arrayidx470, align 8
  call void @queue_and_dump_index(%struct.dump_info* %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %397, i32 0)
  %398 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %399 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %398, %union.tree_node* %399)
  br label %sw.epilog.594

sw.bb.471:                                        ; preds = %if.end.204
  %400 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %401 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %400, %union.tree_node* %401)
  %402 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %403 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp472 = bitcast %union.tree_node* %403 to %struct.tree_exp*
  %operands473 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp472, i32 0, i32 2
  %arrayidx474 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands473, i32 0, i64 0
  %404 = load %union.tree_node*, %union.tree_node** %arrayidx474, align 8
  call void @queue_and_dump_index(%struct.dump_info* %402, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %404, i32 0)
  %405 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %406 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp475 = bitcast %union.tree_node* %406 to %struct.tree_exp*
  %operands476 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp475, i32 0, i32 2
  %arrayidx477 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands476, i32 0, i64 1
  %407 = load %union.tree_node*, %union.tree_node** %arrayidx477, align 8
  call void @queue_and_dump_index(%struct.dump_info* %405, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %407, i32 0)
  %408 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %409 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %408, %union.tree_node* %409)
  br label %sw.epilog.594

sw.bb.478:                                        ; preds = %if.end.204
  %410 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %411 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %410, %union.tree_node* %411)
  %412 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %413 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp479 = bitcast %union.tree_node* %413 to %struct.tree_exp*
  %operands480 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp479, i32 0, i32 2
  %arrayidx481 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands480, i32 0, i64 0
  %414 = load %union.tree_node*, %union.tree_node** %arrayidx481, align 8
  call void @queue_and_dump_index(%struct.dump_info* %412, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %414, i32 0)
  %415 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %416 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp482 = bitcast %union.tree_node* %416 to %struct.tree_exp*
  %operands483 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp482, i32 0, i32 2
  %arrayidx484 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands483, i32 0, i64 1
  %417 = load %union.tree_node*, %union.tree_node** %arrayidx484, align 8
  call void @queue_and_dump_index(%struct.dump_info* %415, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %417, i32 0)
  %418 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %419 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %418, %union.tree_node* %419)
  br label %sw.epilog.594

sw.bb.485:                                        ; preds = %if.end.204
  %420 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %421 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_stmt(%struct.dump_info* %420, %union.tree_node* %421)
  %422 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common486 = bitcast %union.tree_node* %422 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common486, i32 0, i32 2
  %bf.load487 = load i32, i32* %lang_flag_0, align 8
  %bf.lshr488 = lshr i32 %bf.load487, 24
  %bf.clear489 = and i32 %bf.lshr488, 1
  %tobool490 = icmp ne i32 %bf.clear489, 0
  br i1 %tobool490, label %if.then.491, label %if.else.492

if.then.491:                                      ; preds = %sw.bb.485
  %423 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %423, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.493

if.else.492:                                      ; preds = %sw.bb.485
  %424 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %424, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.493

if.end.493:                                       ; preds = %if.else.492, %if.then.491
  %425 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp494 = bitcast %union.tree_node* %425 to %struct.tree_exp*
  %operands495 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp494, i32 0, i32 2
  %arrayidx496 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands495, i32 0, i64 0
  %426 = load %union.tree_node*, %union.tree_node** %arrayidx496, align 8
  %cmp497 = icmp eq %union.tree_node* %426, null
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %if.end.493
  %427 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.499, %if.end.493
  %428 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common501 = bitcast %union.tree_node* %428 to %struct.tree_common*
  %lang_flag_3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common501, i32 0, i32 2
  %bf.load502 = load i32, i32* %lang_flag_3, align 8
  %bf.lshr503 = lshr i32 %bf.load502, 27
  %bf.clear504 = and i32 %bf.lshr503, 1
  %tobool505 = icmp ne i32 %bf.clear504, 0
  br i1 %tobool505, label %if.end.507, label %if.then.506

if.then.506:                                      ; preds = %if.end.500
  %429 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_string(%struct.dump_info* %429, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.506, %if.end.500
  %430 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %431 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @dump_next_stmt(%struct.dump_info* %430, %union.tree_node* %431)
  br label %sw.epilog.594

sw.bb.508:                                        ; preds = %if.end.204
  %432 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst = bitcast %union.tree_node* %432 to %struct.tree_int_cst*
  %int_cst509 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst509, i32 0, i32 1
  %433 = load i64, i64* %high, align 8
  %tobool510 = icmp ne i64 %433, 0
  br i1 %tobool510, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %sw.bb.508
  %434 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %435 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst512 = bitcast %union.tree_node* %435 to %struct.tree_int_cst*
  %int_cst513 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst512, i32 0, i32 2
  %high514 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst513, i32 0, i32 1
  %436 = load i64, i64* %high514, align 8
  %conv515 = trunc i64 %436 to i32
  call void @dump_int(%struct.dump_info* %434, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 %conv515)
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.511, %sw.bb.508
  %437 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %438 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst517 = bitcast %union.tree_node* %438 to %struct.tree_int_cst*
  %int_cst518 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst517, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst518, i32 0, i32 0
  %439 = load i64, i64* %low, align 8
  %conv519 = trunc i64 %439 to i32
  call void @dump_int(%struct.dump_info* %437, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 %conv519)
  br label %sw.epilog.594

sw.bb.520:                                        ; preds = %if.end.204
  %440 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream521 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %440, i32 0, i32 0
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %stream521, align 8
  %442 = load %union.tree_node*, %union.tree_node** %t, align 8
  %string = bitcast %union.tree_node* %442 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %443 = load i8*, i8** %pointer, align 8
  %call522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %441, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* %443)
  %444 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %445 = load %union.tree_node*, %union.tree_node** %t, align 8
  %string523 = bitcast %union.tree_node* %445 to %struct.tree_string*
  %length524 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string523, i32 0, i32 2
  %446 = load i32, i32* %length524, align 4
  call void @dump_int(%struct.dump_info* %444, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %446)
  br label %sw.epilog.594

sw.bb.525:                                        ; preds = %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204
  %447 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %448 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp526 = bitcast %union.tree_node* %448 to %struct.tree_exp*
  %operands527 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp526, i32 0, i32 2
  %arrayidx528 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands527, i32 0, i64 0
  %449 = load %union.tree_node*, %union.tree_node** %arrayidx528, align 8
  call void @queue_and_dump_index(%struct.dump_info* %447, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %union.tree_node* %449, i32 0)
  br label %sw.epilog.594

sw.bb.529:                                        ; preds = %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204, %if.end.204
  %450 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %451 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp530 = bitcast %union.tree_node* %451 to %struct.tree_exp*
  %operands531 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp530, i32 0, i32 2
  %arrayidx532 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands531, i32 0, i64 0
  %452 = load %union.tree_node*, %union.tree_node** %arrayidx532, align 8
  call void @queue_and_dump_index(%struct.dump_info* %450, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %union.tree_node* %452, i32 0)
  %453 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %454 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp533 = bitcast %union.tree_node* %454 to %struct.tree_exp*
  %operands534 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp533, i32 0, i32 2
  %arrayidx535 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands534, i32 0, i64 1
  %455 = load %union.tree_node*, %union.tree_node** %arrayidx535, align 8
  call void @queue_and_dump_index(%struct.dump_info* %453, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %union.tree_node* %455, i32 0)
  br label %sw.epilog.594

sw.bb.536:                                        ; preds = %if.end.204
  %456 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %457 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp537 = bitcast %union.tree_node* %457 to %struct.tree_exp*
  %operands538 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp537, i32 0, i32 2
  %arrayidx539 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands538, i32 0, i64 0
  %458 = load %union.tree_node*, %union.tree_node** %arrayidx539, align 8
  call void @queue_and_dump_index(%struct.dump_info* %456, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %union.tree_node* %458, i32 0)
  %459 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %460 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp540 = bitcast %union.tree_node* %460 to %struct.tree_exp*
  %operands541 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp540, i32 0, i32 2
  %arrayidx542 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands541, i32 0, i64 1
  %461 = load %union.tree_node*, %union.tree_node** %arrayidx542, align 8
  call void @queue_and_dump_index(%struct.dump_info* %459, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %union.tree_node* %461, i32 0)
  %462 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %463 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp543 = bitcast %union.tree_node* %463 to %struct.tree_exp*
  %operands544 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp543, i32 0, i32 2
  %arrayidx545 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands544, i32 0, i64 2
  %464 = load %union.tree_node*, %union.tree_node** %arrayidx545, align 8
  call void @queue_and_dump_index(%struct.dump_info* %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), %union.tree_node* %464, i32 0)
  br label %sw.epilog.594

sw.bb.546:                                        ; preds = %if.end.204
  %465 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %466 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp547 = bitcast %union.tree_node* %466 to %struct.tree_exp*
  %operands548 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp547, i32 0, i32 2
  %arrayidx549 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands548, i32 0, i64 0
  %467 = load %union.tree_node*, %union.tree_node** %arrayidx549, align 8
  call void @queue_and_dump_index(%struct.dump_info* %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), %union.tree_node* %467, i32 0)
  %468 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %469 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp550 = bitcast %union.tree_node* %469 to %struct.tree_exp*
  %operands551 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp550, i32 0, i32 2
  %arrayidx552 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands551, i32 0, i64 1
  %470 = load %union.tree_node*, %union.tree_node** %arrayidx552, align 8
  call void @queue_and_dump_index(%struct.dump_info* %468, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %union.tree_node* %470, i32 0)
  br label %sw.epilog.594

sw.bb.553:                                        ; preds = %if.end.204
  %471 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %472 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp554 = bitcast %union.tree_node* %472 to %struct.tree_exp*
  %operands555 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp554, i32 0, i32 2
  %arrayidx556 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands555, i32 0, i64 1
  %473 = load %union.tree_node*, %union.tree_node** %arrayidx556, align 8
  call void @queue_and_dump_index(%struct.dump_info* %471, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), %union.tree_node* %473, i32 0)
  br label %sw.epilog.594

sw.bb.557:                                        ; preds = %if.end.204
  %474 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %475 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp558 = bitcast %union.tree_node* %475 to %struct.tree_exp*
  %operands559 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp558, i32 0, i32 2
  %arrayidx560 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands559, i32 0, i64 0
  %476 = load %union.tree_node*, %union.tree_node** %arrayidx560, align 8
  call void @queue_and_dump_index(%struct.dump_info* %474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), %union.tree_node* %476, i32 0)
  br label %sw.epilog.594

sw.bb.561:                                        ; preds = %if.end.204
  %477 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %478 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp562 = bitcast %union.tree_node* %478 to %struct.tree_exp*
  %operands563 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp562, i32 0, i32 2
  %arrayidx564 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands563, i32 0, i64 0
  %479 = load %union.tree_node*, %union.tree_node** %arrayidx564, align 8
  call void @queue_and_dump_index(%struct.dump_info* %477, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), %union.tree_node* %479, i32 0)
  %480 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %481 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp565 = bitcast %union.tree_node* %481 to %struct.tree_exp*
  %operands566 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp565, i32 0, i32 2
  %arrayidx567 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands566, i32 0, i64 1
  %482 = load %union.tree_node*, %union.tree_node** %arrayidx567, align 8
  call void @queue_and_dump_index(%struct.dump_info* %480, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %482, i32 0)
  br label %sw.epilog.594

sw.bb.568:                                        ; preds = %if.end.204
  %483 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %484 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp569 = bitcast %union.tree_node* %484 to %struct.tree_exp*
  %operands570 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp569, i32 0, i32 2
  %arrayidx571 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands570, i32 0, i64 0
  %485 = load %union.tree_node*, %union.tree_node** %arrayidx571, align 8
  call void @queue_and_dump_index(%struct.dump_info* %483, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %union.tree_node* %485, i32 0)
  br label %sw.epilog.594

sw.bb.572:                                        ; preds = %if.end.204
  %486 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %487 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp573 = bitcast %union.tree_node* %487 to %struct.tree_exp*
  %operands574 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp573, i32 0, i32 2
  %arrayidx575 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands574, i32 0, i64 0
  %488 = load %union.tree_node*, %union.tree_node** %arrayidx575, align 8
  call void @queue_and_dump_index(%struct.dump_info* %486, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), %union.tree_node* %488, i32 0)
  br label %sw.epilog.594

sw.bb.576:                                        ; preds = %if.end.204
  %489 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %490 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp577 = bitcast %union.tree_node* %490 to %struct.tree_exp*
  %operands578 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp577, i32 0, i32 2
  %arrayidx579 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands578, i32 0, i64 0
  %491 = load %union.tree_node*, %union.tree_node** %arrayidx579, align 8
  call void @queue_and_dump_index(%struct.dump_info* %489, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), %union.tree_node* %491, i32 0)
  %492 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %493 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp580 = bitcast %union.tree_node* %493 to %struct.tree_exp*
  %operands581 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp580, i32 0, i32 2
  %arrayidx582 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands581, i32 0, i64 1
  %494 = load %union.tree_node*, %union.tree_node** %arrayidx582, align 8
  call void @queue_and_dump_index(%struct.dump_info* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %union.tree_node* %494, i32 0)
  %495 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %496 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp583 = bitcast %union.tree_node* %496 to %struct.tree_exp*
  %operands584 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp583, i32 0, i32 2
  %arrayidx585 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands584, i32 0, i64 2
  %497 = load %union.tree_node*, %union.tree_node** %arrayidx585, align 8
  call void @queue_and_dump_index(%struct.dump_info* %495, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), %union.tree_node* %497, i32 0)
  %498 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %499 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp586 = bitcast %union.tree_node* %499 to %struct.tree_exp*
  %operands587 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp586, i32 0, i32 2
  %arrayidx588 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands587, i32 0, i64 3
  %500 = load %union.tree_node*, %union.tree_node** %arrayidx588, align 8
  call void @queue_and_dump_index(%struct.dump_info* %498, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %union.tree_node* %500, i32 0)
  br label %sw.epilog.594

sw.bb.589:                                        ; preds = %if.end.204
  %501 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %502 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp590 = bitcast %union.tree_node* %502 to %struct.tree_exp*
  %operands591 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp590, i32 0, i32 2
  %arrayidx592 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands591, i32 0, i64 0
  %503 = load %union.tree_node*, %union.tree_node** %arrayidx592, align 8
  call void @queue_and_dump_index(%struct.dump_info* %501, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), %union.tree_node* %503, i32 0)
  br label %sw.epilog.594

sw.default.593:                                   ; preds = %if.end.204
  br label %sw.epilog.594

sw.epilog.594:                                    ; preds = %sw.default.593, %sw.bb.589, %sw.bb.576, %sw.bb.572, %sw.bb.568, %sw.bb.561, %sw.bb.557, %sw.bb.553, %sw.bb.546, %sw.bb.536, %sw.bb.529, %sw.bb.525, %sw.bb.520, %if.end.516, %if.end.507, %sw.bb.478, %sw.bb.471, %sw.bb.467, %sw.bb.463, %sw.bb.453, %sw.bb.449, %sw.bb.436, %sw.bb.432, %sw.bb.425, %sw.bb.421, %sw.bb.417, %sw.bb.410, %sw.bb.403, %sw.bb.402, %if.end.389, %if.end.381, %if.end.353, %sw.bb.282, %if.end.276, %sw.bb.262, %sw.bb.257, %sw.bb.251, %sw.bb.248, %sw.bb.243, %if.end.242, %for.end, %sw.bb.208, %sw.bb.205
  br label %done

done:                                             ; preds = %sw.epilog.594, %if.then.203, %if.end.52
  %504 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %call595 = call i32 @dump_flag(%struct.dump_info* %504, i32 1, %union.tree_node* null)
  %tobool596 = icmp ne i32 %call595, 0
  br i1 %tobool596, label %if.then.597, label %if.end.598

if.then.597:                                      ; preds = %done
  %505 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %506 = load %union.tree_node*, %union.tree_node** %t, align 8
  %507 = bitcast %union.tree_node* %506 to i8*
  call void @dump_pointer(%struct.dump_info* %505, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* %507)
  br label %if.end.598

if.end.598:                                       ; preds = %if.then.597, %done
  %508 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream599 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %508, i32 0, i32 0
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** %stream599, align 8
  %call600 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %509, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0))
  ret void
}

declare void @splay_tree_delete(%struct.splay_tree_s*) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @dump_begin(i32 %phase, i32* %flag_ptr) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %phase.addr = alloca i32, align 4
  %flag_ptr.addr = alloca i32*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %name = alloca i8*, align 8
  store i32 %phase, i32* %phase.addr, align 4
  store i32* %flag_ptr, i32** %flag_ptr.addr, align 8
  %0 = load i32, i32* %phase.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom
  %state = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %state, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @dump_base_name, align 8
  %3 = load i32, i32* %phase.addr, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom1
  %suffix = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %suffix, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* %2, i8* %4, i8* null)
  store i8* %call, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %phase.addr, align 4
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom3
  %state5 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx4, i32 0, i32 3
  %7 = load i32, i32* %state5, align 4
  %cmp = icmp slt i32 %7, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)
  %call6 = call %struct._IO_FILE* @fopen(i8* %5, i8* %cond)
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %stream, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool7 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %9 = load i8*, i8** %name, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %9)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %phase.addr, align 4
  %idxprom9 = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom9
  %state11 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx10, i32 0, i32 3
  store i32 1, i32* %state11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.8
  %11 = load i8*, i8** %name, align 8
  call void @free(i8* %11) #6
  %12 = load i32*, i32** %flag_ptr.addr, align 8
  %tobool13 = icmp ne i32* %12, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %13 = load i32, i32* %phase.addr, align 4
  %idxprom15 = zext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom15
  %flags = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx16, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %15 = load i32*, i32** %flag_ptr.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  store %struct._IO_FILE* %16, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %17
}

declare noalias i8* @concat(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @dump_enabled_p(i32 %phase) #0 {
entry:
  %phase.addr = alloca i32, align 4
  store i32 %phase, i32* %phase.addr, align 4
  %0 = load i32, i32* %phase.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom
  %state = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %state, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @dump_flag_name(i32 %phase) #0 {
entry:
  %phase.addr = alloca i32, align 4
  store i32 %phase, i32* %phase.addr, align 4
  %0 = load i32, i32* %phase.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom
  %swtch = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 1
  %1 = load i8*, i8** %swtch, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @dump_end(i32 %phase, %struct._IO_FILE* %stream) #0 {
entry:
  %phase.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i32 %phase, i32* %phase.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @dump_switch_p(i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %ix = alloca i32, align 4
  %option_value = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %flags = alloca i32, align 4
  %option_ptr = alloca %struct.dump_option_value_info*, align 8
  %end_ptr = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %0 = load i32, i32* %ix, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i32, i32* %ix, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom
  %swtch = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %swtch, align 8
  %4 = load i32, i32* %ix, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom1
  %swtch3 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx2, i32 0, i32 1
  %5 = load i8*, i8** %swtch3, align 8
  %call = call i64 @strlen(i8* %5) #5
  %call4 = call i32 @strncmp(i8* %1, i8* %3, i64 %call) #5
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i8*, i8** %arg.addr, align 8
  %7 = load i32, i32* %ix, align 4
  %idxprom5 = zext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom5
  %swtch7 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx6, i32 0, i32 1
  %8 = load i8*, i8** %swtch7, align 8
  %call8 = call i64 @strlen(i8* %8) #5
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %add.ptr, %cond.false ]
  store i8* %cond, i8** %option_value, align 8
  %tobool9 = icmp ne i8* %cond, null
  br i1 %tobool9, label %if.then, label %if.end.45

if.then:                                          ; preds = %cond.end
  %9 = load i8*, i8** %option_value, align 8
  store i8* %9, i8** %ptr, align 8
  store i32 0, i32* %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %found, %if.then
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool10 = icmp ne i8 %11, 0
  br i1 %tobool10, label %while.body, label %while.end.39

while.body:                                       ; preds = %while.cond
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %while.body
  %12 = load i8*, i8** %ptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv, 45
  br i1 %cmp12, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %while.cond.11
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond.11

while.end:                                        ; preds = %while.cond.11
  %15 = load i8*, i8** %ptr, align 8
  %call15 = call i8* @strchr(i8* %15, i32 45) #5
  store i8* %call15, i8** %end_ptr, align 8
  %16 = load i8*, i8** %end_ptr, align 8
  %tobool16 = icmp ne i8* %16, null
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %while.end
  %17 = load i8*, i8** %ptr, align 8
  %18 = load i8*, i8** %ptr, align 8
  %call18 = call i64 @strlen(i8* %18) #5
  %add.ptr19 = getelementptr inbounds i8, i8* %17, i64 %call18
  store i8* %add.ptr19, i8** %end_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %while.end
  %19 = load i8*, i8** %end_ptr, align 8
  %20 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv20, i32* %length, align 4
  store %struct.dump_option_value_info* getelementptr inbounds ([4 x %struct.dump_option_value_info], [4 x %struct.dump_option_value_info]* @dump_options, i32 0, i32 0), %struct.dump_option_value_info** %option_ptr, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.end
  %21 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %option_ptr, align 8
  %name = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %21, i32 0, i32 0
  %22 = load i8*, i8** %name, align 8
  %tobool22 = icmp ne i8* %22, null
  br i1 %tobool22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %23 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %option_ptr, align 8
  %name24 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %23, i32 0, i32 0
  %24 = load i8*, i8** %name24, align 8
  %call25 = call i64 @strlen(i8* %24) #5
  %25 = load i32, i32* %length, align 4
  %conv26 = zext i32 %25 to i64
  %cmp27 = icmp eq i64 %call25, %conv26
  br i1 %cmp27, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body.23
  %26 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %option_ptr, align 8
  %name29 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %26, i32 0, i32 0
  %27 = load i8*, i8** %name29, align 8
  %28 = load i8*, i8** %ptr, align 8
  %29 = load i32, i32* %length, align 4
  %conv30 = zext i32 %29 to i64
  %call31 = call i32 @memcmp(i8* %27, i8* %28, i64 %conv30) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true
  %30 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %option_ptr, align 8
  %value = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %30, i32 0, i32 1
  %31 = load i32, i32* %value, align 4
  %32 = load i32, i32* %flags, align 4
  %or = or i32 %32, %31
  store i32 %or, i32* %flags, align 4
  br label %found

if.end.34:                                        ; preds = %land.lhs.true, %for.body.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %33 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %option_ptr, align 8
  %incdec.ptr35 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %33, i32 1
  store %struct.dump_option_value_info* %incdec.ptr35, %struct.dump_option_value_info** %option_ptr, align 8
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %34 = load i32, i32* %length, align 4
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i32, i32* %ix, align 4
  %idxprom36 = zext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom36
  %swtch38 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx37, i32 0, i32 1
  %37 = load i8*, i8** %swtch38, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %34, i8* %35, i8* %37)
  br label %found

found:                                            ; preds = %for.end, %if.then.33
  %38 = load i8*, i8** %end_ptr, align 8
  store i8* %38, i8** %ptr, align 8
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  %39 = load i32, i32* %ix, align 4
  %idxprom40 = zext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom40
  %state = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx41, i32 0, i32 3
  store i32 -1, i32* %state, align 4
  %40 = load i32, i32* %flags, align 4
  %41 = load i32, i32* %ix, align 4
  %idxprom42 = zext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [5 x %struct.dump_file_info], [5 x %struct.dump_file_info]* @dump_files, i32 0, i64 %idxprom42
  %flags44 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx43, i32 0, i32 2
  store i32 %40, i32* %flags44, align 4
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %cond.end
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %42 = load i32, i32* %ix, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.47, %while.end.39
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare void @warning(i8*, ...) #1

declare noalias i8* @xmalloc(i64) #1

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @dump_new_line(%struct.dump_info* %di) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0))
  %2 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %2, i32 0, i32 4
  store i32 25, i32* %column, align 4
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @dump_string_field(%struct.dump_info* %di, i8* %field, i8* %string) #0 {
entry:
  %di.addr = alloca %struct.dump_info*, align 8
  %field.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  store %struct.dump_info* %di, %struct.dump_info** %di.addr, align 8
  store i8* %field, i8** %field.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  call void @dump_maybe_newline(%struct.dump_info* %0)
  %1 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %stream = getelementptr inbounds %struct.dump_info, %struct.dump_info* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %3 = load i8*, i8** %field.addr, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load i8*, i8** %string.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #5
  %cmp = icmp ugt i64 %call1, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %string.addr, align 8
  %call2 = call i64 @strlen(i8* %6) #5
  %add = add i64 6, %call2
  %add3 = add i64 %add, 1
  %7 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 4
  %8 = load i32, i32* %column, align 4
  %conv = zext i32 %8 to i64
  %add4 = add i64 %conv, %add3
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %column, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.dump_info*, %struct.dump_info** %di.addr, align 8
  %column6 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %9, i32 0, i32 4
  %10 = load i32, i32* %column6, align 4
  %add7 = add i32 %10, 14
  store i32 %add7, i32* %column6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %union.tree_node* @bit_position(%union.tree_node*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
