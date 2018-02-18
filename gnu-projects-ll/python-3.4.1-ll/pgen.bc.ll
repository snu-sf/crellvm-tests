; ModuleID = './pgen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct._nfagrammar = type { i32, %struct._nfa**, %struct.labellist }
%struct._nfa = type { i32, i8*, i32, %struct._nfastate*, i32, i32 }
%struct._nfastate = type { i32, %struct._nfaarc* }
%struct._nfaarc = type { i32, i32 }
%struct._ss_state = type { i8*, i32, %struct._ss_arc*, i32, i32, i32 }
%struct._ss_arc = type { i8*, i32, i32 }

@Py_DebugFlag = external global i32, align 4
@.str = private unnamed_addr constant [47 x i8] c"Compiling (meta-) parse tree into NFA grammar\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no mem for new nfa grammar\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"out of mem\00", align 1
@newnfa.type = internal global i32 256, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"no mem for new nfa\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Dump of NFA for '%s' ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Making DFA for '%s' ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"NFA '%s' has %d states; start %d, finish %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%c%2d%c\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"-> %2d  %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"no mem for xx_state in makedfa\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Error: nonterminal '%s' may produce empty.\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"before minimizing\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"after minimizing\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Subset DFA %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c" Subset %d\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" (finish)\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" { \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"  Arc to state %d, label %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Rename state %d to %d.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.grammar* @_Py_pgen(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %gr = alloca %struct._nfagrammar*, align 8
  %g = alloca %struct.grammar*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct._nfagrammar* @metacompile(%struct._node* %0)
  store %struct._nfagrammar* %call, %struct._nfagrammar** %gr, align 8
  %1 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %call1 = call %struct.grammar* @maketables(%struct._nfagrammar* %1)
  store %struct.grammar* %call1, %struct.grammar** %g, align 8
  %2 = load %struct.grammar*, %struct.grammar** %g, align 8
  call void @_Py_translatelabels(%struct.grammar* %2)
  %3 = load %struct.grammar*, %struct.grammar** %g, align 8
  call void @_Py_addfirstsets(%struct.grammar* %3)
  %4 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %5 = bitcast %struct._nfagrammar* %4 to i8*
  call void @PyObject_Free(i8* %5)
  %6 = load %struct.grammar*, %struct.grammar** %g, align 8
  ret %struct.grammar* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._nfagrammar* @metacompile(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %gr = alloca %struct._nfagrammar*, align 8
  %i = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call %struct._nfagrammar* @newnfagrammar()
  store %struct._nfagrammar* %call1, %struct._nfagrammar** %gr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4
  %2 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %4, %struct._node** %n.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  %cmp2 = icmp ne i32 %conv, 4
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %8 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @compile_rule(%struct._nfagrammar* %8, %struct._node* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %10, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  ret %struct._nfagrammar* %11
}

; Function Attrs: nounwind uwtable
define internal %struct.grammar* @maketables(%struct._nfagrammar* %gr) #0 {
entry:
  %retval = alloca %struct.grammar*, align 8
  %gr.addr = alloca %struct._nfagrammar*, align 8
  %i = alloca i32, align 4
  %nf = alloca %struct._nfa*, align 8
  %d = alloca %struct.dfa*, align 8
  %g = alloca %struct.grammar*, align 8
  store %struct._nfagrammar* %gr, %struct._nfagrammar** %gr.addr, align 8
  %0 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nnfas = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %0, i32 0, i32 0
  %1 = load i32, i32* %gr_nnfas, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.grammar* null, %struct.grammar** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %2, i32 0, i32 1
  %3 = load %struct._nfa**, %struct._nfa*** %gr_nfa, align 8
  %arrayidx = getelementptr %struct._nfa*, %struct._nfa** %3, i64 0
  %4 = load %struct._nfa*, %struct._nfa** %arrayidx, align 8
  %nf_type = getelementptr inbounds %struct._nfa, %struct._nfa* %4, i32 0, i32 0
  %5 = load i32, i32* %nf_type, align 4
  %call = call %struct.grammar* @_Py_newgrammar(i32 %5)
  store %struct.grammar* %call, %struct.grammar** %g, align 8
  %6 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %6, i32 0, i32 2
  %7 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %7, i32 0, i32 2
  %8 = bitcast %struct.labellist* %g_ll to i8*
  %9 = bitcast %struct.labellist* %gr_ll to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nnfas1 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %11, i32 0, i32 0
  %12 = load i32, i32* %gr_nnfas1, align 4
  %cmp2 = icmp slt i32 %10, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa3 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %14, i32 0, i32 1
  %15 = load %struct._nfa**, %struct._nfa*** %gr_nfa3, align 8
  %arrayidx4 = getelementptr %struct._nfa*, %struct._nfa** %15, i64 %idxprom
  %16 = load %struct._nfa*, %struct._nfa** %arrayidx4, align 8
  store %struct._nfa* %16, %struct._nfa** %nf, align 8
  %17 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %for.body
  %18 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_name = getelementptr inbounds %struct._nfa, %struct._nfa* %18, i32 0, i32 1
  %19 = load i8*, i8** %nf_name, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* %19)
  %20 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll7 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %20, i32 0, i32 2
  %21 = load %struct._nfa*, %struct._nfa** %nf, align 8
  call void @dumpnfa(%struct.labellist* %gr_ll7, %struct._nfa* %21)
  %22 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_name8 = getelementptr inbounds %struct._nfa, %struct._nfa* %22, i32 0, i32 1
  %23 = load i8*, i8** %nf_name8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %23)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %for.body
  %24 = load %struct.grammar*, %struct.grammar** %g, align 8
  %25 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_type11 = getelementptr inbounds %struct._nfa, %struct._nfa* %25, i32 0, i32 0
  %26 = load i32, i32* %nf_type11, align 4
  %27 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_name12 = getelementptr inbounds %struct._nfa, %struct._nfa* %27, i32 0, i32 1
  %28 = load i8*, i8** %nf_name12, align 8
  %call13 = call %struct.dfa* @_Py_adddfa(%struct.grammar* %24, i32 %26, i8* %28)
  store %struct.dfa* %call13, %struct.dfa** %d, align 8
  %29 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa15 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %31, i32 0, i32 1
  %32 = load %struct._nfa**, %struct._nfa*** %gr_nfa15, align 8
  %arrayidx16 = getelementptr %struct._nfa*, %struct._nfa** %32, i64 %idxprom14
  %33 = load %struct._nfa*, %struct._nfa** %arrayidx16, align 8
  %34 = load %struct.dfa*, %struct.dfa** %d, align 8
  call void @makedfa(%struct._nfagrammar* %29, %struct._nfa* %33, %struct.dfa* %34)
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %35 = load i32, i32* %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.grammar*, %struct.grammar** %g, align 8
  store %struct.grammar* %36, %struct.grammar** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %37 = load %struct.grammar*, %struct.grammar** %retval
  ret %struct.grammar* %37
}

declare void @_Py_translatelabels(%struct.grammar*) #1

declare void @_Py_addfirstsets(%struct.grammar*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.grammar* @Py_pgen(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct.grammar* @_Py_pgen(%struct._node* %0)
  ret %struct.grammar* %call
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._nfagrammar* @newnfagrammar() #0 {
entry:
  %gr = alloca %struct._nfagrammar*, align 8
  %call = call i8* @PyObject_Malloc(i64 32)
  %0 = bitcast i8* %call to %struct._nfagrammar*
  store %struct._nfagrammar* %0, %struct._nfagrammar** %gr, align 8
  %1 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %cmp = icmp eq %struct._nfagrammar* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %gr_nnfas = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %2, i32 0, i32 0
  store i32 0, i32* %gr_nnfas, align 4
  %3 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %gr_nfa = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %3, i32 0, i32 1
  store %struct._nfa** null, %struct._nfa*** %gr_nfa, align 8
  %4 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %gr_ll = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %4, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %gr_ll, i32 0, i32 0
  store i32 0, i32* %ll_nlabels, align 4
  %5 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %gr_ll1 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %5, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %gr_ll1, i32 0, i32 1
  store %struct.label* null, %struct.label** %ll_label, align 8
  %6 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  %gr_ll2 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %6, i32 0, i32 2
  %call3 = call i32 @_Py_addlabel(%struct.labellist* %gr_ll2, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %7 = load %struct._nfagrammar*, %struct._nfagrammar** %gr, align 8
  ret %struct._nfagrammar* %7
}

; Function Attrs: nounwind uwtable
define internal void @compile_rule(%struct._nfagrammar* %gr, %struct._node* %n) #0 {
entry:
  %gr.addr = alloca %struct._nfagrammar*, align 8
  %n.addr = alloca %struct._node*, align 8
  %nf = alloca %struct._nfa*, align 8
  store %struct._nfagrammar* %gr, %struct._nfagrammar** %gr.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %1, %struct._node** %n.addr, align 8
  %2 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 1
  %4 = load i8*, i8** %n_str, align 8
  %call = call %struct._nfa* @addnfa(%struct._nfagrammar* %2, i8* %4)
  store %struct._nfa* %call, %struct._nfa** %nf, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %5, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr1 = getelementptr %struct._node, %struct._node* %6, i32 1
  store %struct._node* %incdec.ptr1, %struct._node** %n.addr, align 8
  %7 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %7, i32 0, i32 2
  %8 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %10 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_start = getelementptr inbounds %struct._nfa, %struct._nfa* %10, i32 0, i32 4
  %11 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_finish = getelementptr inbounds %struct._nfa, %struct._nfa* %11, i32 0, i32 5
  call void @compile_rhs(%struct.labellist* %gr_ll, %struct._nfa* %8, %struct._node* %9, i32* %nf_start, i32* %nf_finish)
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr2 = getelementptr %struct._node, %struct._node* %12, i32 1
  store %struct._node* %incdec.ptr2, %struct._node** %n.addr, align 8
  ret void
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare i32 @_Py_addlabel(%struct.labellist*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._nfa* @addnfa(%struct._nfagrammar* %gr, i8* %name) #0 {
entry:
  %gr.addr = alloca %struct._nfagrammar*, align 8
  %name.addr = alloca i8*, align 8
  %nf = alloca %struct._nfa*, align 8
  store %struct._nfagrammar* %gr, %struct._nfagrammar** %gr.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._nfa* @newnfa(i8* %0)
  store %struct._nfa* %call, %struct._nfa** %nf, align 8
  %1 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %1, i32 0, i32 1
  %2 = load %struct._nfa**, %struct._nfa*** %gr_nfa, align 8
  %3 = bitcast %struct._nfa** %2 to i8*
  %4 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nnfas = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %4, i32 0, i32 0
  %5 = load i32, i32* %gr_nnfas, align 4
  %add = add i32 %5, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call1 = call i8* @PyObject_Realloc(i8* %3, i64 %mul)
  %6 = bitcast i8* %call1 to %struct._nfa**
  %7 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa2 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %7, i32 0, i32 1
  store %struct._nfa** %6, %struct._nfa*** %gr_nfa2, align 8
  %8 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa3 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %8, i32 0, i32 1
  %9 = load %struct._nfa**, %struct._nfa*** %gr_nfa3, align 8
  %cmp = icmp eq %struct._nfa** %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %10 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %11 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nnfas5 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %11, i32 0, i32 0
  %12 = load i32, i32* %gr_nnfas5, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %gr_nnfas5, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_nfa6 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %13, i32 0, i32 1
  %14 = load %struct._nfa**, %struct._nfa*** %gr_nfa6, align 8
  %arrayidx = getelementptr %struct._nfa*, %struct._nfa** %14, i64 %idxprom
  store %struct._nfa* %10, %struct._nfa** %arrayidx, align 8
  %15 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %15, i32 0, i32 2
  %16 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_name = getelementptr inbounds %struct._nfa, %struct._nfa* %16, i32 0, i32 1
  %17 = load i8*, i8** %nf_name, align 8
  %call7 = call i32 @_Py_addlabel(%struct.labellist* %gr_ll, i32 1, i8* %17)
  %18 = load %struct._nfa*, %struct._nfa** %nf, align 8
  ret %struct._nfa* %18
}

; Function Attrs: nounwind uwtable
define internal void @compile_rhs(%struct.labellist* %ll, %struct._nfa* %nf, %struct._node* %n, i32* %pa, i32* %pb) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %n.addr = alloca %struct._node*, align 8
  %pa.addr = alloca i32*, align 8
  %pb.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %pa, i32** %pa.addr, align 8
  store i32* %pb, i32** %pb.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %3, %struct._node** %n.addr, align 8
  %4 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %5 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %7 = load i32*, i32** %pa.addr, align 8
  %8 = load i32*, i32** %pb.addr, align 8
  call void @compile_alt(%struct.labellist* %4, %struct._nfa* %5, %struct._node* %6, i32* %7, i32* %8)
  %9 = load i32, i32* %i, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %10, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  %11 = load i32*, i32** %pa.addr, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %a, align 4
  %13 = load i32*, i32** %pb.addr, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %b, align 4
  %15 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call = call i32 @addnfastate(%struct._nfa* %15)
  %16 = load i32*, i32** %pa.addr, align 8
  store i32 %call, i32* %16, align 4
  %17 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call1 = call i32 @addnfastate(%struct._nfa* %17)
  %18 = load i32*, i32** %pb.addr, align 8
  store i32 %call1, i32* %18, align 4
  %19 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %20 = load i32*, i32** %pa.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %a, align 4
  call void @addnfaarc(%struct._nfa* %19, i32 %21, i32 %22, i32 0)
  %23 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %24 = load i32, i32* %b, align 4
  %25 = load i32*, i32** %pb.addr, align 8
  %26 = load i32, i32* %25, align 4
  call void @addnfaarc(%struct._nfa* %23, i32 %24, i32 %26, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %27 = load i32, i32* %i, align 4
  %dec2 = add i32 %27, -1
  store i32 %dec2, i32* %i, align 4
  %cmp3 = icmp sge i32 %dec2, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %dec4 = add i32 %28, -1
  store i32 %dec4, i32* %i, align 4
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr5 = getelementptr %struct._node, %struct._node* %29, i32 1
  store %struct._node* %incdec.ptr5, %struct._node** %n.addr, align 8
  %30 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %31 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @compile_alt(%struct.labellist* %30, %struct._nfa* %31, %struct._node* %32, i32* %a, i32* %b)
  %33 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %34 = load i32*, i32** %pa.addr, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %a, align 4
  call void @addnfaarc(%struct._nfa* %33, i32 %35, i32 %36, i32 0)
  %37 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %38 = load i32, i32* %b, align 4
  %39 = load i32*, i32** %pb.addr, align 8
  %40 = load i32, i32* %39, align 4
  call void @addnfaarc(%struct._nfa* %37, i32 %38, i32 %40, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr6 = getelementptr %struct._node, %struct._node* %41, i32 1
  store %struct._node* %incdec.ptr6, %struct._node** %n.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._nfa* @newnfa(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nf = alloca %struct._nfa*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @PyObject_Malloc(i64 40)
  %0 = bitcast i8* %call to %struct._nfa*
  store %struct._nfa* %0, %struct._nfa** %nf, align 8
  %1 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %cmp = icmp eq %struct._nfa* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @newnfa.type, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* @newnfa.type, align 4
  %3 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_type = getelementptr inbounds %struct._nfa, %struct._nfa* %3, i32 0, i32 0
  store i32 %2, i32* %nf_type, align 4
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_name = getelementptr inbounds %struct._nfa, %struct._nfa* %5, i32 0, i32 1
  store i8* %4, i8** %nf_name, align 8
  %6 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_nstates = getelementptr inbounds %struct._nfa, %struct._nfa* %6, i32 0, i32 2
  store i32 0, i32* %nf_nstates, align 4
  %7 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %7, i32 0, i32 3
  store %struct._nfastate* null, %struct._nfastate** %nf_state, align 8
  %8 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_finish = getelementptr inbounds %struct._nfa, %struct._nfa* %8, i32 0, i32 5
  store i32 -1, i32* %nf_finish, align 4
  %9 = load %struct._nfa*, %struct._nfa** %nf, align 8
  %nf_start = getelementptr inbounds %struct._nfa, %struct._nfa* %9, i32 0, i32 4
  store i32 -1, i32* %nf_start, align 4
  %10 = load %struct._nfa*, %struct._nfa** %nf, align 8
  ret %struct._nfa* %10
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @compile_alt(%struct.labellist* %ll, %struct._nfa* %nf, %struct._node* %n, i32* %pa, i32* %pb) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %n.addr = alloca %struct._node*, align 8
  %pa.addr = alloca i32*, align 8
  %pb.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %pa, i32** %pa.addr, align 8
  store i32* %pb, i32** %pb.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %3, %struct._node** %n.addr, align 8
  %4 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %5 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %7 = load i32*, i32** %pa.addr, align 8
  %8 = load i32*, i32** %pb.addr, align 8
  call void @compile_item(%struct.labellist* %4, %struct._nfa* %5, %struct._node* %6, i32* %7, i32* %8)
  %9 = load i32, i32* %i, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %10, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %dec1 = add i32 %11, -1
  store i32 %dec1, i32* %i, align 4
  %cmp = icmp sge i32 %dec1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %13 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @compile_item(%struct.labellist* %12, %struct._nfa* %13, %struct._node* %14, i32* %a, i32* %b)
  %15 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %16 = load i32*, i32** %pb.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %a, align 4
  call void @addnfaarc(%struct._nfa* %15, i32 %17, i32 %18, i32 0)
  %19 = load i32, i32* %b, align 4
  %20 = load i32*, i32** %pb.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr2 = getelementptr %struct._node, %struct._node* %21, i32 1
  store %struct._node* %incdec.ptr2, %struct._node** %n.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @addnfastate(%struct._nfa* %nf) #0 {
entry:
  %nf.addr = alloca %struct._nfa*, align 8
  %st = alloca %struct._nfastate*, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  %0 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %0, i32 0, i32 3
  %1 = load %struct._nfastate*, %struct._nfastate** %nf_state, align 8
  %2 = bitcast %struct._nfastate* %1 to i8*
  %3 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates = getelementptr inbounds %struct._nfa, %struct._nfa* %3, i32 0, i32 2
  %4 = load i32, i32* %nf_nstates, align 4
  %add = add i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 16, %conv
  %call = call i8* @PyObject_Realloc(i8* %2, i64 %mul)
  %5 = bitcast i8* %call to %struct._nfastate*
  %6 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state1 = getelementptr inbounds %struct._nfa, %struct._nfa* %6, i32 0, i32 3
  store %struct._nfastate* %5, %struct._nfastate** %nf_state1, align 8
  %7 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state2 = getelementptr inbounds %struct._nfa, %struct._nfa* %7, i32 0, i32 3
  %8 = load %struct._nfastate*, %struct._nfastate** %nf_state2, align 8
  %cmp = icmp eq %struct._nfastate* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %9 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates4 = getelementptr inbounds %struct._nfa, %struct._nfa* %9, i32 0, i32 2
  %10 = load i32, i32* %nf_nstates4, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %nf_nstates4, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state5 = getelementptr inbounds %struct._nfa, %struct._nfa* %11, i32 0, i32 3
  %12 = load %struct._nfastate*, %struct._nfastate** %nf_state5, align 8
  %arrayidx = getelementptr %struct._nfastate, %struct._nfastate* %12, i64 %idxprom
  store %struct._nfastate* %arrayidx, %struct._nfastate** %st, align 8
  %13 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs = getelementptr inbounds %struct._nfastate, %struct._nfastate* %13, i32 0, i32 0
  store i32 0, i32* %st_narcs, align 4
  %14 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc = getelementptr inbounds %struct._nfastate, %struct._nfastate* %14, i32 0, i32 1
  store %struct._nfaarc* null, %struct._nfaarc** %st_arc, align 8
  %15 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %16 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state6 = getelementptr inbounds %struct._nfa, %struct._nfa* %16, i32 0, i32 3
  %17 = load %struct._nfastate*, %struct._nfastate** %nf_state6, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._nfastate* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct._nfastate* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv7 = trunc i64 %sub.ptr.div to i32
  ret i32 %conv7
}

; Function Attrs: nounwind uwtable
define internal void @addnfaarc(%struct._nfa* %nf, i32 %from, i32 %to, i32 %lbl) #0 {
entry:
  %nf.addr = alloca %struct._nfa*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %lbl.addr = alloca i32, align 4
  %st = alloca %struct._nfastate*, align 8
  %ar = alloca %struct._nfaarc*, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %lbl, i32* %lbl.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %1, i32 0, i32 3
  %2 = load %struct._nfastate*, %struct._nfastate** %nf_state, align 8
  %arrayidx = getelementptr %struct._nfastate, %struct._nfastate* %2, i64 %idxprom
  store %struct._nfastate* %arrayidx, %struct._nfastate** %st, align 8
  %3 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc = getelementptr inbounds %struct._nfastate, %struct._nfastate* %3, i32 0, i32 1
  %4 = load %struct._nfaarc*, %struct._nfaarc** %st_arc, align 8
  %5 = bitcast %struct._nfaarc* %4 to i8*
  %6 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs = getelementptr inbounds %struct._nfastate, %struct._nfastate* %6, i32 0, i32 0
  %7 = load i32, i32* %st_narcs, align 4
  %add = add i32 %7, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @PyObject_Realloc(i8* %5, i64 %mul)
  %8 = bitcast i8* %call to %struct._nfaarc*
  %9 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc1 = getelementptr inbounds %struct._nfastate, %struct._nfastate* %9, i32 0, i32 1
  store %struct._nfaarc* %8, %struct._nfaarc** %st_arc1, align 8
  %10 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc2 = getelementptr inbounds %struct._nfastate, %struct._nfastate* %10, i32 0, i32 1
  %11 = load %struct._nfaarc*, %struct._nfaarc** %st_arc2, align 8
  %cmp = icmp eq %struct._nfaarc* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %12 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs4 = getelementptr inbounds %struct._nfastate, %struct._nfastate* %12, i32 0, i32 0
  %13 = load i32, i32* %st_narcs4, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %st_narcs4, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc6 = getelementptr inbounds %struct._nfastate, %struct._nfastate* %14, i32 0, i32 1
  %15 = load %struct._nfaarc*, %struct._nfaarc** %st_arc6, align 8
  %arrayidx7 = getelementptr %struct._nfaarc, %struct._nfaarc* %15, i64 %idxprom5
  store %struct._nfaarc* %arrayidx7, %struct._nfaarc** %ar, align 8
  %16 = load i32, i32* %lbl.addr, align 4
  %17 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %17, i32 0, i32 0
  store i32 %16, i32* %ar_label, align 4
  %18 = load i32, i32* %to.addr, align 4
  %19 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_arrow = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %19, i32 0, i32 1
  store i32 %18, i32* %ar_arrow, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compile_item(%struct.labellist* %ll, %struct._nfa* %nf, %struct._node* %n, i32* %pa, i32* %pb) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %n.addr = alloca %struct._node*, align 8
  %pa.addr = alloca i32*, align 8
  %pb.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %pa, i32** %pa.addr, align 8
  store i32* %pb, i32** %pb.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %3, %struct._node** %n.addr, align 8
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type, align 2
  %conv = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %6, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  %7 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call = call i32 @addnfastate(%struct._nfa* %7)
  %8 = load i32*, i32** %pa.addr, align 8
  store i32 %call, i32* %8, align 4
  %9 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call2 = call i32 @addnfastate(%struct._nfa* %9)
  %10 = load i32*, i32** %pb.addr, align 8
  store i32 %call2, i32* %10, align 4
  %11 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %12 = load i32*, i32** %pa.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %pb.addr, align 8
  %15 = load i32, i32* %14, align 4
  call void @addnfaarc(%struct._nfa* %11, i32 %13, i32 %15, i32 0)
  %16 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %17 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @compile_rhs(%struct.labellist* %16, %struct._nfa* %17, %struct._node* %18, i32* %a, i32* %b)
  %19 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %20 = load i32*, i32** %pa.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %a, align 4
  call void @addnfaarc(%struct._nfa* %19, i32 %21, i32 %22, i32 0)
  %23 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %24 = load i32, i32* %b, align 4
  %25 = load i32*, i32** %pb.addr, align 8
  %26 = load i32, i32* %25, align 4
  call void @addnfaarc(%struct._nfa* %23, i32 %24, i32 %26, i32 0)
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr3 = getelementptr %struct._node, %struct._node* %27, i32 1
  store %struct._node* %incdec.ptr3, %struct._node** %n.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %28 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %29 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %30 = load %struct._node*, %struct._node** %n.addr, align 8
  %31 = load i32*, i32** %pa.addr, align 8
  %32 = load i32*, i32** %pb.addr, align 8
  call void @compile_atom(%struct.labellist* %28, %struct._nfa* %29, %struct._node* %30, i32* %31, i32* %32)
  %33 = load i32, i32* %i, align 4
  %dec = add i32 %33, -1
  store i32 %dec, i32* %i, align 4
  %cmp4 = icmp sle i32 %dec, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  br label %if.end.15

if.end:                                           ; preds = %if.else
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr7 = getelementptr %struct._node, %struct._node* %34, i32 1
  store %struct._node* %incdec.ptr7, %struct._node** %n.addr, align 8
  %35 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %36 = load i32*, i32** %pb.addr, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %pa.addr, align 8
  %39 = load i32, i32* %38, align 4
  call void @addnfaarc(%struct._nfa* %35, i32 %37, i32 %39, i32 0)
  %40 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type8 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 0
  %41 = load i16, i16* %n_type8, align 2
  %conv9 = sext i16 %41 to i32
  %cmp10 = icmp eq i32 %conv9, 16
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  %42 = load i32*, i32** %pa.addr, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %pb.addr, align 8
  store i32 %43, i32* %44, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.6, %if.end.14, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compile_atom(%struct.labellist* %ll, %struct._nfa* %nf, %struct._node* %n, i32* %pa, i32* %pb) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %n.addr = alloca %struct._node*, align 8
  %pa.addr = alloca i32*, align 8
  %pb.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %pa, i32** %pa.addr, align 8
  store i32* %pb, i32** %pb.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %4, %struct._node** %n.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr = getelementptr %struct._node, %struct._node* %7, i32 1
  store %struct._node* %incdec.ptr, %struct._node** %n.addr, align 8
  %8 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %9 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %11 = load i32*, i32** %pa.addr, align 8
  %12 = load i32*, i32** %pb.addr, align 8
  call void @compile_rhs(%struct.labellist* %8, %struct._nfa* %9, %struct._node* %10, i32* %11, i32* %12)
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %incdec.ptr2 = getelementptr %struct._node, %struct._node* %13, i32 1
  store %struct._node* %incdec.ptr2, %struct._node** %n.addr, align 8
  br label %if.end.17

if.else:                                          ; preds = %entry
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type3 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 0
  %15 = load i16, i16* %n_type3, align 2
  %conv4 = sext i16 %15 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type7 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 0
  %17 = load i16, i16* %n_type7, align 2
  %conv8 = sext i16 %17 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %18 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call = call i32 @addnfastate(%struct._nfa* %18)
  %19 = load i32*, i32** %pa.addr, align 8
  store i32 %call, i32* %19, align 4
  %20 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %call12 = call i32 @addnfastate(%struct._nfa* %20)
  %21 = load i32*, i32** %pb.addr, align 8
  store i32 %call12, i32* %21, align 4
  %22 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %23 = load i32*, i32** %pa.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %pb.addr, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type13 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 0
  %29 = load i16, i16* %n_type13, align 2
  %conv14 = sext i16 %29 to i32
  %30 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %30, i32 0, i32 1
  %31 = load i8*, i8** %n_str, align 8
  %call15 = call i32 @_Py_addlabel(%struct.labellist* %27, i32 %conv14, i8* %31)
  call void @addnfaarc(%struct._nfa* %22, i32 %24, i32 %26, i32 %call15)
  br label %if.end

if.else.16:                                       ; preds = %lor.lhs.false
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  ret void
}

declare %struct.grammar* @_Py_newgrammar(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @dumpnfa(%struct.labellist* %ll, %struct._nfa* %nf) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %i = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  %0 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_name = getelementptr inbounds %struct._nfa, %struct._nfa* %0, i32 0, i32 1
  %1 = load i8*, i8** %nf_name, align 8
  %2 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates = getelementptr inbounds %struct._nfa, %struct._nfa* %2, i32 0, i32 2
  %3 = load i32, i32* %nf_nstates, align 4
  %4 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_start = getelementptr inbounds %struct._nfa, %struct._nfa* %4, i32 0, i32 4
  %5 = load i32, i32* %nf_start, align 4
  %6 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish = getelementptr inbounds %struct._nfa, %struct._nfa* %6, i32 0, i32 5
  %7 = load i32, i32* %nf_finish, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* %1, i32 %3, i32 %5, i32 %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates1 = getelementptr inbounds %struct._nfa, %struct._nfa* %9, i32 0, i32 2
  %10 = load i32, i32* %nf_nstates1, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %12 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %13 = load i32, i32* %i, align 4
  call void @dumpstate(%struct.labellist* %11, %struct._nfa* %12, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.dfa* @_Py_adddfa(%struct.grammar*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @makedfa(%struct._nfagrammar* %gr, %struct._nfa* %nf, %struct.dfa* %d) #0 {
entry:
  %gr.addr = alloca %struct._nfagrammar*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %nbits = alloca i32, align 4
  %ss = alloca i8*, align 8
  %xx_nstates = alloca i32, align 4
  %xx_state = alloca %struct._ss_state*, align 8
  %yy = alloca %struct._ss_state*, align 8
  %zz = alloca %struct._ss_arc*, align 8
  %istate = alloca i32, align 4
  %jstate = alloca i32, align 4
  %iarc = alloca i32, align 4
  %jarc = alloca i32, align 4
  %ibit = alloca i32, align 4
  %st = alloca %struct._nfastate*, align 8
  %ar = alloca %struct._nfaarc*, align 8
  %size = alloca i64, align 8
  store %struct._nfagrammar* %gr, %struct._nfagrammar** %gr.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  %0 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates = getelementptr inbounds %struct._nfa, %struct._nfa* %0, i32 0, i32 2
  %1 = load i32, i32* %nf_nstates, align 4
  store i32 %1, i32* %nbits, align 4
  %2 = load i32, i32* %nbits, align 4
  %call = call i8* @_Py_newbitset(i32 %2)
  store i8* %call, i8** %ss, align 8
  %3 = load i8*, i8** %ss, align 8
  %4 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %5 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_start = getelementptr inbounds %struct._nfa, %struct._nfa* %5, i32 0, i32 4
  %6 = load i32, i32* %nf_start, align 4
  call void @addclosure(i8* %3, %struct._nfa* %4, i32 %6)
  %call1 = call i8* @PyObject_Malloc(i64 40)
  %7 = bitcast i8* %call1 to %struct._ss_state*
  store %struct._ss_state* %7, %struct._ss_state** %xx_state, align 8
  %8 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %cmp = icmp eq %struct._ss_state* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %xx_nstates, align 4
  %9 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx = getelementptr %struct._ss_state, %struct._ss_state* %9, i64 0
  store %struct._ss_state* %arrayidx, %struct._ss_state** %yy, align 8
  %10 = load i8*, i8** %ss, align 8
  %11 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_ss = getelementptr inbounds %struct._ss_state, %struct._ss_state* %11, i32 0, i32 0
  store i8* %10, i8** %ss_ss, align 8
  %12 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs = getelementptr inbounds %struct._ss_state, %struct._ss_state* %12, i32 0, i32 1
  store i32 0, i32* %ss_narcs, align 4
  %13 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc = getelementptr inbounds %struct._ss_state, %struct._ss_state* %13, i32 0, i32 2
  store %struct._ss_arc* null, %struct._ss_arc** %ss_arc, align 8
  %14 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_deleted = getelementptr inbounds %struct._ss_state, %struct._ss_state* %14, i32 0, i32 3
  store i32 0, i32* %ss_deleted, align 4
  %15 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish = getelementptr inbounds %struct._nfa, %struct._nfa* %15, i32 0, i32 5
  %16 = load i32, i32* %nf_finish, align 4
  %conv = sext i32 %16 to i64
  %div = udiv i64 %conv, 8
  %17 = load i8*, i8** %ss, align 8
  %arrayidx2 = getelementptr i8, i8* %17, i64 %div
  %18 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %18 to i32
  %19 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish4 = getelementptr inbounds %struct._nfa, %struct._nfa* %19, i32 0, i32 5
  %20 = load i32, i32* %nf_finish4, align 4
  %conv5 = sext i32 %20 to i64
  %rem = urem i64 %conv5, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv3, %shl
  %cmp6 = icmp ne i32 %and, 0
  %conv7 = zext i1 %cmp6 to i32
  %21 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_finish = getelementptr inbounds %struct._ss_state, %struct._ss_state* %21, i32 0, i32 4
  store i32 %conv7, i32* %ss_finish, align 4
  %22 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_finish8 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %22, i32 0, i32 4
  %23 = load i32, i32* %ss_finish8, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %24 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_name = getelementptr inbounds %struct._nfa, %struct._nfa* %24, i32 0, i32 1
  %25 = load i8*, i8** %nf_name, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), i8* %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %istate, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.147, %if.end.11
  %26 = load i32, i32* %istate, align 4
  %27 = load i32, i32* %xx_nstates, align 4
  %cmp12 = icmp slt i32 %26, %27
  br i1 %cmp12, label %for.body, label %for.end.149

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %istate, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx14 = getelementptr %struct._ss_state, %struct._ss_state* %29, i64 %idxprom
  store %struct._ss_state* %arrayidx14, %struct._ss_state** %yy, align 8
  %30 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_ss15 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %30, i32 0, i32 0
  %31 = load i8*, i8** %ss_ss15, align 8
  store i8* %31, i8** %ss, align 8
  store i32 0, i32* %ibit, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.81, %for.body
  %32 = load i32, i32* %ibit, align 4
  %33 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_nstates17 = getelementptr inbounds %struct._nfa, %struct._nfa* %33, i32 0, i32 2
  %34 = load i32, i32* %nf_nstates17, align 4
  %cmp18 = icmp slt i32 %32, %34
  br i1 %cmp18, label %for.body.20, label %for.end.83

for.body.20:                                      ; preds = %for.cond.16
  %35 = load i32, i32* %ibit, align 4
  %conv21 = sext i32 %35 to i64
  %div22 = udiv i64 %conv21, 8
  %36 = load i8*, i8** %ss, align 8
  %arrayidx23 = getelementptr i8, i8* %36, i64 %div22
  %37 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %37 to i32
  %38 = load i32, i32* %ibit, align 4
  %conv25 = sext i32 %38 to i64
  %rem26 = urem i64 %conv25, 8
  %sh_prom27 = trunc i64 %rem26 to i32
  %shl28 = shl i32 1, %sh_prom27
  %and29 = and i32 %conv24, %shl28
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %for.body.20
  br label %for.inc.81

if.end.33:                                        ; preds = %for.body.20
  %39 = load i32, i32* %ibit, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %40, i32 0, i32 3
  %41 = load %struct._nfastate*, %struct._nfastate** %nf_state, align 8
  %arrayidx35 = getelementptr %struct._nfastate, %struct._nfastate* %41, i64 %idxprom34
  store %struct._nfastate* %arrayidx35, %struct._nfastate** %st, align 8
  store i32 0, i32* %iarc, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.78, %if.end.33
  %42 = load i32, i32* %iarc, align 4
  %43 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs = getelementptr inbounds %struct._nfastate, %struct._nfastate* %43, i32 0, i32 0
  %44 = load i32, i32* %st_narcs, align 4
  %cmp37 = icmp slt i32 %42, %44
  br i1 %cmp37, label %for.body.39, label %for.end.80

for.body.39:                                      ; preds = %for.cond.36
  %45 = load i32, i32* %iarc, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc = getelementptr inbounds %struct._nfastate, %struct._nfastate* %46, i32 0, i32 1
  %47 = load %struct._nfaarc*, %struct._nfaarc** %st_arc, align 8
  %arrayidx41 = getelementptr %struct._nfaarc, %struct._nfaarc* %47, i64 %idxprom40
  store %struct._nfaarc* %arrayidx41, %struct._nfaarc** %ar, align 8
  %48 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %48, i32 0, i32 0
  %49 = load i32, i32* %ar_label, align 4
  %cmp42 = icmp eq i32 %49, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.39
  br label %for.inc.78

if.end.45:                                        ; preds = %for.body.39
  store i32 0, i32* %jarc, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.end.45
  %50 = load i32, i32* %jarc, align 4
  %51 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs47 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %51, i32 0, i32 1
  %52 = load i32, i32* %ss_narcs47, align 4
  %cmp48 = icmp slt i32 %50, %52
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.46
  %53 = load i32, i32* %jarc, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc52 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %54, i32 0, i32 2
  %55 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc52, align 8
  %arrayidx53 = getelementptr %struct._ss_arc, %struct._ss_arc* %55, i64 %idxprom51
  store %struct._ss_arc* %arrayidx53, %struct._ss_arc** %zz, align 8
  %56 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label54 = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %56, i32 0, i32 0
  %57 = load i32, i32* %ar_label54, align 4
  %58 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_label = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %58, i32 0, i32 2
  %59 = load i32, i32* %sa_label, align 4
  %cmp55 = icmp eq i32 %57, %59
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.50
  br label %found

if.end.58:                                        ; preds = %for.body.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %60 = load i32, i32* %jarc, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %jarc, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %61 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs59 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %61, i32 0, i32 1
  %62 = load i32, i32* %ss_narcs59, align 4
  %add = add i32 %62, 1
  %conv60 = sext i32 %add to i64
  %mul = mul i64 16, %conv60
  store i64 %mul, i64* %size, align 8
  %63 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc61 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %63, i32 0, i32 2
  %64 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc61, align 8
  %65 = bitcast %struct._ss_arc* %64 to i8*
  %66 = load i64, i64* %size, align 8
  %call62 = call i8* @PyObject_Realloc(i8* %65, i64 %66)
  %67 = bitcast i8* %call62 to %struct._ss_arc*
  %68 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc63 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %68, i32 0, i32 2
  store %struct._ss_arc* %67, %struct._ss_arc** %ss_arc63, align 8
  %69 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc64 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %69, i32 0, i32 2
  %70 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc64, align 8
  %cmp65 = icmp eq %struct._ss_arc* %70, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end
  call void @Py_FatalError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end.68:                                        ; preds = %for.end
  %71 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs69 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %71, i32 0, i32 1
  %72 = load i32, i32* %ss_narcs69, align 4
  %inc70 = add i32 %72, 1
  store i32 %inc70, i32* %ss_narcs69, align 4
  %idxprom71 = sext i32 %72 to i64
  %73 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc72 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %73, i32 0, i32 2
  %74 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc72, align 8
  %arrayidx73 = getelementptr %struct._ss_arc, %struct._ss_arc* %74, i64 %idxprom71
  store %struct._ss_arc* %arrayidx73, %struct._ss_arc** %zz, align 8
  %75 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label74 = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %75, i32 0, i32 0
  %76 = load i32, i32* %ar_label74, align 4
  %77 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_label75 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %77, i32 0, i32 2
  store i32 %76, i32* %sa_label75, align 4
  %78 = load i32, i32* %nbits, align 4
  %call76 = call i8* @_Py_newbitset(i32 %78)
  %79 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_bitset = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %79, i32 0, i32 0
  store i8* %call76, i8** %sa_bitset, align 8
  %80 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_arrow = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %80, i32 0, i32 1
  store i32 -1, i32* %sa_arrow, align 4
  br label %found

found:                                            ; preds = %if.end.68, %if.then.57
  %81 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_bitset77 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %81, i32 0, i32 0
  %82 = load i8*, i8** %sa_bitset77, align 8
  %83 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %84 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_arrow = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %84, i32 0, i32 1
  %85 = load i32, i32* %ar_arrow, align 4
  call void @addclosure(i8* %82, %struct._nfa* %83, i32 %85)
  br label %for.inc.78

for.inc.78:                                       ; preds = %found, %if.then.44
  %86 = load i32, i32* %iarc, align 4
  %inc79 = add i32 %86, 1
  store i32 %inc79, i32* %iarc, align 4
  br label %for.cond.36

for.end.80:                                       ; preds = %for.cond.36
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80, %if.then.32
  %87 = load i32, i32* %ibit, align 4
  %inc82 = add i32 %87, 1
  store i32 %inc82, i32* %ibit, align 4
  br label %for.cond.16

for.end.83:                                       ; preds = %for.cond.16
  store i32 0, i32* %jarc, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.144, %for.end.83
  %88 = load i32, i32* %jarc, align 4
  %89 = load i32, i32* %istate, align 4
  %idxprom85 = sext i32 %89 to i64
  %90 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx86 = getelementptr %struct._ss_state, %struct._ss_state* %90, i64 %idxprom85
  %ss_narcs87 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx86, i32 0, i32 1
  %91 = load i32, i32* %ss_narcs87, align 4
  %cmp88 = icmp slt i32 %88, %91
  br i1 %cmp88, label %for.body.90, label %for.end.146

for.body.90:                                      ; preds = %for.cond.84
  %92 = load i32, i32* %jarc, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load i32, i32* %istate, align 4
  %idxprom92 = sext i32 %93 to i64
  %94 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx93 = getelementptr %struct._ss_state, %struct._ss_state* %94, i64 %idxprom92
  %ss_arc94 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx93, i32 0, i32 2
  %95 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc94, align 8
  %arrayidx95 = getelementptr %struct._ss_arc, %struct._ss_arc* %95, i64 %idxprom91
  store %struct._ss_arc* %arrayidx95, %struct._ss_arc** %zz, align 8
  store i32 0, i32* %jstate, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.109, %for.body.90
  %96 = load i32, i32* %jstate, align 4
  %97 = load i32, i32* %xx_nstates, align 4
  %cmp97 = icmp slt i32 %96, %97
  br i1 %cmp97, label %for.body.99, label %for.end.111

for.body.99:                                      ; preds = %for.cond.96
  %98 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_bitset100 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %98, i32 0, i32 0
  %99 = load i8*, i8** %sa_bitset100, align 8
  %100 = load i32, i32* %jstate, align 4
  %idxprom101 = sext i32 %100 to i64
  %101 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx102 = getelementptr %struct._ss_state, %struct._ss_state* %101, i64 %idxprom101
  %ss_ss103 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx102, i32 0, i32 0
  %102 = load i8*, i8** %ss_ss103, align 8
  %103 = load i32, i32* %nbits, align 4
  %call104 = call i32 @_Py_samebitset(i8* %99, i8* %102, i32 %103)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %for.body.99
  %104 = load i32, i32* %jstate, align 4
  %105 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_arrow107 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %105, i32 0, i32 1
  store i32 %104, i32* %sa_arrow107, align 4
  br label %done

if.end.108:                                       ; preds = %for.body.99
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %106 = load i32, i32* %jstate, align 4
  %inc110 = add i32 %106, 1
  store i32 %inc110, i32* %jstate, align 4
  br label %for.cond.96

for.end.111:                                      ; preds = %for.cond.96
  %107 = load i32, i32* %xx_nstates, align 4
  %add112 = add i32 %107, 1
  %conv113 = sext i32 %add112 to i64
  %mul114 = mul i64 40, %conv113
  store i64 %mul114, i64* %size, align 8
  %108 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %109 = bitcast %struct._ss_state* %108 to i8*
  %110 = load i64, i64* %size, align 8
  %call115 = call i8* @PyObject_Realloc(i8* %109, i64 %110)
  %111 = bitcast i8* %call115 to %struct._ss_state*
  store %struct._ss_state* %111, %struct._ss_state** %xx_state, align 8
  %112 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %cmp116 = icmp eq %struct._ss_state* %112, null
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.end.111
  call void @Py_FatalError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end.119:                                       ; preds = %for.end.111
  %113 = load i32, i32* %xx_nstates, align 4
  %114 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_arrow120 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %114, i32 0, i32 1
  store i32 %113, i32* %sa_arrow120, align 4
  %115 = load i32, i32* %xx_nstates, align 4
  %inc121 = add i32 %115, 1
  store i32 %inc121, i32* %xx_nstates, align 4
  %idxprom122 = sext i32 %115 to i64
  %116 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %arrayidx123 = getelementptr %struct._ss_state, %struct._ss_state* %116, i64 %idxprom122
  store %struct._ss_state* %arrayidx123, %struct._ss_state** %yy, align 8
  %117 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_bitset124 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %117, i32 0, i32 0
  %118 = load i8*, i8** %sa_bitset124, align 8
  %119 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_ss125 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %119, i32 0, i32 0
  store i8* %118, i8** %ss_ss125, align 8
  %120 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs126 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %120, i32 0, i32 1
  store i32 0, i32* %ss_narcs126, align 4
  %121 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc127 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %121, i32 0, i32 2
  store %struct._ss_arc* null, %struct._ss_arc** %ss_arc127, align 8
  %122 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_deleted128 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %122, i32 0, i32 3
  store i32 0, i32* %ss_deleted128, align 4
  %123 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish129 = getelementptr inbounds %struct._nfa, %struct._nfa* %123, i32 0, i32 5
  %124 = load i32, i32* %nf_finish129, align 4
  %conv130 = sext i32 %124 to i64
  %div131 = udiv i64 %conv130, 8
  %125 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_ss132 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %125, i32 0, i32 0
  %126 = load i8*, i8** %ss_ss132, align 8
  %arrayidx133 = getelementptr i8, i8* %126, i64 %div131
  %127 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %127 to i32
  %128 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish135 = getelementptr inbounds %struct._nfa, %struct._nfa* %128, i32 0, i32 5
  %129 = load i32, i32* %nf_finish135, align 4
  %conv136 = sext i32 %129 to i64
  %rem137 = urem i64 %conv136, 8
  %sh_prom138 = trunc i64 %rem137 to i32
  %shl139 = shl i32 1, %sh_prom138
  %and140 = and i32 %conv134, %shl139
  %cmp141 = icmp ne i32 %and140, 0
  %conv142 = zext i1 %cmp141 to i32
  %130 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_finish143 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %130, i32 0, i32 4
  store i32 %conv142, i32* %ss_finish143, align 4
  br label %done

done:                                             ; preds = %if.end.119, %if.then.106
  br label %for.inc.144

for.inc.144:                                      ; preds = %done
  %131 = load i32, i32* %jarc, align 4
  %inc145 = add i32 %131, 1
  store i32 %inc145, i32* %jarc, align 4
  br label %for.cond.84

for.end.146:                                      ; preds = %for.cond.84
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %132 = load i32, i32* %istate, align 4
  %inc148 = add i32 %132, 1
  store i32 %inc148, i32* %istate, align 4
  br label %for.cond

for.end.149:                                      ; preds = %for.cond
  %133 = load i32, i32* @Py_DebugFlag, align 4
  %tobool150 = icmp ne i32 %133, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %for.end.149
  %134 = load i32, i32* %xx_nstates, align 4
  %135 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %136 = load i32, i32* %nbits, align 4
  %137 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %137, i32 0, i32 2
  call void @printssdfa(i32 %134, %struct._ss_state* %135, i32 %136, %struct.labellist* %gr_ll, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %for.end.149
  %138 = load i32, i32* %xx_nstates, align 4
  %139 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  call void @simplify(i32 %138, %struct._ss_state* %139)
  %140 = load i32, i32* @Py_DebugFlag, align 4
  %tobool153 = icmp ne i32 %140, 0
  br i1 %tobool153, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.end.152
  %141 = load i32, i32* %xx_nstates, align 4
  %142 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %143 = load i32, i32* %nbits, align 4
  %144 = load %struct._nfagrammar*, %struct._nfagrammar** %gr.addr, align 8
  %gr_ll155 = getelementptr inbounds %struct._nfagrammar, %struct._nfagrammar* %144, i32 0, i32 2
  call void @printssdfa(i32 %141, %struct._ss_state* %142, i32 %143, %struct.labellist* %gr_ll155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %if.end.152
  %145 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %146 = load i32, i32* %xx_nstates, align 4
  %147 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  call void @convert(%struct.dfa* %145, i32 %146, %struct._ss_state* %147)
  %148 = load %struct._ss_state*, %struct._ss_state** %xx_state, align 8
  %149 = bitcast %struct._ss_state* %148 to i8*
  call void @PyObject_Free(i8* %149)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dumpstate(%struct.labellist* %ll, %struct._nfa* %nf, i32 %istate) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %istate.addr = alloca i32, align 4
  %st = alloca %struct._nfastate*, align 8
  %i = alloca i32, align 4
  %ar = alloca %struct._nfaarc*, align 8
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store i32 %istate, i32* %istate.addr, align 4
  %0 = load i32, i32* %istate.addr, align 4
  %1 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_start = getelementptr inbounds %struct._nfa, %struct._nfa* %1, i32 0, i32 4
  %2 = load i32, i32* %nf_start, align 4
  %cmp = icmp eq i32 %0, %2
  %cond = select i1 %cmp, i32 42, i32 32
  %3 = load i32, i32* %istate.addr, align 4
  %4 = load i32, i32* %istate.addr, align 4
  %5 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_finish = getelementptr inbounds %struct._nfa, %struct._nfa* %5, i32 0, i32 5
  %6 = load i32, i32* %nf_finish, align 4
  %cmp1 = icmp eq i32 %4, %6
  %cond2 = select i1 %cmp1, i32 46, i32 32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %cond, i32 %3, i32 %cond2)
  %7 = load i32, i32* %istate.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %8, i32 0, i32 3
  %9 = load %struct._nfastate*, %struct._nfastate** %nf_state, align 8
  %arrayidx = getelementptr %struct._nfastate, %struct._nfastate* %9, i64 %idxprom
  store %struct._nfastate* %arrayidx, %struct._nfastate** %st, align 8
  %10 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc = getelementptr inbounds %struct._nfastate, %struct._nfastate* %10, i32 0, i32 1
  %11 = load %struct._nfaarc*, %struct._nfaarc** %st_arc, align 8
  store %struct._nfaarc* %11, %struct._nfaarc** %ar, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs = getelementptr inbounds %struct._nfastate, %struct._nfastate* %13, i32 0, i32 0
  %14 = load i32, i32* %st_narcs, align 4
  %cmp3 = icmp slt i32 %12, %14
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %cmp4 = icmp sgt i32 %15, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_arrow = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %16, i32 0, i32 1
  %17 = load i32, i32* %ar_arrow, align 4
  %18 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %18, i32 0, i32 0
  %19 = load i32, i32* %ar_label, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %20, i32 0, i32 1
  %21 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx7 = getelementptr %struct.label, %struct.label* %21, i64 %idxprom6
  %call8 = call i8* @PyGrammar_LabelRepr(%struct.label* %arrayidx7)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 %17, i8* %call8)
  %22 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %incdec.ptr = getelementptr %struct._nfaarc, %struct._nfaarc* %22, i32 1
  store %struct._nfaarc* %incdec.ptr, %struct._nfaarc** %ar, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

declare i8* @PyGrammar_LabelRepr(%struct.label*) #1

declare i8* @_Py_newbitset(i32) #1

; Function Attrs: nounwind uwtable
define internal void @addclosure(i8* %ss, %struct._nfa* %nf, i32 %istate) #0 {
entry:
  %ss.addr = alloca i8*, align 8
  %nf.addr = alloca %struct._nfa*, align 8
  %istate.addr = alloca i32, align 4
  %st = alloca %struct._nfastate*, align 8
  %ar = alloca %struct._nfaarc*, align 8
  %i = alloca i32, align 4
  store i8* %ss, i8** %ss.addr, align 8
  store %struct._nfa* %nf, %struct._nfa** %nf.addr, align 8
  store i32 %istate, i32* %istate.addr, align 4
  %0 = load i8*, i8** %ss.addr, align 8
  %1 = load i32, i32* %istate.addr, align 4
  %call = call i32 @_Py_addbit(i8* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %istate.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %nf_state = getelementptr inbounds %struct._nfa, %struct._nfa* %3, i32 0, i32 3
  %4 = load %struct._nfastate*, %struct._nfastate** %nf_state, align 8
  %arrayidx = getelementptr %struct._nfastate, %struct._nfastate* %4, i64 %idxprom
  store %struct._nfastate* %arrayidx, %struct._nfastate** %st, align 8
  %5 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_arc = getelementptr inbounds %struct._nfastate, %struct._nfastate* %5, i32 0, i32 1
  %6 = load %struct._nfaarc*, %struct._nfaarc** %st_arc, align 8
  store %struct._nfaarc* %6, %struct._nfaarc** %ar, align 8
  %7 = load %struct._nfastate*, %struct._nfastate** %st, align 8
  %st_narcs = getelementptr inbounds %struct._nfastate, %struct._nfastate* %7, i32 0, i32 0
  %8 = load i32, i32* %st_narcs, align 4
  store i32 %8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %i, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_label = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %10, i32 0, i32 0
  %11 = load i32, i32* %ar_label, align 4
  %cmp1 = icmp eq i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %12 = load i8*, i8** %ss.addr, align 8
  %13 = load %struct._nfa*, %struct._nfa** %nf.addr, align 8
  %14 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %ar_arrow = getelementptr inbounds %struct._nfaarc, %struct._nfaarc* %14, i32 0, i32 1
  %15 = load i32, i32* %ar_arrow, align 4
  call void @addclosure(i8* %12, %struct._nfa* %13, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.body
  %16 = load %struct._nfaarc*, %struct._nfaarc** %ar, align 8
  %incdec.ptr = getelementptr %struct._nfaarc, %struct._nfaarc* %16, i32 1
  store %struct._nfaarc* %incdec.ptr, %struct._nfaarc** %ar, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  ret void
}

declare i32 @_Py_samebitset(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @printssdfa(i32 %xx_nstates, %struct._ss_state* %xx_state, i32 %nbits, %struct.labellist* %ll, i8* %msg) #0 {
entry:
  %xx_nstates.addr = alloca i32, align 4
  %xx_state.addr = alloca %struct._ss_state*, align 8
  %nbits.addr = alloca i32, align 4
  %ll.addr = alloca %struct.labellist*, align 8
  %msg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ibit = alloca i32, align 4
  %iarc = alloca i32, align 4
  %yy = alloca %struct._ss_state*, align 8
  %zz = alloca %struct._ss_arc*, align 8
  store i32 %xx_nstates, i32* %xx_nstates.addr, align 4
  store %struct._ss_state* %xx_state, %struct._ss_state** %xx_state.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %xx_nstates.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx = getelementptr %struct._ss_state, %struct._ss_state* %4, i64 %idxprom
  store %struct._ss_state* %arrayidx, %struct._ss_state** %yy, align 8
  %5 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_deleted = getelementptr inbounds %struct._ss_state, %struct._ss_state* %5, i32 0, i32 3
  %6 = load i32, i32* %ss_deleted, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.32

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 %7)
  %8 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_finish = getelementptr inbounds %struct._ss_state, %struct._ss_state* %8, i32 0, i32 4
  %9 = load i32, i32* %ss_finish, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %ibit, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %ibit, align 4
  %11 = load i32, i32* %nbits.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %12 = load i32, i32* %ibit, align 4
  %conv = sext i32 %12 to i64
  %div = udiv i64 %conv, 8
  %13 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_ss = getelementptr inbounds %struct._ss_state, %struct._ss_state* %13, i32 0, i32 0
  %14 = load i8*, i8** %ss_ss, align 8
  %arrayidx10 = getelementptr i8, i8* %14, i64 %div
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %16 = load i32, i32* %ibit, align 4
  %conv12 = sext i32 %16 to i64
  %rem = urem i64 %conv12, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv11, %shl
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %for.body.9
  %17 = load i32, i32* %ibit, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %18 = load i32, i32* %ibit, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %ibit, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %iarc, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.29, %for.end
  %19 = load i32, i32* %iarc, align 4
  %20 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs = getelementptr inbounds %struct._ss_state, %struct._ss_state* %20, i32 0, i32 1
  %21 = load i32, i32* %ss_narcs, align 4
  %cmp20 = icmp slt i32 %19, %21
  br i1 %cmp20, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %iarc, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc = getelementptr inbounds %struct._ss_state, %struct._ss_state* %23, i32 0, i32 2
  %24 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc, align 8
  %arrayidx24 = getelementptr %struct._ss_arc, %struct._ss_arc* %24, i64 %idxprom23
  store %struct._ss_arc* %arrayidx24, %struct._ss_arc** %zz, align 8
  %25 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_arrow = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %25, i32 0, i32 1
  %26 = load i32, i32* %sa_arrow, align 4
  %27 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_label = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %27, i32 0, i32 2
  %28 = load i32, i32* %sa_label, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %29, i32 0, i32 1
  %30 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx26 = getelementptr %struct.label, %struct.label* %30, i64 %idxprom25
  %call27 = call i8* @PyGrammar_LabelRepr(%struct.label* %arrayidx26)
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i32 %26, i8* %call27)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.22
  %31 = load i32, i32* %iarc, align 4
  %inc30 = add i32 %31, 1
  store i32 %inc30, i32* %iarc, align 4
  br label %for.cond.19

for.end.31:                                       ; preds = %for.cond.19
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31, %if.then
  %32 = load i32, i32* %i, align 4
  %inc33 = add i32 %32, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @simplify(i32 %xx_nstates, %struct._ss_state* %xx_state) #0 {
entry:
  %xx_nstates.addr = alloca i32, align 4
  %xx_state.addr = alloca %struct._ss_state*, align 8
  %changes = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %xx_nstates, i32* %xx_nstates.addr, align 4
  store %struct._ss_state* %xx_state, %struct._ss_state** %xx_state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %changes, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %do.body
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %xx_nstates.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx = getelementptr %struct._ss_state, %struct._ss_state* %3, i64 %idxprom
  %ss_deleted = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx, i32 0, i32 3
  %4 = load i32, i32* %ss_deleted, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.22

if.end:                                           ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %if.end
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx5 = getelementptr %struct._ss_state, %struct._ss_state* %8, i64 %idxprom4
  %ss_deleted6 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx5, i32 0, i32 3
  %9 = load i32, i32* %ss_deleted6, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.3
  br label %for.inc

if.end.9:                                         ; preds = %for.body.3
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx11 = getelementptr %struct._ss_state, %struct._ss_state* %11, i64 %idxprom10
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx13 = getelementptr %struct._ss_state, %struct._ss_state* %13, i64 %idxprom12
  %call = call i32 @samestate(%struct._ss_state* %arrayidx11, %struct._ss_state* %arrayidx13)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.9
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx17 = getelementptr %struct._ss_state, %struct._ss_state* %15, i64 %idxprom16
  %ss_deleted18 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx17, i32 0, i32 3
  %16 = load i32, i32* %ss_deleted18, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %ss_deleted18, align 4
  %17 = load i32, i32* %xx_nstates.addr, align 4
  %18 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  call void @renamestates(i32 %17, %struct._ss_state* %18, i32 %19, i32 %20)
  %21 = load i32, i32* %changes, align 4
  %inc19 = add i32 %21, 1
  store i32 %inc19, i32* %changes, align 4
  br label %for.end

if.end.20:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then.8
  %22 = load i32, i32* %j, align 4
  %inc21 = add i32 %22, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then.15, %for.cond.1
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end, %if.then
  %23 = load i32, i32* %i, align 4
  %inc23 = add i32 %23, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end.24
  %24 = load i32, i32* %changes, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @convert(%struct.dfa* %d, i32 %xx_nstates, %struct._ss_state* %xx_state) #0 {
entry:
  %d.addr = alloca %struct.dfa*, align 8
  %xx_nstates.addr = alloca i32, align 4
  %xx_state.addr = alloca %struct._ss_state*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %yy = alloca %struct._ss_state*, align 8
  %zz = alloca %struct._ss_arc*, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  store i32 %xx_nstates, i32* %xx_nstates.addr, align 4
  store %struct._ss_state* %xx_state, %struct._ss_state** %xx_state.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %xx_nstates.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx = getelementptr %struct._ss_state, %struct._ss_state* %3, i64 %idxprom
  store %struct._ss_state* %arrayidx, %struct._ss_state** %yy, align 8
  %4 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_deleted = getelementptr inbounds %struct._ss_state, %struct._ss_state* %4, i32 0, i32 3
  %5 = load i32, i32* %ss_deleted, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %call = call i32 @_Py_addstate(%struct.dfa* %6)
  %7 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_rename = getelementptr inbounds %struct._ss_state, %struct._ss_state* %7, i32 0, i32 5
  store i32 %call, i32* %ss_rename, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.27, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %xx_nstates.addr, align 4
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %for.body.3, label %for.end.29

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx5 = getelementptr %struct._ss_state, %struct._ss_state* %12, i64 %idxprom4
  store %struct._ss_state* %arrayidx5, %struct._ss_state** %yy, align 8
  %13 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_deleted6 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %13, i32 0, i32 3
  %14 = load i32, i32* %ss_deleted6, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.3
  br label %for.inc.27

if.end.9:                                         ; preds = %for.body.3
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %if.end.9
  %15 = load i32, i32* %j, align 4
  %16 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_narcs = getelementptr inbounds %struct._ss_state, %struct._ss_state* %16, i32 0, i32 1
  %17 = load i32, i32* %ss_narcs, align 4
  %cmp11 = icmp slt i32 %15, %17
  br i1 %cmp11, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_arc = getelementptr inbounds %struct._ss_state, %struct._ss_state* %19, i32 0, i32 2
  %20 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc, align 8
  %arrayidx14 = getelementptr %struct._ss_arc, %struct._ss_arc* %20, i64 %idxprom13
  store %struct._ss_arc* %arrayidx14, %struct._ss_arc** %zz, align 8
  %21 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %22 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_rename15 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %22, i32 0, i32 5
  %23 = load i32, i32* %ss_rename15, align 4
  %24 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_arrow = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %24, i32 0, i32 1
  %25 = load i32, i32* %sa_arrow, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx17 = getelementptr %struct._ss_state, %struct._ss_state* %26, i64 %idxprom16
  %ss_rename18 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx17, i32 0, i32 5
  %27 = load i32, i32* %ss_rename18, align 4
  %28 = load %struct._ss_arc*, %struct._ss_arc** %zz, align 8
  %sa_label = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %28, i32 0, i32 2
  %29 = load i32, i32* %sa_label, align 4
  call void @_Py_addarc(%struct.dfa* %21, i32 %23, i32 %27, i32 %29)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %30 = load i32, i32* %j, align 4
  %inc20 = add i32 %30, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.10

for.end.21:                                       ; preds = %for.cond.10
  %31 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_finish = getelementptr inbounds %struct._ss_state, %struct._ss_state* %31, i32 0, i32 4
  %32 = load i32, i32* %ss_finish, align 4
  %tobool22 = icmp ne i32 %32, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %for.end.21
  %33 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %34 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_rename24 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %34, i32 0, i32 5
  %35 = load i32, i32* %ss_rename24, align 4
  %36 = load %struct._ss_state*, %struct._ss_state** %yy, align 8
  %ss_rename25 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %36, i32 0, i32 5
  %37 = load i32, i32* %ss_rename25, align 4
  call void @_Py_addarc(%struct.dfa* %33, i32 %35, i32 %37, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %for.end.21
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26, %if.then.8
  %38 = load i32, i32* %i, align 4
  %inc28 = add i32 %38, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.1

for.end.29:                                       ; preds = %for.cond.1
  %39 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_initial = getelementptr inbounds %struct.dfa, %struct.dfa* %39, i32 0, i32 2
  store i32 0, i32* %d_initial, align 4
  ret void
}

declare i32 @_Py_addbit(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @samestate(%struct._ss_state* %s1, %struct._ss_state* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca %struct._ss_state*, align 8
  %s2.addr = alloca %struct._ss_state*, align 8
  %i = alloca i32, align 4
  store %struct._ss_state* %s1, %struct._ss_state** %s1.addr, align 8
  store %struct._ss_state* %s2, %struct._ss_state** %s2.addr, align 8
  %0 = load %struct._ss_state*, %struct._ss_state** %s1.addr, align 8
  %ss_narcs = getelementptr inbounds %struct._ss_state, %struct._ss_state* %0, i32 0, i32 1
  %1 = load i32, i32* %ss_narcs, align 4
  %2 = load %struct._ss_state*, %struct._ss_state** %s2.addr, align 8
  %ss_narcs1 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %2, i32 0, i32 1
  %3 = load i32, i32* %ss_narcs1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._ss_state*, %struct._ss_state** %s1.addr, align 8
  %ss_finish = getelementptr inbounds %struct._ss_state, %struct._ss_state* %4, i32 0, i32 4
  %5 = load i32, i32* %ss_finish, align 4
  %6 = load %struct._ss_state*, %struct._ss_state** %s2.addr, align 8
  %ss_finish2 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %6, i32 0, i32 4
  %7 = load i32, i32* %ss_finish2, align 4
  %cmp3 = icmp ne i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._ss_state*, %struct._ss_state** %s1.addr, align 8
  %ss_narcs4 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %9, i32 0, i32 1
  %10 = load i32, i32* %ss_narcs4, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._ss_state*, %struct._ss_state** %s1.addr, align 8
  %ss_arc = getelementptr inbounds %struct._ss_state, %struct._ss_state* %12, i32 0, i32 2
  %13 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc, align 8
  %arrayidx = getelementptr %struct._ss_arc, %struct._ss_arc* %13, i64 %idxprom
  %sa_arrow = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx, i32 0, i32 1
  %14 = load i32, i32* %sa_arrow, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct._ss_state*, %struct._ss_state** %s2.addr, align 8
  %ss_arc7 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %16, i32 0, i32 2
  %17 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc7, align 8
  %arrayidx8 = getelementptr %struct._ss_arc, %struct._ss_arc* %17, i64 %idxprom6
  %sa_arrow9 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx8, i32 0, i32 1
  %18 = load i32, i32* %sa_arrow9, align 4
  %cmp10 = icmp ne i32 %14, %18
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct._ss_state*, %struct._ss_state** %s1.addr, align 8
  %ss_arc13 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %20, i32 0, i32 2
  %21 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc13, align 8
  %arrayidx14 = getelementptr %struct._ss_arc, %struct._ss_arc* %21, i64 %idxprom12
  %sa_label = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx14, i32 0, i32 2
  %22 = load i32, i32* %sa_label, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct._ss_state*, %struct._ss_state** %s2.addr, align 8
  %ss_arc16 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %24, i32 0, i32 2
  %25 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc16, align 8
  %arrayidx17 = getelementptr %struct._ss_arc, %struct._ss_arc* %25, i64 %idxprom15
  %sa_label18 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx17, i32 0, i32 2
  %26 = load i32, i32* %sa_label18, align 4
  %cmp19 = icmp ne i32 %22, %26
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.11, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.20, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @renamestates(i32 %xx_nstates, %struct._ss_state* %xx_state, i32 %from, i32 %to) #0 {
entry:
  %xx_nstates.addr = alloca i32, align 4
  %xx_state.addr = alloca %struct._ss_state*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %xx_nstates, i32* %xx_nstates.addr, align 4
  store %struct._ss_state* %xx_state, %struct._ss_state** %xx_state.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %from.addr, align 4
  %2 = load i32, i32* %to.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i32 %1, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %xx_nstates.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx = getelementptr %struct._ss_state, %struct._ss_state* %6, i64 %idxprom
  %ss_deleted = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx, i32 0, i32 3
  %7 = load i32, i32* %ss_deleted, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  br label %for.inc.22

if.end.3:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end.3
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx6 = getelementptr %struct._ss_state, %struct._ss_state* %10, i64 %idxprom5
  %ss_narcs = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx6, i32 0, i32 1
  %11 = load i32, i32* %ss_narcs, align 4
  %cmp7 = icmp slt i32 %8, %11
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx11 = getelementptr %struct._ss_state, %struct._ss_state* %14, i64 %idxprom10
  %ss_arc = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx11, i32 0, i32 2
  %15 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc, align 8
  %arrayidx12 = getelementptr %struct._ss_arc, %struct._ss_arc* %15, i64 %idxprom9
  %sa_arrow = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx12, i32 0, i32 1
  %16 = load i32, i32* %sa_arrow, align 4
  %17 = load i32, i32* %from.addr, align 4
  %cmp13 = icmp eq i32 %16, %17
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %for.body.8
  %18 = load i32, i32* %to.addr, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct._ss_state*, %struct._ss_state** %xx_state.addr, align 8
  %arrayidx17 = getelementptr %struct._ss_state, %struct._ss_state* %21, i64 %idxprom16
  %ss_arc18 = getelementptr inbounds %struct._ss_state, %struct._ss_state* %arrayidx17, i32 0, i32 2
  %22 = load %struct._ss_arc*, %struct._ss_arc** %ss_arc18, align 8
  %arrayidx19 = getelementptr %struct._ss_arc, %struct._ss_arc* %22, i64 %idxprom15
  %sa_arrow20 = getelementptr inbounds %struct._ss_arc, %struct._ss_arc* %arrayidx19, i32 0, i32 1
  store i32 %18, i32* %sa_arrow20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.14, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %23 = load i32, i32* %j, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end, %if.then.2
  %24 = load i32, i32* %i, align 4
  %inc23 = add i32 %24, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

declare i32 @_Py_addstate(%struct.dfa*) #1

declare void @_Py_addarc(%struct.dfa*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
