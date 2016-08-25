; ModuleID = './parser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.parser_state = type { %struct.stack, %struct.grammar*, %struct._node*, i64 }
%struct.stack = type { %struct.stackentry*, [1500 x %struct.stackentry] }
%struct.stackentry = type { i32, %struct.dfa*, %struct._node* }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"s_push: parser stack overflow\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.parser_state* @PyParser_New(%struct.grammar* %g, i32 %start) #0 {
entry:
  %retval = alloca %struct.parser_state*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps = alloca %struct.parser_state*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %0, i32 0, i32 4
  %1 = load i32, i32* %g_accel, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  call void @PyGrammar_AddAccelerators(%struct.grammar* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i8* @PyMem_Malloc(i64 36032)
  %3 = bitcast i8* %call to %struct.parser_state*
  store %struct.parser_state* %3, %struct.parser_state** %ps, align 8
  %4 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %cmp = icmp eq %struct.parser_state* %4, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct.parser_state* null, %struct.parser_state** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %6 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %6, i32 0, i32 1
  store %struct.grammar* %5, %struct.grammar** %p_grammar, align 8
  %7 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_flags = getelementptr inbounds %struct.parser_state, %struct.parser_state* %7, i32 0, i32 3
  store i64 0, i64* %p_flags, align 8
  %8 = load i32, i32* %start.addr, align 4
  %call3 = call %struct._node* @PyNode_New(i32 %8)
  %9 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %9, i32 0, i32 2
  store %struct._node* %call3, %struct._node** %p_tree, align 8
  %10 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_tree4 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %10, i32 0, i32 2
  %11 = load %struct._node*, %struct._node** %p_tree4, align 8
  %cmp5 = icmp eq %struct._node* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %12 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %13 = bitcast %struct.parser_state* %12 to i8*
  call void @PyMem_Free(i8* %13)
  store %struct.parser_state* null, %struct.parser_state** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %14 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_stack = getelementptr inbounds %struct.parser_state, %struct.parser_state* %14, i32 0, i32 0
  call void @s_reset(%struct.stack* %p_stack)
  %15 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_stack8 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %15, i32 0, i32 0
  %16 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %17 = load i32, i32* %start.addr, align 4
  %call9 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %16, i32 %17)
  %18 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_tree10 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %18, i32 0, i32 2
  %19 = load %struct._node*, %struct._node** %p_tree10, align 8
  %call11 = call i32 @s_push(%struct.stack* %p_stack8, %struct.dfa* %call9, %struct._node* %19)
  %20 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  store %struct.parser_state* %20, %struct.parser_state** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.1
  %21 = load %struct.parser_state*, %struct.parser_state** %retval
  ret %struct.parser_state* %21
}

declare void @PyGrammar_AddAccelerators(%struct.grammar*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._node* @PyNode_New(i32) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @s_reset(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 1
  %arrayidx = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i64 1500
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0
  store %struct.stackentry* %arrayidx, %struct.stackentry** %s_top, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_push(%struct.stack* %s, %struct.dfa* %d, %struct._node* %parent) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %parent.addr = alloca %struct._node*, align 8
  %top = alloca %struct.stackentry*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  store %struct._node* %parent, %struct._node** %parent.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 0
  %1 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8
  %2 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i32 0
  %cmp = icmp eq %struct.stackentry* %1, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  store i32 15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %4, i32 0, i32 0
  %5 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8
  %incdec.ptr = getelementptr %struct.stackentry, %struct.stackentry* %5, i32 -1
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %s_top1, align 8
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %top, align 8
  %6 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %7 = load %struct.stackentry*, %struct.stackentry** %top, align 8
  %s_dfa = getelementptr inbounds %struct.stackentry, %struct.stackentry* %7, i32 0, i32 1
  store %struct.dfa* %6, %struct.dfa** %s_dfa, align 8
  %8 = load %struct._node*, %struct._node** %parent.addr, align 8
  %9 = load %struct.stackentry*, %struct.stackentry** %top, align 8
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %9, i32 0, i32 2
  store %struct._node* %8, %struct._node** %s_parent, align 8
  %10 = load %struct.stackentry*, %struct.stackentry** %top, align 8
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %10, i32 0, i32 0
  store i32 0, i32* %s_state, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #1

; Function Attrs: nounwind uwtable
define void @PyParser_Delete(%struct.parser_state* %ps) #0 {
entry:
  %ps.addr = alloca %struct.parser_state*, align 8
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8
  %0 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %0, i32 0, i32 2
  %1 = load %struct._node*, %struct._node** %p_tree, align 8
  call void @PyNode_Free(%struct._node* %1)
  %2 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %3 = bitcast %struct.parser_state* %2 to i8*
  call void @PyMem_Free(i8* %3)
  ret void
}

declare void @PyNode_Free(%struct._node*) #1

; Function Attrs: nounwind uwtable
define i32 @PyParser_AddToken(%struct.parser_state* %ps, i32 %type, i8* %str, i32 %lineno, i32 %col_offset, i32* %expected_ret) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.parser_state*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %expected_ret.addr = alloca i32*, align 8
  %ilabel = alloca i32, align 4
  %err = alloca i32, align 4
  %d = alloca %struct.dfa*, align 8
  %s = alloca %struct.state*, align 8
  %x = alloca i32, align 4
  %nt = alloca i32, align 4
  %arrow = alloca i32, align 4
  %d1 = alloca %struct.dfa*, align 8
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  store i32* %expected_ret, i32** %expected_ret.addr, align 8
  %0 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 @classify(%struct.parser_state* %0, i32 %1, i8* %2)
  store i32 %call, i32* %ilabel, align 4
  %3 = load i32, i32* %ilabel, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.60, %if.end.18, %if.end
  %4 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack = getelementptr inbounds %struct.parser_state, %struct.parser_state* %4, i32 0, i32 0
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %p_stack, i32 0, i32 0
  %5 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8
  %s_dfa = getelementptr inbounds %struct.stackentry, %struct.stackentry* %5, i32 0, i32 1
  %6 = load %struct.dfa*, %struct.dfa** %s_dfa, align 8
  store %struct.dfa* %6, %struct.dfa** %d, align 8
  %7 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack1 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %7, i32 0, i32 0
  %s_top2 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack1, i32 0, i32 0
  %8 = load %struct.stackentry*, %struct.stackentry** %s_top2, align 8
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %8, i32 0, i32 0
  %9 = load i32, i32* %s_state, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 4
  %11 = load %struct.state*, %struct.state** %d_state, align 8
  %arrayidx = getelementptr %struct.state, %struct.state* %11, i64 %idxprom
  store %struct.state* %arrayidx, %struct.state** %s, align 8
  %12 = load %struct.state*, %struct.state** %s, align 8
  %s_lower = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 2
  %13 = load i32, i32* %s_lower, align 4
  %14 = load i32, i32* %ilabel, align 4
  %cmp3 = icmp sle i32 %13, %14
  br i1 %cmp3, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.cond
  %15 = load i32, i32* %ilabel, align 4
  %16 = load %struct.state*, %struct.state** %s, align 8
  %s_upper = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 3
  %17 = load i32, i32* %s_upper, align 4
  %cmp4 = icmp slt i32 %15, %17
  br i1 %cmp4, label %if.then.5, label %if.end.46

if.then.5:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %ilabel, align 4
  %19 = load %struct.state*, %struct.state** %s, align 8
  %s_lower6 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 2
  %20 = load i32, i32* %s_lower6, align 4
  %sub = sub i32 %18, %20
  %idxprom7 = sext i32 %sub to i64
  %21 = load %struct.state*, %struct.state** %s, align 8
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %21, i32 0, i32 4
  %22 = load i32*, i32** %s_accel, align 8
  %arrayidx8 = getelementptr i32, i32* %22, i64 %idxprom7
  %23 = load i32, i32* %arrayidx8, align 4
  store i32 %23, i32* %x, align 4
  %24 = load i32, i32* %x, align 4
  %cmp9 = icmp ne i32 %24, -1
  br i1 %cmp9, label %if.then.10, label %if.end.45

if.then.10:                                       ; preds = %if.then.5
  %25 = load i32, i32* %x, align 4
  %and = and i32 %25, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.then.10
  %26 = load i32, i32* %x, align 4
  %shr = ashr i32 %26, 8
  %add = add i32 %shr, 256
  store i32 %add, i32* %nt, align 4
  %27 = load i32, i32* %x, align 4
  %and12 = and i32 %27, 127
  store i32 %and12, i32* %arrow, align 4
  %28 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %28, i32 0, i32 1
  %29 = load %struct.grammar*, %struct.grammar** %p_grammar, align 8
  %30 = load i32, i32* %nt, align 4
  %call13 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %29, i32 %30)
  store %struct.dfa* %call13, %struct.dfa** %d1, align 8
  %31 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack14 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %31, i32 0, i32 0
  %32 = load i32, i32* %nt, align 4
  %33 = load %struct.dfa*, %struct.dfa** %d1, align 8
  %34 = load i32, i32* %arrow, align 4
  %35 = load i32, i32* %lineno.addr, align 4
  %36 = load i32, i32* %col_offset.addr, align 4
  %call15 = call i32 @push(%struct.stack* %p_stack14, i32 %32, %struct.dfa* %33, i32 %34, i32 %35, i32 %36)
  store i32 %call15, i32* %err, align 4
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  %37 = load i32, i32* %err, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.11
  br label %for.cond

if.end.19:                                        ; preds = %if.then.10
  %38 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack20 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %38, i32 0, i32 0
  %39 = load i32, i32* %type.addr, align 4
  %40 = load i8*, i8** %str.addr, align 8
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %lineno.addr, align 4
  %43 = load i32, i32* %col_offset.addr, align 4
  %call21 = call i32 @shift(%struct.stack* %p_stack20, i32 %39, i8* %40, i32 %41, i32 %42, i32 %43)
  store i32 %call21, i32* %err, align 4
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %44 = load i32, i32* %err, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end.24
  %45 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack25 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %45, i32 0, i32 0
  %s_top26 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack25, i32 0, i32 0
  %46 = load %struct.stackentry*, %struct.stackentry** %s_top26, align 8
  %s_state27 = getelementptr inbounds %struct.stackentry, %struct.stackentry* %46, i32 0, i32 0
  %47 = load i32, i32* %s_state27, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_state29 = getelementptr inbounds %struct.dfa, %struct.dfa* %48, i32 0, i32 4
  %49 = load %struct.state*, %struct.state** %d_state29, align 8
  %arrayidx30 = getelementptr %struct.state, %struct.state* %49, i64 %idxprom28
  store %struct.state* %arrayidx30, %struct.state** %s, align 8
  %50 = load %struct.state*, %struct.state** %s, align 8
  %s_accept = getelementptr inbounds %struct.state, %struct.state* %50, i32 0, i32 5
  %51 = load i32, i32* %s_accept, align 4
  %tobool31 = icmp ne i32 %51, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %52 = load %struct.state*, %struct.state** %s, align 8
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %52, i32 0, i32 0
  %53 = load i32, i32* %s_narcs, align 4
  %cmp32 = icmp eq i32 %53, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs ]
  br i1 %54, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %55 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack33 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %55, i32 0, i32 0
  %s_top34 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack33, i32 0, i32 0
  %56 = load %struct.stackentry*, %struct.stackentry** %s_top34, align 8
  %incdec.ptr = getelementptr %struct.stackentry, %struct.stackentry* %56, i32 1
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %s_top34, align 8
  %57 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack35 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %57, i32 0, i32 0
  %s_top36 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack35, i32 0, i32 0
  %58 = load %struct.stackentry*, %struct.stackentry** %s_top36, align 8
  %59 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack37 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %59, i32 0, i32 0
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %p_stack37, i32 0, i32 1
  %arrayidx38 = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i64 1500
  %cmp39 = icmp eq %struct.stackentry* %58, %arrayidx38
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  store i32 16, i32* %retval
  br label %return

if.end.41:                                        ; preds = %while.body
  %60 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack42 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %60, i32 0, i32 0
  %s_top43 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack42, i32 0, i32 0
  %61 = load %struct.stackentry*, %struct.stackentry** %s_top43, align 8
  %s_dfa44 = getelementptr inbounds %struct.stackentry, %struct.stackentry* %61, i32 0, i32 1
  %62 = load %struct.dfa*, %struct.dfa** %s_dfa44, align 8
  store %struct.dfa* %62, %struct.dfa** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 10, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.5
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %for.cond
  %63 = load %struct.state*, %struct.state** %s, align 8
  %s_accept47 = getelementptr inbounds %struct.state, %struct.state* %63, i32 0, i32 5
  %64 = load i32, i32* %s_accept47, align 4
  %tobool48 = icmp ne i32 %64, 0
  br i1 %tobool48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %if.end.46
  %65 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack50 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %65, i32 0, i32 0
  %s_top51 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack50, i32 0, i32 0
  %66 = load %struct.stackentry*, %struct.stackentry** %s_top51, align 8
  %incdec.ptr52 = getelementptr %struct.stackentry, %struct.stackentry* %66, i32 1
  store %struct.stackentry* %incdec.ptr52, %struct.stackentry** %s_top51, align 8
  %67 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack53 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %67, i32 0, i32 0
  %s_top54 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack53, i32 0, i32 0
  %68 = load %struct.stackentry*, %struct.stackentry** %s_top54, align 8
  %69 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_stack55 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %69, i32 0, i32 0
  %s_base56 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack55, i32 0, i32 1
  %arrayidx57 = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base56, i32 0, i64 1500
  %cmp58 = icmp eq %struct.stackentry* %68, %arrayidx57
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.49
  store i32 14, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.49
  br label %for.cond

if.end.61:                                        ; preds = %if.end.46
  %70 = load i32*, i32** %expected_ret.addr, align 8
  %tobool62 = icmp ne i32* %70, null
  br i1 %tobool62, label %if.then.63, label %if.end.74

if.then.63:                                       ; preds = %if.end.61
  %71 = load %struct.state*, %struct.state** %s, align 8
  %s_lower64 = getelementptr inbounds %struct.state, %struct.state* %71, i32 0, i32 2
  %72 = load i32, i32* %s_lower64, align 4
  %73 = load %struct.state*, %struct.state** %s, align 8
  %s_upper65 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 3
  %74 = load i32, i32* %s_upper65, align 4
  %sub66 = sub i32 %74, 1
  %cmp67 = icmp eq i32 %72, %sub66
  br i1 %cmp67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.then.63
  %75 = load %struct.state*, %struct.state** %s, align 8
  %s_lower69 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 2
  %76 = load i32, i32* %s_lower69, align 4
  %idxprom70 = sext i32 %76 to i64
  %77 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_grammar71 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %77, i32 0, i32 1
  %78 = load %struct.grammar*, %struct.grammar** %p_grammar71, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %78, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 1
  %79 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx72 = getelementptr %struct.label, %struct.label* %79, i64 %idxprom70
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %arrayidx72, i32 0, i32 0
  %80 = load i32, i32* %lb_type, align 4
  %81 = load i32*, i32** %expected_ret.addr, align 8
  store i32 %80, i32* %81, align 4
  br label %if.end.73

if.else:                                          ; preds = %if.then.63
  %82 = load i32*, i32** %expected_ret.addr, align 8
  store i32 -1, i32* %82, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.61
  store i32 14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.59, %while.end, %if.then.40, %if.then.23, %if.then.17, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @classify(%struct.parser_state* %ps, i32 %type, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.parser_state*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %g = alloca %struct.grammar*, align 8
  %n = alloca i32, align 4
  %s = alloca i8*, align 8
  %l = alloca %struct.label*, align 8
  %i = alloca i32, align 4
  %l17 = alloca %struct.label*, align 8
  %i20 = alloca i32, align 4
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %0, i32 0, i32 1
  %1 = load %struct.grammar*, %struct.grammar** %p_grammar, align 8
  store %struct.grammar* %1, %struct.grammar** %g, align 8
  %2 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0
  %3 = load i32, i32* %ll_nlabels, align 4
  store i32 %3, i32* %n, align 4
  %4 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  store i8* %5, i8** %s, align 8
  %6 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll1 = getelementptr inbounds %struct.grammar, %struct.grammar* %6, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll1, i32 0, i32 1
  %7 = load %struct.label*, %struct.label** %ll_label, align 8
  store %struct.label* %7, %struct.label** %l, align 8
  %8 = load i32, i32* %n, align 4
  store i32 %8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.label*, %struct.label** %l, align 8
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %10, i32 0, i32 0
  %11 = load i32, i32* %lb_type, align 4
  %cmp3 = icmp ne i32 %11, 1
  br i1 %cmp3, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.label*, %struct.label** %l, align 8
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %12, i32 0, i32 1
  %13 = load i8*, i8** %lb_str, align 8
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %14 = load %struct.label*, %struct.label** %l, align 8
  %lb_str6 = getelementptr inbounds %struct.label, %struct.label* %14, i32 0, i32 1
  %15 = load i8*, i8** %lb_str6, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %17 = load i8*, i8** %s, align 8
  %arrayidx7 = getelementptr i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %18 to i32
  %cmp9 = icmp ne i32 %conv, %conv8
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.5
  %19 = load %struct.label*, %struct.label** %l, align 8
  %lb_str12 = getelementptr inbounds %struct.label, %struct.label* %19, i32 0, i32 1
  %20 = load i8*, i8** %lb_str12, align 8
  %21 = load i8*, i8** %s, align 8
  %call = call i32 @strcmp(i8* %20, i8* %21) #3
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.5, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.11
  %22 = load i32, i32* %n, align 4
  %23 = load i32, i32* %i, align 4
  %sub = sub i32 %22, %23
  store i32 %sub, i32* %retval
  br label %return

for.inc:                                          ; preds = %if.then.15
  %24 = load i32, i32* %i, align 4
  %dec = add i32 %24, -1
  store i32 %dec, i32* %i, align 4
  %25 = load %struct.label*, %struct.label** %l, align 8
  %incdec.ptr = getelementptr %struct.label, %struct.label* %25, i32 1
  store %struct.label* %incdec.ptr, %struct.label** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  %26 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll18 = getelementptr inbounds %struct.grammar, %struct.grammar* %26, i32 0, i32 2
  %ll_label19 = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll18, i32 0, i32 1
  %27 = load %struct.label*, %struct.label** %ll_label19, align 8
  store %struct.label* %27, %struct.label** %l17, align 8
  %28 = load i32, i32* %n, align 4
  store i32 %28, i32* %i20, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.34, %if.end.16
  %29 = load i32, i32* %i20, align 4
  %cmp22 = icmp sgt i32 %29, 0
  br i1 %cmp22, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.21
  %30 = load %struct.label*, %struct.label** %l17, align 8
  %lb_type25 = getelementptr inbounds %struct.label, %struct.label* %30, i32 0, i32 0
  %31 = load i32, i32* %lb_type25, align 4
  %32 = load i32, i32* %type.addr, align 4
  %cmp26 = icmp eq i32 %31, %32
  br i1 %cmp26, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body.24
  %33 = load %struct.label*, %struct.label** %l17, align 8
  %lb_str28 = getelementptr inbounds %struct.label, %struct.label* %33, i32 0, i32 1
  %34 = load i8*, i8** %lb_str28, align 8
  %cmp29 = icmp eq i8* %34, null
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %n, align 4
  %36 = load i32, i32* %i20, align 4
  %sub32 = sub i32 %35, %36
  store i32 %sub32, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true, %for.body.24
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %37 = load i32, i32* %i20, align 4
  %dec35 = add i32 %37, -1
  store i32 %dec35, i32* %i20, align 4
  %38 = load %struct.label*, %struct.label** %l17, align 8
  %incdec.ptr36 = getelementptr %struct.label, %struct.label* %38, i32 1
  store %struct.label* %incdec.ptr36, %struct.label** %l17, align 8
  br label %for.cond.21

for.end.37:                                       ; preds = %for.cond.21
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then.31, %if.end
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @push(%struct.stack* %s, i32 %type, %struct.dfa* %d, i32 %newstate, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %type.addr = alloca i32, align 4
  %d.addr = alloca %struct.dfa*, align 8
  %newstate.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  store i32 %newstate, i32* %newstate.addr, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 0
  %1 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %1, i32 0, i32 2
  %2 = load %struct._node*, %struct._node** %s_parent, align 8
  store %struct._node* %2, %struct._node** %n, align 8
  %3 = load %struct._node*, %struct._node** %n, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load i32, i32* %lineno.addr, align 4
  %6 = load i32, i32* %col_offset.addr, align 4
  %call = call i32 @PyNode_AddChild(%struct._node* %3, i32 %4, i8* null, i32 %5, i32 %6)
  store i32 %call, i32* %err, align 4
  %7 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %newstate.addr, align 4
  %10 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 0
  %11 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %11, i32 0, i32 0
  store i32 %9, i32* %s_state, align 4
  %12 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %13 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %14 = load %struct._node*, %struct._node** %n, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 4
  %15 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %15, 1
  %idxprom = sext i32 %sub to i64
  %16 = load %struct._node*, %struct._node** %n, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %17, i64 %idxprom
  %call2 = call i32 @s_push(%struct.stack* %12, %struct.dfa* %13, %struct._node* %arrayidx)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @shift(%struct.stack* %s, i32 %type, i8* %str, i32 %newstate, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %newstate.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.stack* %s, %struct.stack** %s.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %newstate, i32* %newstate.addr, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 0
  %1 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %1, i32 0, i32 2
  %2 = load %struct._node*, %struct._node** %s_parent, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %lineno.addr, align 4
  %6 = load i32, i32* %col_offset.addr, align 4
  %call = call i32 @PyNode_AddChild(%struct._node* %2, i32 %3, i8* %4, i32 %5, i32 %6)
  store i32 %call, i32* %err, align 4
  %7 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %newstate.addr, align 4
  %10 = load %struct.stack*, %struct.stack** %s.addr, align 8
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 0
  %11 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %11, i32 0, i32 0
  store i32 %9, i32* %s_state, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @PyNode_AddChild(%struct._node*, i32, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
