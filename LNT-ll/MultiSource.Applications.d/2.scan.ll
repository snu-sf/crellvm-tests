; ModuleID = './MultiSource.Applications.d/2.scan.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_loc_t = type { i8*, i8*, i32, i32, i32 }
%struct.D_State = type { i8*, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.D_Shift**, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i8*, i8, i8, i8, i8*, %struct.D_Shift***, i32 }
%struct.anon = type { i32, %struct.D_Reduction** }
%struct.D_Reduction = type { i16, i16, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i16, i16, i32, i32, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** }
%struct.D_Parser = type { i8*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, %struct.D_Scope*, void (%struct.D_Parser*)*, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)*, void (%struct.D_ParseNode*)*, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.D_Scope = type { i8, %struct.D_Sym*, %struct.D_SymHash*, %struct.D_Sym*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope* }
%struct.D_SymHash = type opaque
%struct.D_Sym = type { i8*, i32, i32, %struct.D_Sym*, %struct.D_Sym*, i32 }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, i8*, i8*, %struct.D_Scope*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i8*, i8* }
%struct.anon.0 = type { i32, %struct.D_RightEpsilonHint* }
%struct.D_RightEpsilonHint = type { i16, i16, %struct.D_Reduction* }
%struct.anon.1 = type { i32, %struct.D_ErrorRecoveryHint* }
%struct.D_ErrorRecoveryHint = type { i16, i16, i8* }
%struct.D_Shift = type { i16, i8, i8, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* }
%struct.ShiftResult = type { %struct.D_Shift*, %struct.d_loc_t }
%struct.SB_uint8 = type { %struct.D_Shift**, [4 x i8*] }
%struct.SB_trans_uint8 = type { [4 x i8*] }
%struct.SB_uint16 = type { %struct.D_Shift**, [4 x i16*] }
%struct.SB_uint32 = type { %struct.D_Shift**, [4 x i32*] }

; Function Attrs: nounwind uwtable
define i32 @scan_buffer(%struct.d_loc_t* %loc, %struct.D_State* %parse_state, %struct.ShiftResult* %results) #0 {
entry:
  %retval = alloca i32, align 4
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %parse_state.addr = alloca %struct.D_State*, align 8
  %results.addr = alloca %struct.ShiftResult*, align 8
  %s = alloca i8*, align 8
  %scol = alloca i8*, align 8
  %col = alloca i32, align 4
  %collast = alloca i32, align 4
  %line = alloca i32, align 4
  %nresults = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %shift = alloca %struct.D_Shift**, align 8
  %st = alloca %struct.SB_uint8*, align 8
  %tst = alloca %struct.SB_trans_uint8*, align 8
  %state = alloca i8, align 1
  %last = alloca i8, align 1
  %c = alloca i8, align 1
  %sb = alloca i32, align 4
  %so = alloca i32, align 4
  %end = alloca i8*, align 8
  %longest = alloca i32, align 4
  %st168 = alloca %struct.SB_uint8*, align 8
  %state170 = alloca i8, align 1
  %last171 = alloca i8, align 1
  %c172 = alloca i8, align 1
  %st213 = alloca %struct.SB_uint16*, align 8
  %state215 = alloca i16, align 2
  %last216 = alloca i16, align 2
  %c217 = alloca i8, align 1
  %st258 = alloca %struct.SB_uint32*, align 8
  %state260 = alloca i32, align 4
  %last261 = alloca i32, align 4
  %c262 = alloca i8, align 1
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store %struct.D_State* %parse_state, %struct.D_State** %parse_state.addr, align 8
  store %struct.ShiftResult* %results, %struct.ShiftResult** %results.addr, align 8
  %0 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s1 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %s1, align 8
  store i8* %1, i8** %s, align 8
  store i8* null, i8** %scol, align 8
  %2 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %col2 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %2, i32 0, i32 3
  %3 = load i32, i32* %col2, align 4
  store i32 %3, i32* %col, align 4
  %4 = load i32, i32* %col, align 4
  store i32 %4, i32* %collast, align 4
  %5 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line3 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %5, i32 0, i32 4
  %6 = load i32, i32* %line3, align 4
  store i32 %6, i32* %line, align 4
  store i32 0, i32* %nresults, align 4
  store %struct.D_Shift** null, %struct.D_Shift*** %shift, align 8
  %7 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scan_kind = getelementptr inbounds %struct.D_State, %struct.D_State* %7, i32 0, i32 10
  %8 = load i8, i8* %scan_kind, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else.166

if.then:                                          ; preds = %entry
  %9 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scanner_table = getelementptr inbounds %struct.D_State, %struct.D_State* %9, i32 0, i32 7
  %10 = load i8*, i8** %scanner_table, align 8
  %11 = bitcast i8* %10 to %struct.SB_uint8*
  store %struct.SB_uint8* %11, %struct.SB_uint8** %st, align 8
  %12 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %transition_table = getelementptr inbounds %struct.D_State, %struct.D_State* %12, i32 0, i32 11
  %13 = load i8*, i8** %transition_table, align 8
  %14 = bitcast i8* %13 to %struct.SB_trans_uint8*
  store %struct.SB_trans_uint8* %14, %struct.SB_trans_uint8** %tst, align 8
  store i8 0, i8* %state, align 1
  %15 = load i8, i8* %state, align 1
  store i8 %15, i8* %last, align 1
  %16 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %if.then
  %18 = load i8, i8* %c, align 1
  %conv5 = zext i8 %18 to i32
  %and = and i32 %conv5, 63
  store i32 %and, i32* %so, align 4
  %idxprom = zext i32 %and to i64
  %19 = load i8, i8* %c, align 1
  %conv6 = zext i8 %19 to i32
  %shr = ashr i32 %conv6, 6
  store i32 %shr, i32* %sb, align 4
  %idxprom7 = zext i32 %shr to i64
  %20 = load i8, i8* %state, align 1
  %idxprom8 = zext i8 %20 to i64
  %21 = load %struct.SB_uint8*, %struct.SB_uint8** %st, align 8
  %arrayidx = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %21, i64 %idxprom8
  %scanner_block = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i8*], [4 x i8*]* %scanner_block, i32 0, i64 %idxprom7
  %22 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx10, align 1
  store i8 %23, i8* %state, align 1
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8, i8* %state, align 1
  %conv11 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv11, 1
  %conv12 = trunc i32 %sub to i8
  store i8 %conv12, i8* %state, align 1
  %25 = load i8, i8* %state, align 1
  %idxprom13 = zext i8 %25 to i64
  %26 = load %struct.SB_uint8*, %struct.SB_uint8** %st, align 8
  %arrayidx14 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %26, i64 %idxprom13
  %shift15 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx14, i32 0, i32 0
  %27 = load %struct.D_Shift**, %struct.D_Shift*** %shift15, align 8
  %tobool16 = icmp ne %struct.D_Shift** %27, null
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %while.body
  %28 = load i8, i8* %state, align 1
  store i8 %28, i8* %last, align 1
  %29 = load i8*, i8** %s, align 8
  %30 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s18 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %30, i32 0, i32 0
  store i8* %29, i8** %s18, align 8
  %31 = load i32, i32* %col, align 4
  store i32 %31, i32* %collast, align 4
  %32 = load i32, i32* %line, align 4
  %33 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line19 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %33, i32 0, i32 4
  store i32 %32, i32* %line19, align 4
  %34 = load i32, i32* %so, align 4
  %idxprom20 = zext i32 %34 to i64
  %35 = load i32, i32* %sb, align 4
  %idxprom21 = zext i32 %35 to i64
  %36 = load i8, i8* %state, align 1
  %idxprom22 = zext i8 %36 to i64
  %37 = load %struct.SB_trans_uint8*, %struct.SB_trans_uint8** %tst, align 8
  %arrayidx23 = getelementptr inbounds %struct.SB_trans_uint8, %struct.SB_trans_uint8* %37, i64 %idxprom22
  %scanner_block24 = getelementptr inbounds %struct.SB_trans_uint8, %struct.SB_trans_uint8* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %scanner_block24, i32 0, i64 %idxprom21
  %38 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %38, i64 %idxprom20
  %39 = load i8, i8* %arrayidx26, align 1
  %idxprom27 = zext i8 %39 to i64
  %40 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %accepts_diff = getelementptr inbounds %struct.D_State, %struct.D_State* %40, i32 0, i32 12
  %41 = load %struct.D_Shift***, %struct.D_Shift**** %accepts_diff, align 8
  %arrayidx28 = getelementptr inbounds %struct.D_Shift**, %struct.D_Shift*** %41, i64 %idxprom27
  %42 = load %struct.D_Shift**, %struct.D_Shift*** %arrayidx28, align 8
  store %struct.D_Shift** %42, %struct.D_Shift*** %shift, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %43 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %44 = load %struct.D_Shift*, %struct.D_Shift** %43, align 8
  %tobool29 = icmp ne %struct.D_Shift* %44, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %nresults, align 4
  %idxprom30 = sext i32 %45 to i64
  %46 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %46, i64 %idxprom30
  %loc32 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx31, i32 0, i32 1
  %47 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %48 = bitcast %struct.d_loc_t* %loc32 to i8*
  %49 = bitcast %struct.d_loc_t* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 32, i32 8, i1 false)
  %50 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %51 = load %struct.D_Shift*, %struct.D_Shift** %50, align 8
  %52 = load i32, i32* %nresults, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %nresults, align 4
  %idxprom33 = sext i32 %52 to i64
  %53 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %53, i64 %idxprom33
  %shift35 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx34, i32 0, i32 0
  store %struct.D_Shift* %51, %struct.D_Shift** %shift35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %incdec.ptr36 = getelementptr inbounds %struct.D_Shift*, %struct.D_Shift** %54, i32 1
  store %struct.D_Shift** %incdec.ptr36, %struct.D_Shift*** %shift, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  %55 = load i8, i8* %c, align 1
  %conv37 = zext i8 %55 to i32
  %cmp38 = icmp eq i32 %conv37, 10
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end
  %56 = load i32, i32* %line, align 4
  %inc41 = add nsw i32 %56, 1
  store i32 %inc41, i32* %line, align 4
  store i32 0, i32* %col, align 4
  %57 = load i8*, i8** %s, align 8
  store i8* %57, i8** %scol, align 8
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %58 = load i32, i32* %col, align 4
  %inc42 = add nsw i32 %58, 1
  store i32 %inc42, i32* %col, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.40
  %59 = load i8*, i8** %s, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr44, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i8*, i8** %scol, align 8
  %tobool45 = icmp ne i8* %61, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %62 = load i8*, i8** %s, align 8
  %63 = load i8*, i8** %scol, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ -1, %cond.false ]
  %conv46 = trunc i64 %cond to i32
  %64 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %col47 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %64, i32 0, i32 3
  store i32 %conv46, i32* %col47, align 4
  %65 = load i8, i8* %last, align 1
  %idxprom48 = zext i8 %65 to i64
  %66 = load %struct.SB_uint8*, %struct.SB_uint8** %st, align 8
  %arrayidx49 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %66, i64 %idxprom48
  %shift50 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx49, i32 0, i32 0
  %67 = load %struct.D_Shift**, %struct.D_Shift*** %shift50, align 8
  store %struct.D_Shift** %67, %struct.D_Shift*** %shift, align 8
  %68 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %tobool51 = icmp ne %struct.D_Shift** %68, null
  br i1 %tobool51, label %if.then.52, label %if.end.67

if.then.52:                                       ; preds = %cond.end
  %69 = load i32, i32* %line, align 4
  %70 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line53 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %70, i32 0, i32 4
  store i32 %69, i32* %line53, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.64, %if.then.52
  %71 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %72 = load %struct.D_Shift*, %struct.D_Shift** %71, align 8
  %tobool55 = icmp ne %struct.D_Shift* %72, null
  br i1 %tobool55, label %for.body.56, label %for.end.66

for.body.56:                                      ; preds = %for.cond.54
  %73 = load i32, i32* %nresults, align 4
  %idxprom57 = sext i32 %73 to i64
  %74 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %74, i64 %idxprom57
  %loc59 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx58, i32 0, i32 1
  %75 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %76 = bitcast %struct.d_loc_t* %loc59 to i8*
  %77 = bitcast %struct.d_loc_t* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false)
  %78 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %79 = load %struct.D_Shift*, %struct.D_Shift** %78, align 8
  %80 = load i32, i32* %nresults, align 4
  %inc60 = add nsw i32 %80, 1
  store i32 %inc60, i32* %nresults, align 4
  %idxprom61 = sext i32 %80 to i64
  %81 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %81, i64 %idxprom61
  %shift63 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx62, i32 0, i32 0
  store %struct.D_Shift* %79, %struct.D_Shift** %shift63, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.56
  %82 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %incdec.ptr65 = getelementptr inbounds %struct.D_Shift*, %struct.D_Shift** %82, i32 1
  store %struct.D_Shift** %incdec.ptr65, %struct.D_Shift*** %shift, align 8
  br label %for.cond.54

for.end.66:                                       ; preds = %for.cond.54
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %cond.end
  %83 = load i32, i32* %nresults, align 4
  %tobool68 = icmp ne i32 %83, 0
  br i1 %tobool68, label %land.lhs.true, label %if.end.165

land.lhs.true:                                    ; preds = %if.end.67
  %84 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scan_kind69 = getelementptr inbounds %struct.D_State, %struct.D_State* %84, i32 0, i32 10
  %85 = load i8, i8* %scan_kind69, align 1
  %conv70 = zext i8 %85 to i32
  %cmp71 = icmp eq i32 %conv70, 2
  br i1 %cmp71, label %if.then.73, label %if.end.165

if.then.73:                                       ; preds = %land.lhs.true
  %86 = load i32, i32* %nresults, align 4
  %sub74 = sub nsw i32 %86, 1
  %idxprom75 = sext i32 %sub74 to i64
  %87 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %87, i64 %idxprom75
  %loc77 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx76, i32 0, i32 1
  %s78 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc77, i32 0, i32 0
  %88 = load i8*, i8** %s78, align 8
  store i8* %88, i8** %end, align 8
  store i32 0, i32* %longest, align 4
  %89 = load i32, i32* %nresults, align 4
  %sub79 = sub nsw i32 %89, 1
  store i32 %sub79, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.100, %if.then.73
  %90 = load i32, i32* %i, align 4
  %cmp81 = icmp sge i32 %90, 0
  br i1 %cmp81, label %for.body.83, label %for.end.101

for.body.83:                                      ; preds = %for.cond.80
  %91 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %91 to i64
  %92 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %92, i64 %idxprom84
  %shift86 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx85, i32 0, i32 0
  %93 = load %struct.D_Shift*, %struct.D_Shift** %shift86, align 8
  %shift_kind = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %93, i32 0, i32 1
  %94 = load i8, i8* %shift_kind, align 1
  %conv87 = zext i8 %94 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.83
  store i32 1, i32* %longest, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %for.body.83
  %95 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %95 to i64
  %96 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %96, i64 %idxprom92
  %loc94 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx93, i32 0, i32 1
  %s95 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc94, i32 0, i32 0
  %97 = load i8*, i8** %s95, align 8
  %98 = load i8*, i8** %end, align 8
  %cmp96 = icmp ult i8* %97, %98
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.91
  br label %for.end.101

if.end.99:                                        ; preds = %if.end.91
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %99 = load i32, i32* %i, align 4
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.80

for.end.101:                                      ; preds = %if.then.98, %for.cond.80
  %100 = load i32, i32* %longest, align 4
  %tobool102 = icmp ne i32 %100, 0
  br i1 %tobool102, label %if.else.139, label %if.then.103

if.then.103:                                      ; preds = %for.end.101
  %101 = load i32, i32* %i, align 4
  store i32 %101, i32* %j, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.126, %if.then.103
  %102 = load i32, i32* %j, align 4
  %cmp105 = icmp sge i32 %102, 0
  br i1 %cmp105, label %for.body.107, label %for.end.128

for.body.107:                                     ; preds = %for.cond.104
  %103 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %103 to i64
  %104 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %104, i64 %idxprom108
  %shift110 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx109, i32 0, i32 0
  %105 = load %struct.D_Shift*, %struct.D_Shift** %shift110, align 8
  %shift_kind111 = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %105, i32 0, i32 1
  %106 = load i8, i8* %shift_kind111, align 1
  %conv112 = zext i8 %106 to i32
  %cmp113 = icmp ne i32 %conv112, 1
  br i1 %cmp113, label %if.then.115, label %if.end.125

if.then.115:                                      ; preds = %for.body.107
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %j, align 4
  %cmp116 = icmp ne i32 %107, %108
  br i1 %cmp116, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %if.then.115
  %109 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %109 to i64
  %110 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %110, i64 %idxprom119
  %111 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %111 to i64
  %112 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %112, i64 %idxprom121
  %113 = bitcast %struct.ShiftResult* %arrayidx120 to i8*
  %114 = bitcast %struct.ShiftResult* %arrayidx122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 40, i32 8, i1 false)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.118, %if.then.115
  %115 = load i32, i32* %i, align 4
  %dec124 = add nsw i32 %115, -1
  store i32 %dec124, i32* %i, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %for.body.107
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %116 = load i32, i32* %j, align 4
  %dec127 = add nsw i32 %116, -1
  store i32 %dec127, i32* %j, align 4
  br label %for.cond.104

for.end.128:                                      ; preds = %for.cond.104
  %117 = load i32, i32* %nresults, align 4
  %118 = load i32, i32* %i, align 4
  %sub129 = sub nsw i32 %117, %118
  %sub130 = sub nsw i32 %sub129, 1
  store i32 %sub130, i32* %nresults, align 4
  %119 = load i32, i32* %i, align 4
  %cmp131 = icmp ne i32 %119, -1
  br i1 %cmp131, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %for.end.128
  %120 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %120, i64 0
  %121 = bitcast %struct.ShiftResult* %arrayidx134 to i8*
  %122 = load i32, i32* %i, align 4
  %add = add nsw i32 %122, 1
  %idxprom135 = sext i32 %add to i64
  %123 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %123, i64 %idxprom135
  %124 = bitcast %struct.ShiftResult* %arrayidx136 to i8*
  %125 = load i32, i32* %nresults, align 4
  %conv137 = sext i32 %125 to i64
  %mul = mul i64 %conv137, 40
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %121, i8* %124, i64 %mul, i32 8, i1 false)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %for.end.128
  br label %if.end.164

if.else.139:                                      ; preds = %for.end.101
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.161, %if.else.139
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %nresults, align 4
  %cmp141 = icmp slt i32 %126, %127
  br i1 %cmp141, label %for.body.143, label %for.end.163

for.body.143:                                     ; preds = %for.cond.140
  %128 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %128 to i64
  %129 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %129, i64 %idxprom144
  %loc146 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx145, i32 0, i32 1
  %s147 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc146, i32 0, i32 0
  %130 = load i8*, i8** %s147, align 8
  %131 = load i8*, i8** %end, align 8
  %cmp148 = icmp eq i8* %130, %131
  br i1 %cmp148, label %if.then.150, label %if.end.160

if.then.150:                                      ; preds = %for.body.143
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %j, align 4
  %cmp151 = icmp ne i32 %132, %133
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %if.then.150
  %134 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %134 to i64
  %135 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %135, i64 %idxprom154
  %136 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %136 to i64
  %137 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx157 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %137, i64 %idxprom156
  %138 = bitcast %struct.ShiftResult* %arrayidx155 to i8*
  %139 = bitcast %struct.ShiftResult* %arrayidx157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 40, i32 8, i1 false)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %if.then.150
  %140 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %140, 1
  store i32 %inc159, i32* %i, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.158, %for.body.143
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %141 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %141, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.140

for.end.163:                                      ; preds = %for.cond.140
  %142 = load i32, i32* %i, align 4
  store i32 %142, i32* %nresults, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.163, %if.end.138
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true, %if.end.67
  %143 = load i32, i32* %nresults, align 4
  store i32 %143, i32* %retval
  br label %return

if.else.166:                                      ; preds = %entry
  %144 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scanner_size = getelementptr inbounds %struct.D_State, %struct.D_State* %144, i32 0, i32 8
  %145 = load i8, i8* %scanner_size, align 1
  %conv167 = zext i8 %145 to i32
  switch i32 %conv167, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.212
    i32 4, label %sw.bb.257
  ]

sw.bb:                                            ; preds = %if.else.166
  %146 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scanner_table169 = getelementptr inbounds %struct.D_State, %struct.D_State* %146, i32 0, i32 7
  %147 = load i8*, i8** %scanner_table169, align 8
  %148 = bitcast i8* %147 to %struct.SB_uint8*
  store %struct.SB_uint8* %148, %struct.SB_uint8** %st168, align 8
  store i8 0, i8* %state170, align 1
  %149 = load i8, i8* %state170, align 1
  store i8 %149, i8* %last171, align 1
  %150 = load i8*, i8** %s, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr173, i8** %s, align 8
  %151 = load i8, i8* %150, align 1
  store i8 %151, i8* %c172, align 1
  br label %while.cond.174

while.cond.174:                                   ; preds = %if.end.206, %sw.bb
  %152 = load i8, i8* %c172, align 1
  %conv175 = zext i8 %152 to i32
  %and176 = and i32 %conv175, 63
  %idxprom177 = sext i32 %and176 to i64
  %153 = load i8, i8* %c172, align 1
  %conv178 = zext i8 %153 to i32
  %shr179 = ashr i32 %conv178, 6
  %idxprom180 = sext i32 %shr179 to i64
  %154 = load i8, i8* %state170, align 1
  %idxprom181 = zext i8 %154 to i64
  %155 = load %struct.SB_uint8*, %struct.SB_uint8** %st168, align 8
  %arrayidx182 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %155, i64 %idxprom181
  %scanner_block183 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx182, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [4 x i8*], [4 x i8*]* %scanner_block183, i32 0, i64 %idxprom180
  %156 = load i8*, i8** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %156, i64 %idxprom177
  %157 = load i8, i8* %arrayidx185, align 1
  store i8 %157, i8* %state170, align 1
  %tobool186 = icmp ne i8 %157, 0
  br i1 %tobool186, label %while.body.187, label %while.end.208

while.body.187:                                   ; preds = %while.cond.174
  %158 = load i8, i8* %state170, align 1
  %conv188 = zext i8 %158 to i32
  %sub189 = sub nsw i32 %conv188, 1
  %conv190 = trunc i32 %sub189 to i8
  store i8 %conv190, i8* %state170, align 1
  %159 = load i8, i8* %state170, align 1
  %idxprom191 = zext i8 %159 to i64
  %160 = load %struct.SB_uint8*, %struct.SB_uint8** %st168, align 8
  %arrayidx192 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %160, i64 %idxprom191
  %shift193 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx192, i32 0, i32 0
  %161 = load %struct.D_Shift**, %struct.D_Shift*** %shift193, align 8
  %tobool194 = icmp ne %struct.D_Shift** %161, null
  br i1 %tobool194, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %while.body.187
  %162 = load i8, i8* %state170, align 1
  store i8 %162, i8* %last171, align 1
  %163 = load i8*, i8** %s, align 8
  %164 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s196 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %164, i32 0, i32 0
  store i8* %163, i8** %s196, align 8
  %165 = load i32, i32* %col, align 4
  store i32 %165, i32* %collast, align 4
  %166 = load i32, i32* %line, align 4
  %167 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line197 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %167, i32 0, i32 4
  store i32 %166, i32* %line197, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %while.body.187
  %168 = load i8, i8* %c172, align 1
  %conv199 = zext i8 %168 to i32
  %cmp200 = icmp eq i32 %conv199, 10
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.end.198
  %169 = load i32, i32* %line, align 4
  %inc203 = add nsw i32 %169, 1
  store i32 %inc203, i32* %line, align 4
  store i32 0, i32* %col, align 4
  %170 = load i8*, i8** %s, align 8
  store i8* %170, i8** %scol, align 8
  br label %if.end.206

if.else.204:                                      ; preds = %if.end.198
  %171 = load i32, i32* %col, align 4
  %inc205 = add nsw i32 %171, 1
  store i32 %inc205, i32* %col, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.then.202
  %172 = load i8*, i8** %s, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr207, i8** %s, align 8
  %173 = load i8, i8* %172, align 1
  store i8 %173, i8* %c172, align 1
  br label %while.cond.174

while.end.208:                                    ; preds = %while.cond.174
  %174 = load i8, i8* %last171, align 1
  %idxprom209 = zext i8 %174 to i64
  %175 = load %struct.SB_uint8*, %struct.SB_uint8** %st168, align 8
  %arrayidx210 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %175, i64 %idxprom209
  %shift211 = getelementptr inbounds %struct.SB_uint8, %struct.SB_uint8* %arrayidx210, i32 0, i32 0
  %176 = load %struct.D_Shift**, %struct.D_Shift*** %shift211, align 8
  store %struct.D_Shift** %176, %struct.D_Shift*** %shift, align 8
  br label %sw.epilog

sw.bb.212:                                        ; preds = %if.else.166
  %177 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scanner_table214 = getelementptr inbounds %struct.D_State, %struct.D_State* %177, i32 0, i32 7
  %178 = load i8*, i8** %scanner_table214, align 8
  %179 = bitcast i8* %178 to %struct.SB_uint16*
  store %struct.SB_uint16* %179, %struct.SB_uint16** %st213, align 8
  store i16 0, i16* %state215, align 2
  %180 = load i16, i16* %state215, align 2
  store i16 %180, i16* %last216, align 2
  %181 = load i8*, i8** %s, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr218, i8** %s, align 8
  %182 = load i8, i8* %181, align 1
  store i8 %182, i8* %c217, align 1
  br label %while.cond.219

while.cond.219:                                   ; preds = %if.end.251, %sw.bb.212
  %183 = load i8, i8* %c217, align 1
  %conv220 = zext i8 %183 to i32
  %and221 = and i32 %conv220, 63
  %idxprom222 = sext i32 %and221 to i64
  %184 = load i8, i8* %c217, align 1
  %conv223 = zext i8 %184 to i32
  %shr224 = ashr i32 %conv223, 6
  %idxprom225 = sext i32 %shr224 to i64
  %185 = load i16, i16* %state215, align 2
  %idxprom226 = zext i16 %185 to i64
  %186 = load %struct.SB_uint16*, %struct.SB_uint16** %st213, align 8
  %arrayidx227 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %186, i64 %idxprom226
  %scanner_block228 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %arrayidx227, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [4 x i16*], [4 x i16*]* %scanner_block228, i32 0, i64 %idxprom225
  %187 = load i16*, i16** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i16, i16* %187, i64 %idxprom222
  %188 = load i16, i16* %arrayidx230, align 2
  store i16 %188, i16* %state215, align 2
  %tobool231 = icmp ne i16 %188, 0
  br i1 %tobool231, label %while.body.232, label %while.end.253

while.body.232:                                   ; preds = %while.cond.219
  %189 = load i16, i16* %state215, align 2
  %conv233 = zext i16 %189 to i32
  %sub234 = sub nsw i32 %conv233, 1
  %conv235 = trunc i32 %sub234 to i16
  store i16 %conv235, i16* %state215, align 2
  %190 = load i16, i16* %state215, align 2
  %idxprom236 = zext i16 %190 to i64
  %191 = load %struct.SB_uint16*, %struct.SB_uint16** %st213, align 8
  %arrayidx237 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %191, i64 %idxprom236
  %shift238 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %arrayidx237, i32 0, i32 0
  %192 = load %struct.D_Shift**, %struct.D_Shift*** %shift238, align 8
  %tobool239 = icmp ne %struct.D_Shift** %192, null
  br i1 %tobool239, label %if.then.240, label %if.end.243

if.then.240:                                      ; preds = %while.body.232
  %193 = load i16, i16* %state215, align 2
  store i16 %193, i16* %last216, align 2
  %194 = load i8*, i8** %s, align 8
  %195 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s241 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %195, i32 0, i32 0
  store i8* %194, i8** %s241, align 8
  %196 = load i32, i32* %col, align 4
  store i32 %196, i32* %collast, align 4
  %197 = load i32, i32* %line, align 4
  %198 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line242 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %198, i32 0, i32 4
  store i32 %197, i32* %line242, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.240, %while.body.232
  %199 = load i8, i8* %c217, align 1
  %conv244 = zext i8 %199 to i32
  %cmp245 = icmp eq i32 %conv244, 10
  br i1 %cmp245, label %if.then.247, label %if.else.249

if.then.247:                                      ; preds = %if.end.243
  %200 = load i32, i32* %line, align 4
  %inc248 = add nsw i32 %200, 1
  store i32 %inc248, i32* %line, align 4
  store i32 0, i32* %col, align 4
  %201 = load i8*, i8** %s, align 8
  store i8* %201, i8** %scol, align 8
  br label %if.end.251

if.else.249:                                      ; preds = %if.end.243
  %202 = load i32, i32* %col, align 4
  %inc250 = add nsw i32 %202, 1
  store i32 %inc250, i32* %col, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.249, %if.then.247
  %203 = load i8*, i8** %s, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr252, i8** %s, align 8
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %c217, align 1
  br label %while.cond.219

while.end.253:                                    ; preds = %while.cond.219
  %205 = load i16, i16* %last216, align 2
  %idxprom254 = zext i16 %205 to i64
  %206 = load %struct.SB_uint16*, %struct.SB_uint16** %st213, align 8
  %arrayidx255 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %206, i64 %idxprom254
  %shift256 = getelementptr inbounds %struct.SB_uint16, %struct.SB_uint16* %arrayidx255, i32 0, i32 0
  %207 = load %struct.D_Shift**, %struct.D_Shift*** %shift256, align 8
  store %struct.D_Shift** %207, %struct.D_Shift*** %shift, align 8
  br label %sw.epilog

sw.bb.257:                                        ; preds = %if.else.166
  %208 = load %struct.D_State*, %struct.D_State** %parse_state.addr, align 8
  %scanner_table259 = getelementptr inbounds %struct.D_State, %struct.D_State* %208, i32 0, i32 7
  %209 = load i8*, i8** %scanner_table259, align 8
  %210 = bitcast i8* %209 to %struct.SB_uint32*
  store %struct.SB_uint32* %210, %struct.SB_uint32** %st258, align 8
  store i32 0, i32* %state260, align 4
  %211 = load i32, i32* %state260, align 4
  store i32 %211, i32* %last261, align 4
  %212 = load i8*, i8** %s, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr263, i8** %s, align 8
  %213 = load i8, i8* %212, align 1
  store i8 %213, i8* %c262, align 1
  br label %while.cond.264

while.cond.264:                                   ; preds = %if.end.294, %sw.bb.257
  %214 = load i8, i8* %c262, align 1
  %conv265 = zext i8 %214 to i32
  %and266 = and i32 %conv265, 63
  %idxprom267 = sext i32 %and266 to i64
  %215 = load i8, i8* %c262, align 1
  %conv268 = zext i8 %215 to i32
  %shr269 = ashr i32 %conv268, 6
  %idxprom270 = sext i32 %shr269 to i64
  %216 = load i32, i32* %state260, align 4
  %idxprom271 = zext i32 %216 to i64
  %217 = load %struct.SB_uint32*, %struct.SB_uint32** %st258, align 8
  %arrayidx272 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %217, i64 %idxprom271
  %scanner_block273 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %arrayidx272, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [4 x i32*], [4 x i32*]* %scanner_block273, i32 0, i64 %idxprom270
  %218 = load i32*, i32** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %218, i64 %idxprom267
  %219 = load i32, i32* %arrayidx275, align 4
  store i32 %219, i32* %state260, align 4
  %tobool276 = icmp ne i32 %219, 0
  br i1 %tobool276, label %while.body.277, label %while.end.296

while.body.277:                                   ; preds = %while.cond.264
  %220 = load i32, i32* %state260, align 4
  %sub278 = sub i32 %220, 1
  store i32 %sub278, i32* %state260, align 4
  %221 = load i32, i32* %state260, align 4
  %idxprom279 = zext i32 %221 to i64
  %222 = load %struct.SB_uint32*, %struct.SB_uint32** %st258, align 8
  %arrayidx280 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %222, i64 %idxprom279
  %shift281 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %arrayidx280, i32 0, i32 0
  %223 = load %struct.D_Shift**, %struct.D_Shift*** %shift281, align 8
  %tobool282 = icmp ne %struct.D_Shift** %223, null
  br i1 %tobool282, label %if.then.283, label %if.end.286

if.then.283:                                      ; preds = %while.body.277
  %224 = load i32, i32* %state260, align 4
  store i32 %224, i32* %last261, align 4
  %225 = load i8*, i8** %s, align 8
  %226 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s284 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %226, i32 0, i32 0
  store i8* %225, i8** %s284, align 8
  %227 = load i32, i32* %col, align 4
  store i32 %227, i32* %collast, align 4
  %228 = load i32, i32* %line, align 4
  %229 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line285 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %229, i32 0, i32 4
  store i32 %228, i32* %line285, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.283, %while.body.277
  %230 = load i8, i8* %c262, align 1
  %conv287 = zext i8 %230 to i32
  %cmp288 = icmp eq i32 %conv287, 10
  br i1 %cmp288, label %if.then.290, label %if.else.292

if.then.290:                                      ; preds = %if.end.286
  %231 = load i32, i32* %line, align 4
  %inc291 = add nsw i32 %231, 1
  store i32 %inc291, i32* %line, align 4
  store i32 0, i32* %col, align 4
  %232 = load i8*, i8** %s, align 8
  store i8* %232, i8** %scol, align 8
  br label %if.end.294

if.else.292:                                      ; preds = %if.end.286
  %233 = load i32, i32* %col, align 4
  %inc293 = add nsw i32 %233, 1
  store i32 %inc293, i32* %col, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.292, %if.then.290
  %234 = load i8*, i8** %s, align 8
  %incdec.ptr295 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr295, i8** %s, align 8
  %235 = load i8, i8* %234, align 1
  store i8 %235, i8* %c262, align 1
  br label %while.cond.264

while.end.296:                                    ; preds = %while.cond.264
  %236 = load i32, i32* %last261, align 4
  %idxprom297 = zext i32 %236 to i64
  %237 = load %struct.SB_uint32*, %struct.SB_uint32** %st258, align 8
  %arrayidx298 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %237, i64 %idxprom297
  %shift299 = getelementptr inbounds %struct.SB_uint32, %struct.SB_uint32* %arrayidx298, i32 0, i32 0
  %238 = load %struct.D_Shift**, %struct.D_Shift*** %shift299, align 8
  store %struct.D_Shift** %238, %struct.D_Shift*** %shift, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.166, %while.end.296, %while.end.253, %while.end.208
  %239 = load i8*, i8** %scol, align 8
  %tobool300 = icmp ne i8* %239, null
  br i1 %tobool300, label %cond.true.301, label %cond.false.305

cond.true.301:                                    ; preds = %sw.epilog
  %240 = load i8*, i8** %s, align 8
  %241 = load i8*, i8** %scol, align 8
  %sub.ptr.lhs.cast302 = ptrtoint i8* %240 to i64
  %sub.ptr.rhs.cast303 = ptrtoint i8* %241 to i64
  %sub.ptr.sub304 = sub i64 %sub.ptr.lhs.cast302, %sub.ptr.rhs.cast303
  br label %cond.end.306

cond.false.305:                                   ; preds = %sw.epilog
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.305, %cond.true.301
  %cond307 = phi i64 [ %sub.ptr.sub304, %cond.true.301 ], [ -1, %cond.false.305 ]
  %conv308 = trunc i64 %cond307 to i32
  %242 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %col309 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %242, i32 0, i32 3
  store i32 %conv308, i32* %col309, align 4
  %243 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %tobool310 = icmp ne %struct.D_Shift** %243, null
  br i1 %tobool310, label %if.then.311, label %if.end.326

if.then.311:                                      ; preds = %cond.end.306
  %244 = load i32, i32* %line, align 4
  %245 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line312 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %245, i32 0, i32 4
  store i32 %244, i32* %line312, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.323, %if.then.311
  %246 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %247 = load %struct.D_Shift*, %struct.D_Shift** %246, align 8
  %tobool314 = icmp ne %struct.D_Shift* %247, null
  br i1 %tobool314, label %for.body.315, label %for.end.325

for.body.315:                                     ; preds = %for.cond.313
  %248 = load i32, i32* %nresults, align 4
  %idxprom316 = sext i32 %248 to i64
  %249 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx317 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %249, i64 %idxprom316
  %loc318 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx317, i32 0, i32 1
  %250 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %251 = bitcast %struct.d_loc_t* %loc318 to i8*
  %252 = bitcast %struct.d_loc_t* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %252, i64 32, i32 8, i1 false)
  %253 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %254 = load %struct.D_Shift*, %struct.D_Shift** %253, align 8
  %255 = load i32, i32* %nresults, align 4
  %inc319 = add nsw i32 %255, 1
  store i32 %inc319, i32* %nresults, align 4
  %idxprom320 = sext i32 %255 to i64
  %256 = load %struct.ShiftResult*, %struct.ShiftResult** %results.addr, align 8
  %arrayidx321 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %256, i64 %idxprom320
  %shift322 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx321, i32 0, i32 0
  store %struct.D_Shift* %254, %struct.D_Shift** %shift322, align 8
  br label %for.inc.323

for.inc.323:                                      ; preds = %for.body.315
  %257 = load %struct.D_Shift**, %struct.D_Shift*** %shift, align 8
  %incdec.ptr324 = getelementptr inbounds %struct.D_Shift*, %struct.D_Shift** %257, i32 1
  store %struct.D_Shift** %incdec.ptr324, %struct.D_Shift*** %shift, align 8
  br label %for.cond.313

for.end.325:                                      ; preds = %for.cond.313
  br label %if.end.326

if.end.326:                                       ; preds = %for.end.325, %cond.end.306
  %258 = load i32, i32* %nresults, align 4
  store i32 %258, i32* %retval
  br label %return

return:                                           ; preds = %if.end.326, %if.end.165
  %259 = load i32, i32* %retval
  ret i32 %259
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
