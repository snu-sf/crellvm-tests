; ModuleID = 'graph.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@graph_dump_format = external global i32, align 4
@graph_ext = internal constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)], align 16
@basic_block_info = external global %struct.varray_head_tag*, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@n_basic_blocks = external global i32, align 4
@dump_for_graph = external global i32, align 4
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"graph: {\0Aport_sharing: no\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"graph.c\00", align 1
@__FUNCTION__.clean_graph_dump_file = private unnamed_addr constant [22 x i8] c"clean_graph_dump_file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@__FUNCTION__.finish_graph_dump_file = private unnamed_addr constant [23 x i8] c"finish_graph_dump_file\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".vcg\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"graph: { title: \22%s\22\0Afolding: 1\0Ahidden: 2\0Anode: { title: \22%s.0\22 }\0A\00", align 1
@cfun = external global %struct.function*, align 8
@.str.10 = private unnamed_addr constant [77 x i8] c"graph: {\0Atitle: \22%s.BB%d\22\0Afolding: 1\0Acolor: lightblue\0Alabel: \22basic block %d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\22\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"color: red \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"color: blue \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"color: green \00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"edge: { sourcename: \22%s.%d\22 targetname: \22%s.%d\22 %s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"class: %d \00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"edge: { sourcename: \22%s.0\22 targetname: \22%s.%d\22 }\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"node: {\0A  title: \22%s.%d\22\0A  color: %s\0A  label: \22%s %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"darkgrey\0A  shape: ellipse\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@rtx_name = external constant [153 x i8*], align 16
@note_insn_name = external constant [22 x i8*], align 16
@.str.24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@rtx_class = external constant [153 x i8], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"\22\0A}\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"node: { title: \22%s.999999\22 label: \22END\22 }\0A}\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print_rtl_graph_with_bb(i8* %base, i8* %suffix, %struct.rtx_def* %rtx_first) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %rtx_first.addr = alloca %struct.rtx_def*, align 8
  %tmp_rtx = alloca %struct.rtx_def*, align 8
  %namelen = alloca i64, align 8
  %suffixlen = alloca i64, align 8
  %extlen = alloca i64, align 8
  %buf = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %max_uid = alloca i32, align 4
  %start = alloca i32*, align 8
  %end = alloca i32*, align 8
  %in_bb_p = alloca i32*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %edge_printed = alloca i32, align 4
  %next_insn = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %block_head = alloca %struct.rtx_def*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store %struct.rtx_def* %rtx_first, %struct.rtx_def** %rtx_first.addr, align 8
  %0 = load i8*, i8** %base.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %namelen, align 8
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %suffixlen, align 8
  %2 = load i32, i32* @graph_dump_format, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %3) #6
  %add = add i64 %call2, 1
  store i64 %add, i64* %extlen, align 8
  %4 = load i64, i64* %namelen, align 8
  %5 = load i64, i64* %suffixlen, align 8
  %add3 = add i64 %4, %5
  %6 = load i64, i64* %extlen, align 8
  %add4 = add i64 %add3, %6
  %7 = alloca i8, i64 %add4
  store i8* %7, i8** %buf, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %cmp = icmp eq %struct.varray_head_tag* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %buf, align 8
  %10 = load i8*, i8** %base.addr, align 8
  %11 = load i64, i64* %namelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %11, i32 1, i1 false)
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %namelen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8*, i8** %suffix.addr, align 8
  %15 = load i64, i64* %suffixlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %14, i64 %15, i32 1, i1 false)
  %16 = load i8*, i8** %buf, align 8
  %17 = load i64, i64* %namelen, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load i64, i64* %suffixlen, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 %18
  %19 = load i32, i32* @graph_dump_format, align 4
  %idxprom7 = zext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom7
  %20 = load i8*, i8** %arrayidx8, align 8
  %21 = load i64, i64* %extlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr6, i8* %20, i64 %21, i32 1, i1 false)
  %22 = load i8*, i8** %buf, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %return

if.end.12:                                        ; preds = %if.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx_first.addr, align 8
  %cmp13 = icmp eq %struct.rtx_def* %24, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.225

if.else:                                          ; preds = %if.end.12
  %call16 = call i32 @get_max_uid()
  store i32 %call16, i32* %max_uid, align 4
  %26 = load i32, i32* %max_uid, align 4
  %conv = sext i32 %26 to i64
  %mul = mul i64 %conv, 4
  %call17 = call noalias i8* @xmalloc(i64 %mul)
  %27 = bitcast i8* %call17 to i32*
  store i32* %27, i32** %start, align 8
  %28 = load i32, i32* %max_uid, align 4
  %conv18 = sext i32 %28 to i64
  %mul19 = mul i64 %conv18, 4
  %call20 = call noalias i8* @xmalloc(i64 %mul19)
  %29 = bitcast i8* %call20 to i32*
  store i32* %29, i32** %end, align 8
  %30 = load i32, i32* %max_uid, align 4
  %conv21 = sext i32 %30 to i64
  %mul22 = mul i64 %conv21, 4
  %call23 = call noalias i8* @xmalloc(i64 %mul22)
  %31 = bitcast i8* %call23 to i32*
  store i32* %31, i32** %in_bb_p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %max_uid, align 4
  %cmp24 = icmp slt i32 %32, %33
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %34 to i64
  %35 = load i32*, i32** %end, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %35, i64 %idxprom26
  store i32 -1, i32* %arrayidx27, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load i32*, i32** %start, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  store i32 -1, i32* %arrayidx29, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load i32*, i32** %in_bb_p, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 %idxprom30
  store i32 0, i32* %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %41, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.74, %for.end
  %42 = load i32, i32* %i, align 4
  %cmp33 = icmp sge i32 %42, 0
  br i1 %cmp33, label %for.body.35, label %for.end.75

for.body.35:                                      ; preds = %for.cond.32
  %43 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %44, i32 0, i32 4
  %bb37 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx38 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb37, i32 0, i64 %idxprom36
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx38, align 8
  store %struct.basic_block_def* %45, %struct.basic_block_def** %bb, align 8
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %49 = load i32, i32* %rtint, align 4
  %idxprom40 = sext i32 %49 to i64
  %50 = load i32*, i32** %start, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %50, i64 %idxprom40
  store i32 %46, i32* %arrayidx41, align 4
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %end42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtint45 = bitcast %union.rtunion_def* %arrayidx44 to i32*
  %54 = load i32, i32* %rtint45, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load i32*, i32** %end, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %55, i64 %idxprom46
  store i32 %51, i32* %arrayidx47, align 4
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 0
  %57 = load %struct.rtx_def*, %struct.rtx_def** %head48, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %x, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.70, %for.body.35
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp50 = icmp ne %struct.rtx_def* %58, null
  br i1 %cmp50, label %for.body.52, label %for.end.73

for.body.52:                                      ; preds = %for.cond.49
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %60 = load i32, i32* %rtint55, align 4
  %idxprom56 = sext i32 %60 to i64
  %61 = load i32*, i32** %in_bb_p, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %61, i64 %idxprom56
  %62 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %62, 0
  %cond = select i1 %cmp58, i32 1, i32 2
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %64 = load i32, i32* %rtint62, align 4
  %idxprom63 = sext i32 %64 to i64
  %65 = load i32*, i32** %in_bb_p, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %65, i64 %idxprom63
  store i32 %cond, i32* %arrayidx64, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 1
  %68 = load %struct.rtx_def*, %struct.rtx_def** %end65, align 8
  %cmp66 = icmp eq %struct.rtx_def* %66, %68
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.52
  br label %for.end.73

if.end.69:                                        ; preds = %for.body.52
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %x, align 8
  br label %for.cond.49

for.end.73:                                       ; preds = %if.then.68, %for.cond.49
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %71 = load i32, i32* %i, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.32

for.end.75:                                       ; preds = %for.cond.32
  store i32 1, i32* @dump_for_graph, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @start_fct(%struct._IO_FILE* %72)
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx_first.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 2
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.220, %for.end.75
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %cmp80 = icmp ne %struct.rtx_def* null, %75
  br i1 %cmp80, label %for.body.82, label %for.end.224

for.body.82:                                      ; preds = %for.cond.79
  store i32 0, i32* %edge_printed, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %77 = load i32, i32* %rtint85, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load i32*, i32** %start, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 %idxprom86
  %79 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp slt i32 %79, 0
  br i1 %cmp88, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %for.body.82
  %80 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %81 = load i32, i32* %rtint92, align 4
  %idxprom93 = sext i32 %81 to i64
  %82 = load i32*, i32** %end, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %82, i64 %idxprom93
  %83 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp slt i32 %83, 0
  br i1 %cmp95, label %if.then.97, label %if.end.108

if.then.97:                                       ; preds = %land.lhs.true
  %84 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load = load i32, i32* %85, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp98 = icmp eq i32 %bf.clear, 35
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.97
  br label %for.inc.220

if.end.101:                                       ; preds = %if.then.97
  %86 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load102 = load i32, i32* %87, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 37
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.101
  br label %for.inc.220

if.end.107:                                       ; preds = %if.end.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true, %for.body.82
  %88 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtint111 = bitcast %union.rtunion_def* %arrayidx110 to i32*
  %89 = load i32, i32* %rtint111, align 4
  %idxprom112 = sext i32 %89 to i64
  %90 = load i32*, i32** %start, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %90, i64 %idxprom112
  %91 = load i32, i32* %arrayidx113, align 4
  store i32 %91, i32* %i, align 4
  %cmp114 = icmp sge i32 %91, 0
  br i1 %cmp114, label %if.then.116, label %if.end.124

if.then.116:                                      ; preds = %if.end.108
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %93 = load i32, i32* %i, align 4
  call void @start_bb(%struct._IO_FILE* %92, i32 %93)
  %94 = load i32, i32* %i, align 4
  %cmp117 = icmp eq i32 %94, 0
  br i1 %cmp117, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %if.then.116
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtint122 = bitcast %union.rtunion_def* %arrayidx121 to i32*
  %97 = load i32, i32* %rtint122, align 4
  call void @draw_edge(%struct._IO_FILE* %95, i32 0, i32 %97, i32 1, i32 0)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %if.then.116
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.108
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  call void @node_data(%struct._IO_FILE* %98, %struct.rtx_def* %99)
  %100 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %call125 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %100)
  store %struct.rtx_def* %call125, %struct.rtx_def** %next_insn, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtint128 = bitcast %union.rtunion_def* %arrayidx127 to i32*
  %102 = load i32, i32* %rtint128, align 4
  %idxprom129 = sext i32 %102 to i64
  %103 = load i32*, i32** %end, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %103, i64 %idxprom129
  %104 = load i32, i32* %arrayidx130, align 4
  store i32 %104, i32* %i, align 4
  %cmp131 = icmp sge i32 %104, 0
  br i1 %cmp131, label %if.then.133, label %if.end.176

if.then.133:                                      ; preds = %if.end.124
  %105 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %105 to i64
  %106 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data135 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %106, i32 0, i32 4
  %bb136 = bitcast %union.varray_data_tag* %data135 to [1 x %struct.basic_block_def*]*
  %arrayidx137 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb136, i32 0, i64 %idxprom134
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx137, align 8
  store %struct.basic_block_def* %107, %struct.basic_block_def** %bb, align 8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @end_bb(%struct._IO_FILE* %108)
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 5
  %110 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %110, %struct.edge_def** %e, align 8
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.174, %if.then.133
  %111 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %111, null
  br i1 %tobool, label %for.body.139, label %for.end.175

for.body.139:                                     ; preds = %for.cond.138
  %112 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 3
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp140 = icmp ne %struct.basic_block_def* %113, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp140, label %if.then.142, label %if.else.159

if.then.142:                                      ; preds = %for.body.139
  %114 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest143 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 3
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %dest143, align 8
  %head144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i32 0, i32 0
  %116 = load %struct.rtx_def*, %struct.rtx_def** %head144, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %block_head, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtint147 = bitcast %union.rtunion_def* %arrayidx146 to i32*
  %119 = load i32, i32* %rtint147, align 4
  %120 = load %struct.rtx_def*, %struct.rtx_def** %block_head, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %121 = load i32, i32* %rtint150, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %block_head, align 8
  %cmp151 = icmp ne %struct.rtx_def* %122, %123
  %conv152 = zext i1 %cmp151 to i32
  %124 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %124, i32 0, i32 6
  %125 = load i32, i32* %flags, align 4
  %and = and i32 %125, 2
  %tobool153 = icmp ne i32 %and, 0
  %cond154 = select i1 %tobool153, i32 2, i32 0
  call void @draw_edge(%struct._IO_FILE* %117, i32 %119, i32 %121, i32 %conv152, i32 %cond154)
  %126 = load %struct.rtx_def*, %struct.rtx_def** %block_head, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %cmp155 = icmp eq %struct.rtx_def* %126, %127
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.then.142
  store i32 1, i32* %edge_printed, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.then.142
  br label %if.end.173

if.else.159:                                      ; preds = %for.body.139
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtint162 = bitcast %union.rtunion_def* %arrayidx161 to i32*
  %130 = load i32, i32* %rtint162, align 4
  %131 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %cmp163 = icmp ne %struct.rtx_def* %131, null
  %conv164 = zext i1 %cmp163 to i32
  %132 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags165 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %132, i32 0, i32 6
  %133 = load i32, i32* %flags165, align 4
  %and166 = and i32 %133, 2
  %tobool167 = icmp ne i32 %and166, 0
  %cond168 = select i1 %tobool167, i32 2, i32 0
  call void @draw_edge(%struct._IO_FILE* %128, i32 %130, i32 999999, i32 %conv164, i32 %cond168)
  %134 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %cmp169 = icmp eq %struct.rtx_def* %134, null
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.else.159
  store i32 1, i32* %edge_printed, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.else.159
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.158
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %135 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %135, i32 0, i32 1
  %136 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %136, %struct.edge_def** %e, align 8
  br label %for.cond.138

for.end.175:                                      ; preds = %for.cond.138
  br label %if.end.176

if.end.176:                                       ; preds = %for.end.175, %if.end.124
  %137 = load i32, i32* %edge_printed, align 4
  %tobool177 = icmp ne i32 %137, 0
  br i1 %tobool177, label %if.end.219, label %if.then.178

if.then.178:                                      ; preds = %if.end.176
  %138 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %cmp179 = icmp eq %struct.rtx_def* %138, null
  br i1 %cmp179, label %if.then.185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.178
  %139 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %140 = bitcast %struct.rtx_def* %139 to i32*
  %bf.load181 = load i32, i32* %140, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp ne i32 %bf.clear182, 35
  br i1 %cmp183, label %if.then.185, label %if.else.194

if.then.185:                                      ; preds = %lor.lhs.false, %if.then.178
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtint188 = bitcast %union.rtunion_def* %arrayidx187 to i32*
  %143 = load i32, i32* %rtint188, align 4
  %144 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %tobool189 = icmp ne %struct.rtx_def* %144, null
  br i1 %tobool189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.185
  %145 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtint192 = bitcast %union.rtunion_def* %arrayidx191 to i32*
  %146 = load i32, i32* %rtint192, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.185
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond193 = phi i32 [ %146, %cond.true ], [ 999999, %cond.false ]
  call void @draw_edge(%struct._IO_FILE* %141, i32 %143, i32 %cond193, i32 0, i32 0)
  br label %if.end.218

if.else.194:                                      ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else.194
  %147 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 2
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  store %struct.rtx_def* %148, %struct.rtx_def** %next_insn, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %149 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %tobool198 = icmp ne %struct.rtx_def* %149, null
  br i1 %tobool198, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %150 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %bf.load199 = load i32, i32* %151, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 37
  br i1 %cmp201, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %152 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load203 = load i32, i32* %153, align 8
  %bf.clear204 = and i32 %bf.load203, 65535
  %cmp205 = icmp eq i32 %bf.clear204, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %154 = phi i1 [ true, %land.rhs ], [ %cmp205, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond
  %155 = phi i1 [ false, %do.cond ], [ %154, %lor.end ]
  br i1 %155, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtint209 = bitcast %union.rtunion_def* %arrayidx208 to i32*
  %158 = load i32, i32* %rtint209, align 4
  %159 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %tobool210 = icmp ne %struct.rtx_def* %159, null
  br i1 %tobool210, label %cond.true.211, label %cond.false.215

cond.true.211:                                    ; preds = %do.end
  %160 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtint214 = bitcast %union.rtunion_def* %arrayidx213 to i32*
  %161 = load i32, i32* %rtint214, align 4
  br label %cond.end.216

cond.false.215:                                   ; preds = %do.end
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.211
  %cond217 = phi i32 [ %161, %cond.true.211 ], [ 999999, %cond.false.215 ]
  call void @draw_edge(%struct._IO_FILE* %156, i32 %158, i32 %cond217, i32 0, i32 3)
  br label %if.end.218

if.end.218:                                       ; preds = %cond.end.216, %cond.end
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end.176
  br label %for.inc.220

for.inc.220:                                      ; preds = %if.end.219, %if.then.106, %if.then.100
  %162 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 2
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  store %struct.rtx_def* %163, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.79

for.end.224:                                      ; preds = %for.cond.79
  store i32 0, i32* @dump_for_graph, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @end_fct(%struct._IO_FILE* %164)
  %165 = load i32*, i32** %start, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* %166) #2
  %167 = load i32*, i32** %end, align 8
  %168 = bitcast i32* %167 to i8*
  call void @free(i8* %168) #2
  %169 = load i32*, i32** %in_bb_p, align 8
  %170 = bitcast i32* %169 to i8*
  call void @free(i8* %170) #2
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %if.then.14
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call226 = call i32 @fclose(%struct._IO_FILE* %171)
  br label %return

return:                                           ; preds = %if.end.225, %if.then.11, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @get_max_uid() #3

declare noalias i8* @xmalloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @start_fct(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* @graph_dump_format, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 5
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %name1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 5
  %5 = load i8*, i8** %name1, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i32 0, i32 0), i8* %3, i8* %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_bb(%struct._IO_FILE* %fp, i32 %bb) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bb.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* @graph_dump_format, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 5
  %3 = load i8*, i8** %name, align 8
  %4 = load i32, i32* %bb.addr, align 4
  %5 = load i32, i32* %bb.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0), i8* %3, i32 %4, i32 %5)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %6 = load i32, i32* @graph_dump_format, align 4
  switch i32 %6, label %sw.epilog.5 [
    i32 1, label %sw.bb.2
    i32 0, label %sw.bb.4
  ]

sw.bb.2:                                          ; preds = %sw.epilog
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %sw.epilog.5

sw.bb.4:                                          ; preds = %sw.epilog
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.epilog, %sw.bb.4, %sw.bb.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_edge(%struct._IO_FILE* %fp, i32 %from, i32 %to, i32 %bb_edge, i32 %class) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %bb_edge.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %color = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %bb_edge, i32* %bb_edge.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  %0 = load i32, i32* @graph_dump_format, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %color, align 8
  %1 = load i32, i32* %class.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** %color, align 8
  br label %if.end.6

if.else:                                          ; preds = %sw.bb
  %2 = load i32, i32* %bb_edge.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8** %color, align 8
  br label %if.end.5

if.else.2:                                        ; preds = %if.else
  %3 = load i32, i32* %class.addr, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else.2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8** %color, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 5
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %from.addr, align 4
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %name7 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 5
  %9 = load i8*, i8** %name7, align 8
  %10 = load i32, i32* %to.addr, align 4
  %11 = load i8*, i8** %color, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0), i8* %6, i32 %7, i8* %9, i32 %10, i8* %11)
  %12 = load i32, i32* %class.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i32, i32* %class.addr, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.13, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_data(%struct._IO_FILE* %fp, %struct.rtx_def* %tmp_rtx) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %tmp_rtx.addr = alloca %struct.rtx_def*, align 8
  %name49 = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.rtx_def* %tmp_rtx, %struct.rtx_def** %tmp_rtx.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @graph_dump_format, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 5
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %name1 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 5
  %7 = load i8*, i8** %name1, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %9 = load i32, i32* %rtint, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0), i8* %5, i8* %7, i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %10 = load i32, i32* @graph_dump_format, align 4
  switch i32 %10, label %sw.epilog.44 [
    i32 1, label %sw.bb.5
    i32 0, label %sw.bb.43
  ]

sw.bb.5:                                          ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %name6 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 5
  %13 = load i8*, i8** %name6, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %15 = load i32, i32* %rtint9, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 37
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.5
  br label %cond.end.34

cond.false:                                       ; preds = %sw.bb.5
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load11 = load i32, i32* %19, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 32
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end.32

cond.false.15:                                    ; preds = %cond.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load16 = load i32, i32* %21, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 33
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false.15
  br label %cond.end.30

cond.false.20:                                    ; preds = %cond.false.15
  %22 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load21 = load i32, i32* %23, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 34
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.20
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false.20
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load26 = load i32, i32* %25, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 36
  %cond = select i1 %cmp28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond29 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %cond.true.24 ], [ %cond, %cond.false.25 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true.19
  %cond31 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %cond.true.19 ], [ %cond29, %cond.end ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.14
  %cond33 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %cond.true.14 ], [ %cond31, %cond.end.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true
  %cond35 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %cond.true ], [ %cond33, %cond.end.32 ]
  %26 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load36 = load i32, i32* %27, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %idxprom = sext i32 %bf.clear37 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_name, i32 0, i64 %idxprom
  %28 = load i8*, i8** %arrayidx38, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtint41 = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %30 = load i32, i32* %rtint41, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* %13, i32 %15, i8* %cond35, i8* %28, i32 %30)
  br label %sw.epilog.44

sw.bb.43:                                         ; preds = %if.end
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %if.end, %sw.bb.43, %cond.end.34
  %31 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load45 = load i32, i32* %32, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 37
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %sw.epilog.44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %name49, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 4
  %rtint52 = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %34 = load i32, i32* %rtint52, align 4
  %cmp53 = icmp slt i32 %34, 0
  br i1 %cmp53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.then.48
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 4
  %rtint57 = bitcast %union.rtunion_def* %arrayidx56 to i32*
  %36 = load i32, i32* %rtint57, align 4
  %sub = sub nsw i32 %36, -100
  %idxprom58 = sext i32 %sub to i64
  %arrayidx59 = getelementptr inbounds [22 x i8*], [22 x i8*]* @note_insn_name, i32 0, i64 %idxprom58
  %37 = load i8*, i8** %arrayidx59, align 8
  store i8* %37, i8** %name49, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %if.then.48
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load i8*, i8** %name49, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %39)
  br label %if.end.76

if.else:                                          ; preds = %sw.epilog.44
  %40 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load62 = load i32, i32* %41, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %idxprom64 = sext i32 %bf.clear63 to i64
  %arrayidx65 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom64
  %42 = load i8, i8* %arrayidx65, align 1
  %conv = sext i8 %42 to i32
  %cmp66 = icmp eq i32 %conv, 105
  br i1 %cmp66, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.else
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 3
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %call72 = call i32 @print_rtl_single(%struct._IO_FILE* %43, %struct.rtx_def* %45)
  br label %if.end.75

if.else.73:                                       ; preds = %if.else
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx.addr, align 8
  %call74 = call i32 @print_rtl_single(%struct._IO_FILE* %46, %struct.rtx_def* %47)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.68
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.60
  %48 = load i32, i32* @graph_dump_format, align 4
  switch i32 %48, label %sw.epilog.80 [
    i32 1, label %sw.bb.77
    i32 0, label %sw.bb.79
  ]

sw.bb.77:                                         ; preds = %if.end.76
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call78 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %49)
  br label %sw.epilog.80

sw.bb.79:                                         ; preds = %if.end.76
  br label %sw.epilog.80

sw.epilog.80:                                     ; preds = %if.end.76, %sw.bb.79, %sw.bb.77
  ret void
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #3

; Function Attrs: nounwind uwtable
define internal void @end_bb(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* @graph_dump_format, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @end_fct(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* @graph_dump_format, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 5
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0), i8* %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @clean_graph_dump_file(i8* %base, i8* %suffix) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %namelen = alloca i64, align 8
  %suffixlen = alloca i64, align 8
  %extlen = alloca i64, align 8
  %buf = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %base.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %namelen, align 8
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %suffixlen, align 8
  %2 = load i32, i32* @graph_dump_format, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %3) #6
  %add = add i64 %call2, 1
  store i64 %add, i64* %extlen, align 8
  %4 = load i64, i64* %namelen, align 8
  %5 = load i64, i64* %extlen, align 8
  %add3 = add i64 %4, %5
  %6 = load i64, i64* %suffixlen, align 8
  %add4 = add i64 %add3, %6
  %7 = alloca i8, i64 %add4
  store i8* %7, i8** %buf, align 8
  %8 = load i8*, i8** %buf, align 8
  %9 = load i8*, i8** %base.addr, align 8
  %10 = load i64, i64* %namelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false)
  %11 = load i8*, i8** %buf, align 8
  %12 = load i64, i64* %namelen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8*, i8** %suffix.addr, align 8
  %14 = load i64, i64* %suffixlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %13, i64 %14, i32 1, i1 false)
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %namelen, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i64, i64* %suffixlen, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 %17
  %18 = load i32, i32* @graph_dump_format, align 4
  %idxprom7 = zext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom7
  %19 = load i8*, i8** %arrayidx8, align 8
  %20 = load i64, i64* %extlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr6, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load i8*, i8** %buf, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %23) #7
  unreachable

if.end:                                           ; preds = %entry
  %24 = load i32, i32* @graph_dump_format, align 4
  switch i32 %24, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 429, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.clean_graph_dump_file, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %26)
  ret void
}

; Function Attrs: noreturn
declare void @fatal_io_error(i8*, ...) #5

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define void @finish_graph_dump_file(i8* %base, i8* %suffix) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %namelen = alloca i64, align 8
  %suffixlen = alloca i64, align 8
  %extlen = alloca i64, align 8
  %buf = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %base.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %namelen, align 8
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %suffixlen, align 8
  %2 = load i32, i32* @graph_dump_format, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %3) #6
  %add = add i64 %call2, 1
  store i64 %add, i64* %extlen, align 8
  %4 = load i64, i64* %namelen, align 8
  %5 = load i64, i64* %suffixlen, align 8
  %add3 = add i64 %4, %5
  %6 = load i64, i64* %extlen, align 8
  %add4 = add i64 %add3, %6
  %7 = alloca i8, i64 %add4
  store i8* %7, i8** %buf, align 8
  %8 = load i8*, i8** %buf, align 8
  %9 = load i8*, i8** %base.addr, align 8
  %10 = load i64, i64* %namelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false)
  %11 = load i8*, i8** %buf, align 8
  %12 = load i64, i64* %namelen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8*, i8** %suffix.addr, align 8
  %14 = load i64, i64* %suffixlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %13, i64 %14, i32 1, i1 false)
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %namelen, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i64, i64* %suffixlen, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 %17
  %18 = load i32, i32* @graph_dump_format, align 4
  %idxprom7 = zext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* @graph_ext, i32 0, i64 %idxprom7
  %19 = load i8*, i8** %arrayidx8, align 8
  %20 = load i64, i64* %extlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr6, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load i8*, i8** %buf, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* @graph_dump_format, align 4
  switch i32 %23, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 461, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.finish_graph_dump_file, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %if.then, %sw.bb
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %25)
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

declare i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
