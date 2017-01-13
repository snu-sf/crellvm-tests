; ModuleID = './MultiSource.Benchmarks.Prolangs-C/72.agrep.parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.anon.3 = type { i16, %struct.rnode* }
%struct.snode = type { %struct.rnode*, i32, %struct.snode* }

@pos_cnt = global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"parse_re: unknown token type %d\0A\00", align 1
@final_pos = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.rnode* @mk_leaf(i16 signext %opval, i16 signext %type, i8 signext %ch, %struct.ch_set* %cset) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %opval.addr = alloca i16, align 2
  %type.addr = alloca i16, align 2
  %ch.addr = alloca i8, align 1
  %cset.addr = alloca %struct.ch_set*, align 8
  %node = alloca %struct.rnode*, align 8
  %l = alloca %struct.anon*, align 8
  store i16 %opval, i16* %opval.addr, align 2
  store i16 %type, i16* %type.addr, align 2
  store i8 %ch, i8* %ch.addr, align 1
  store %struct.ch_set* %cset, %struct.ch_set** %cset.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.anon*
  store %struct.anon* %0, %struct.anon** %l, align 8
  %call1 = call noalias i8* @malloc(i64 48) #3
  %1 = bitcast i8* %call1 to %struct.rnode*
  store %struct.rnode* %1, %struct.rnode** %node, align 8
  %2 = load %struct.anon*, %struct.anon** %l, align 8
  %cmp = icmp eq %struct.anon* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rnode*, %struct.rnode** %node, align 8
  %cmp2 = icmp eq %struct.rnode* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i16, i16* %type.addr, align 2
  %5 = load %struct.anon*, %struct.anon** %l, align 8
  %l_type = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 1
  store i16 %4, i16* %l_type, align 2
  %6 = load i32, i32* @pos_cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @pos_cnt, align 4
  %7 = load %struct.anon*, %struct.anon** %l, align 8
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i32 %6, i32* %pos, align 4
  %8 = load i16, i16* %type.addr, align 2
  %conv = sext i16 %8 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.ch_set*, %struct.ch_set** %cset.addr, align 8
  %10 = load %struct.anon*, %struct.anon** %l, align 8
  %val = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 2
  %cset6 = bitcast %union.anon.0* %val to %struct.ch_set**
  store %struct.ch_set* %9, %struct.ch_set** %cset6, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %11 = load i8, i8* %ch.addr, align 1
  %12 = load %struct.anon*, %struct.anon** %l, align 8
  %val7 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %c = bitcast %union.anon.0* %val7 to i8*
  store i8 %11, i8* %c, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %13 = load i16, i16* %opval.addr, align 2
  %14 = load %struct.rnode*, %struct.rnode** %node, align 8
  %op = getelementptr inbounds %struct.rnode, %struct.rnode* %14, i32 0, i32 0
  store i16 %13, i16* %op, align 2
  %15 = load %struct.anon*, %struct.anon** %l, align 8
  %16 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i32 0, i32 1
  %lit = bitcast %union.anon* %refs to %struct.anon**
  store %struct.anon* %15, %struct.anon** %lit, align 8
  %17 = load %struct.rnode*, %struct.rnode** %node, align 8
  %nullable = getelementptr inbounds %struct.rnode, %struct.rnode* %17, i32 0, i32 2
  store i16 0, i16* %nullable, align 2
  %18 = load %struct.anon*, %struct.anon** %l, align 8
  %pos9 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %19 = load i32, i32* %pos9, align 4
  %call10 = call %struct.pnode* @create_pos(i32 %19)
  %20 = load %struct.rnode*, %struct.rnode** %node, align 8
  %firstposn = getelementptr inbounds %struct.rnode, %struct.rnode* %20, i32 0, i32 3
  store %struct.pnode* %call10, %struct.pnode** %firstposn, align 8
  %21 = load %struct.rnode*, %struct.rnode** %node, align 8
  %firstposn11 = getelementptr inbounds %struct.rnode, %struct.rnode* %21, i32 0, i32 3
  %22 = load %struct.pnode*, %struct.pnode** %firstposn11, align 8
  %23 = load %struct.rnode*, %struct.rnode** %node, align 8
  %lastposn = getelementptr inbounds %struct.rnode, %struct.rnode* %23, i32 0, i32 4
  store %struct.pnode* %22, %struct.pnode** %lastposn, align 8
  %24 = load %struct.rnode*, %struct.rnode** %node, align 8
  store %struct.rnode* %24, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %25 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %25
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.pnode* @create_pos(i32) #2

; Function Attrs: nounwind uwtable
define %struct.rnode* @parse_cset(i8** %s) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %s.addr = alloca i8**, align 8
  %cs_ptr = alloca %struct.ch_set*, align 8
  %curr_ptr = alloca %struct.ch_set*, align 8
  %prev_ptr = alloca %struct.ch_set*, align 8
  %ch = alloca i8, align 1
  %range = alloca %struct.anon.1*, align 8
  store i8** %s, i8*** %s.addr, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8**, i8*** %s.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 93
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias i8* @malloc(i64 16) #3
  %6 = bitcast i8* %call to %struct.ch_set*
  store %struct.ch_set* %6, %struct.ch_set** %curr_ptr, align 8
  %7 = load %struct.ch_set*, %struct.ch_set** %curr_ptr, align 8
  store %struct.ch_set* %7, %struct.ch_set** %cs_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end
  %8 = load i8**, i8*** %s.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %11 = load i8**, i8*** %s.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 93
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %14 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  %lnot = xor i1 %14, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call11 = call noalias i8* @malloc(i64 2) #3
  %15 = bitcast i8* %call11 to %struct.anon.1*
  store %struct.anon.1* %15, %struct.anon.1** %range, align 8
  %16 = load %struct.anon.1*, %struct.anon.1** %range, align 8
  %17 = load %struct.ch_set*, %struct.ch_set** %curr_ptr, align 8
  %elt = getelementptr inbounds %struct.ch_set, %struct.ch_set* %17, i32 0, i32 0
  store %struct.anon.1* %16, %struct.anon.1** %elt, align 8
  %18 = load i8**, i8*** %s.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %ch, align 1
  %21 = load i8, i8* %ch, align 1
  %conv12 = sext i8 %21 to i32
  %cmp13 = icmp eq i32 %conv12, 45
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.16:                                        ; preds = %while.body
  %22 = load i8, i8* %ch, align 1
  %23 = load %struct.anon.1*, %struct.anon.1** %range, align 8
  %low_bd = getelementptr inbounds %struct.anon.1, %struct.anon.1* %23, i32 0, i32 0
  store i8 %22, i8* %low_bd, align 1
  %24 = load i8**, i8*** %s.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv17 = sext i8 %26 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.16
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else:                                          ; preds = %if.end.16
  %27 = load i8**, i8*** %s.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %conv21 = sext i8 %29 to i32
  %cmp22 = icmp eq i32 %conv21, 45
  br i1 %cmp22, label %if.then.24, label %if.else.46

if.then.24:                                       ; preds = %if.else
  %30 = load i8**, i8*** %s.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr25, i8** %30, align 8
  %32 = load i8**, i8*** %s.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %conv26 = sext i8 %34 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.42, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.then.24
  %35 = load i8**, i8*** %s.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %conv30 = sext i8 %37 to i32
  %cmp31 = icmp eq i32 %conv30, 45
  br i1 %cmp31, label %if.then.42, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %38 = load i8**, i8*** %s.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %conv34 = sext i8 %40 to i32
  %cmp35 = icmp eq i32 %conv34, 93
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %41 = load i8**, i8*** %s.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %conv38 = sext i8 %43 to i32
  %44 = load i8, i8* %ch, align 1
  %conv39 = sext i8 %44 to i32
  %cmp40 = icmp slt i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %if.then.24
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else.43:                                       ; preds = %lor.lhs.false.37
  %45 = load i8**, i8*** %s.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr44, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.anon.1*, %struct.anon.1** %range, align 8
  %hi_bd = getelementptr inbounds %struct.anon.1, %struct.anon.1* %48, i32 0, i32 1
  store i8 %47, i8* %hi_bd, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43
  br label %if.end.48

if.else.46:                                       ; preds = %if.else
  %49 = load i8, i8* %ch, align 1
  %50 = load %struct.anon.1*, %struct.anon.1** %range, align 8
  %hi_bd47 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %50, i32 0, i32 1
  store i8 %49, i8* %hi_bd47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %51 = load %struct.ch_set*, %struct.ch_set** %curr_ptr, align 8
  store %struct.ch_set* %51, %struct.ch_set** %prev_ptr, align 8
  %call50 = call noalias i8* @malloc(i64 16) #3
  %52 = bitcast i8* %call50 to %struct.ch_set*
  store %struct.ch_set* %52, %struct.ch_set** %curr_ptr, align 8
  %53 = load %struct.ch_set*, %struct.ch_set** %curr_ptr, align 8
  %54 = load %struct.ch_set*, %struct.ch_set** %prev_ptr, align 8
  %rest = getelementptr inbounds %struct.ch_set, %struct.ch_set* %54, i32 0, i32 1
  store %struct.ch_set* %53, %struct.ch_set** %rest, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %55 = load i8**, i8*** %s.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %conv51 = sext i8 %57 to i32
  %cmp52 = icmp eq i32 %conv51, 93
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %while.end
  %58 = load %struct.ch_set*, %struct.ch_set** %prev_ptr, align 8
  %rest55 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %58, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %rest55, align 8
  %59 = load %struct.ch_set*, %struct.ch_set** %cs_ptr, align 8
  %call56 = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 1, i8 signext 0, %struct.ch_set* %59)
  store %struct.rnode* %call56, %struct.rnode** %retval
  br label %return

if.else.57:                                       ; preds = %while.end
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.else.57, %if.then.54, %if.then.42, %if.then.20, %if.then.15, %if.then
  %60 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %60
}

; Function Attrs: nounwind uwtable
define %struct.rnode* @parse_wildcard() #0 {
entry:
  %s = alloca %struct.ch_set*, align 8
  %r = alloca %struct.anon.1*, align 8
  %call = call noalias i8* @malloc(i64 2) #3
  %0 = bitcast i8* %call to %struct.anon.1*
  store %struct.anon.1* %0, %struct.anon.1** %r, align 8
  %1 = load %struct.anon.1*, %struct.anon.1** %r, align 8
  %low_bd = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1, i32 0, i32 0
  store i8 1, i8* %low_bd, align 1
  %2 = load %struct.anon.1*, %struct.anon.1** %r, align 8
  %hi_bd = getelementptr inbounds %struct.anon.1, %struct.anon.1* %2, i32 0, i32 1
  store i8 127, i8* %hi_bd, align 1
  %call1 = call noalias i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call1 to %struct.ch_set*
  store %struct.ch_set* %3, %struct.ch_set** %s, align 8
  %4 = load %struct.anon.1*, %struct.anon.1** %r, align 8
  %5 = load %struct.ch_set*, %struct.ch_set** %s, align 8
  %elt = getelementptr inbounds %struct.ch_set, %struct.ch_set* %5, i32 0, i32 0
  store %struct.anon.1* %4, %struct.anon.1** %elt, align 8
  %6 = load %struct.ch_set*, %struct.ch_set** %s, align 8
  %rest = getelementptr inbounds %struct.ch_set, %struct.ch_set* %6, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %rest, align 8
  %7 = load %struct.ch_set*, %struct.ch_set** %s, align 8
  %call2 = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 1, i8 signext 0, %struct.ch_set* %7)
  ret %struct.rnode* %call2
}

; Function Attrs: nounwind uwtable
define %struct.rnode* @parse_chlit(i8 signext %ch) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %ch.addr, align 1
  %call = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 0, i8 signext %1, %struct.ch_set* null)
  store %struct.rnode* %call, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %2
}

; Function Attrs: nounwind uwtable
define %struct.anon.3* @get_token(i8** %s) #0 {
entry:
  %retval = alloca %struct.anon.3*, align 8
  %s.addr = alloca i8**, align 8
  %rn = alloca %struct.anon.3*, align 8
  store i8** %s, i8*** %s.addr, align 8
  store %struct.anon.3* null, %struct.anon.3** %rn, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %s.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.anon.3* null, %struct.anon.3** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call to %struct.anon.3*
  store %struct.anon.3* %3, %struct.anon.3** %rn, align 8
  %4 = load i8**, i8*** %s.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type = getelementptr inbounds %struct.anon.3, %struct.anon.3* %7, i32 0, i32 0
  store i16 0, i16* %type, align 2
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %8 = load i8**, i8*** %s.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  switch i32 %conv5, label %sw.default [
    i32 46, label %sw.bb
    i32 91, label %sw.bb.13
    i32 40, label %sw.bb.22
    i32 41, label %sw.bb.24
    i32 42, label %sw.bb.26
    i32 124, label %sw.bb.28
    i32 63, label %sw.bb.30
    i32 92, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.else
  %11 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 0
  store i16 1, i16* %type6, align 2
  %call7 = call %struct.rnode* @parse_wildcard()
  %12 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i32 0, i32 1
  store %struct.rnode* %call7, %struct.rnode** %val, align 8
  %13 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 1
  %14 = load %struct.rnode*, %struct.rnode** %val8, align 8
  %cmp9 = icmp eq %struct.rnode* %14, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb
  store %struct.anon.3* null, %struct.anon.3** %retval
  br label %return

if.end.12:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else
  %15 = load i8**, i8*** %s.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %15, align 8
  %17 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %17, i32 0, i32 0
  store i16 1, i16* %type14, align 2
  %18 = load i8**, i8*** %s.addr, align 8
  %call15 = call %struct.rnode* @parse_cset(i8** %18)
  %19 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %19, i32 0, i32 1
  store %struct.rnode* %call15, %struct.rnode** %val16, align 8
  %20 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val17 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %20, i32 0, i32 1
  %21 = load %struct.rnode*, %struct.rnode** %val17, align 8
  %cmp18 = icmp eq %struct.rnode* %21, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.13
  store %struct.anon.3* null, %struct.anon.3** %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb.13
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.else
  %22 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %22, i32 0, i32 0
  store i16 6, i16* %type23, align 2
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.else
  %23 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %23, i32 0, i32 0
  store i16 7, i16* %type25, align 2
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.else
  %24 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %24, i32 0, i32 0
  store i16 2, i16* %type27, align 2
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.else
  %25 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0
  store i16 3, i16* %type29, align 2
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.else
  %26 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %26, i32 0, i32 0
  store i16 4, i16* %type31, align 2
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.else
  %27 = load i8**, i8*** %s.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr33, i8** %27, align 8
  br label %sw.default

sw.default:                                       ; preds = %if.else, %sw.bb.32
  %29 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %type34 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 0
  store i16 1, i16* %type34, align 2
  %30 = load i8**, i8*** %s.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %call35 = call %struct.rnode* @parse_chlit(i8 signext %32)
  %33 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %33, i32 0, i32 1
  store %struct.rnode* %call35, %struct.rnode** %val36, align 8
  %34 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  %val37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %34, i32 0, i32 1
  %35 = load %struct.rnode*, %struct.rnode** %val37, align 8
  %cmp38 = icmp eq %struct.rnode* %35, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.default
  store %struct.anon.3* null, %struct.anon.3** %retval
  br label %return

if.end.41:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.41, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %if.end.21, %if.end.12
  %36 = load i8**, i8*** %s.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr42, i8** %36, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %sw.epilog, %if.then.4
  %38 = load %struct.anon.3*, %struct.anon.3** %rn, align 8
  store %struct.anon.3* %38, %struct.anon.3** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.40, %if.then.20, %if.then.11, %if.then
  %39 = load %struct.anon.3*, %struct.anon.3** %retval
  ret %struct.anon.3* %39
}

; Function Attrs: nounwind uwtable
define %struct.snode* @cat2(%struct.snode** %stk) #0 {
entry:
  %retval = alloca %struct.snode*, align 8
  %stk.addr = alloca %struct.snode**, align 8
  %r = alloca %struct.rnode*, align 8
  store %struct.snode** %stk, %struct.snode*** %stk.addr, align 8
  %0 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %cmp = icmp eq %struct.snode** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %2 = load %struct.snode*, %struct.snode** %1, align 8
  %cmp1 = icmp eq %struct.snode* %2, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %next = getelementptr inbounds %struct.snode, %struct.snode* %4, i32 0, i32 2
  %5 = load %struct.snode*, %struct.snode** %next, align 8
  %cmp2 = icmp eq %struct.snode* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %7 = load %struct.snode*, %struct.snode** %6, align 8
  store %struct.snode* %7, %struct.snode** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %call = call noalias i8* @malloc(i64 48) #3
  %8 = bitcast i8* %call to %struct.rnode*
  store %struct.rnode* %8, %struct.rnode** %r, align 8
  %9 = load %struct.rnode*, %struct.rnode** %r, align 8
  %cmp5 = icmp eq %struct.rnode* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct.rnode*, %struct.rnode** %r, align 8
  %op = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i32 0, i32 0
  store i16 5, i16* %op, align 2
  %11 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %call8 = call %struct.rnode* @Pop(%struct.snode** %11)
  %12 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i32 0, i32 1
  %children = bitcast %union.anon* %refs to %struct.anon.2*
  %r_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children, i32 0, i32 1
  store %struct.rnode* %call8, %struct.rnode** %r_child, align 8
  %13 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %call9 = call %struct.rnode* @Pop(%struct.snode** %13)
  %14 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs10 = getelementptr inbounds %struct.rnode, %struct.rnode* %14, i32 0, i32 1
  %children11 = bitcast %union.anon* %refs10 to %struct.anon.2*
  %l_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children11, i32 0, i32 0
  store %struct.rnode* %call9, %struct.rnode** %l_child, align 8
  %15 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %16 = load %struct.rnode*, %struct.rnode** %r, align 8
  %call12 = call %struct.snode* @Push(%struct.snode** %15, %struct.rnode* %16)
  %cmp13 = icmp eq %struct.snode* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %17 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs16 = getelementptr inbounds %struct.rnode, %struct.rnode* %17, i32 0, i32 1
  %children17 = bitcast %union.anon* %refs16 to %struct.anon.2*
  %l_child18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children17, i32 0, i32 0
  %18 = load %struct.rnode*, %struct.rnode** %l_child18, align 8
  %nullable = getelementptr inbounds %struct.rnode, %struct.rnode* %18, i32 0, i32 2
  %19 = load i16, i16* %nullable, align 2
  %conv = sext i16 %19 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.15
  %20 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs19 = getelementptr inbounds %struct.rnode, %struct.rnode* %20, i32 0, i32 1
  %children20 = bitcast %union.anon* %refs19 to %struct.anon.2*
  %r_child21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children20, i32 0, i32 1
  %21 = load %struct.rnode*, %struct.rnode** %r_child21, align 8
  %nullable22 = getelementptr inbounds %struct.rnode, %struct.rnode* %21, i32 0, i32 2
  %22 = load i16, i16* %nullable22, align 2
  %conv23 = sext i16 %22 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.15
  %23 = phi i1 [ false, %if.end.15 ], [ %tobool24, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  %conv25 = trunc i32 %land.ext to i16
  %24 = load %struct.rnode*, %struct.rnode** %r, align 8
  %nullable26 = getelementptr inbounds %struct.rnode, %struct.rnode* %24, i32 0, i32 2
  store i16 %conv25, i16* %nullable26, align 2
  %25 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs27 = getelementptr inbounds %struct.rnode, %struct.rnode* %25, i32 0, i32 1
  %children28 = bitcast %union.anon* %refs27 to %struct.anon.2*
  %l_child29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children28, i32 0, i32 0
  %26 = load %struct.rnode*, %struct.rnode** %l_child29, align 8
  %nullable30 = getelementptr inbounds %struct.rnode, %struct.rnode* %26, i32 0, i32 2
  %27 = load i16, i16* %nullable30, align 2
  %tobool31 = icmp ne i16 %27, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %land.end
  %28 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs33 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 1
  %children34 = bitcast %union.anon* %refs33 to %struct.anon.2*
  %l_child35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children34, i32 0, i32 0
  %29 = load %struct.rnode*, %struct.rnode** %l_child35, align 8
  %firstposn = getelementptr inbounds %struct.rnode, %struct.rnode* %29, i32 0, i32 3
  %30 = load %struct.pnode*, %struct.pnode** %firstposn, align 8
  %31 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs36 = getelementptr inbounds %struct.rnode, %struct.rnode* %31, i32 0, i32 1
  %children37 = bitcast %union.anon* %refs36 to %struct.anon.2*
  %r_child38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children37, i32 0, i32 1
  %32 = load %struct.rnode*, %struct.rnode** %r_child38, align 8
  %firstposn39 = getelementptr inbounds %struct.rnode, %struct.rnode* %32, i32 0, i32 3
  %33 = load %struct.pnode*, %struct.pnode** %firstposn39, align 8
  %call40 = call %struct.pnode* @pset_union(%struct.pnode* %30, %struct.pnode* %33)
  %34 = load %struct.rnode*, %struct.rnode** %r, align 8
  %firstposn41 = getelementptr inbounds %struct.rnode, %struct.rnode* %34, i32 0, i32 3
  store %struct.pnode* %call40, %struct.pnode** %firstposn41, align 8
  br label %if.end.47

if.else:                                          ; preds = %land.end
  %35 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs42 = getelementptr inbounds %struct.rnode, %struct.rnode* %35, i32 0, i32 1
  %children43 = bitcast %union.anon* %refs42 to %struct.anon.2*
  %l_child44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children43, i32 0, i32 0
  %36 = load %struct.rnode*, %struct.rnode** %l_child44, align 8
  %firstposn45 = getelementptr inbounds %struct.rnode, %struct.rnode* %36, i32 0, i32 3
  %37 = load %struct.pnode*, %struct.pnode** %firstposn45, align 8
  %38 = load %struct.rnode*, %struct.rnode** %r, align 8
  %firstposn46 = getelementptr inbounds %struct.rnode, %struct.rnode* %38, i32 0, i32 3
  store %struct.pnode* %37, %struct.pnode** %firstposn46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.32
  %39 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs48 = getelementptr inbounds %struct.rnode, %struct.rnode* %39, i32 0, i32 1
  %children49 = bitcast %union.anon* %refs48 to %struct.anon.2*
  %r_child50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children49, i32 0, i32 1
  %40 = load %struct.rnode*, %struct.rnode** %r_child50, align 8
  %nullable51 = getelementptr inbounds %struct.rnode, %struct.rnode* %40, i32 0, i32 2
  %41 = load i16, i16* %nullable51, align 2
  %tobool52 = icmp ne i16 %41, 0
  br i1 %tobool52, label %if.then.53, label %if.else.63

if.then.53:                                       ; preds = %if.end.47
  %42 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs54 = getelementptr inbounds %struct.rnode, %struct.rnode* %42, i32 0, i32 1
  %children55 = bitcast %union.anon* %refs54 to %struct.anon.2*
  %l_child56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children55, i32 0, i32 0
  %43 = load %struct.rnode*, %struct.rnode** %l_child56, align 8
  %lastposn = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i32 0, i32 4
  %44 = load %struct.pnode*, %struct.pnode** %lastposn, align 8
  %45 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs57 = getelementptr inbounds %struct.rnode, %struct.rnode* %45, i32 0, i32 1
  %children58 = bitcast %union.anon* %refs57 to %struct.anon.2*
  %r_child59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children58, i32 0, i32 1
  %46 = load %struct.rnode*, %struct.rnode** %r_child59, align 8
  %lastposn60 = getelementptr inbounds %struct.rnode, %struct.rnode* %46, i32 0, i32 4
  %47 = load %struct.pnode*, %struct.pnode** %lastposn60, align 8
  %call61 = call %struct.pnode* @pset_union(%struct.pnode* %44, %struct.pnode* %47)
  %48 = load %struct.rnode*, %struct.rnode** %r, align 8
  %lastposn62 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 4
  store %struct.pnode* %call61, %struct.pnode** %lastposn62, align 8
  br label %if.end.69

if.else.63:                                       ; preds = %if.end.47
  %49 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs64 = getelementptr inbounds %struct.rnode, %struct.rnode* %49, i32 0, i32 1
  %children65 = bitcast %union.anon* %refs64 to %struct.anon.2*
  %r_child66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children65, i32 0, i32 1
  %50 = load %struct.rnode*, %struct.rnode** %r_child66, align 8
  %lastposn67 = getelementptr inbounds %struct.rnode, %struct.rnode* %50, i32 0, i32 4
  %51 = load %struct.pnode*, %struct.pnode** %lastposn67, align 8
  %52 = load %struct.rnode*, %struct.rnode** %r, align 8
  %lastposn68 = getelementptr inbounds %struct.rnode, %struct.rnode* %52, i32 0, i32 4
  store %struct.pnode* %51, %struct.pnode** %lastposn68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.53
  %53 = load %struct.snode**, %struct.snode*** %stk.addr, align 8
  %54 = load %struct.snode*, %struct.snode** %53, align 8
  store %struct.snode* %54, %struct.snode** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.14, %if.then.6, %if.then.3, %if.then
  %55 = load %struct.snode*, %struct.snode** %retval
  ret %struct.snode* %55
}

declare %struct.rnode* @Pop(%struct.snode**) #2

declare %struct.snode* @Push(%struct.snode**, %struct.rnode*) #2

declare %struct.pnode* @pset_union(%struct.pnode*, %struct.pnode*) #2

; Function Attrs: nounwind uwtable
define %struct.snode* @wrap(%struct.snode** %s, i16 signext %opv) #0 {
entry:
  %retval = alloca %struct.snode*, align 8
  %s.addr = alloca %struct.snode**, align 8
  %opv.addr = alloca i16, align 2
  %r = alloca %struct.rnode*, align 8
  store %struct.snode** %s, %struct.snode*** %s.addr, align 8
  store i16 %opv, i16* %opv.addr, align 2
  %0 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %cmp = icmp eq %struct.snode** %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %2 = load %struct.snode*, %struct.snode** %1, align 8
  %cmp1 = icmp eq %struct.snode* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias i8* @malloc(i64 48) #3
  %3 = bitcast i8* %call to %struct.rnode*
  store %struct.rnode* %3, %struct.rnode** %r, align 8
  %4 = load %struct.rnode*, %struct.rnode** %r, align 8
  %cmp2 = icmp eq %struct.rnode* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i16, i16* %opv.addr, align 2
  %6 = load %struct.rnode*, %struct.rnode** %r, align 8
  %op = getelementptr inbounds %struct.rnode, %struct.rnode* %6, i32 0, i32 0
  store i16 %5, i16* %op, align 2
  %7 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %call5 = call %struct.rnode* @Pop(%struct.snode** %7)
  %8 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i32 0, i32 1
  %child = bitcast %union.anon* %refs to %struct.rnode**
  store %struct.rnode* %call5, %struct.rnode** %child, align 8
  %9 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %10 = load %struct.rnode*, %struct.rnode** %r, align 8
  %call6 = call %struct.snode* @Push(%struct.snode** %9, %struct.rnode* %10)
  %cmp7 = icmp eq %struct.snode* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %11 = load %struct.rnode*, %struct.rnode** %r, align 8
  %nullable = getelementptr inbounds %struct.rnode, %struct.rnode* %11, i32 0, i32 2
  store i16 1, i16* %nullable, align 2
  %12 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs10 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i32 0, i32 1
  %child11 = bitcast %union.anon* %refs10 to %struct.rnode**
  %13 = load %struct.rnode*, %struct.rnode** %child11, align 8
  %firstposn = getelementptr inbounds %struct.rnode, %struct.rnode* %13, i32 0, i32 3
  %14 = load %struct.pnode*, %struct.pnode** %firstposn, align 8
  %15 = load %struct.rnode*, %struct.rnode** %r, align 8
  %firstposn12 = getelementptr inbounds %struct.rnode, %struct.rnode* %15, i32 0, i32 3
  store %struct.pnode* %14, %struct.pnode** %firstposn12, align 8
  %16 = load %struct.rnode*, %struct.rnode** %r, align 8
  %refs13 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i32 0, i32 1
  %child14 = bitcast %union.anon* %refs13 to %struct.rnode**
  %17 = load %struct.rnode*, %struct.rnode** %child14, align 8
  %lastposn = getelementptr inbounds %struct.rnode, %struct.rnode* %17, i32 0, i32 4
  %18 = load %struct.pnode*, %struct.pnode** %lastposn, align 8
  %19 = load %struct.rnode*, %struct.rnode** %r, align 8
  %lastposn15 = getelementptr inbounds %struct.rnode, %struct.rnode* %19, i32 0, i32 4
  store %struct.pnode* %18, %struct.pnode** %lastposn15, align 8
  %20 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %21 = load %struct.snode*, %struct.snode** %20, align 8
  store %struct.snode* %21, %struct.snode** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %22 = load %struct.snode*, %struct.snode** %retval
  ret %struct.snode* %22
}

; Function Attrs: nounwind uwtable
define %struct.snode* @mk_alt(%struct.snode** %s, %struct.rnode* %r) #0 {
entry:
  %retval = alloca %struct.snode*, align 8
  %s.addr = alloca %struct.snode**, align 8
  %r.addr = alloca %struct.rnode*, align 8
  %node = alloca %struct.rnode*, align 8
  store %struct.snode** %s, %struct.snode*** %s.addr, align 8
  store %struct.rnode* %r, %struct.rnode** %r.addr, align 8
  %0 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %cmp = icmp eq %struct.snode** %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %2 = load %struct.snode*, %struct.snode** %1, align 8
  %cmp1 = icmp eq %struct.snode* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct.rnode*, %struct.rnode** %r.addr, align 8
  %cmp3 = icmp eq %struct.rnode* %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %call = call noalias i8* @malloc(i64 48) #3
  %4 = bitcast i8* %call to %struct.rnode*
  store %struct.rnode* %4, %struct.rnode** %node, align 8
  %5 = load %struct.rnode*, %struct.rnode** %node, align 8
  %cmp4 = icmp eq %struct.rnode* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.rnode*, %struct.rnode** %node, align 8
  %op = getelementptr inbounds %struct.rnode, %struct.rnode* %6, i32 0, i32 0
  store i16 3, i16* %op, align 2
  %7 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %call7 = call %struct.rnode* @Pop(%struct.snode** %7)
  %8 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i32 0, i32 1
  %children = bitcast %union.anon* %refs to %struct.anon.2*
  %l_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children, i32 0, i32 0
  store %struct.rnode* %call7, %struct.rnode** %l_child, align 8
  %9 = load %struct.rnode*, %struct.rnode** %r.addr, align 8
  %10 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs8 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i32 0, i32 1
  %children9 = bitcast %union.anon* %refs8 to %struct.anon.2*
  %r_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children9, i32 0, i32 1
  store %struct.rnode* %9, %struct.rnode** %r_child, align 8
  %11 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %12 = load %struct.rnode*, %struct.rnode** %node, align 8
  %call10 = call %struct.snode* @Push(%struct.snode** %11, %struct.rnode* %12)
  %cmp11 = icmp eq %struct.snode* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %13 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs14 = getelementptr inbounds %struct.rnode, %struct.rnode* %13, i32 0, i32 1
  %children15 = bitcast %union.anon* %refs14 to %struct.anon.2*
  %l_child16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children15, i32 0, i32 0
  %14 = load %struct.rnode*, %struct.rnode** %l_child16, align 8
  %nullable = getelementptr inbounds %struct.rnode, %struct.rnode* %14, i32 0, i32 2
  %15 = load i16, i16* %nullable, align 2
  %conv = sext i16 %15 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.13
  %16 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs17 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i32 0, i32 1
  %children18 = bitcast %union.anon* %refs17 to %struct.anon.2*
  %r_child19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children18, i32 0, i32 1
  %17 = load %struct.rnode*, %struct.rnode** %r_child19, align 8
  %nullable20 = getelementptr inbounds %struct.rnode, %struct.rnode* %17, i32 0, i32 2
  %18 = load i16, i16* %nullable20, align 2
  %conv21 = sext i16 %18 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.13
  %19 = phi i1 [ true, %if.end.13 ], [ %tobool22, %lor.rhs ]
  %lor.ext = zext i1 %19 to i32
  %conv23 = trunc i32 %lor.ext to i16
  %20 = load %struct.rnode*, %struct.rnode** %node, align 8
  %nullable24 = getelementptr inbounds %struct.rnode, %struct.rnode* %20, i32 0, i32 2
  store i16 %conv23, i16* %nullable24, align 2
  %21 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs25 = getelementptr inbounds %struct.rnode, %struct.rnode* %21, i32 0, i32 1
  %children26 = bitcast %union.anon* %refs25 to %struct.anon.2*
  %l_child27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children26, i32 0, i32 0
  %22 = load %struct.rnode*, %struct.rnode** %l_child27, align 8
  %firstposn = getelementptr inbounds %struct.rnode, %struct.rnode* %22, i32 0, i32 3
  %23 = load %struct.pnode*, %struct.pnode** %firstposn, align 8
  %24 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs28 = getelementptr inbounds %struct.rnode, %struct.rnode* %24, i32 0, i32 1
  %children29 = bitcast %union.anon* %refs28 to %struct.anon.2*
  %r_child30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children29, i32 0, i32 1
  %25 = load %struct.rnode*, %struct.rnode** %r_child30, align 8
  %firstposn31 = getelementptr inbounds %struct.rnode, %struct.rnode* %25, i32 0, i32 3
  %26 = load %struct.pnode*, %struct.pnode** %firstposn31, align 8
  %call32 = call %struct.pnode* @pset_union(%struct.pnode* %23, %struct.pnode* %26)
  %27 = load %struct.rnode*, %struct.rnode** %node, align 8
  %firstposn33 = getelementptr inbounds %struct.rnode, %struct.rnode* %27, i32 0, i32 3
  store %struct.pnode* %call32, %struct.pnode** %firstposn33, align 8
  %28 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs34 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 1
  %children35 = bitcast %union.anon* %refs34 to %struct.anon.2*
  %l_child36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children35, i32 0, i32 0
  %29 = load %struct.rnode*, %struct.rnode** %l_child36, align 8
  %lastposn = getelementptr inbounds %struct.rnode, %struct.rnode* %29, i32 0, i32 4
  %30 = load %struct.pnode*, %struct.pnode** %lastposn, align 8
  %31 = load %struct.rnode*, %struct.rnode** %node, align 8
  %refs37 = getelementptr inbounds %struct.rnode, %struct.rnode* %31, i32 0, i32 1
  %children38 = bitcast %union.anon* %refs37 to %struct.anon.2*
  %r_child39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children38, i32 0, i32 1
  %32 = load %struct.rnode*, %struct.rnode** %r_child39, align 8
  %lastposn40 = getelementptr inbounds %struct.rnode, %struct.rnode* %32, i32 0, i32 4
  %33 = load %struct.pnode*, %struct.pnode** %lastposn40, align 8
  %call41 = call %struct.pnode* @pset_union(%struct.pnode* %30, %struct.pnode* %33)
  %34 = load %struct.rnode*, %struct.rnode** %node, align 8
  %lastposn42 = getelementptr inbounds %struct.rnode, %struct.rnode* %34, i32 0, i32 4
  store %struct.pnode* %call41, %struct.pnode** %lastposn42, align 8
  %35 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %36 = load %struct.snode*, %struct.snode** %35, align 8
  store %struct.snode* %36, %struct.snode** %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.12, %if.then.5, %if.then
  %37 = load %struct.snode*, %struct.snode** %retval
  ret %struct.snode* %37
}

; Function Attrs: nounwind uwtable
define %struct.rnode* @parse_re(i8** %s, i16 signext %end) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %s.addr = alloca i8**, align 8
  %end.addr = alloca i16, align 2
  %stk = alloca %struct.snode*, align 8
  %temp = alloca %struct.snode*, align 8
  %next_token = alloca %struct.anon.3*, align 8
  %re = alloca %struct.rnode*, align 8
  store i8** %s, i8*** %s.addr, align 8
  store i16 %end, i16* %end.addr, align 2
  store %struct.snode* null, %struct.snode** %stk, align 8
  store %struct.rnode* null, %struct.rnode** %re, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %s.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  %3 = load i8**, i8*** %s.addr, align 8
  %call = call %struct.anon.3* @get_token(i8** %3)
  store %struct.anon.3* %call, %struct.anon.3** %next_token, align 8
  %4 = load %struct.anon.3*, %struct.anon.3** %next_token, align 8
  %cmp2 = icmp eq %struct.anon.3* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.4:                                         ; preds = %while.body
  %5 = load %struct.anon.3*, %struct.anon.3** %next_token, align 8
  %type = getelementptr inbounds %struct.anon.3, %struct.anon.3* %5, i32 0, i32 0
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 0, label %sw.bb.5
    i32 6, label %sw.bb.14
    i32 2, label %sw.bb.46
    i32 4, label %sw.bb.52
    i32 3, label %sw.bb.58
    i32 1, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.end.4
  %7 = load i8**, i8*** %s.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %7, align 8
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %if.end.4, %sw.bb
  %9 = load i16, i16* %end.addr, align 2
  %conv6 = sext i16 %9 to i32
  %10 = load %struct.anon.3*, %struct.anon.3** %next_token, align 8
  %type7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %10, i32 0, i32 0
  %11 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %11 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.5
  %call12 = call %struct.snode* @cat2(%struct.snode** %stk)
  %call13 = call %struct.rnode* @Top(%struct.snode* %call12)
  store %struct.rnode* %call13, %struct.rnode** %retval
  br label %return

if.else:                                          ; preds = %sw.bb.5
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

sw.bb.14:                                         ; preds = %if.end.4
  %12 = load i8**, i8*** %s.addr, align 8
  %call15 = call %struct.rnode* @parse_re(i8** %12, i16 signext 7)
  store %struct.rnode* %call15, %struct.rnode** %re, align 8
  %13 = load %struct.rnode*, %struct.rnode** %re, align 8
  %call16 = call %struct.snode* @Push(%struct.snode** %stk, %struct.rnode* %13)
  %cmp17 = icmp eq %struct.snode* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.14
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.20:                                        ; preds = %sw.bb.14
  %14 = load i8**, i8*** %s.addr, align 8
  %call21 = call %struct.anon.3* @get_token(i8** %14)
  %type22 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %call21, i32 0, i32 0
  %15 = load i16, i16* %type22, align 2
  %conv23 = sext i16 %15 to i32
  %cmp24 = icmp ne i32 %conv23, 7
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.20
  %16 = load %struct.rnode*, %struct.rnode** %re, align 8
  %cmp27 = icmp eq %struct.rnode* %16, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.26, %if.end.20
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.26
  %17 = load %struct.snode*, %struct.snode** %stk, align 8
  %call31 = call i32 @Size(%struct.snode* %17)
  %cmp32 = icmp sgt i32 %call31, 2
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.30
  %18 = load %struct.snode*, %struct.snode** %stk, align 8
  %next = getelementptr inbounds %struct.snode, %struct.snode* %18, i32 0, i32 2
  %19 = load %struct.snode*, %struct.snode** %next, align 8
  store %struct.snode* %19, %struct.snode** %temp, align 8
  %call35 = call %struct.snode* @cat2(%struct.snode** %temp)
  %20 = load %struct.snode*, %struct.snode** %stk, align 8
  %next36 = getelementptr inbounds %struct.snode, %struct.snode* %20, i32 0, i32 2
  store %struct.snode* %call35, %struct.snode** %next36, align 8
  %21 = load %struct.snode*, %struct.snode** %stk, align 8
  %next37 = getelementptr inbounds %struct.snode, %struct.snode* %21, i32 0, i32 2
  %22 = load %struct.snode*, %struct.snode** %next37, align 8
  %cmp38 = icmp eq %struct.snode* %22, null
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.34
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else.41:                                       ; preds = %if.then.34
  %23 = load %struct.snode*, %struct.snode** %stk, align 8
  %next42 = getelementptr inbounds %struct.snode, %struct.snode* %23, i32 0, i32 2
  %24 = load %struct.snode*, %struct.snode** %next42, align 8
  %size = getelementptr inbounds %struct.snode, %struct.snode* %24, i32 0, i32 1
  %25 = load i32, i32* %size, align 4
  %add = add nsw i32 %25, 1
  %26 = load %struct.snode*, %struct.snode** %stk, align 8
  %size43 = getelementptr inbounds %struct.snode, %struct.snode* %26, i32 0, i32 1
  store i32 %add, i32* %size43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.30
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.4
  %call47 = call %struct.snode* @wrap(%struct.snode** %stk, i16 signext 2)
  %cmp48 = icmp eq %struct.snode* %call47, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.46
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.51:                                        ; preds = %sw.bb.46
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.4
  %call53 = call %struct.snode* @wrap(%struct.snode** %stk, i16 signext 4)
  %cmp54 = icmp eq %struct.snode* %call53, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.bb.52
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.57:                                        ; preds = %sw.bb.52
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.4
  %call59 = call %struct.snode* @cat2(%struct.snode** %stk)
  %cmp60 = icmp eq %struct.snode* %call59, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %sw.bb.58
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.63:                                        ; preds = %sw.bb.58
  %27 = load i8**, i8*** %s.addr, align 8
  %28 = load i16, i16* %end.addr, align 2
  %call64 = call %struct.rnode* @parse_re(i8** %27, i16 signext %28)
  store %struct.rnode* %call64, %struct.rnode** %re, align 8
  %29 = load %struct.rnode*, %struct.rnode** %re, align 8
  %cmp65 = icmp eq %struct.rnode* %29, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.63
  %30 = load %struct.rnode*, %struct.rnode** %re, align 8
  %call69 = call %struct.snode* @mk_alt(%struct.snode** %stk, %struct.rnode* %30)
  %cmp70 = icmp eq %struct.snode* %call69, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.73:                                        ; preds = %if.end.68
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.4
  %31 = load %struct.anon.3*, %struct.anon.3** %next_token, align 8
  %val = getelementptr inbounds %struct.anon.3, %struct.anon.3* %31, i32 0, i32 1
  %32 = load %struct.rnode*, %struct.rnode** %val, align 8
  %call75 = call %struct.snode* @Push(%struct.snode** %stk, %struct.rnode* %32)
  %cmp76 = icmp eq %struct.snode* %call75, null
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %sw.bb.74
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.79:                                        ; preds = %sw.bb.74
  %33 = load %struct.snode*, %struct.snode** %stk, align 8
  %call80 = call i32 @Size(%struct.snode* %33)
  %cmp81 = icmp sgt i32 %call80, 2
  br i1 %cmp81, label %if.then.83, label %if.end.97

if.then.83:                                       ; preds = %if.end.79
  %34 = load %struct.snode*, %struct.snode** %stk, align 8
  %next84 = getelementptr inbounds %struct.snode, %struct.snode* %34, i32 0, i32 2
  %35 = load %struct.snode*, %struct.snode** %next84, align 8
  store %struct.snode* %35, %struct.snode** %temp, align 8
  %call85 = call %struct.snode* @cat2(%struct.snode** %temp)
  %36 = load %struct.snode*, %struct.snode** %stk, align 8
  %next86 = getelementptr inbounds %struct.snode, %struct.snode* %36, i32 0, i32 2
  store %struct.snode* %call85, %struct.snode** %next86, align 8
  %37 = load %struct.snode*, %struct.snode** %stk, align 8
  %next87 = getelementptr inbounds %struct.snode, %struct.snode* %37, i32 0, i32 2
  %38 = load %struct.snode*, %struct.snode** %next87, align 8
  %cmp88 = icmp eq %struct.snode* %38, null
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.then.83
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else.91:                                       ; preds = %if.then.83
  %39 = load %struct.snode*, %struct.snode** %stk, align 8
  %next92 = getelementptr inbounds %struct.snode, %struct.snode* %39, i32 0, i32 2
  %40 = load %struct.snode*, %struct.snode** %next92, align 8
  %size93 = getelementptr inbounds %struct.snode, %struct.snode* %40, i32 0, i32 1
  %41 = load i32, i32* %size93, align 4
  %add94 = add nsw i32 %41, 1
  %42 = load %struct.snode*, %struct.snode** %stk, align 8
  %size95 = getelementptr inbounds %struct.snode, %struct.snode* %42, i32 0, i32 1
  store i32 %add94, i32* %size95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.79
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  %43 = load %struct.anon.3*, %struct.anon.3** %next_token, align 8
  %type98 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %43, i32 0, i32 0
  %44 = load i16, i16* %type98, align 2
  %conv99 = sext i16 %44 to i32
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %conv99)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.97, %if.end.73, %if.end.57, %if.end.51, %if.end.45
  br label %while.body

return:                                           ; preds = %if.then.90, %if.then.78, %if.then.72, %if.then.67, %if.then.62, %if.then.56, %if.then.50, %if.then.40, %if.then.29, %if.then.19, %if.else, %if.then.11, %if.then.3, %if.then
  %45 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %45
}

declare %struct.rnode* @Top(%struct.snode*) #2

declare i32 @Size(%struct.snode*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.rnode* @parse(i8* %s) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %s.addr = alloca i8*, align 8
  %tree = alloca %struct.rnode*, align 8
  %temp = alloca %struct.rnode*, align 8
  %stk = alloca %struct.snode*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.snode* null, %struct.snode** %stk, align 8
  %call = call %struct.rnode* @parse_re(i8** %s.addr, i16 signext 0)
  store %struct.rnode* %call, %struct.rnode** %tree, align 8
  %0 = load %struct.rnode*, %struct.rnode** %tree, align 8
  %cmp = icmp eq %struct.rnode* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rnode*, %struct.rnode** %tree, align 8
  %call1 = call %struct.snode* @Push(%struct.snode** %stk, %struct.rnode* %1)
  %cmp2 = icmp eq %struct.snode* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call %struct.rnode* @mk_leaf(i16 signext 0, i16 signext 0, i8 signext 0, %struct.ch_set* null)
  store %struct.rnode* %call3, %struct.rnode** %temp, align 8
  %2 = load %struct.rnode*, %struct.rnode** %temp, align 8
  %cmp4 = icmp eq %struct.rnode* %2, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %3 = load %struct.rnode*, %struct.rnode** %temp, align 8
  %call6 = call %struct.snode* @Push(%struct.snode** %stk, %struct.rnode* %3)
  %cmp7 = icmp eq %struct.snode* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.end
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.5
  %4 = load i32, i32* @pos_cnt, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @pos_cnt, align 4
  store i32 %dec, i32* @final_pos, align 4
  %call10 = call %struct.snode* @cat2(%struct.snode** %stk)
  %call11 = call %struct.rnode* @Top(%struct.snode* %call10)
  store %struct.rnode* %call11, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %5 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
