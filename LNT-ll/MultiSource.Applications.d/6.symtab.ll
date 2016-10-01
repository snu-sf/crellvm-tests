; ModuleID = './MultiSource.Applications.d/6.symtab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.D_Scope = type { i8, %struct.D_Sym*, %struct.D_SymHash*, %struct.D_Sym*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope* }
%struct.D_SymHash = type { i32, i32, %struct.anon }
%struct.anon = type { i32, i32, %struct.D_Sym**, [3 x %struct.D_Sym*] }
%struct.D_Sym = type { i8*, i32, i32, %struct.D_Sym*, %struct.D_Sym*, i32 }
%struct.anon.0 = type { i32, i32, %struct.D_Sym**, [3 x %struct.D_Sym*] }

@.str = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SCOPE %X: \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  owned: %d, kind: %d, \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  LL\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  HASH\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.D_Scope* @new_D_Scope(%struct.D_Scope* %parent) #0 {
entry:
  %parent.addr = alloca %struct.D_Scope*, align 8
  %st = alloca %struct.D_Scope*, align 8
  store %struct.D_Scope* %parent, %struct.D_Scope** %parent.addr, align 8
  %call = call noalias i8* @malloc(i64 72) #2
  %0 = bitcast i8* %call to %struct.D_Scope*
  store %struct.D_Scope* %0, %struct.D_Scope** %st, align 8
  %1 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %2 = bitcast %struct.D_Scope* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 72, i32 8, i1 false)
  %3 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %tobool = icmp ne %struct.D_Scope* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %5 = bitcast %struct.D_Scope* %4 to i8*
  %bf.load = load i8, i8* %5, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %6 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %7 = bitcast %struct.D_Scope* %6 to i8*
  %8 = trunc i32 %bf.cast to i8
  %bf.load1 = load i8, i8* %7, align 8
  %bf.value = and i8 %8, 3
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear2 = and i8 %bf.load1, -7
  %bf.set = or i8 %bf.clear2, %bf.shl
  store i8 %bf.set, i8* %7, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %9 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %10 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %10, i32 0, i32 4
  store %struct.D_Scope* %9, %struct.D_Scope** %search, align 8
  %11 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %12 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %up = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %12, i32 0, i32 5
  store %struct.D_Scope* %11, %struct.D_Scope** %up, align 8
  %13 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %14 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %up_updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %14, i32 0, i32 6
  store %struct.D_Scope* %13, %struct.D_Scope** %up_updates, align 8
  %15 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %down = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %15, i32 0, i32 7
  %16 = load %struct.D_Scope*, %struct.D_Scope** %down, align 8
  %17 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %down_next = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %17, i32 0, i32 8
  store %struct.D_Scope* %16, %struct.D_Scope** %down_next, align 8
  %18 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %19 = load %struct.D_Scope*, %struct.D_Scope** %parent.addr, align 8
  %down3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %19, i32 0, i32 7
  store %struct.D_Scope* %18, %struct.D_Scope** %down3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call %struct.D_SymHash* @new_D_SymHash()
  %20 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %20, i32 0, i32 2
  store %struct.D_SymHash* %call4, %struct.D_SymHash** %hash, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  ret %struct.D_Scope* %21
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.D_Scope* @enter_D_Scope(%struct.D_Scope* %current, %struct.D_Scope* %scope) #0 {
entry:
  %current.addr = alloca %struct.D_Scope*, align 8
  %scope.addr = alloca %struct.D_Scope*, align 8
  %st = alloca %struct.D_Scope*, align 8
  %parent = alloca %struct.D_Scope*, align 8
  store %struct.D_Scope* %current, %struct.D_Scope** %current.addr, align 8
  store %struct.D_Scope* %scope, %struct.D_Scope** %scope.addr, align 8
  %call = call noalias i8* @malloc(i64 72) #2
  %0 = bitcast i8* %call to %struct.D_Scope*
  store %struct.D_Scope* %0, %struct.D_Scope** %st, align 8
  %1 = load %struct.D_Scope*, %struct.D_Scope** %scope.addr, align 8
  %up = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %1, i32 0, i32 5
  %2 = load %struct.D_Scope*, %struct.D_Scope** %up, align 8
  store %struct.D_Scope* %2, %struct.D_Scope** %parent, align 8
  %3 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %4 = bitcast %struct.D_Scope* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 72, i32 8, i1 false)
  %5 = load %struct.D_Scope*, %struct.D_Scope** %parent, align 8
  %6 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %up1 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %6, i32 0, i32 5
  store %struct.D_Scope* %5, %struct.D_Scope** %up1, align 8
  %7 = load %struct.D_Scope*, %struct.D_Scope** %scope.addr, align 8
  %8 = bitcast %struct.D_Scope* %7 to i8*
  %bf.load = load i8, i8* %8, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %9 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %10 = bitcast %struct.D_Scope* %9 to i8*
  %11 = trunc i32 %bf.cast to i8
  %bf.load2 = load i8, i8* %10, align 8
  %bf.value = and i8 %11, 3
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear3 = and i8 %bf.load2, -7
  %bf.set = or i8 %bf.clear3, %bf.shl
  store i8 %bf.set, i8* %10, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %12 = load %struct.D_Scope*, %struct.D_Scope** %scope.addr, align 8
  %13 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %13, i32 0, i32 4
  store %struct.D_Scope* %12, %struct.D_Scope** %search, align 8
  %14 = load %struct.D_Scope*, %struct.D_Scope** %current.addr, align 8
  %15 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %up_updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %15, i32 0, i32 6
  store %struct.D_Scope* %14, %struct.D_Scope** %up_updates, align 8
  %16 = load %struct.D_Scope*, %struct.D_Scope** %current.addr, align 8
  %down = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %16, i32 0, i32 7
  %17 = load %struct.D_Scope*, %struct.D_Scope** %down, align 8
  %18 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %down_next = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %18, i32 0, i32 8
  store %struct.D_Scope* %17, %struct.D_Scope** %down_next, align 8
  %19 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  %20 = load %struct.D_Scope*, %struct.D_Scope** %current.addr, align 8
  %down4 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %20, i32 0, i32 7
  store %struct.D_Scope* %19, %struct.D_Scope** %down4, align 8
  %21 = load %struct.D_Scope*, %struct.D_Scope** %st, align 8
  ret %struct.D_Scope* %21
}

; Function Attrs: nounwind uwtable
define void @free_D_Scope(%struct.D_Scope* %st, i32 %force) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %force.addr = alloca i32, align 4
  %s = alloca %struct.D_Scope*, align 8
  %sym = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %down = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %0, i32 0, i32 7
  %1 = load %struct.D_Scope*, %struct.D_Scope** %down, align 8
  %tobool = icmp ne %struct.D_Scope* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %down1 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %2, i32 0, i32 7
  %3 = load %struct.D_Scope*, %struct.D_Scope** %down1, align 8
  %down_next = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %3, i32 0, i32 8
  %4 = load %struct.D_Scope*, %struct.D_Scope** %down_next, align 8
  store %struct.D_Scope* %4, %struct.D_Scope** %s, align 8
  %5 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %down2 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %5, i32 0, i32 7
  %6 = load %struct.D_Scope*, %struct.D_Scope** %down2, align 8
  call void @free_D_Scope(%struct.D_Scope* %6, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.D_Scope*, %struct.D_Scope** %s, align 8
  %8 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %down3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %8, i32 0, i32 7
  store %struct.D_Scope* %7, %struct.D_Scope** %down3, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %10 = bitcast %struct.D_Scope* %9 to i8*
  %bf.load = load i8, i8* %10, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool4 = icmp ne i32 %bf.cast, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %11 = load i32, i32* %force.addr, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.end
  %12 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %12, i32 0, i32 2
  %13 = load %struct.D_SymHash*, %struct.D_SymHash** %hash, align 8
  %tobool6 = icmp ne %struct.D_SymHash* %13, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash8 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %14, i32 0, i32 2
  %15 = load %struct.D_SymHash*, %struct.D_SymHash** %hash8, align 8
  call void @free_D_SymHash(%struct.D_SymHash* %15)
  br label %if.end.17

if.else:                                          ; preds = %if.end
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %if.else
  %16 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %16, i32 0, i32 1
  %17 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool10 = icmp ne %struct.D_Sym* %17, null
  br i1 %tobool10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %18 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll12 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %18, i32 0, i32 1
  %19 = load %struct.D_Sym*, %struct.D_Sym** %ll12, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %19, i32 0, i32 4
  %20 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %20, %struct.D_Sym** %sym, align 8
  %21 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll13 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %21, i32 0, i32 1
  %22 = load %struct.D_Sym*, %struct.D_Sym** %ll13, align 8
  call void @free_D_Sym(%struct.D_Sym* %22)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %23 = load %struct.D_Sym*, %struct.D_Sym** %sym, align 8
  %24 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll15 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %24, i32 0, i32 1
  store %struct.D_Sym* %23, %struct.D_Sym** %ll15, align 8
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  br label %if.end.17

if.end.17:                                        ; preds = %for.end.16, %if.then.7
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %if.end.17
  %25 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %25, i32 0, i32 3
  %26 = load %struct.D_Sym*, %struct.D_Sym** %updates, align 8
  %tobool19 = icmp ne %struct.D_Sym* %26, null
  br i1 %tobool19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.18
  %27 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates21 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %27, i32 0, i32 3
  %28 = load %struct.D_Sym*, %struct.D_Sym** %updates21, align 8
  %next22 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %28, i32 0, i32 4
  %29 = load %struct.D_Sym*, %struct.D_Sym** %next22, align 8
  store %struct.D_Sym* %29, %struct.D_Sym** %sym, align 8
  %30 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates23 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %30, i32 0, i32 3
  %31 = load %struct.D_Sym*, %struct.D_Sym** %updates23, align 8
  call void @free_D_Sym(%struct.D_Sym* %31)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %32 = load %struct.D_Sym*, %struct.D_Sym** %sym, align 8
  %33 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates25 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %33, i32 0, i32 3
  store %struct.D_Sym* %32, %struct.D_Sym** %updates25, align 8
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  %34 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %35 = bitcast %struct.D_Scope* %34 to i8*
  call void @free(i8* %35) #2
  br label %return

return:                                           ; preds = %for.end.26, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_D_SymHash(%struct.D_SymHash* %sh) #0 {
entry:
  %sh.addr = alloca %struct.D_SymHash*, align 8
  %i = alloca i32, align 4
  %sym = alloca %struct.D_Sym*, align 8
  store %struct.D_SymHash* %sh, %struct.D_SymHash** %sh.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms2 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms2, i32 0, i32 2
  %5 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %5, i64 %idxprom
  %6 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  %tobool = icmp ne %struct.D_Sym* %6, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms5 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %8, i32 0, i32 2
  %v6 = getelementptr inbounds %struct.anon, %struct.anon* %syms5, i32 0, i32 2
  %9 = load %struct.D_Sym**, %struct.D_Sym*** %v6, align 8
  %arrayidx7 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %9, i64 %idxprom4
  %10 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx7, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %10, i32 0, i32 4
  %11 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %11, %struct.D_Sym** %sym, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms9 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %13, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon, %struct.anon* %syms9, i32 0, i32 2
  %14 = load %struct.D_Sym**, %struct.D_Sym*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %14, i64 %idxprom8
  %15 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx11, align 8
  call void @free_D_Sym(%struct.D_Sym* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %16 = load %struct.D_Sym*, %struct.D_Sym** %sym, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms13 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %18, i32 0, i32 2
  %v14 = getelementptr inbounds %struct.anon, %struct.anon* %syms13, i32 0, i32 2
  %19 = load %struct.D_Sym**, %struct.D_Sym*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %19, i64 %idxprom12
  store %struct.D_Sym* %16, %struct.D_Sym** %arrayidx15, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %21 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms18 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %21, i32 0, i32 2
  %v19 = getelementptr inbounds %struct.anon, %struct.anon* %syms18, i32 0, i32 2
  %22 = load %struct.D_Sym**, %struct.D_Sym*** %v19, align 8
  %23 = bitcast %struct.D_Sym** %22 to i8*
  call void @free(i8* %23) #2
  %24 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %25 = bitcast %struct.D_SymHash* %24 to i8*
  call void @free(i8* %25) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_D_Sym(%struct.D_Sym* %s) #0 {
entry:
  %s.addr = alloca %struct.D_Sym*, align 8
  store %struct.D_Sym* %s, %struct.D_Sym** %s.addr, align 8
  %0 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %1 = bitcast %struct.D_Sym* %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.D_Scope* @commit_D_Scope(%struct.D_Scope* %st) #0 {
entry:
  %retval = alloca %struct.D_Scope*, align 8
  %st.addr = alloca %struct.D_Scope*, align 8
  %x = alloca %struct.D_Scope*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  %0 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  store %struct.D_Scope* %0, %struct.D_Scope** %x, align 8
  %1 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %up = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %1, i32 0, i32 5
  %2 = load %struct.D_Scope*, %struct.D_Scope** %up, align 8
  %tobool = icmp ne %struct.D_Scope* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  store %struct.D_Scope* %3, %struct.D_Scope** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.D_Scope*, %struct.D_Scope** %x, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %4, i32 0, i32 4
  %5 = load %struct.D_Scope*, %struct.D_Scope** %search, align 8
  %tobool1 = icmp ne %struct.D_Scope* %5, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.D_Scope*, %struct.D_Scope** %x, align 8
  %search2 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %6, i32 0, i32 4
  %7 = load %struct.D_Scope*, %struct.D_Scope** %search2, align 8
  store %struct.D_Scope* %7, %struct.D_Scope** %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %9 = load %struct.D_Scope*, %struct.D_Scope** %x, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %9, i32 0, i32 2
  %10 = load %struct.D_SymHash*, %struct.D_SymHash** %hash, align 8
  call void @commit_ll(%struct.D_Scope* %8, %struct.D_SymHash* %10)
  %11 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %12 = load %struct.D_Scope*, %struct.D_Scope** %x, align 8
  %hash3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %12, i32 0, i32 2
  %13 = load %struct.D_SymHash*, %struct.D_SymHash** %hash3, align 8
  call void @commit_update(%struct.D_Scope* %11, %struct.D_SymHash* %13)
  %14 = load %struct.D_Scope*, %struct.D_Scope** %x, align 8
  store %struct.D_Scope* %14, %struct.D_Scope** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load %struct.D_Scope*, %struct.D_Scope** %retval
  ret %struct.D_Scope* %15
}

; Function Attrs: nounwind uwtable
define internal void @commit_ll(%struct.D_Scope* %st, %struct.D_SymHash* %sh) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %sh.addr = alloca %struct.D_SymHash*, align 8
  %sym = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store %struct.D_SymHash* %sh, %struct.D_SymHash** %sh.addr, align 8
  %0 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %0, i32 0, i32 4
  %1 = load %struct.D_Scope*, %struct.D_Scope** %search, align 8
  %tobool = icmp ne %struct.D_Scope* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search1 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %2, i32 0, i32 4
  %3 = load %struct.D_Scope*, %struct.D_Scope** %search1, align 8
  %4 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  call void @commit_ll(%struct.D_Scope* %3, %struct.D_SymHash* %4)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %5, i32 0, i32 1
  %6 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool2 = icmp ne %struct.D_Sym* %6, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %7, i32 0, i32 1
  %8 = load %struct.D_Sym*, %struct.D_Sym** %ll3, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %8, i32 0, i32 4
  %9 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %9, %struct.D_Sym** %sym, align 8
  %10 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %11 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll4 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %11, i32 0, i32 1
  %12 = load %struct.D_Sym*, %struct.D_Sym** %ll4, align 8
  call void @symhash_add(%struct.D_SymHash* %10, %struct.D_Sym* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.D_Sym*, %struct.D_Sym** %sym, align 8
  %14 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll5 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %14, i32 0, i32 1
  store %struct.D_Sym* %13, %struct.D_Sym** %ll5, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @commit_update(%struct.D_Scope* %st, %struct.D_SymHash* %sh) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %sh.addr = alloca %struct.D_SymHash*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store %struct.D_SymHash* %sh, %struct.D_SymHash** %sh.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms1 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms1, i32 0, i32 2
  %5 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %5, i64 %idxprom
  %6 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  store %struct.D_Sym* %6, %struct.D_Sym** %s, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %tobool = icmp ne %struct.D_Sym* %7, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %8 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %9 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %call = call %struct.D_Sym* @current_D_Sym(%struct.D_Scope* %8, %struct.D_Sym* %9)
  %10 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %update_of = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %10, i32 0, i32 3
  store %struct.D_Sym* %call, %struct.D_Sym** %update_of, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %11, i32 0, i32 4
  %12 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %12, %struct.D_Sym** %s, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @new_D_Sym(%struct.D_Scope* %st, i8* %name, i8* %end, i32 %sizeof_D_Sym) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %name.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %sizeof_D_Sym.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %sizeof_D_Sym, i32* %sizeof_D_Sym.addr, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %sizeof_D_Sym.addr, align 4
  %conv1 = sext i32 %2 to i64
  %call = call noalias i8* @malloc(i64 %conv1) #2
  %3 = bitcast i8* %call to %struct.D_Sym*
  store %struct.D_Sym* %3, %struct.D_Sym** %s, align 8
  %4 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %5 = bitcast %struct.D_Sym* %4 to i8*
  %6 = load i32, i32* %sizeof_D_Sym.addr, align 4
  %conv2 = sext i32 %6 to i64
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %conv2, i32 8, i1 false)
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %name3 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %8, i32 0, i32 0
  store i8* %7, i8** %name3, align 8
  %9 = load i32, i32* %len, align 4
  %10 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %len4 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %10, i32 0, i32 1
  store i32 %9, i32* %len4, align 4
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i32, i32* %len, align 4
  %call5 = call i32 @strhashl(i8* %11, i32 %12)
  %13 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %hash = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %13, i32 0, i32 2
  store i32 %call5, i32* %hash, align 4
  %14 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash6 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %14, i32 0, i32 2
  %15 = load %struct.D_SymHash*, %struct.D_SymHash** %hash6, align 8
  %tobool = icmp ne %struct.D_SymHash* %15, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash7 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %16, i32 0, i32 2
  %17 = load %struct.D_SymHash*, %struct.D_SymHash** %hash7, align 8
  %18 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  call void @symhash_add(%struct.D_SymHash* %17, %struct.D_Sym* %18)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %19, i32 0, i32 1
  %20 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %21 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %21, i32 0, i32 4
  store %struct.D_Sym* %20, %struct.D_Sym** %next, align 8
  %22 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %23 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll8 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %23, i32 0, i32 1
  store %struct.D_Sym* %22, %struct.D_Sym** %ll8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  ret %struct.D_Sym* %24
}

declare i32 @strhashl(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @symhash_add(%struct.D_SymHash* %sh, %struct.D_Sym* %s) #0 {
entry:
  %sh.addr = alloca %struct.D_SymHash*, align 8
  %s.addr = alloca %struct.D_Sym*, align 8
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %n1 = alloca i32, align 4
  %v = alloca %struct.D_Sym**, align 8
  %x = alloca %struct.D_Sym*, align 8
  %vv = alloca %struct.anon.0, align 8
  %tv = alloca %struct.anon.0, align 8
  store %struct.D_SymHash* %sh, %struct.D_SymHash** %sh.addr, align 8
  store %struct.D_Sym* %s, %struct.D_Sym** %s.addr, align 8
  %0 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %hash = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %0, i32 0, i32 2
  %1 = load i32, i32* %hash, align 4
  %2 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %2, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %rem = urem i32 %1, %3
  store i32 %rem, i32* %h, align 4
  %4 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms2 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %4, i32 0, i32 2
  %v3 = getelementptr inbounds %struct.anon, %struct.anon* %syms2, i32 0, i32 2
  %5 = load %struct.D_Sym**, %struct.D_Sym*** %v3, align 8
  store %struct.D_Sym** %5, %struct.D_Sym*** %v, align 8
  %6 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %index = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %6, i32 0, i32 0
  %7 = load i32, i32* %index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %index, align 4
  %8 = load i32, i32* %h, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %9, i64 %idxprom
  %10 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  %11 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %11, i32 0, i32 4
  store %struct.D_Sym* %10, %struct.D_Sym** %next, align 8
  %12 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %13 = load i32, i32* %h, align 4
  %idxprom4 = zext i32 %13 to i64
  %14 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx5 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %14, i64 %idxprom4
  store %struct.D_Sym* %12, %struct.D_Sym** %arrayidx5, align 8
  %15 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %index6 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %15, i32 0, i32 0
  %16 = load i32, i32* %index6, align 4
  %17 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %grow = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %17, i32 0, i32 1
  %18 = load i32, i32* %grow, align 4
  %cmp = icmp sgt i32 %16, %18
  br i1 %cmp, label %if.then, label %if.end.108

if.then:                                          ; preds = %entry
  %19 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms7 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %19, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon, %struct.anon* %syms7, i32 0, i32 2
  %20 = load %struct.D_Sym**, %struct.D_Sym*** %v8, align 8
  %v9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 2
  store %struct.D_Sym** %20, %struct.D_Sym*** %v9, align 8
  %21 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms10 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %21, i32 0, i32 2
  %n11 = getelementptr inbounds %struct.anon, %struct.anon* %syms10, i32 0, i32 0
  %22 = load i32, i32* %n11, align 4
  %n12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 0
  store i32 %22, i32* %n12, align 4
  %23 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %grow13 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %23, i32 0, i32 1
  %24 = load i32, i32* %grow13, align 4
  %25 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms14 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %25, i32 0, i32 2
  %n15 = getelementptr inbounds %struct.anon, %struct.anon* %syms14, i32 0, i32 0
  store i32 %24, i32* %n15, align 4
  %26 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %grow16 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %26, i32 0, i32 1
  %27 = load i32, i32* %grow16, align 4
  %mul = mul nsw i32 %27, 2
  %add = add nsw i32 %mul, 1
  %28 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %grow17 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %28, i32 0, i32 1
  store i32 %add, i32* %grow17, align 4
  %29 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms18 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %29, i32 0, i32 2
  %n19 = getelementptr inbounds %struct.anon, %struct.anon* %syms18, i32 0, i32 0
  %30 = load i32, i32* %n19, align 4
  %conv = zext i32 %30 to i64
  %mul20 = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul20) #2
  %31 = bitcast i8* %call to %struct.D_Sym**
  %32 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms21 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %32, i32 0, i32 2
  %v22 = getelementptr inbounds %struct.anon, %struct.anon* %syms21, i32 0, i32 2
  store %struct.D_Sym** %31, %struct.D_Sym*** %v22, align 8
  %33 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms23 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %33, i32 0, i32 2
  %v24 = getelementptr inbounds %struct.anon, %struct.anon* %syms23, i32 0, i32 2
  %34 = load %struct.D_Sym**, %struct.D_Sym*** %v24, align 8
  %35 = bitcast %struct.D_Sym** %34 to i8*
  %36 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms25 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %36, i32 0, i32 2
  %n26 = getelementptr inbounds %struct.anon, %struct.anon* %syms25, i32 0, i32 0
  %37 = load i32, i32* %n26, align 4
  %conv27 = zext i32 %37 to i64
  %mul28 = mul i64 %conv27, 8
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 %mul28, i32 8, i1 false)
  %38 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms29 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %38, i32 0, i32 2
  %v30 = getelementptr inbounds %struct.anon, %struct.anon* %syms29, i32 0, i32 2
  %39 = load %struct.D_Sym**, %struct.D_Sym*** %v30, align 8
  store %struct.D_Sym** %39, %struct.D_Sym*** %v, align 8
  %40 = load %struct.D_SymHash*, %struct.D_SymHash** %sh.addr, align 8
  %syms31 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %40, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon, %struct.anon* %syms31, i32 0, i32 0
  %41 = load i32, i32* %n32, align 4
  store i32 %41, i32* %n1, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %n33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  store i32 0, i32* %n33, align 4
  %v34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  store %struct.D_Sym** null, %struct.D_Sym*** %v34, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %42 = load i32, i32* %i, align 4
  %n35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 0
  %43 = load i32, i32* %n35, align 4
  %cmp36 = icmp ult i32 %42, %43
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end.84, %for.body
  %44 = load i32, i32* %i, align 4
  %idxprom38 = zext i32 %44 to i64
  %v39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 2
  %45 = load %struct.D_Sym**, %struct.D_Sym*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %45, i64 %idxprom38
  %46 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx40, align 8
  %tobool = icmp ne %struct.D_Sym* %46, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %47 to i64
  %v42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 2
  %48 = load %struct.D_Sym**, %struct.D_Sym*** %v42, align 8
  %arrayidx43 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %48, i64 %idxprom41
  %49 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx43, align 8
  store %struct.D_Sym* %49, %struct.D_Sym** %x, align 8
  %50 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %next44 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %50, i32 0, i32 4
  %51 = load %struct.D_Sym*, %struct.D_Sym** %next44, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %52 to i64
  %v46 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 2
  %53 = load %struct.D_Sym**, %struct.D_Sym*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %53, i64 %idxprom45
  store %struct.D_Sym* %51, %struct.D_Sym** %arrayidx47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %while.body
  %v49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %54 = load %struct.D_Sym**, %struct.D_Sym*** %v49, align 8
  %tobool50 = icmp ne %struct.D_Sym** %54, null
  br i1 %tobool50, label %if.else, label %if.then.51

if.then.51:                                       ; preds = %do.body.48
  %55 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %n52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  %56 = load i32, i32* %n52, align 4
  %inc53 = add i32 %56, 1
  store i32 %inc53, i32* %n52, align 4
  %idxprom54 = zext i32 %56 to i64
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.D_Sym*], [3 x %struct.D_Sym*]* %e, i32 0, i32 0
  %v55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  store %struct.D_Sym** %arraydecay, %struct.D_Sym*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %arraydecay, i64 %idxprom54
  store %struct.D_Sym* %55, %struct.D_Sym** %arrayidx56, align 8
  br label %do.end.84

if.else:                                          ; preds = %do.body.48
  %v57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %57 = load %struct.D_Sym**, %struct.D_Sym*** %v57, align 8
  %e58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 3
  %arraydecay59 = getelementptr inbounds [3 x %struct.D_Sym*], [3 x %struct.D_Sym*]* %e58, i32 0, i32 0
  %cmp60 = icmp eq %struct.D_Sym** %57, %arraydecay59
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %if.else
  %n63 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  %58 = load i32, i32* %n63, align 4
  %cmp64 = icmp ult i32 %58, 3
  br i1 %cmp64, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %if.then.62
  %59 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %n67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  %60 = load i32, i32* %n67, align 4
  %inc68 = add i32 %60, 1
  store i32 %inc68, i32* %n67, align 4
  %idxprom69 = zext i32 %60 to i64
  %v70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %61 = load %struct.D_Sym**, %struct.D_Sym*** %v70, align 8
  %arrayidx71 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %61, i64 %idxprom69
  store %struct.D_Sym* %59, %struct.D_Sym** %arrayidx71, align 8
  br label %do.end.84

if.end:                                           ; preds = %if.then.62
  br label %if.end.82

if.else.72:                                       ; preds = %if.else
  %n73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  %62 = load i32, i32* %n73, align 4
  %and = and i32 %62, 7
  %tobool74 = icmp ne i32 %and, 0
  br i1 %tobool74, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.else.72
  %63 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %n76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 0
  %64 = load i32, i32* %n76, align 4
  %inc77 = add i32 %64, 1
  store i32 %inc77, i32* %n76, align 4
  %idxprom78 = zext i32 %64 to i64
  %v79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %65 = load %struct.D_Sym**, %struct.D_Sym*** %v79, align 8
  %arrayidx80 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %65, i64 %idxprom78
  store %struct.D_Sym* %63, %struct.D_Sym** %arrayidx80, align 8
  br label %do.end.84

if.end.81:                                        ; preds = %if.else.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  %66 = bitcast %struct.anon.0* %tv to i8*
  %67 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %68 = bitcast %struct.D_Sym* %67 to i8*
  call void @vec_add_internal(i8* %66, i8* %68)
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83, %if.then.75, %if.then.66, %if.then.51
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %69 = load i32, i32* %i, align 4
  %inc85 = add i32 %69, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.91, %for.end
  %70 = load i32, i32* %i, align 4
  %idxprom87 = zext i32 %70 to i64
  %v88 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %71 = load %struct.D_Sym**, %struct.D_Sym*** %v88, align 8
  %arrayidx89 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %71, i64 %idxprom87
  %72 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx89, align 8
  %tobool90 = icmp ne %struct.D_Sym* %72, null
  br i1 %tobool90, label %while.body.91, label %while.end.106

while.body.91:                                    ; preds = %while.cond.86
  %73 = load i32, i32* %i, align 4
  %idxprom92 = zext i32 %73 to i64
  %v93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %74 = load %struct.D_Sym**, %struct.D_Sym*** %v93, align 8
  %arrayidx94 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %74, i64 %idxprom92
  %75 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx94, align 8
  store %struct.D_Sym* %75, %struct.D_Sym** %x, align 8
  %76 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %next95 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %76, i32 0, i32 4
  %77 = load %struct.D_Sym*, %struct.D_Sym** %next95, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %78 to i64
  %v97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %tv, i32 0, i32 2
  %79 = load %struct.D_Sym**, %struct.D_Sym*** %v97, align 8
  %arrayidx98 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %79, i64 %idxprom96
  store %struct.D_Sym* %77, %struct.D_Sym** %arrayidx98, align 8
  %80 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %hash99 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %80, i32 0, i32 2
  %81 = load i32, i32* %hash99, align 4
  %82 = load i32, i32* %n1, align 4
  %rem100 = urem i32 %81, %82
  store i32 %rem100, i32* %h, align 4
  %83 = load i32, i32* %h, align 4
  %idxprom101 = zext i32 %83 to i64
  %84 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx102 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %84, i64 %idxprom101
  %85 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx102, align 8
  %86 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %next103 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %86, i32 0, i32 4
  store %struct.D_Sym* %85, %struct.D_Sym** %next103, align 8
  %87 = load %struct.D_Sym*, %struct.D_Sym** %x, align 8
  %88 = load i32, i32* %h, align 4
  %idxprom104 = zext i32 %88 to i64
  %89 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx105 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %89, i64 %idxprom104
  store %struct.D_Sym* %87, %struct.D_Sym** %arrayidx105, align 8
  br label %while.cond.86

while.end.106:                                    ; preds = %while.cond.86
  %v107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %vv, i32 0, i32 2
  %90 = load %struct.D_Sym**, %struct.D_Sym*** %v107, align 8
  %91 = bitcast %struct.D_Sym** %90 to i8*
  call void @free(i8* %91) #2
  br label %if.end.108

if.end.108:                                       ; preds = %while.end.106, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @current_D_Sym(%struct.D_Scope* %st, %struct.D_Sym* %sym) #0 {
entry:
  %retval = alloca %struct.D_Sym*, align 8
  %st.addr = alloca %struct.D_Scope*, align 8
  %sym.addr = alloca %struct.D_Sym*, align 8
  %sc = alloca %struct.D_Scope*, align 8
  %uu = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store %struct.D_Sym* %sym, %struct.D_Sym** %sym.addr, align 8
  %0 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %update_of = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %0, i32 0, i32 3
  %1 = load %struct.D_Sym*, %struct.D_Sym** %update_of, align 8
  %tobool = icmp ne %struct.D_Sym* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %update_of1 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %2, i32 0, i32 3
  %3 = load %struct.D_Sym*, %struct.D_Sym** %update_of1, align 8
  store %struct.D_Sym* %3, %struct.D_Sym** %sym.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  store %struct.D_Scope* %4, %struct.D_Scope** %sc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %if.end
  %5 = load %struct.D_Scope*, %struct.D_Scope** %sc, align 8
  %tobool2 = icmp ne %struct.D_Scope* %5, null
  br i1 %tobool2, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %6 = load %struct.D_Scope*, %struct.D_Scope** %sc, align 8
  %updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %6, i32 0, i32 3
  %7 = load %struct.D_Sym*, %struct.D_Sym** %updates, align 8
  store %struct.D_Sym* %7, %struct.D_Sym** %uu, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.D_Sym*, %struct.D_Sym** %uu, align 8
  %tobool4 = icmp ne %struct.D_Sym* %8, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %9 = load %struct.D_Sym*, %struct.D_Sym** %uu, align 8
  %update_of6 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %9, i32 0, i32 3
  %10 = load %struct.D_Sym*, %struct.D_Sym** %update_of6, align 8
  %11 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %cmp = icmp eq %struct.D_Sym* %10, %11
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body.5
  %12 = load %struct.D_Sym*, %struct.D_Sym** %uu, align 8
  store %struct.D_Sym* %12, %struct.D_Sym** %retval
  br label %return

if.end.8:                                         ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load %struct.D_Sym*, %struct.D_Sym** %uu, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %13, i32 0, i32 4
  %14 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %14, %struct.D_Sym** %uu, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %15 = load %struct.D_Scope*, %struct.D_Scope** %sc, align 8
  %up_updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %15, i32 0, i32 6
  %16 = load %struct.D_Scope*, %struct.D_Scope** %up_updates, align 8
  store %struct.D_Scope* %16, %struct.D_Scope** %sc, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %17 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  store %struct.D_Sym* %17, %struct.D_Sym** %retval
  br label %return

return:                                           ; preds = %for.end.10, %if.then.7
  %18 = load %struct.D_Sym*, %struct.D_Sym** %retval
  ret %struct.D_Sym* %18
}

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @find_sym_internal(%struct.D_Scope* %top, %struct.D_Scope* %cur, i8* %name, i32 %len, i32 %h) #0 {
entry:
  %retval = alloca %struct.D_Sym*, align 8
  %top.addr = alloca %struct.D_Scope*, align 8
  %cur.addr = alloca %struct.D_Scope*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %ll = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %top, %struct.D_Scope** %top.addr, align 8
  store %struct.D_Scope* %cur, %struct.D_Scope** %cur.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %tobool = icmp ne %struct.D_Scope* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.D_Sym* null, %struct.D_Sym** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %1, i32 0, i32 2
  %2 = load %struct.D_SymHash*, %struct.D_SymHash** %hash, align 8
  %tobool1 = icmp ne %struct.D_SymHash* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %h.addr, align 4
  %4 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %hash3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %4, i32 0, i32 2
  %5 = load %struct.D_SymHash*, %struct.D_SymHash** %hash3, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %5, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %6 = load i32, i32* %n, align 4
  %rem = urem i32 %3, %6
  %idxprom = zext i32 %rem to i64
  %7 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %hash4 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %7, i32 0, i32 2
  %8 = load %struct.D_SymHash*, %struct.D_SymHash** %hash4, align 8
  %syms5 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %8, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms5, i32 0, i32 2
  %9 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %9, i64 %idxprom
  %10 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  store %struct.D_Sym* %10, %struct.D_Sym** %ll, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %11 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %ll6 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %11, i32 0, i32 1
  %12 = load %struct.D_Sym*, %struct.D_Sym** %ll6, align 8
  store %struct.D_Sym* %12, %struct.D_Sym** %ll, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.2
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end.7
  %13 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool8 = icmp ne %struct.D_Sym* %13, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %hash9 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %14, i32 0, i32 2
  %15 = load i32, i32* %hash9, align 4
  %16 = load i32, i32* %h.addr, align 4
  %cmp = icmp eq i32 %15, %16
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %while.body
  %17 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %len10 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %17, i32 0, i32 1
  %18 = load i32, i32* %len10, align 4
  %19 = load i32, i32* %len.addr, align 4
  %cmp11 = icmp eq i32 %18, %19
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %20 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %name13 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %20, i32 0, i32 0
  %21 = load i8*, i8** %name13, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %23 to i64
  %call = call i32 @strncmp(i8* %21, i8* %22, i64 %conv) #5
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12
  br label %while.end

if.end.16:                                        ; preds = %land.lhs.true.12, %land.lhs.true, %while.body
  %24 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %24, i32 0, i32 4
  %25 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %25, %struct.D_Sym** %ll, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %while.cond
  %26 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool17 = icmp ne %struct.D_Sym* %26, null
  br i1 %tobool17, label %if.end.24, label %if.then.18

if.then.18:                                       ; preds = %while.end
  %27 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %27, i32 0, i32 4
  %28 = load %struct.D_Scope*, %struct.D_Scope** %search, align 8
  %tobool19 = icmp ne %struct.D_Scope* %28, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.18
  %29 = load %struct.D_Scope*, %struct.D_Scope** %top.addr, align 8
  %30 = load %struct.D_Scope*, %struct.D_Scope** %cur.addr, align 8
  %search21 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %30, i32 0, i32 4
  %31 = load %struct.D_Scope*, %struct.D_Scope** %search21, align 8
  %32 = load i8*, i8** %name.addr, align 8
  %33 = load i32, i32* %len.addr, align 4
  %34 = load i32, i32* %h.addr, align 4
  %call22 = call %struct.D_Sym* @find_sym_internal(%struct.D_Scope* %29, %struct.D_Scope* %31, i8* %32, i32 %33, i32 %34)
  store %struct.D_Sym* %call22, %struct.D_Sym** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  %35 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  store %struct.D_Sym* %35, %struct.D_Sym** %retval
  br label %return

if.end.24:                                        ; preds = %while.end
  %36 = load %struct.D_Scope*, %struct.D_Scope** %top.addr, align 8
  %37 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %call25 = call %struct.D_Sym* @current_D_Sym(%struct.D_Scope* %36, %struct.D_Sym* %37)
  store %struct.D_Sym* %call25, %struct.D_Sym** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.end.23, %if.then.20, %if.then
  %38 = load %struct.D_Sym*, %struct.D_Sym** %retval
  ret %struct.D_Sym* %38
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @find_D_Sym(%struct.D_Scope* %st, i8* %name, i8* %end) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %name.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %len, align 4
  %call = call i32 @strhashl(i8* %2, i32 %3)
  store i32 %call, i32* %h, align 4
  %4 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %5 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i32, i32* %len, align 4
  %8 = load i32, i32* %h, align 4
  %call1 = call %struct.D_Sym* @find_sym_internal(%struct.D_Scope* %4, %struct.D_Scope* %5, i8* %6, i32 %7, i32 %8)
  ret %struct.D_Sym* %call1
}

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @find_D_Sym_in_Scope(%struct.D_Scope* %st, i8* %name, i8* %end) #0 {
entry:
  %retval = alloca %struct.D_Sym*, align 8
  %st.addr = alloca %struct.D_Scope*, align 8
  %name.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %ll = alloca %struct.D_Sym*, align 8
  %len = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %len, align 4
  %call = call i32 @strhashl(i8* %2, i32 %3)
  store i32 %call, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %tobool = icmp ne %struct.D_Scope* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %5, i32 0, i32 2
  %6 = load %struct.D_SymHash*, %struct.D_SymHash** %hash, align 8
  %tobool1 = icmp ne %struct.D_SymHash* %6, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %h, align 4
  %8 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash2 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %8, i32 0, i32 2
  %9 = load %struct.D_SymHash*, %struct.D_SymHash** %hash2, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %9, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %rem = urem i32 %7, %10
  %idxprom = zext i32 %rem to i64
  %11 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash3 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %11, i32 0, i32 2
  %12 = load %struct.D_SymHash*, %struct.D_SymHash** %hash3, align 8
  %syms4 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %12, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms4, i32 0, i32 2
  %13 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %13, i64 %idxprom
  %14 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  store %struct.D_Sym* %14, %struct.D_Sym** %ll, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll5 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %15, i32 0, i32 1
  %16 = load %struct.D_Sym*, %struct.D_Sym** %ll5, align 8
  store %struct.D_Sym* %16, %struct.D_Sym** %ll, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %17 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool6 = icmp ne %struct.D_Sym* %17, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %hash7 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %18, i32 0, i32 2
  %19 = load i32, i32* %hash7, align 4
  %20 = load i32, i32* %h, align 4
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %while.body
  %21 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %len9 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %21, i32 0, i32 1
  %22 = load i32, i32* %len9, align 4
  %23 = load i32, i32* %len, align 4
  %cmp10 = icmp eq i32 %22, %23
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %24 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %name13 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %24, i32 0, i32 0
  %25 = load i8*, i8** %name13, align 8
  %26 = load i8*, i8** %name.addr, align 8
  %27 = load i32, i32* %len, align 4
  %conv14 = sext i32 %27 to i64
  %call15 = call i32 @strncmp(i8* %25, i8* %26, i64 %conv14) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.12
  %28 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  store %struct.D_Sym* %28, %struct.D_Sym** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.12, %land.lhs.true, %while.body
  %29 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %29, i32 0, i32 4
  %30 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %30, %struct.D_Sym** %ll, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %31, i32 0, i32 4
  %32 = load %struct.D_Scope*, %struct.D_Scope** %search, align 8
  %tobool19 = icmp ne %struct.D_Scope* %32, null
  br i1 %tobool19, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %while.end
  %33 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search20 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %33, i32 0, i32 4
  %34 = load %struct.D_Scope*, %struct.D_Scope** %search20, align 8
  %up = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %34, i32 0, i32 5
  %35 = load %struct.D_Scope*, %struct.D_Scope** %up, align 8
  %36 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %up21 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %36, i32 0, i32 5
  %37 = load %struct.D_Scope*, %struct.D_Scope** %up21, align 8
  %cmp22 = icmp ne %struct.D_Scope* %35, %37
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %while.end
  br label %for.end

if.end.25:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %38 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search26 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %38, i32 0, i32 4
  %39 = load %struct.D_Scope*, %struct.D_Scope** %search26, align 8
  store %struct.D_Scope* %39, %struct.D_Scope** %st.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  store %struct.D_Sym* null, %struct.D_Sym** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17
  %40 = load %struct.D_Sym*, %struct.D_Sym** %retval
  ret %struct.D_Sym* %40
}

; Function Attrs: nounwind uwtable
define %struct.D_Sym* @update_D_Sym(%struct.D_Scope* %st, %struct.D_Sym* %sym, i32 %sizeof_D_Sym) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %sym.addr = alloca %struct.D_Sym*, align 8
  %sizeof_D_Sym.addr = alloca i32, align 4
  %s = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  store %struct.D_Sym* %sym, %struct.D_Sym** %sym.addr, align 8
  store i32 %sizeof_D_Sym, i32* %sizeof_D_Sym.addr, align 4
  %0 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %1 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %call = call %struct.D_Sym* @current_D_Sym(%struct.D_Scope* %0, %struct.D_Sym* %1)
  store %struct.D_Sym* %call, %struct.D_Sym** %sym.addr, align 8
  %2 = load i32, i32* %sizeof_D_Sym.addr, align 4
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @malloc(i64 %conv) #2
  %3 = bitcast i8* %call1 to %struct.D_Sym*
  store %struct.D_Sym* %3, %struct.D_Sym** %s, align 8
  %4 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %5 = bitcast %struct.D_Sym* %4 to i8*
  %6 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %7 = bitcast %struct.D_Sym* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 40, i32 8, i1 false)
  %8 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %update_of = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %8, i32 0, i32 3
  %9 = load %struct.D_Sym*, %struct.D_Sym** %update_of, align 8
  %tobool = icmp ne %struct.D_Sym* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %update_of2 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %10, i32 0, i32 3
  %11 = load %struct.D_Sym*, %struct.D_Sym** %update_of2, align 8
  store %struct.D_Sym* %11, %struct.D_Sym** %sym.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.D_Sym*, %struct.D_Sym** %sym.addr, align 8
  %13 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %update_of3 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %13, i32 0, i32 3
  store %struct.D_Sym* %12, %struct.D_Sym** %update_of3, align 8
  %14 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %14, i32 0, i32 3
  %15 = load %struct.D_Sym*, %struct.D_Sym** %updates, align 8
  %16 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %16, i32 0, i32 4
  store %struct.D_Sym* %15, %struct.D_Sym** %next, align 8
  %17 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  %18 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %updates4 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %18, i32 0, i32 3
  store %struct.D_Sym* %17, %struct.D_Sym** %updates4, align 8
  %19 = load %struct.D_Sym*, %struct.D_Sym** %s, align 8
  ret %struct.D_Sym* %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @print_sym(%struct.D_Sym* %s) #0 {
entry:
  %s.addr = alloca %struct.D_Sym*, align 8
  %c = alloca i8*, align 8
  store %struct.D_Sym* %s, %struct.D_Sym** %s.addr, align 8
  %0 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %len = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %0, i32 0, i32 1
  %1 = load i32, i32* %len, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #2
  store i8* %call, i8** %c, align 8
  %2 = load i8*, i8** %c, align 8
  %3 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %name = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %len1 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %5, i32 0, i32 1
  %6 = load i32, i32* %len1, align 4
  %conv2 = sext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 %conv2, i32 1, i1 false)
  %7 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %len3 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %7, i32 0, i32 1
  %8 = load i32, i32* %len3, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.D_Sym*, %struct.D_Sym** %s.addr, align 8
  %name4 = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %9, i32 0, i32 0
  %10 = load i8*, i8** %name4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %c, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %c, align 8
  call void @free(i8* %12) #2
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @print_scope(%struct.D_Scope* %st) #0 {
entry:
  %st.addr = alloca %struct.D_Scope*, align 8
  %i = alloca i32, align 4
  %ll24 = alloca %struct.D_Sym*, align 8
  store %struct.D_Scope* %st, %struct.D_Scope** %st.addr, align 8
  %0 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %1 = ptrtoint %struct.D_Scope* %0 to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 %1)
  %2 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %3 = bitcast %struct.D_Scope* %2 to i8*
  %bf.load = load i8, i8* %3, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %4 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %5 = bitcast %struct.D_Scope* %4 to i8*
  %bf.load1 = load i8, i8* %5, align 8
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 3
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %bf.cast, i32 %bf.cast3)
  %6 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %6, i32 0, i32 1
  %7 = load %struct.D_Sym*, %struct.D_Sym** %ll, align 8
  %tobool = icmp ne %struct.D_Sym* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %8, i32 0, i32 2
  %9 = load %struct.D_SymHash*, %struct.D_SymHash** %hash, align 8
  %tobool6 = icmp ne %struct.D_SymHash* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %10 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash10 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %10, i32 0, i32 2
  %11 = load %struct.D_SymHash*, %struct.D_SymHash** %hash10, align 8
  %tobool11 = icmp ne %struct.D_SymHash* %11, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash13 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %13, i32 0, i32 2
  %14 = load %struct.D_SymHash*, %struct.D_SymHash** %hash13, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %14, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  %15 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %12, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash14 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %17, i32 0, i32 2
  %18 = load %struct.D_SymHash*, %struct.D_SymHash** %hash14, align 8
  %syms15 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %18, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms15, i32 0, i32 2
  %19 = load %struct.D_Sym**, %struct.D_Sym*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %19, i64 %idxprom
  %20 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx, align 8
  %tobool16 = icmp ne %struct.D_Sym* %20, null
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %hash19 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %22, i32 0, i32 2
  %23 = load %struct.D_SymHash*, %struct.D_SymHash** %hash19, align 8
  %syms20 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %23, i32 0, i32 2
  %v21 = getelementptr inbounds %struct.anon, %struct.anon* %syms20, i32 0, i32 2
  %24 = load %struct.D_Sym**, %struct.D_Sym*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.D_Sym*, %struct.D_Sym** %24, i64 %idxprom18
  %25 = load %struct.D_Sym*, %struct.D_Sym** %arrayidx22, align 8
  call void @print_sym(%struct.D_Sym* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.else:                                          ; preds = %if.end.9
  %27 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %ll25 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %27, i32 0, i32 1
  %28 = load %struct.D_Sym*, %struct.D_Sym** %ll25, align 8
  store %struct.D_Sym* %28, %struct.D_Sym** %ll24, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %29 = load %struct.D_Sym*, %struct.D_Sym** %ll24, align 8
  %tobool26 = icmp ne %struct.D_Sym* %29, null
  br i1 %tobool26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct.D_Sym*, %struct.D_Sym** %ll24, align 8
  call void @print_sym(%struct.D_Sym* %30)
  %31 = load %struct.D_Sym*, %struct.D_Sym** %ll24, align 8
  %next = getelementptr inbounds %struct.D_Sym, %struct.D_Sym* %31, i32 0, i32 4
  %32 = load %struct.D_Sym*, %struct.D_Sym** %next, align 8
  store %struct.D_Sym* %32, %struct.D_Sym** %ll24, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.27

if.end.27:                                        ; preds = %while.end, %for.end
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %33 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %33, i32 0, i32 4
  %34 = load %struct.D_Scope*, %struct.D_Scope** %search, align 8
  %tobool29 = icmp ne %struct.D_Scope* %34, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %35 = load %struct.D_Scope*, %struct.D_Scope** %st.addr, align 8
  %search31 = getelementptr inbounds %struct.D_Scope, %struct.D_Scope* %35, i32 0, i32 4
  %36 = load %struct.D_Scope*, %struct.D_Scope** %search31, align 8
  call void @print_scope(%struct.D_Scope* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.D_SymHash* @new_D_SymHash() #0 {
entry:
  %sh = alloca %struct.D_SymHash*, align 8
  %call = call noalias i8* @malloc(i64 48) #2
  %0 = bitcast i8* %call to %struct.D_SymHash*
  store %struct.D_SymHash* %0, %struct.D_SymHash** %sh, align 8
  %1 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %2 = bitcast %struct.D_SymHash* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 8, i1 false)
  %3 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %grow = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %3, i32 0, i32 1
  store i32 6275, i32* %grow, align 4
  %4 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %syms = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %4, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %syms, i32 0, i32 0
  store i32 3137, i32* %n, align 4
  %5 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %syms1 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %5, i32 0, i32 2
  %n2 = getelementptr inbounds %struct.anon, %struct.anon* %syms1, i32 0, i32 0
  %6 = load i32, i32* %n2, align 4
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call3 = call noalias i8* @malloc(i64 %mul) #2
  %7 = bitcast i8* %call3 to %struct.D_Sym**
  %8 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %syms4 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %8, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %syms4, i32 0, i32 2
  store %struct.D_Sym** %7, %struct.D_Sym*** %v, align 8
  %9 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %syms5 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %9, i32 0, i32 2
  %v6 = getelementptr inbounds %struct.anon, %struct.anon* %syms5, i32 0, i32 2
  %10 = load %struct.D_Sym**, %struct.D_Sym*** %v6, align 8
  %11 = bitcast %struct.D_Sym** %10 to i8*
  %12 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  %syms7 = getelementptr inbounds %struct.D_SymHash, %struct.D_SymHash* %12, i32 0, i32 2
  %n8 = getelementptr inbounds %struct.anon, %struct.anon* %syms7, i32 0, i32 0
  %13 = load i32, i32* %n8, align 4
  %conv9 = zext i32 %13 to i64
  %mul10 = mul i64 %conv9, 8
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 %mul10, i32 8, i1 false)
  %14 = load %struct.D_SymHash*, %struct.D_SymHash** %sh, align 8
  ret %struct.D_SymHash* %14
}

declare void @vec_add_internal(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
