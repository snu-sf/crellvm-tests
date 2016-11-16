; ModuleID = '36.smdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbtype = type { i8*, i8* }
%struct.database_struct = type { i32 (%struct.database_struct*)*, i32 (%struct.database_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32*)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32)*, i32 (%struct.database_struct*, i32, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*)*, i8* }
%struct.entry_struct = type { i8*, i64 }
%struct.cursor_struct = type { i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i8* }
%struct.database_user_struct = type { i32, i32, [1024 x i8] }
%struct.database_params_struct = type { i32, i32, i32 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"btree\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dbm\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@DatabaseDefs = internal global [4 x %struct.dbtype] [%struct.dbtype { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.dbtype { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.dbtype { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, %struct.dbtype { i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"NEWDB\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NDBM\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"OOPS\00", align 1

; Function Attrs: nounwind uwtable
define %struct.database_struct* @smdb_malloc_database() #0 {
entry:
  %db = alloca %struct.database_struct*, align 8
  %0 = bitcast %struct.database_struct** %db to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 80) #1
  %1 = bitcast i8* %call to %struct.database_struct*
  store %struct.database_struct* %1, %struct.database_struct** %db, align 8, !tbaa !1
  %2 = load %struct.database_struct*, %struct.database_struct** %db, align 8, !tbaa !1
  %cmp = icmp ne %struct.database_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.database_struct*, %struct.database_struct** %db, align 8, !tbaa !1
  %4 = bitcast %struct.database_struct* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 80, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.database_struct*, %struct.database_struct** %db, align 8, !tbaa !1
  %6 = bitcast %struct.database_struct** %db to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret %struct.database_struct* %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @smdb_free_database(%struct.database_struct* %database) #0 {
entry:
  %database.addr = alloca %struct.database_struct*, align 8
  store %struct.database_struct* %database, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %0 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.database_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %2 = bitcast %struct.database_struct* %1 to i8*
  call void @free(i8* %2) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @smdb_open_database(%struct.database_struct** %database, i8* %db_name, i32 %mode, i32 %mode_mask, i64 %sff, i8* %type, %struct.database_user_struct* %user_info, %struct.database_params_struct* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %database.addr = alloca %struct.database_struct**, align 8
  %db_name.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %mode_mask.addr = alloca i32, align 4
  %sff.addr = alloca i64, align 8
  %type.addr = alloca i8*, align 8
  %user_info.addr = alloca %struct.database_user_struct*, align 8
  %params.addr = alloca %struct.database_params_struct*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__s1_len45 = alloca i64, align 8
  %__s2_len47 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %__s154 = alloca i8*, align 8
  %__result56 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %__s1_len104 = alloca i64, align 8
  %__s2_len106 = alloca i64, align 8
  %tmp107 = alloca i32, align 4
  %__s1113 = alloca i8*, align 8
  %__result115 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  store %struct.database_struct** %database, %struct.database_struct*** %database.addr, align 8, !tbaa !1
  store i8* %db_name, i8** %db_name.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  store i32 %mode_mask, i32* %mode_mask.addr, align 4, !tbaa !5
  store i64 %sff, i64* %sff.addr, align 8, !tbaa !7
  store i8* %type, i8** %type.addr, align 8, !tbaa !1
  store %struct.database_user_struct* %user_info, %struct.database_user_struct** %user_info.addr, align 8, !tbaa !1
  store %struct.database_params_struct* %params, %struct.database_params_struct** %params.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 303, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.3
  store i64 4, i64* %__s2_len, align 8, !tbaa !7
  %4 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp4 = icmp ult i64 %4, 4
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %type.addr, align 8, !tbaa !1
  store i8* %6, i8** %__s1, align 8, !tbaa !1
  %7 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %9 to i32
  %10 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %conv7 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, %conv7
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %11 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp8 = icmp ugt i64 %11, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.40

land.lhs.true.10:                                 ; preds = %cond.true
  %12 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.13, label %if.end.40

if.then.13:                                       ; preds = %land.lhs.true.10
  %13 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx14, align 1, !tbaa !9
  %conv15 = zext i8 %14 to i32
  %15 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %conv16 = zext i8 %15 to i32
  %sub17 = sub nsw i32 %conv15, %conv16
  store i32 %sub17, i32* %__result, align 4, !tbaa !5
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp18 = icmp ugt i64 %16, 1
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.39

land.lhs.true.20:                                 ; preds = %if.then.13
  %17 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %if.then.23, label %if.end.39

if.then.23:                                       ; preds = %land.lhs.true.20
  %18 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx24, align 1, !tbaa !9
  %conv25 = zext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !9
  %conv26 = zext i8 %20 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  store i32 %sub27, i32* %__result, align 4, !tbaa !5
  %21 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp28 = icmp ugt i64 %21, 2
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %if.then.23
  %22 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %22, 0
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %land.lhs.true.30
  %23 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %23, i64 3
  %24 = load i8, i8* %arrayidx34, align 1, !tbaa !9
  %conv35 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !9
  %conv36 = zext i8 %25 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %land.lhs.true.30, %if.then.23
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.20, %if.then.13
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.10, %cond.true
  %26 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %26, i32* %tmp41, !tbaa !5
  %27 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %tmp41, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.3
  %30 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.40
  %cond = phi i32 [ %29, %if.end.40 ], [ %call, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %31 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %tmp, !tbaa !5
  %cmp42 = icmp eq i32 %33, 0
  br i1 %cmp42, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %34 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.49, label %cond.false.95

land.lhs.true.49:                                 ; preds = %lor.lhs.false
  store i64 5, i64* %__s2_len47, align 8, !tbaa !7
  %36 = load i64, i64* %__s2_len47, align 8, !tbaa !7
  %cmp50 = icmp ult i64 %36, 4
  br i1 %cmp50, label %cond.true.52, label %cond.false.95

cond.true.52:                                     ; preds = %land.lhs.true.49
  %37 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i8*, i8** %type.addr, align 8, !tbaa !1
  store i8* %38, i8** %__s154, align 8, !tbaa !1
  %39 = bitcast i32* %__result56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx57, align 1, !tbaa !9
  %conv58 = zext i8 %41 to i32
  %42 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !9
  %conv59 = zext i8 %42 to i32
  %sub60 = sub nsw i32 %conv58, %conv59
  store i32 %sub60, i32* %__result56, align 4, !tbaa !5
  %43 = load i64, i64* %__s2_len47, align 8, !tbaa !7
  %cmp61 = icmp ugt i64 %43, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.93

land.lhs.true.63:                                 ; preds = %cond.true.52
  %44 = load i32, i32* %__result56, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %44, 0
  br i1 %cmp64, label %if.then.66, label %if.end.93

if.then.66:                                       ; preds = %land.lhs.true.63
  %45 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx67, align 1, !tbaa !9
  %conv68 = zext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !9
  %conv69 = zext i8 %47 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result56, align 4, !tbaa !5
  %48 = load i64, i64* %__s2_len47, align 8, !tbaa !7
  %cmp71 = icmp ugt i64 %48, 1
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.92

land.lhs.true.73:                                 ; preds = %if.then.66
  %49 = load i32, i32* %__result56, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %49, 0
  br i1 %cmp74, label %if.then.76, label %if.end.92

if.then.76:                                       ; preds = %land.lhs.true.73
  %50 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx77, align 1, !tbaa !9
  %conv78 = zext i8 %51 to i32
  %52 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !9
  %conv79 = zext i8 %52 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  store i32 %sub80, i32* %__result56, align 4, !tbaa !5
  %53 = load i64, i64* %__s2_len47, align 8, !tbaa !7
  %cmp81 = icmp ugt i64 %53, 2
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.91

land.lhs.true.83:                                 ; preds = %if.then.76
  %54 = load i32, i32* %__result56, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %54, 0
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %land.lhs.true.83
  %55 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %55, i64 3
  %56 = load i8, i8* %arrayidx87, align 1, !tbaa !9
  %conv88 = zext i8 %56 to i32
  %57 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !9
  %conv89 = zext i8 %57 to i32
  %sub90 = sub nsw i32 %conv88, %conv89
  store i32 %sub90, i32* %__result56, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %land.lhs.true.83, %if.then.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.73, %if.then.66
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.63, %cond.true.52
  %58 = load i32, i32* %__result56, align 4, !tbaa !5
  store i32 %58, i32* %tmp94, !tbaa !5
  %59 = bitcast i32* %__result56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %tmp94, !tbaa !5
  br label %cond.end.97

cond.false.95:                                    ; preds = %land.lhs.true.49, %lor.lhs.false
  %62 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %call96 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #1
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %if.end.93
  %cond98 = phi i32 [ %61, %if.end.93 ], [ %call96, %cond.false.95 ]
  store i32 %cond98, i32* %tmp48, !tbaa !5
  %63 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i32, i32* %tmp48, !tbaa !5
  %cmp99 = icmp eq i32 %65, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.97, %cond.end
  store i32 304, i32* %retval
  br label %return

if.end.102:                                       ; preds = %cond.end.97
  %66 = bitcast i64* %__s1_len104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = bitcast i64* %__s2_len106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.108, label %cond.false.154

land.lhs.true.108:                                ; preds = %if.end.102
  store i64 3, i64* %__s2_len106, align 8, !tbaa !7
  %68 = load i64, i64* %__s2_len106, align 8, !tbaa !7
  %cmp109 = icmp ult i64 %68, 4
  br i1 %cmp109, label %cond.true.111, label %cond.false.154

cond.true.111:                                    ; preds = %land.lhs.true.108
  %69 = bitcast i8** %__s1113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = load i8*, i8** %type.addr, align 8, !tbaa !1
  store i8* %70, i8** %__s1113, align 8, !tbaa !1
  %71 = bitcast i32* %__result115 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i8*, i8** %__s1113, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx116, align 1, !tbaa !9
  %conv117 = zext i8 %73 to i32
  %74 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !9
  %conv118 = zext i8 %74 to i32
  %sub119 = sub nsw i32 %conv117, %conv118
  store i32 %sub119, i32* %__result115, align 4, !tbaa !5
  %75 = load i64, i64* %__s2_len106, align 8, !tbaa !7
  %cmp120 = icmp ugt i64 %75, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.152

land.lhs.true.122:                                ; preds = %cond.true.111
  %76 = load i32, i32* %__result115, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %76, 0
  br i1 %cmp123, label %if.then.125, label %if.end.152

if.then.125:                                      ; preds = %land.lhs.true.122
  %77 = load i8*, i8** %__s1113, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx126, align 1, !tbaa !9
  %conv127 = zext i8 %78 to i32
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !9
  %conv128 = zext i8 %79 to i32
  %sub129 = sub nsw i32 %conv127, %conv128
  store i32 %sub129, i32* %__result115, align 4, !tbaa !5
  %80 = load i64, i64* %__s2_len106, align 8, !tbaa !7
  %cmp130 = icmp ugt i64 %80, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.151

land.lhs.true.132:                                ; preds = %if.then.125
  %81 = load i32, i32* %__result115, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %81, 0
  br i1 %cmp133, label %if.then.135, label %if.end.151

if.then.135:                                      ; preds = %land.lhs.true.132
  %82 = load i8*, i8** %__s1113, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx136, align 1, !tbaa !9
  %conv137 = zext i8 %83 to i32
  %84 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !9
  %conv138 = zext i8 %84 to i32
  %sub139 = sub nsw i32 %conv137, %conv138
  store i32 %sub139, i32* %__result115, align 4, !tbaa !5
  %85 = load i64, i64* %__s2_len106, align 8, !tbaa !7
  %cmp140 = icmp ugt i64 %85, 2
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.150

land.lhs.true.142:                                ; preds = %if.then.135
  %86 = load i32, i32* %__result115, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %86, 0
  br i1 %cmp143, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %land.lhs.true.142
  %87 = load i8*, i8** %__s1113, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i8, i8* %87, i64 3
  %88 = load i8, i8* %arrayidx146, align 1, !tbaa !9
  %conv147 = zext i8 %88 to i32
  %89 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !9
  %conv148 = zext i8 %89 to i32
  %sub149 = sub nsw i32 %conv147, %conv148
  store i32 %sub149, i32* %__result115, align 4, !tbaa !5
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.145, %land.lhs.true.142, %if.then.135
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.132, %if.then.125
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.122, %cond.true.111
  %90 = load i32, i32* %__result115, align 4, !tbaa !5
  store i32 %90, i32* %tmp153, !tbaa !5
  %91 = bitcast i32* %__result115 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i8** %__s1113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %tmp153, !tbaa !5
  br label %cond.end.156

cond.false.154:                                   ; preds = %land.lhs.true.108, %if.end.102
  %94 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %call155 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #1
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %if.end.152
  %cond157 = phi i32 [ %93, %if.end.152 ], [ %call155, %cond.false.154 ]
  store i32 %cond157, i32* %tmp107, !tbaa !5
  %95 = bitcast i64* %__s2_len106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i64* %__s1_len104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = load i32, i32* %tmp107, !tbaa !5
  %cmp158 = icmp eq i32 %97, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end.156
  store i32 304, i32* %retval
  br label %return

if.end.161:                                       ; preds = %cond.end.156
  store i32 303, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.then.160, %if.then.101, %if.then.2
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @smdb_add_extension(i8* %full_name, i32 %max_full_name_len, i8* %db_name, i8* %extension) #0 {
entry:
  %retval = alloca i32, align 4
  %full_name.addr = alloca i8*, align 8
  %max_full_name_len.addr = alloca i32, align 4
  %db_name.addr = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %extension_len = alloca i32, align 4
  %db_name_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %full_name, i8** %full_name.addr, align 8, !tbaa !1
  store i32 %max_full_name_len, i32* %max_full_name_len.addr, align 4, !tbaa !5
  store i8* %db_name, i8** %db_name.addr, align 8, !tbaa !1
  store i8* %extension, i8** %extension.addr, align 8, !tbaa !1
  %0 = bitcast i32* %extension_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %db_name_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %full_name.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 315, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %5 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %extension_len, align 4, !tbaa !5
  %6 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %6) #6
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %db_name_len, align 4, !tbaa !5
  %7 = load i32, i32* %extension_len, align 4, !tbaa !5
  %8 = load i32, i32* %db_name_len, align 4, !tbaa !5
  %add = add nsw i32 %7, %8
  %add6 = add nsw i32 %add, 2
  %9 = load i32, i32* %max_full_name_len.addr, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %add6, %9
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 314, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %10 = load i32, i32* %db_name_len, align 4, !tbaa !5
  %11 = load i32, i32* %extension_len, align 4, !tbaa !5
  %add11 = add nsw i32 %11, 1
  %cmp12 = icmp slt i32 %10, %add11
  br i1 %cmp12, label %if.then.26, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.10
  %12 = load i32, i32* %db_name_len, align 4, !tbaa !5
  %13 = load i32, i32* %extension_len, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  %sub15 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub15 to i64
  %14 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp ne i32 %conv16, 46
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.14
  %16 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %db_name_len, align 4, !tbaa !5
  %19 = load i32, i32* %extension_len, align 4, !tbaa !5
  %sub20 = sub nsw i32 %18, %19
  %idxprom21 = sext i32 %sub20 to i64
  %20 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %21 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call23 = call i32 @strcmp(i8* %arrayidx22, i8* %21) #1
  store i32 %call23, i32* %tmp, !tbaa !5
  %22 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %tmp, !tbaa !5
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.14, %if.end.10
  %25 = load i8*, i8** %full_name.addr, align 8, !tbaa !1
  %26 = load i32, i32* %max_full_name_len.addr, align 4, !tbaa !5
  %conv27 = sext i32 %26 to i64
  %27 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call28 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %25, i64 %conv27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %27, i8* %28)
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false.19
  %29 = load i8*, i8** %full_name.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %31 = load i32, i32* %max_full_name_len.addr, align 4, !tbaa !5
  %conv29 = sext i32 %31 to i64
  %call30 = call i64 @sm_strlcpy(i8* %29, i8* %30, i64 %conv29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.9, %if.then
  %32 = bitcast i32* %db_name_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %extension_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #4

declare i64 @sm_strlcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @smdb_lock_file(i32* %lock_fd, i8* %db_name, i32 %mode, i64 %sff, i8* %extension) #0 {
entry:
  %retval = alloca i32, align 4
  %lock_fd.addr = alloca i32*, align 8
  %db_name.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %sff.addr = alloca i64, align 8
  %extension.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %file_name = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i32* %lock_fd, i32** %lock_fd.addr, align 8, !tbaa !1
  store i8* %db_name, i8** %db_name.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  store i64 %sff, i64* %sff.addr, align 8, !tbaa !7
  store i8* %extension, i8** %extension.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4096 x i8]* %file_name to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %file_name, i32 0, i32 0
  %2 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call = call i32 @smdb_add_extension(i8* %arraydecay, i32 4096, i8* %2, i8* %3)
  store i32 %call, i32* %result, align 4, !tbaa !5
  %4 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %result, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %file_name, i32 0, i32 0
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %and = and i32 %6, -513
  %7 = load i64, i64* %sff.addr, align 8, !tbaa !7
  %call2 = call i32 @safeopen(i8* %arraydecay1, i32 %and, i32 416, i64 %7)
  %8 = load i32*, i32** %lock_fd.addr, align 8, !tbaa !1
  store i32 %call2, i32* %8, align 4, !tbaa !5
  %9 = load i32*, i32** %lock_fd.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #7
  %11 = load i32, i32* %call5, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %12 = bitcast [4096 x i8]* %file_name to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %12) #1
  %13 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @safeopen(i8*, i32, i32, i64) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define i32 @smdb_unlock_file(i32 %lock_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %lock_fd.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %lock_fd, i32* %lock_fd.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %lock_fd.addr, align 4, !tbaa !5
  %call = call i32 @close(i32 %1)
  store i32 %call, i32* %result, align 4, !tbaa !5
  %2 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call1, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define i32 @smdb_lock_map(%struct.database_struct* %database, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %database.addr = alloca %struct.database_struct*, align 8
  %type.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.database_struct* %database, %struct.database_struct** %database.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %smdb_lockfd = getelementptr inbounds %struct.database_struct, %struct.database_struct* %1, i32 0, i32 8
  %2 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_lockfd, align 8, !tbaa !10
  %3 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.database_struct* %3)
  store i32 %call, i32* %fd, align 4, !tbaa !5
  %4 = load i32, i32* %fd, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 302, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %fd, align 4, !tbaa !5
  %6 = load i32, i32* %type.addr, align 4, !tbaa !5
  %call1 = call i32 @smdb_lockfile(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %7 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @smdb_lockfile(i32 %fd, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %action = alloca i32, align 4
  %lfd = alloca %struct.flock, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %action to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.flock* %lfd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.flock* %lfd to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 8, i1 false)
  %5 = load i32, i32* %type.addr, align 4, !tbaa !5
  %and = and i32 %5, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %lfd, i32 0, i32 0
  store i16 2, i16* %l_type, align 2, !tbaa !12
  br label %if.end.7

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %type.addr, align 4, !tbaa !5
  %and1 = and i32 %6, 2
  %cmp2 = icmp ne i32 %and1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %l_type4 = getelementptr inbounds %struct.flock, %struct.flock* %lfd, i32 0, i32 0
  store i16 1, i16* %l_type4, align 2, !tbaa !12
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %l_type6 = getelementptr inbounds %struct.flock, %struct.flock* %lfd, i32 0, i32 0
  store i16 0, i16* %l_type6, align 2, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %type.addr, align 4, !tbaa !5
  %and8 = and i32 %7, 4
  %cmp9 = icmp ne i32 %and8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.7
  store i32 6, i32* %action, align 4, !tbaa !5
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.7
  store i32 7, i32* %action, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %8 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %9 = load i32, i32* %action, align 4, !tbaa !5
  %call = call i32 (i32, i32, ...) @fcntl(i32 %8, i32 %9, %struct.flock* %lfd)
  store i32 %call, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call14 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %10, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %12, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %while.end
  %call19 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call19, align 4, !tbaa !5
  store i32 %13, i32* %save_errno, align 4, !tbaa !5
  %14 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 22
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  %15 = load i32, i32* %type.addr, align 4, !tbaa !5
  %and23 = and i32 %15, 4
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.end.22
  %16 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %16, 13
  br i1 %cmp25, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %17, 11
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true, %if.end.22
  %18 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call28 = call i32* @__errno_location() #7
  store i32 %18, i32* %call28, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %19 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call30 = call i32* @__errno_location() #7
  store i32 %19, i32* %call30, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.27, %if.then.21, %if.then.17
  %20 = bitcast %struct.flock* %lfd to i8*
  call void @llvm.lifetime.end(i64 32, i8* %20) #1
  %21 = bitcast i32* %action to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @smdb_unlock_map(%struct.database_struct* %database) #0 {
entry:
  %retval = alloca i32, align 4
  %database.addr = alloca %struct.database_struct*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.database_struct* %database, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %smdb_lockfd = getelementptr inbounds %struct.database_struct, %struct.database_struct* %1, i32 0, i32 8
  %2 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_lockfd, align 8, !tbaa !10
  %3 = load %struct.database_struct*, %struct.database_struct** %database.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.database_struct* %3)
  store i32 %call, i32* %fd, align 4, !tbaa !5
  %4 = load i32, i32* %fd, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 302, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %fd, align 4, !tbaa !5
  %call1 = call i32 @smdb_lockfile(i32 %5, i32 8)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 310, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %6 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @smdb_setup_file(i8* %db_name, i8* %extension, i32 %mode_mask, i64 %sff, %struct.database_user_struct* %user_info, %struct.stat* %stat_info) #0 {
entry:
  %retval = alloca i32, align 4
  %db_name.addr = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %mode_mask.addr = alloca i32, align 4
  %sff.addr = alloca i64, align 8
  %user_info.addr = alloca %struct.database_user_struct*, align 8
  %stat_info.addr = alloca %struct.stat*, align 8
  %st = alloca i32, align 4
  %result = alloca i32, align 4
  %db_file_name = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %db_name, i8** %db_name.addr, align 8, !tbaa !1
  store i8* %extension, i8** %extension.addr, align 8, !tbaa !1
  store i32 %mode_mask, i32* %mode_mask.addr, align 4, !tbaa !5
  store i64 %sff, i64* %sff.addr, align 8, !tbaa !7
  store %struct.database_user_struct* %user_info, %struct.database_user_struct** %user_info.addr, align 8, !tbaa !1
  store %struct.stat* %stat_info, %struct.stat** %stat_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %st to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [4096 x i8]* %db_file_name to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %db_file_name, i32 0, i32 0
  %3 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call = call i32 @smdb_add_extension(i8* %arraydecay, i32 4096, i8* %3, i8* %4)
  store i32 %call, i32* %result, align 4, !tbaa !5
  %5 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %result, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %db_file_name, i32 0, i32 0
  %7 = load %struct.database_user_struct*, %struct.database_user_struct** %user_info.addr, align 8, !tbaa !1
  %smdbu_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %smdbu_id, align 4, !tbaa !15
  %9 = load %struct.database_user_struct*, %struct.database_user_struct** %user_info.addr, align 8, !tbaa !1
  %smdbu_group_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %smdbu_group_id, align 4, !tbaa !17
  %11 = load %struct.database_user_struct*, %struct.database_user_struct** %user_info.addr, align 8, !tbaa !1
  %smdbu_name = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %11, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name, i32 0, i32 0
  %12 = load i64, i64* %sff.addr, align 8, !tbaa !7
  %13 = load i32, i32* %mode_mask.addr, align 4, !tbaa !5
  %14 = load %struct.stat*, %struct.stat** %stat_info.addr, align 8, !tbaa !1
  %call3 = call i32 @safefile(i8* %arraydecay1, i32 %8, i32 %10, i8* %arraydecay2, i64 %12, i32 %13, %struct.stat* %14)
  store i32 %call3, i32* %st, align 4, !tbaa !5
  %15 = load i32, i32* %st, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %st, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %17 = bitcast [4096 x i8]* %db_file_name to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %17) #1
  %18 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %st to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define i32 @smdb_filechanged(i8* %db_name, i8* %extension, i32 %db_fd, %struct.stat* %stat_info) #0 {
entry:
  %retval = alloca i32, align 4
  %db_name.addr = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %db_fd.addr = alloca i32, align 4
  %stat_info.addr = alloca %struct.stat*, align 8
  %result = alloca i32, align 4
  %db_file_name = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %db_name, i8** %db_name.addr, align 8, !tbaa !1
  store i8* %extension, i8** %extension.addr, align 8, !tbaa !1
  store i32 %db_fd, i32* %db_fd.addr, align 4, !tbaa !5
  store %struct.stat* %stat_info, %struct.stat** %stat_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4096 x i8]* %db_file_name to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %db_file_name, i32 0, i32 0
  %2 = load i8*, i8** %db_name.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %extension.addr, align 8, !tbaa !1
  %call = call i32 @smdb_add_extension(i8* %arraydecay, i32 4096, i8* %2, i8* %3)
  store i32 %call, i32* %result, align 4, !tbaa !5
  %4 = load i32, i32* %result, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %result, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %db_file_name, i32 0, i32 0
  %6 = load i32, i32* %db_fd.addr, align 4, !tbaa !5
  %7 = load %struct.stat*, %struct.stat** %stat_info.addr, align 8, !tbaa !1
  %call2 = call i32 @filechanged(i8* %arraydecay1, i32 %6, %struct.stat* %7)
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast [4096 x i8]* %db_file_name to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %8) #1
  %9 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @filechanged(i8*, i32, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define void @smdb_print_available_types() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @smdb_db_definition(i8* %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %ptr = alloca %struct.dbtype*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %type, i8** %type.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dbtype** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.dbtype* getelementptr inbounds ([4 x %struct.dbtype], [4 x %struct.dbtype]* @DatabaseDefs, i32 0, i32 0), %struct.dbtype** %ptr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.dbtype*, %struct.dbtype** %ptr, align 8, !tbaa !1
  %cmp = icmp ne %struct.dbtype* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.dbtype*, %struct.dbtype** %ptr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.dbtype, %struct.dbtype* %2, i32 0, i32 0
  %3 = load i8*, i8** %type1, align 8, !tbaa !18
  %cmp2 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %type.addr, align 8, !tbaa !1
  %8 = load %struct.dbtype*, %struct.dbtype** %ptr, align 8, !tbaa !1
  %type3 = getelementptr inbounds %struct.dbtype, %struct.dbtype* %8, i32 0, i32 0
  %9 = load i8*, i8** %type3, align 8, !tbaa !18
  %call = call i32 @strcmp(i8* %7, i8* %9) #1
  store i32 %call, i32* %tmp, !tbaa !5
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %tmp, !tbaa !5
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load %struct.dbtype*, %struct.dbtype** %ptr, align 8, !tbaa !1
  %dbdef = getelementptr inbounds %struct.dbtype, %struct.dbtype* %13, i32 0, i32 1
  %14 = load i8*, i8** %dbdef, align 8, !tbaa !20
  store i8* %14, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %15 = load %struct.dbtype*, %struct.dbtype** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.dbtype, %struct.dbtype* %15, i32 1
  store %struct.dbtype* %incdec.ptr, %struct.dbtype** %ptr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %16 = bitcast %struct.dbtype** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i8*, i8** %retval
  ret i8* %17
}

declare i32 @fcntl(i32, i32, ...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !2, i64 64}
!11 = !{!"database_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!12 = !{!13, !14, i64 0}
!13 = !{!"flock", !14, i64 0, !14, i64 2, !8, i64 8, !8, i64 16, !6, i64 24}
!14 = !{!"short", !3, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"database_user_struct", !6, i64 0, !6, i64 4, !3, i64 8}
!17 = !{!16, !6, i64 4}
!18 = !{!19, !2, i64 0}
!19 = !{!"", !2, i64 0, !2, i64 8}
!20 = !{!19, !2, i64 8}
