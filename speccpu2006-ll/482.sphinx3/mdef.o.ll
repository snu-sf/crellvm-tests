; ModuleID = 'mdef.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"%d ciphone\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d phone\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d emitstate\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%d cisen\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d sen\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d tmat\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%3d %5d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"besiu\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"(%s,%s,%s,%c)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"mdef.c\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"No mdef-file\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Reading model definition: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"0.3\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Version error: Expecing %s, but read %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Incomplete header\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Error in header: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"n_base\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"n_tri\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"n_state_map\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"n_tied_ci_state\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"n_tied_state\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"n_tied_tmat\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Unknown header line: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%s: Error in header\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"%s: #CI phones (%d) exceeds limit (%d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"%s: #Phones (%d) exceeds limit (%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"%s: #senones (%d) exceeds limit (%d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"%s: #tmats (%d) exceeds limit (%d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"Header error: n_state_map not a multiple of n_ci*n_tri\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Premature EOF reading CIphone %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"SIL\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Premature EOF reading phone %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Non-empty file beyond expected #phones (%d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"#CI-senones(%d) != #CI-phone(%d) x #emitting-states(%d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"Unreferenced senone %d; cannot determine parent CIphone\0A\00", align 1
@.str.48 = private unnamed_addr constant [77 x i8] c"%d CI-phone, %d CD-phone, %d emitstate/phone, %d CI-sen, %d Sen, %d Sen-Seq\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"Missing base phone name: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Duplicate base phone: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Bad context info for base phone: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"Missing filler atribute field: %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"filler\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Bad filler attribute field: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"hash_enter(%s) failed; duplicate CIphone?\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Duplicate triphone: %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"Missing or bad transition matrix id: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"tmat-id(%d) > #tmat in header(%d): %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Missing or bad state[%d]->senone mapping: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"CI-senone-id(%d) > #CI-senones(%d): %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"Senone-id(%d) > #senones(%d): %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"Missing non-emitting state spec: %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"Non-empty beyond non-emitting final state: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"Unknown base phone: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"Missing left context: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Unknown left context: %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"Missing right context: %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"Unknown right  context: %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"Missing or bad word-position spec: %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"Bad word-position spec: %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"Missing filler attribute field: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @mdef_dump(%struct._IO_FILE* %fp, %struct.mdef_t* %m) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %m.addr = alloca %struct.mdef_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ssid = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %4, i32 0, i32 1
  %5 = load i32, i32* %n_phone, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 2
  %8 = load i32, i32* %n_emit_state, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ci_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 3
  %11 = load i32, i32* %n_ci_sen, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 4
  %14 = load i32, i32* %n_sen, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_tmat = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %16, i32 0, i32 5
  %17 = load i32, i32* %n_tmat, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %17)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_phone6 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %19, i32 0, i32 1
  %20 = load i32, i32* %n_phone6, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %21 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %22 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call7 = call i32 @mdef_phone_str(%struct.mdef_t* %21, i32 %22, i8* %arraydecay)
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %24, i32 0, i32 8
  %25 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %25, i64 %idxprom
  %ssid8 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 0
  %26 = load i32, i32* %ssid8, align 4
  store i32 %26, i32* %ssid, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %28 to i64
  %29 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone10 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %29, i32 0, i32 8
  %30 = load %struct.phone_t*, %struct.phone_t** %phone10, align 8
  %arrayidx11 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %30, i64 %idxprom9
  %tmat = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx11, i32 0, i32 1
  %31 = load i32, i32* %tmat, align 4
  %32 = load i32, i32* %ssid, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %31, i32 %32)
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state14 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 2
  %35 = load i32, i32* %n_emit_state14, align 4
  %cmp15 = icmp slt i32 %33, %35
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %37 to i64
  %38 = load i32, i32* %ssid, align 4
  %idxprom18 = sext i32 %38 to i64
  %39 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %39, i32 0, i32 9
  %40 = load i16**, i16*** %sseq, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %40, i64 %idxprom18
  %41 = load i16*, i16** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %41, i64 %idxprom17
  %42 = load i16, i16* %arrayidx20, align 2
  %conv = sext i16 %42 to i32
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.37, %for.end
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state24 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %46, i32 0, i32 2
  %47 = load i32, i32* %n_emit_state24, align 4
  %cmp25 = icmp slt i32 %45, %47
  br i1 %cmp25, label %for.body.27, label %for.end.39

for.body.27:                                      ; preds = %for.cond.23
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %49 to i64
  %50 = load i32, i32* %ssid, align 4
  %idxprom29 = sext i32 %50 to i64
  %51 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq30 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %51, i32 0, i32 9
  %52 = load i16**, i16*** %sseq30, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %52, i64 %idxprom29
  %53 = load i16*, i16** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %53, i64 %idxprom28
  %54 = load i16, i16* %arrayidx32, align 2
  %idxprom33 = sext i16 %54 to i64
  %55 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %55, i32 0, i32 11
  %56 = load i16*, i16** %cd2cisen, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %56, i64 %idxprom33
  %57 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %57 to i32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %conv35)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %58 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.23

for.end.39:                                       ; preds = %for.cond.23
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay40)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.39
  %60 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %60, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call45 = call i32 @fflush(%struct._IO_FILE* %61)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @mdef_phone_str(%struct.mdef_t* %m, i32 %pid, i8* %buf) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %pid.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %wpos_name = alloca i8*, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i32 %pid, i32* %pid.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %wpos_name, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* %pid.addr, align 4
  %2 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %2, i32 0, i32 0
  %3 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %6 = load i32, i32* %pid.addr, align 4
  %conv = trunc i32 %6 to i8
  %call = call i8* @mdef_ciphone_str(%struct.mdef_t* %5, i8 signext %conv)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %call) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %9 = load i32, i32* %pid.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 8
  %11 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx2 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %11, i64 %idxprom
  %ci = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx2, i32 0, i32 2
  %12 = load i8, i8* %ci, align 1
  %call3 = call i8* @mdef_ciphone_str(%struct.mdef_t* %8, i8 signext %12)
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %14 = load i32, i32* %pid.addr, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone5 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %15, i32 0, i32 8
  %16 = load %struct.phone_t*, %struct.phone_t** %phone5, align 8
  %arrayidx6 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %16, i64 %idxprom4
  %lc = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx6, i32 0, i32 3
  %17 = load i8, i8* %lc, align 1
  %call7 = call i8* @mdef_ciphone_str(%struct.mdef_t* %13, i8 signext %17)
  %18 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %19 = load i32, i32* %pid.addr, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone9 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 8
  %21 = load %struct.phone_t*, %struct.phone_t** %phone9, align 8
  %arrayidx10 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %21, i64 %idxprom8
  %rc = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx10, i32 0, i32 4
  %22 = load i8, i8* %rc, align 1
  %call11 = call i8* @mdef_ciphone_str(%struct.mdef_t* %18, i8 signext %22)
  %23 = load i32, i32* %pid.addr, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone13 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %24, i32 0, i32 8
  %25 = load %struct.phone_t*, %struct.phone_t** %phone13, align 8
  %arrayidx14 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %25, i64 %idxprom12
  %wpos = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx14, i32 0, i32 5
  %26 = load i32, i32* %wpos, align 4
  %idxprom15 = zext i32 %26 to i64
  %27 = load i8*, i8** %wpos_name, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %27, i64 %idxprom15
  %28 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %28 to i32
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %call3, i8* %call7, i8* %call11, i32 %conv17) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define signext i8 @mdef_ciphone_id(%struct.mdef_t* %m, i8* %ci) #0 {
entry:
  %retval = alloca i8, align 1
  %m.addr = alloca %struct.mdef_t*, align 8
  %ci.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8* %ci, i8** %ci.addr, align 8
  %0 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone_ht = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %0, i32 0, i32 6
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** %ciphone_ht, align 8
  %2 = load i8*, i8** %ci.addr, align 8
  %call = call i32 @hash_lookup(%struct.hash_table_t* %1, i8* %2, i32* %id)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %id, align 4
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

declare i32 @hash_lookup(%struct.hash_table_t*, i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i8* @mdef_ciphone_str(%struct.mdef_t* %m, i8 signext %id) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %id.addr = alloca i8, align 1
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8 %id, i8* %id.addr, align 1
  %0 = load i8, i8* %id.addr, align 1
  %conv = sext i8 %0 to i32
  %idxprom = sext i32 %conv to i64
  %1 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 7
  %2 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %2, i64 %idxprom
  %name = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @mdef_phone_id(%struct.mdef_t* %m, i8 signext %ci, i8 signext %lc, i8 signext %rc, i32 %wpos) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mdef_t*, align 8
  %ci.addr = alloca i8, align 1
  %lc.addr = alloca i8, align 1
  %rc.addr = alloca i8, align 1
  %wpos.addr = alloca i32, align 4
  %lcptr = alloca %struct.ph_lc_s*, align 8
  %rcptr = alloca %struct.ph_rc_s*, align 8
  %newl = alloca i8, align 1
  %newr = alloca i8, align 1
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8 %ci, i8* %ci.addr, align 1
  store i8 %lc, i8* %lc.addr, align 1
  store i8 %rc, i8* %rc.addr, align 1
  store i32 %wpos, i32* %wpos.addr, align 4
  %0 = load i8, i8* %ci.addr, align 1
  %conv = sext i8 %0 to i32
  %idxprom = sext i32 %conv to i64
  %1 = load i32, i32* %wpos.addr, align 4
  %idxprom1 = zext i32 %1 to i64
  %2 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %2, i32 0, i32 15
  %3 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist, align 8
  %arrayidx = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %3, i64 %idxprom1
  %4 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %4, i64 %idxprom
  %5 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx2, align 8
  %6 = load i8, i8* %lc.addr, align 1
  %call = call %struct.ph_lc_s* @find_ph_lc(%struct.ph_lc_s* %5, i8 signext %6)
  store %struct.ph_lc_s* %call, %struct.ph_lc_s** %lcptr, align 8
  %cmp = icmp eq %struct.ph_lc_s* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %rclist = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %7, i32 0, i32 1
  %8 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist, align 8
  %9 = load i8, i8* %rc.addr, align 1
  %call4 = call %struct.ph_rc_s* @find_ph_rc(%struct.ph_rc_s* %8, i8 signext %9)
  store %struct.ph_rc_s* %call4, %struct.ph_rc_s** %rcptr, align 8
  %cmp5 = icmp eq %struct.ph_rc_s* %call4, null
  br i1 %cmp5, label %if.then, label %if.end.43

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 14
  %11 = load i8, i8* %sil, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp slt i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i8, i8* %lc.addr, align 1
  %conv11 = sext i8 %12 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 7
  %14 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx13 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %14, i64 %idxprom12
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx13, i32 0, i32 1
  %15 = load i32, i32* %filler, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil14 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %16, i32 0, i32 14
  %17 = load i8, i8* %sil14, align 1
  %conv15 = sext i8 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i8, i8* %lc.addr, align 1
  %conv16 = sext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %conv16, %cond.false ]
  %conv17 = trunc i32 %cond to i8
  store i8 %conv17, i8* %newl, align 1
  %19 = load i8, i8* %rc.addr, align 1
  %conv18 = sext i8 %19 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %20 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone20 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 7
  %21 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone20, align 8
  %arrayidx21 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %21, i64 %idxprom19
  %filler22 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx21, i32 0, i32 1
  %22 = load i32, i32* %filler22, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.end
  %23 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil25 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %23, i32 0, i32 14
  %24 = load i8, i8* %sil25, align 1
  %conv26 = sext i8 %24 to i32
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.end
  %25 = load i8, i8* %rc.addr, align 1
  %conv28 = sext i8 %25 to i32
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.24
  %cond30 = phi i32 [ %conv26, %cond.true.24 ], [ %conv28, %cond.false.27 ]
  %conv31 = trunc i32 %cond30 to i8
  store i8 %conv31, i8* %newr, align 1
  %26 = load i8, i8* %newl, align 1
  %conv32 = sext i8 %26 to i32
  %27 = load i8, i8* %lc.addr, align 1
  %conv33 = sext i8 %27 to i32
  %cmp34 = icmp eq i32 %conv32, %conv33
  br i1 %cmp34, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %cond.end.29
  %28 = load i8, i8* %newr, align 1
  %conv36 = sext i8 %28 to i32
  %29 = load i8, i8* %rc.addr, align 1
  %conv37 = sext i8 %29 to i32
  %cmp38 = icmp eq i32 %conv36, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true, %cond.end.29
  %30 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %31 = load i8, i8* %ci.addr, align 1
  %32 = load i8, i8* %newl, align 1
  %33 = load i8, i8* %newr, align 1
  %34 = load i32, i32* %wpos.addr, align 4
  %call42 = call i32 @mdef_phone_id(%struct.mdef_t* %30, i8 signext %31, i8 signext %32, i8 signext %33, i32 %34)
  store i32 %call42, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false
  %35 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %pid = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %35, i32 0, i32 1
  %36 = load i32, i32* %pid, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.end.41, %if.then.40, %if.then.10
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal %struct.ph_lc_s* @find_ph_lc(%struct.ph_lc_s* %lclist, i8 signext %lc) #0 {
entry:
  %lclist.addr = alloca %struct.ph_lc_s*, align 8
  %lc.addr = alloca i8, align 1
  %lcptr = alloca %struct.ph_lc_s*, align 8
  store %struct.ph_lc_s* %lclist, %struct.ph_lc_s** %lclist.addr, align 8
  store i8 %lc, i8* %lc.addr, align 1
  %0 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lclist.addr, align 8
  store %struct.ph_lc_s* %0, %struct.ph_lc_s** %lcptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %tobool = icmp ne %struct.ph_lc_s* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %lc1 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %2, i32 0, i32 0
  %3 = load i8, i8* %lc1, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, i8* %lc.addr, align 1
  %conv2 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %next = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %6, i32 0, i32 2
  %7 = load %struct.ph_lc_s*, %struct.ph_lc_s** %next, align 8
  store %struct.ph_lc_s* %7, %struct.ph_lc_s** %lcptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  ret %struct.ph_lc_s* %8
}

; Function Attrs: nounwind uwtable
define internal %struct.ph_rc_s* @find_ph_rc(%struct.ph_rc_s* %rclist, i8 signext %rc) #0 {
entry:
  %rclist.addr = alloca %struct.ph_rc_s*, align 8
  %rc.addr = alloca i8, align 1
  %rcptr = alloca %struct.ph_rc_s*, align 8
  store %struct.ph_rc_s* %rclist, %struct.ph_rc_s** %rclist.addr, align 8
  store i8 %rc, i8* %rc.addr, align 1
  %0 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist.addr, align 8
  store %struct.ph_rc_s* %0, %struct.ph_rc_s** %rcptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %tobool = icmp ne %struct.ph_rc_s* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %rc1 = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %2, i32 0, i32 0
  %3 = load i8, i8* %rc1, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, i8* %rc.addr, align 1
  %conv2 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %next = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %6, i32 0, i32 2
  %7 = load %struct.ph_rc_s*, %struct.ph_rc_s** %next, align 8
  store %struct.ph_rc_s* %7, %struct.ph_rc_s** %rcptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  ret %struct.ph_rc_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @mdef_phone_id_nearest(%struct.mdef_t* %m, i8 signext %b, i8 signext %l, i8 signext %r, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mdef_t*, align 8
  %b.addr = alloca i8, align 1
  %l.addr = alloca i8, align 1
  %r.addr = alloca i8, align 1
  %pos.addr = alloca i32, align 4
  %tmppos = alloca i32, align 4
  %p = alloca i32, align 4
  %newl = alloca i8, align 1
  %newr = alloca i8, align 1
  %wpos_name = alloca i8*, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8 %b, i8* %b.addr, align 1
  store i8 %l, i8* %l.addr, align 1
  store i8 %r, i8* %r.addr, align 1
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8, i8* %l.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %r.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp slt i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8, i8* %b.addr, align 1
  %conv5 = sext i8 %2 to i32
  store i32 %conv5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %4 = load i8, i8* %b.addr, align 1
  %5 = load i8, i8* %l.addr, align 1
  %6 = load i8, i8* %r.addr, align 1
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @mdef_phone_id(%struct.mdef_t* %3, i8 signext %4, i8 signext %5, i8 signext %6, i32 %7)
  store i32 %call, i32* %p, align 4
  %8 = load i32, i32* %p, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %9 = load i32, i32* %p, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %tmppos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %10 = load i32, i32* %tmppos, align 4
  %cmp10 = icmp ult i32 %10, 4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %tmppos, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %cmp12 = icmp ne i32 %11, %12
  br i1 %cmp12, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %for.body
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %14 = load i8, i8* %b.addr, align 1
  %15 = load i8, i8* %l.addr, align 1
  %16 = load i8, i8* %r.addr, align 1
  %17 = load i32, i32* %tmppos, align 4
  %call15 = call i32 @mdef_phone_id(%struct.mdef_t* %13, i8 signext %14, i8 signext %15, i8 signext %16, i32 %17)
  store i32 %call15, i32* %p, align 4
  %18 = load i32, i32* %p, align 4
  %cmp16 = icmp sge i32 %18, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %19 = load i32, i32* %p, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %20 = load i32, i32* %tmppos, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %tmppos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %21, i32 0, i32 14
  %22 = load i8, i8* %sil, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp sge i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.76

if.then.24:                                       ; preds = %for.end
  %23 = load i8, i8* %l.addr, align 1
  %conv25 = sext i8 %23 to i32
  %idxprom = sext i32 %conv25 to i64
  %24 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %24, i32 0, i32 7
  %25 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %25, i64 %idxprom
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx, i32 0, i32 1
  %26 = load i32, i32* %filler, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %27 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil26 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %27, i32 0, i32 14
  %28 = load i8, i8* %sil26, align 1
  %conv27 = sext i8 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  %29 = load i8, i8* %l.addr, align 1
  %conv28 = sext i8 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv27, %cond.true ], [ %conv28, %cond.false ]
  %conv29 = trunc i32 %cond to i8
  store i8 %conv29, i8* %newl, align 1
  %30 = load i8, i8* %r.addr, align 1
  %conv30 = sext i8 %30 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %31 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone32 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %31, i32 0, i32 7
  %32 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone32, align 8
  %arrayidx33 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %32, i64 %idxprom31
  %filler34 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx33, i32 0, i32 1
  %33 = load i32, i32* %filler34, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end
  %34 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sil37 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 14
  %35 = load i8, i8* %sil37, align 1
  %conv38 = sext i8 %35 to i32
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end
  %36 = load i8, i8* %r.addr, align 1
  %conv40 = sext i8 %36 to i32
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %conv38, %cond.true.36 ], [ %conv40, %cond.false.39 ]
  %conv43 = trunc i32 %cond42 to i8
  store i8 %conv43, i8* %newr, align 1
  %37 = load i8, i8* %newl, align 1
  %conv44 = sext i8 %37 to i32
  %38 = load i8, i8* %l.addr, align 1
  %conv45 = sext i8 %38 to i32
  %cmp46 = icmp ne i32 %conv44, %conv45
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %cond.end.41
  %39 = load i8, i8* %newr, align 1
  %conv49 = sext i8 %39 to i32
  %40 = load i8, i8* %r.addr, align 1
  %conv50 = sext i8 %40 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.75

if.then.53:                                       ; preds = %lor.lhs.false.48, %cond.end.41
  %41 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %42 = load i8, i8* %b.addr, align 1
  %43 = load i8, i8* %newl, align 1
  %44 = load i8, i8* %newr, align 1
  %45 = load i32, i32* %pos.addr, align 4
  %call54 = call i32 @mdef_phone_id(%struct.mdef_t* %41, i8 signext %42, i8 signext %43, i8 signext %44, i32 %45)
  store i32 %call54, i32* %p, align 4
  %46 = load i32, i32* %p, align 4
  %cmp55 = icmp sge i32 %46, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.53
  %47 = load i32, i32* %p, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.53
  store i32 0, i32* %tmppos, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.72, %if.end.58
  %48 = load i32, i32* %tmppos, align 4
  %cmp60 = icmp ult i32 %48, 4
  br i1 %cmp60, label %for.body.62, label %for.end.74

for.body.62:                                      ; preds = %for.cond.59
  %49 = load i32, i32* %tmppos, align 4
  %50 = load i32, i32* %pos.addr, align 4
  %cmp63 = icmp ne i32 %49, %50
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %for.body.62
  %51 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %52 = load i8, i8* %b.addr, align 1
  %53 = load i8, i8* %newl, align 1
  %54 = load i8, i8* %newr, align 1
  %55 = load i32, i32* %tmppos, align 4
  %call66 = call i32 @mdef_phone_id(%struct.mdef_t* %51, i8 signext %52, i8 signext %53, i8 signext %54, i32 %55)
  store i32 %call66, i32* %p, align 4
  %56 = load i32, i32* %p, align 4
  %cmp67 = icmp sge i32 %56, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.65
  %57 = load i32, i32* %p, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.65
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.body.62
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %58 = load i32, i32* %tmppos, align 4
  %inc73 = add i32 %58, 1
  store i32 %inc73, i32* %tmppos, align 4
  br label %for.cond.59

for.end.74:                                       ; preds = %for.cond.59
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %lor.lhs.false.48
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.end
  %59 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %59, i32 0, i32 1
  %60 = load i32, i32* %n_phone, align 4
  %61 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %61, i32 0, i32 0
  %62 = load i32, i32* %n_ciphone, align 4
  %cmp77 = icmp sgt i32 %60, %62
  br i1 %cmp77, label %land.lhs.true, label %if.end.86

land.lhs.true:                                    ; preds = %if.end.76
  %63 = load i8, i8* %b.addr, align 1
  %conv79 = sext i8 %63 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %64 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone81 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %64, i32 0, i32 7
  %65 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone81, align 8
  %arrayidx82 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %65, i64 %idxprom80
  %filler83 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx82, i32 0, i32 1
  %66 = load i32, i32* %filler83, align 4
  %tobool84 = icmp ne i32 %66, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %wpos_name, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.lhs.true, %if.end.76
  %67 = load i8, i8* %b.addr, align 1
  %conv87 = sext i8 %67 to i32
  store i32 %conv87, i32* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then.69, %if.then.57, %if.then.18, %if.then.8, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i32 @mdef_phone_components(%struct.mdef_t* %m, i32 %p, i8* %b, i8* %l, i8* %r, i32* %pos) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %p.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %l.addr = alloca i8*, align 8
  %r.addr = alloca i8*, align 8
  %pos.addr = alloca i32*, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8* %l, i8** %l.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  store i32* %pos, i32** %pos.addr, align 8
  %0 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 8
  %2 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %2, i64 %idxprom
  %ci = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 2
  %3 = load i8, i8* %ci, align 1
  %4 = load i8*, i8** %b.addr, align 8
  store i8 %3, i8* %4, align 1
  %5 = load i32, i32* %p.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %6, i32 0, i32 8
  %7 = load %struct.phone_t*, %struct.phone_t** %phone2, align 8
  %arrayidx3 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %7, i64 %idxprom1
  %lc = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx3, i32 0, i32 3
  %8 = load i8, i8* %lc, align 1
  %9 = load i8*, i8** %l.addr, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i32, i32* %p.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone5 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %11, i32 0, i32 8
  %12 = load %struct.phone_t*, %struct.phone_t** %phone5, align 8
  %arrayidx6 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %12, i64 %idxprom4
  %rc = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx6, i32 0, i32 4
  %13 = load i8, i8* %rc, align 1
  %14 = load i8*, i8** %r.addr, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i32, i32* %p.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone8 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %16, i32 0, i32 8
  %17 = load %struct.phone_t*, %struct.phone_t** %phone8, align 8
  %arrayidx9 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %17, i64 %idxprom7
  %wpos = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx9, i32 0, i32 5
  %18 = load i32, i32* %wpos, align 4
  %19 = load i32*, i32** %pos.addr, align 8
  store i32 %18, i32* %19, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mdef_is_ciphone(%struct.mdef_t* %m, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %p.addr = alloca i32, align 4
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %0, %2
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define %struct.mdef_t* @mdef_init(i8* %mdeffile) #0 {
entry:
  %mdeffile.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %n_ci = alloca i32, align 4
  %n_tri = alloca i32, align 4
  %n_map = alloca i32, align 4
  %n = alloca i32, align 4
  %tag = alloca [1024 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %senmap = alloca i16**, align 8
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  %ci = alloca i32, align 4
  %cd = alloca i32, align 4
  %m = alloca %struct.mdef_t*, align 8
  %cdsen_start = alloca i32*, align 8
  %cdsen_end = alloca i32*, align 8
  store i8* %mdeffile, i8** %mdeffile.addr, align 8
  %0 = load i8*, i8** %mdeffile.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 594, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %1 = load i8*, i8** %mdeffile.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %1)
  %call = call i8* @__ckd_calloc__(i64 1, i64 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 596)
  %2 = bitcast i8* %call to %struct.mdef_t*
  store %struct.mdef_t* %2, %struct.mdef_t** %m, align 8
  %3 = load i8*, i8** %mdeffile.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 599, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0))
  %4 = load i8*, i8** %mdeffile.addr, align 8
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @noncomment_line(i8* %arraydecay, i32 1024, %struct._IO_FILE* %5)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 602, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %6 = load i8*, i8** %mdeffile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* %6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call9 = call i32 @strncmp(i8* %arraydecay8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 3) #5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 605, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.7
  store i32 -1, i32* %n_ci, align 4
  store i32 -1, i32* %n_tri, align 4
  store i32 -1, i32* %n_map, align 4
  %7 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 3
  store i32 -1, i32* %n_ci_sen, align 4
  %8 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %8, i32 0, i32 4
  store i32 -1, i32* %n_sen, align 4
  %9 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 5
  store i32 -1, i32* %n_tmat, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.13
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @noncomment_line(i8* %arraydecay14, i32 1024, %struct._IO_FILE* %10)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %do.body
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32* %n, i8* %arraydecay20) #4
  %cmp22 = icmp ne i32 %call21, 2
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %11 = load i32, i32* %n, align 4
  %cmp23 = icmp slt i32 %11, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.18
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 619, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* %arraydecay25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %lor.lhs.false
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  %12 = load i32, i32* %n, align 4
  store i32 %12, i32* %n_ci, align 4
  br label %if.end.65

if.else:                                          ; preds = %if.end.26
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else
  %13 = load i32, i32* %n, align 4
  store i32 %13, i32* %n_tri, align 4
  br label %if.end.64

if.else.35:                                       ; preds = %if.else
  %arraydecay36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call37 = call i32 @strcmp(i8* %arraydecay36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.35
  %14 = load i32, i32* %n, align 4
  store i32 %14, i32* %n_map, align 4
  br label %if.end.63

if.else.40:                                       ; preds = %if.else.35
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call42 = call i32 @strcmp(i8* %arraydecay41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.else.40
  %15 = load i32, i32* %n, align 4
  %16 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen45 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %16, i32 0, i32 3
  store i32 %15, i32* %n_ci_sen45, align 4
  br label %if.end.62

if.else.46:                                       ; preds = %if.else.40
  %arraydecay47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call48 = call i32 @strcmp(i8* %arraydecay47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.else.46
  %17 = load i32, i32* %n, align 4
  %18 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen51 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %18, i32 0, i32 4
  store i32 %17, i32* %n_sen51, align 4
  br label %if.end.61

if.else.52:                                       ; preds = %if.else.46
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tag, i32 0, i32 0
  %call54 = call i32 @strcmp(i8* %arraydecay53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.52
  %19 = load i32, i32* %n, align 4
  %20 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat57 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 5
  store i32 %19, i32* %n_tmat57, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %if.else.52
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 634, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay59)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.50
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.44
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.39
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.34
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.30
  br label %do.cond

do.cond:                                          ; preds = %if.end.65
  %21 = load i32, i32* %n_ci, align 4
  %cmp66 = icmp slt i32 %21, 0
  br i1 %cmp66, label %lor.end, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %do.cond
  %22 = load i32, i32* %n_tri, align 4
  %cmp68 = icmp slt i32 %22, 0
  br i1 %cmp68, label %lor.end, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.67
  %23 = load i32, i32* %n_map, align 4
  %cmp70 = icmp slt i32 %23, 0
  br i1 %cmp70, label %lor.end, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.69
  %24 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen72 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %24, i32 0, i32 3
  %25 = load i32, i32* %n_ci_sen72, align 4
  %cmp73 = icmp slt i32 %25, 0
  br i1 %cmp73, label %lor.end, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.71
  %26 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen75 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %26, i32 0, i32 4
  %27 = load i32, i32* %n_sen75, align 4
  %cmp76 = icmp slt i32 %27, 0
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.74
  %28 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat77 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %28, i32 0, i32 5
  %29 = load i32, i32* %n_tmat77, align 4
  %cmp78 = icmp slt i32 %29, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.74, %lor.lhs.false.71, %lor.lhs.false.69, %lor.lhs.false.67, %do.cond
  %30 = phi i1 [ true, %lor.lhs.false.74 ], [ true, %lor.lhs.false.71 ], [ true, %lor.lhs.false.69 ], [ true, %lor.lhs.false.67 ], [ true, %do.cond ], [ %cmp78, %lor.rhs ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %31 = load i32, i32* %n_ci, align 4
  %cmp79 = icmp eq i32 %31, 0
  br i1 %cmp79, label %if.then.90, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %do.end
  %32 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen81 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %32, i32 0, i32 3
  %33 = load i32, i32* %n_ci_sen81, align 4
  %cmp82 = icmp eq i32 %33, 0
  br i1 %cmp82, label %if.then.90, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.80
  %34 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat84 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 5
  %35 = load i32, i32* %n_tmat84, align 4
  %cmp85 = icmp eq i32 %35, 0
  br i1 %cmp85, label %if.then.90, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.83
  %36 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen87 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %36, i32 0, i32 3
  %37 = load i32, i32* %n_ci_sen87, align 4
  %38 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen88 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %38, i32 0, i32 4
  %39 = load i32, i32* %n_sen88, align 4
  %cmp89 = icmp sgt i32 %37, %39
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.lhs.false.86, %lor.lhs.false.83, %lor.lhs.false.80, %do.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 639, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %40 = load i8*, i8** %mdeffile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* %40)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %lor.lhs.false.86
  %41 = load i32, i32* %n_ci, align 4
  %cmp92 = icmp sge i32 %41, 127
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.91
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 643, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %42 = load i8*, i8** %mdeffile.addr, align 8
  %43 = load i32, i32* %n_ci, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i8* %42, i32 %43, i32 127)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.91
  %44 = load i32, i32* %n_ci, align 4
  %45 = load i32, i32* %n_tri, align 4
  %add = add nsw i32 %44, %45
  %cmp95 = icmp sge i32 %add, 2147483646
  br i1 %cmp95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.94
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 645, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %46 = load i8*, i8** %mdeffile.addr, align 8
  %47 = load i32, i32* %n_ci, align 4
  %48 = load i32, i32* %n_tri, align 4
  %add97 = add nsw i32 %47, %48
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0), i8* %46, i32 %add97, i32 2147483646)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.94
  %49 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen99 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %49, i32 0, i32 4
  %50 = load i32, i32* %n_sen99, align 4
  %cmp100 = icmp sge i32 %50, 32766
  br i1 %cmp100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.98
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 647, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %51 = load i8*, i8** %mdeffile.addr, align 8
  %52 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen102 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %52, i32 0, i32 4
  %53 = load i32, i32* %n_sen102, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* %51, i32 %53, i32 32766)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.98
  %54 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat104 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %54, i32 0, i32 5
  %55 = load i32, i32* %n_tmat104, align 4
  %cmp105 = icmp sge i32 %55, 2147483646
  br i1 %cmp105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.103
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 649, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %56 = load i8*, i8** %mdeffile.addr, align 8
  %57 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_tmat107 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %57, i32 0, i32 5
  %58 = load i32, i32* %n_tmat107, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i8* %56, i32 %58, i32 2147483646)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.103
  %59 = load i32, i32* %n_map, align 4
  %60 = load i32, i32* %n_ci, align 4
  %61 = load i32, i32* %n_tri, align 4
  %add109 = add nsw i32 %60, %61
  %div = sdiv i32 %59, %add109
  %sub = sub nsw i32 %div, 1
  %62 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %62, i32 0, i32 2
  store i32 %sub, i32* %n_emit_state, align 4
  %63 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state110 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %63, i32 0, i32 2
  %64 = load i32, i32* %n_emit_state110, align 4
  %add111 = add nsw i32 %64, 1
  %65 = load i32, i32* %n_ci, align 4
  %66 = load i32, i32* %n_tri, align 4
  %add112 = add nsw i32 %65, %66
  %mul = mul nsw i32 %add111, %add112
  %67 = load i32, i32* %n_map, align 4
  %cmp113 = icmp ne i32 %mul, %67
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.108
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 653, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.108
  %68 = load i32, i32* %n_ci, align 4
  %69 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %69, i32 0, i32 0
  store i32 %68, i32* %n_ciphone, align 4
  %70 = load i32, i32* %n_ci, align 4
  %call116 = call %struct.hash_table_t* @hash_new(i32 %70, i32 1)
  %71 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %ciphone_ht = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %71, i32 0, i32 6
  store %struct.hash_table_t* %call116, %struct.hash_table_t** %ciphone_ht, align 8
  %72 = load i32, i32* %n_ci, align 4
  %conv = sext i32 %72 to i64
  %call117 = call i8* @__ckd_calloc__(i64 %conv, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 658)
  %73 = bitcast i8* %call117 to %struct.ciphone_t*
  %74 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %74, i32 0, i32 7
  store %struct.ciphone_t* %73, %struct.ciphone_t** %ciphone, align 8
  %75 = load i32, i32* %n_ci, align 4
  %76 = load i32, i32* %n_tri, align 4
  %add118 = add nsw i32 %75, %76
  %77 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %77, i32 0, i32 1
  store i32 %add118, i32* %n_phone, align 4
  %78 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone119 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %78, i32 0, i32 1
  %79 = load i32, i32* %n_phone119, align 4
  %conv120 = sext i32 %79 to i64
  %call121 = call i8* @__ckd_calloc__(i64 %conv120, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 666)
  %80 = bitcast i8* %call121 to %struct.phone_t*
  %81 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %81, i32 0, i32 8
  store %struct.phone_t* %80, %struct.phone_t** %phone, align 8
  %82 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone122 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %82, i32 0, i32 1
  %83 = load i32, i32* %n_phone122, align 4
  %84 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state123 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %84, i32 0, i32 2
  %85 = load i32, i32* %n_emit_state123, align 4
  %call124 = call i8** @__ckd_calloc_2d__(i32 %83, i32 %85, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 669)
  %86 = bitcast i8** %call124 to i16**
  store i16** %86, i16*** %senmap, align 8
  %87 = load i16**, i16*** %senmap, align 8
  %88 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %88, i32 0, i32 9
  store i16** %87, i16*** %sseq, align 8
  %89 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone125 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %89, i32 0, i32 0
  %90 = load i32, i32* %n_ciphone125, align 4
  %call126 = call i8** @__ckd_calloc_2d__(i32 4, i32 %90, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 673)
  %91 = bitcast i8** %call126 to %struct.ph_lc_s***
  %92 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %92, i32 0, i32 15
  store %struct.ph_lc_s*** %91, %struct.ph_lc_s**** %wpos_ci_lclist, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.115
  %93 = load i32, i32* %p, align 4
  %94 = load i32, i32* %n_ci, align 4
  %cmp127 = icmp slt i32 %93, %94
  br i1 %cmp127, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call130 = call i32 @noncomment_line(i8* %arraydecay129, i32 1024, %struct._IO_FILE* %95)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 683, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %96 = load i32, i32* %p, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 %96)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %for.body
  %97 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %arraydecay135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %98 = load i32, i32* %p, align 4
  call void @parse_base_line(%struct.mdef_t* %97, i8* %arraydecay135, i32 %98)
  br label %for.inc

for.inc:                                          ; preds = %if.end.134
  %99 = load i32, i32* %p, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %call136 = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0))
  %101 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sil = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %101, i32 0, i32 14
  store i8 %call136, i8* %sil, align 1
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.149, %for.end
  %102 = load i32, i32* %p, align 4
  %103 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone138 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %103, i32 0, i32 1
  %104 = load i32, i32* %n_phone138, align 4
  %cmp139 = icmp slt i32 %102, %104
  br i1 %cmp139, label %for.body.141, label %for.end.151

for.body.141:                                     ; preds = %for.cond.137
  %arraydecay142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call143 = call i32 @noncomment_line(i8* %arraydecay142, i32 1024, %struct._IO_FILE* %105)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.body.141
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 691, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %106 = load i32, i32* %p, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0), i32 %106)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %for.body.141
  %107 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %arraydecay148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %108 = load i32, i32* %p, align 4
  call void @parse_tri_line(%struct.mdef_t* %107, i8* %arraydecay148, i32 %108)
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.147
  %109 = load i32, i32* %p, align 4
  %inc150 = add nsw i32 %109, 1
  store i32 %inc150, i32* %p, align 4
  br label %for.cond.137

for.end.151:                                      ; preds = %for.cond.137
  %arraydecay152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call153 = call i32 @noncomment_line(i8* %arraydecay152, i32 1024, %struct._IO_FILE* %110)
  %cmp154 = icmp sge i32 %call153, 0
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %for.end.151
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 696, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0))
  %111 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone157 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %111, i32 0, i32 1
  %112 = load i32, i32* %n_phone157, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i32 0, i32 0), i32 %112)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %for.end.151
  %113 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone159 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %113, i32 0, i32 0
  %114 = load i32, i32* %n_ciphone159, align 4
  %115 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state160 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %115, i32 0, i32 2
  %116 = load i32, i32* %n_emit_state160, align 4
  %mul161 = mul nsw i32 %114, %116
  %117 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen162 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %117, i32 0, i32 3
  %118 = load i32, i32* %n_ci_sen162, align 4
  %cmp163 = icmp ne i32 %mul161, %118
  br i1 %cmp163, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.end.158
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 700, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %119 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen166 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %119, i32 0, i32 3
  %120 = load i32, i32* %n_ci_sen166, align 4
  %121 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone167 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %121, i32 0, i32 0
  %122 = load i32, i32* %n_ciphone167, align 4
  %123 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state168 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %123, i32 0, i32 2
  %124 = load i32, i32* %n_emit_state168, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i32 0, i32 0), i32 %120, i32 %122, i32 %124)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.165, %if.end.158
  %125 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen170 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %125, i32 0, i32 4
  %126 = load i32, i32* %n_sen170, align 4
  %conv171 = sext i32 %126 to i64
  %call172 = call i8* @__ckd_calloc__(i64 %conv171, i64 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 702)
  %127 = bitcast i8* %call172 to i16*
  %128 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %128, i32 0, i32 11
  store i16* %127, i16** %cd2cisen, align 8
  %129 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen173 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %129, i32 0, i32 4
  %130 = load i32, i32* %n_sen173, align 4
  %conv174 = sext i32 %130 to i64
  %call175 = call i8* @__ckd_calloc__(i64 %conv174, i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 704)
  %131 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %131, i32 0, i32 12
  store i8* %call175, i8** %sen2cimap, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.182, %if.end.169
  %132 = load i32, i32* %s, align 4
  %133 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen177 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %133, i32 0, i32 4
  %134 = load i32, i32* %n_sen177, align 4
  %cmp178 = icmp slt i32 %132, %134
  br i1 %cmp178, label %for.body.180, label %for.end.184

for.body.180:                                     ; preds = %for.cond.176
  %135 = load i32, i32* %s, align 4
  %idxprom = sext i32 %135 to i64
  %136 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap181 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %136, i32 0, i32 12
  %137 = load i8*, i8** %sen2cimap181, align 8
  %arrayidx = getelementptr inbounds i8, i8* %137, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.180
  %138 = load i32, i32* %s, align 4
  %inc183 = add nsw i32 %138, 1
  store i32 %inc183, i32* %s, align 4
  br label %for.cond.176

for.end.184:                                      ; preds = %for.cond.176
  store i32 0, i32* %s, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.200, %for.end.184
  %139 = load i32, i32* %s, align 4
  %140 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen186 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %140, i32 0, i32 3
  %141 = load i32, i32* %n_ci_sen186, align 4
  %cmp187 = icmp slt i32 %139, %141
  br i1 %cmp187, label %for.body.189, label %for.end.202

for.body.189:                                     ; preds = %for.cond.185
  %142 = load i32, i32* %s, align 4
  %conv190 = trunc i32 %142 to i16
  %143 = load i32, i32* %s, align 4
  %idxprom191 = sext i32 %143 to i64
  %144 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %cd2cisen192 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %144, i32 0, i32 11
  %145 = load i16*, i16** %cd2cisen192, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %145, i64 %idxprom191
  store i16 %conv190, i16* %arrayidx193, align 2
  %146 = load i32, i32* %s, align 4
  %147 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state194 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %147, i32 0, i32 2
  %148 = load i32, i32* %n_emit_state194, align 4
  %div195 = sdiv i32 %146, %148
  %conv196 = trunc i32 %div195 to i8
  %149 = load i32, i32* %s, align 4
  %idxprom197 = sext i32 %149 to i64
  %150 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap198 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %150, i32 0, i32 12
  %151 = load i8*, i8** %sen2cimap198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %151, i64 %idxprom197
  store i8 %conv196, i8* %arrayidx199, align 1
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.189
  %152 = load i32, i32* %s, align 4
  %inc201 = add nsw i32 %152, 1
  store i32 %inc201, i32* %s, align 4
  br label %for.cond.185

for.end.202:                                      ; preds = %for.cond.185
  %153 = load i32, i32* %n_ci, align 4
  store i32 %153, i32* %p, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.244, %for.end.202
  %154 = load i32, i32* %p, align 4
  %155 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone204 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %155, i32 0, i32 1
  %156 = load i32, i32* %n_phone204, align 4
  %cmp205 = icmp slt i32 %154, %156
  br i1 %cmp205, label %for.body.207, label %for.end.246

for.body.207:                                     ; preds = %for.cond.203
  store i32 0, i32* %s, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.241, %for.body.207
  %157 = load i32, i32* %s, align 4
  %158 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state209 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %158, i32 0, i32 2
  %159 = load i32, i32* %n_emit_state209, align 4
  %cmp210 = icmp slt i32 %157, %159
  br i1 %cmp210, label %for.body.212, label %for.end.243

for.body.212:                                     ; preds = %for.cond.208
  %160 = load i32, i32* %s, align 4
  %idxprom213 = sext i32 %160 to i64
  %161 = load i32, i32* %p, align 4
  %idxprom214 = sext i32 %161 to i64
  %162 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sseq215 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %162, i32 0, i32 9
  %163 = load i16**, i16*** %sseq215, align 8
  %arrayidx216 = getelementptr inbounds i16*, i16** %163, i64 %idxprom214
  %164 = load i16*, i16** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i16, i16* %164, i64 %idxprom213
  %165 = load i16, i16* %arrayidx217, align 2
  %conv218 = sext i16 %165 to i32
  store i32 %conv218, i32* %cd, align 4
  %166 = load i32, i32* %s, align 4
  %idxprom219 = sext i32 %166 to i64
  %167 = load i32, i32* %p, align 4
  %idxprom220 = sext i32 %167 to i64
  %168 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %phone221 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %168, i32 0, i32 8
  %169 = load %struct.phone_t*, %struct.phone_t** %phone221, align 8
  %arrayidx222 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %169, i64 %idxprom220
  %ci223 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx222, i32 0, i32 2
  %170 = load i8, i8* %ci223, align 1
  %conv224 = sext i8 %170 to i32
  %idxprom225 = sext i32 %conv224 to i64
  %171 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sseq226 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %171, i32 0, i32 9
  %172 = load i16**, i16*** %sseq226, align 8
  %arrayidx227 = getelementptr inbounds i16*, i16** %172, i64 %idxprom225
  %173 = load i16*, i16** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i16, i16* %173, i64 %idxprom219
  %174 = load i16, i16* %arrayidx228, align 2
  %conv229 = sext i16 %174 to i32
  store i32 %conv229, i32* %ci, align 4
  %175 = load i32, i32* %ci, align 4
  %conv230 = trunc i32 %175 to i16
  %176 = load i32, i32* %cd, align 4
  %idxprom231 = sext i32 %176 to i64
  %177 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %cd2cisen232 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %177, i32 0, i32 11
  %178 = load i16*, i16** %cd2cisen232, align 8
  %arrayidx233 = getelementptr inbounds i16, i16* %178, i64 %idxprom231
  store i16 %conv230, i16* %arrayidx233, align 2
  %179 = load i32, i32* %p, align 4
  %idxprom234 = sext i32 %179 to i64
  %180 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %phone235 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %180, i32 0, i32 8
  %181 = load %struct.phone_t*, %struct.phone_t** %phone235, align 8
  %arrayidx236 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %181, i64 %idxprom234
  %ci237 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx236, i32 0, i32 2
  %182 = load i8, i8* %ci237, align 1
  %183 = load i32, i32* %cd, align 4
  %idxprom238 = sext i32 %183 to i64
  %184 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap239 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %184, i32 0, i32 12
  %185 = load i8*, i8** %sen2cimap239, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %185, i64 %idxprom238
  store i8 %182, i8* %arrayidx240, align 1
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.body.212
  %186 = load i32, i32* %s, align 4
  %inc242 = add nsw i32 %186, 1
  store i32 %inc242, i32* %s, align 4
  br label %for.cond.208

for.end.243:                                      ; preds = %for.cond.208
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.end.243
  %187 = load i32, i32* %p, align 4
  %inc245 = add nsw i32 %187, 1
  store i32 %inc245, i32* %p, align 4
  br label %for.cond.203

for.end.246:                                      ; preds = %for.cond.203
  %188 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone247 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %188, i32 0, i32 0
  %189 = load i32, i32* %n_ciphone247, align 4
  %conv248 = sext i32 %189 to i64
  %call249 = call i8* @__ckd_calloc__(i64 %conv248, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 726)
  %190 = bitcast i8* %call249 to i32*
  store i32* %190, i32** %cdsen_start, align 8
  %191 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone250 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %191, i32 0, i32 0
  %192 = load i32, i32* %n_ciphone250, align 4
  %conv251 = sext i32 %192 to i64
  %call252 = call i8* @__ckd_calloc__(i64 %conv251, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 728)
  %193 = bitcast i8* %call252 to i32*
  store i32* %193, i32** %cdsen_end, align 8
  %194 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen253 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %194, i32 0, i32 3
  %195 = load i32, i32* %n_ci_sen253, align 4
  store i32 %195, i32* %s, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.288, %for.end.246
  %196 = load i32, i32* %s, align 4
  %197 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen255 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %197, i32 0, i32 4
  %198 = load i32, i32* %n_sen255, align 4
  %cmp256 = icmp slt i32 %196, %198
  br i1 %cmp256, label %for.body.258, label %for.end.290

for.body.258:                                     ; preds = %for.cond.254
  %199 = load i32, i32* %s, align 4
  %idxprom259 = sext i32 %199 to i64
  %200 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap260 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %200, i32 0, i32 12
  %201 = load i8*, i8** %sen2cimap260, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %201, i64 %idxprom259
  %202 = load i8, i8* %arrayidx261, align 1
  %conv262 = sext i8 %202 to i32
  %cmp263 = icmp slt i32 %conv262, 0
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %for.body.258
  br label %for.inc.288

if.end.266:                                       ; preds = %for.body.258
  %203 = load i32, i32* %s, align 4
  %idxprom267 = sext i32 %203 to i64
  %204 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap268 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %204, i32 0, i32 12
  %205 = load i8*, i8** %sen2cimap268, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %205, i64 %idxprom267
  %206 = load i8, i8* %arrayidx269, align 1
  %conv270 = sext i8 %206 to i32
  %idxprom271 = sext i32 %conv270 to i64
  %207 = load i32*, i32** %cdsen_start, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %207, i64 %idxprom271
  %208 = load i32, i32* %arrayidx272, align 4
  %tobool273 = icmp ne i32 %208, 0
  br i1 %tobool273, label %if.end.281, label %if.then.274

if.then.274:                                      ; preds = %if.end.266
  %209 = load i32, i32* %s, align 4
  %210 = load i32, i32* %s, align 4
  %idxprom275 = sext i32 %210 to i64
  %211 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap276 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %211, i32 0, i32 12
  %212 = load i8*, i8** %sen2cimap276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %212, i64 %idxprom275
  %213 = load i8, i8* %arrayidx277, align 1
  %conv278 = sext i8 %213 to i32
  %idxprom279 = sext i32 %conv278 to i64
  %214 = load i32*, i32** %cdsen_start, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %214, i64 %idxprom279
  store i32 %209, i32* %arrayidx280, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.274, %if.end.266
  %215 = load i32, i32* %s, align 4
  %216 = load i32, i32* %s, align 4
  %idxprom282 = sext i32 %216 to i64
  %217 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap283 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %217, i32 0, i32 12
  %218 = load i8*, i8** %sen2cimap283, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %218, i64 %idxprom282
  %219 = load i8, i8* %arrayidx284, align 1
  %conv285 = sext i8 %219 to i32
  %idxprom286 = sext i32 %conv285 to i64
  %220 = load i32*, i32** %cdsen_end, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %220, i64 %idxprom286
  store i32 %215, i32* %arrayidx287, align 4
  br label %for.inc.288

for.inc.288:                                      ; preds = %if.end.281, %if.then.265
  %221 = load i32, i32* %s, align 4
  %inc289 = add nsw i32 %221, 1
  store i32 %inc289, i32* %s, align 4
  br label %for.cond.254

for.end.290:                                      ; preds = %for.cond.254
  %222 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen291 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %222, i32 0, i32 3
  %223 = load i32, i32* %n_ci_sen291, align 4
  store i32 %223, i32* %s, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.332, %for.end.290
  %224 = load i32, i32* %s, align 4
  %225 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen293 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %225, i32 0, i32 4
  %226 = load i32, i32* %n_sen293, align 4
  %cmp294 = icmp slt i32 %224, %226
  br i1 %cmp294, label %for.body.296, label %for.end.334

for.body.296:                                     ; preds = %for.cond.292
  %227 = load i32, i32* %s, align 4
  %idxprom297 = sext i32 %227 to i64
  %228 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap298 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %228, i32 0, i32 12
  %229 = load i8*, i8** %sen2cimap298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %229, i64 %idxprom297
  %230 = load i8, i8* %arrayidx299, align 1
  %conv300 = sext i8 %230 to i32
  %cmp301 = icmp sge i32 %conv300, 0
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %for.body.296
  br label %for.inc.332

if.end.304:                                       ; preds = %for.body.296
  store i32 0, i32* %p, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.320, %if.end.304
  %231 = load i32, i32* %p, align 4
  %232 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone306 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %232, i32 0, i32 0
  %233 = load i32, i32* %n_ciphone306, align 4
  %cmp307 = icmp slt i32 %231, %233
  br i1 %cmp307, label %for.body.309, label %for.end.322

for.body.309:                                     ; preds = %for.cond.305
  %234 = load i32, i32* %s, align 4
  %235 = load i32, i32* %p, align 4
  %idxprom310 = sext i32 %235 to i64
  %236 = load i32*, i32** %cdsen_start, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %236, i64 %idxprom310
  %237 = load i32, i32* %arrayidx311, align 4
  %cmp312 = icmp sgt i32 %234, %237
  br i1 %cmp312, label %land.lhs.true, label %if.end.319

land.lhs.true:                                    ; preds = %for.body.309
  %238 = load i32, i32* %s, align 4
  %239 = load i32, i32* %p, align 4
  %idxprom314 = sext i32 %239 to i64
  %240 = load i32*, i32** %cdsen_end, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %240, i64 %idxprom314
  %241 = load i32, i32* %arrayidx315, align 4
  %cmp316 = icmp slt i32 %238, %241
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %land.lhs.true
  br label %for.end.322

if.end.319:                                       ; preds = %land.lhs.true, %for.body.309
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.319
  %242 = load i32, i32* %p, align 4
  %inc321 = add nsw i32 %242, 1
  store i32 %inc321, i32* %p, align 4
  br label %for.cond.305

for.end.322:                                      ; preds = %if.then.318, %for.cond.305
  %243 = load i32, i32* %p, align 4
  %244 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone323 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %244, i32 0, i32 0
  %245 = load i32, i32* %n_ciphone323, align 4
  %cmp324 = icmp sge i32 %243, %245
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %for.end.322
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 750, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %246 = load i32, i32* %s, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i32 0, i32 0), i32 %246)
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %for.end.322
  %247 = load i32, i32* %p, align 4
  %conv328 = trunc i32 %247 to i8
  %248 = load i32, i32* %s, align 4
  %idxprom329 = sext i32 %248 to i64
  %249 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %sen2cimap330 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %249, i32 0, i32 12
  %250 = load i8*, i8** %sen2cimap330, align 8
  %arrayidx331 = getelementptr inbounds i8, i8* %250, i64 %idxprom329
  store i8 %conv328, i8* %arrayidx331, align 1
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.end.327, %if.then.303
  %251 = load i32, i32* %s, align 4
  %inc333 = add nsw i32 %251, 1
  store i32 %inc333, i32* %s, align 4
  br label %for.cond.292

for.end.334:                                      ; preds = %for.cond.292
  %252 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone335 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %252, i32 0, i32 0
  %253 = load i32, i32* %n_ciphone335, align 4
  %conv336 = sext i32 %253 to i64
  %call337 = call i8* @__ckd_calloc__(i64 %conv336, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 755)
  %254 = bitcast i8* %call337 to i32*
  %255 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %ciphone2n_cd_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %255, i32 0, i32 13
  store i32* %254, i32** %ciphone2n_cd_sen, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.362, %for.end.334
  %256 = load i32, i32* %p, align 4
  %257 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone339 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %257, i32 0, i32 0
  %258 = load i32, i32* %n_ciphone339, align 4
  %cmp340 = icmp slt i32 %256, %258
  br i1 %cmp340, label %for.body.342, label %for.end.364

for.body.342:                                     ; preds = %for.cond.338
  %259 = load i32, i32* %p, align 4
  %idxprom343 = sext i32 %259 to i64
  %260 = load i32*, i32** %cdsen_start, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %260, i64 %idxprom343
  %261 = load i32, i32* %arrayidx344, align 4
  %cmp345 = icmp sgt i32 %261, 0
  br i1 %cmp345, label %if.then.347, label %if.end.361

if.then.347:                                      ; preds = %for.body.342
  %262 = load i32, i32* %p, align 4
  %idxprom348 = sext i32 %262 to i64
  %263 = load i32*, i32** %cdsen_end, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %263, i64 %idxprom348
  %264 = load i32, i32* %arrayidx349, align 4
  %265 = load i32, i32* %p, align 4
  %idxprom350 = sext i32 %265 to i64
  %266 = load i32*, i32** %cdsen_start, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %266, i64 %idxprom350
  %267 = load i32, i32* %arrayidx351, align 4
  %sub352 = sub nsw i32 %264, %267
  %add353 = add nsw i32 %sub352, 1
  %268 = load i32, i32* %p, align 4
  %idxprom354 = sext i32 %268 to i64
  %269 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %ciphone2n_cd_sen355 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %269, i32 0, i32 13
  %270 = load i32*, i32** %ciphone2n_cd_sen355, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %270, i64 %idxprom354
  store i32 %add353, i32* %arrayidx356, align 4
  %271 = load i32, i32* %p, align 4
  %idxprom357 = sext i32 %271 to i64
  %272 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %ciphone2n_cd_sen358 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %272, i32 0, i32 13
  %273 = load i32*, i32** %ciphone2n_cd_sen358, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %273, i64 %idxprom357
  %274 = load i32, i32* %arrayidx359, align 4
  %275 = load i32, i32* %n, align 4
  %add360 = add nsw i32 %275, %274
  store i32 %add360, i32* %n, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.347, %for.body.342
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %276 = load i32, i32* %p, align 4
  %inc363 = add nsw i32 %276, 1
  store i32 %inc363, i32* %p, align 4
  br label %for.cond.338

for.end.364:                                      ; preds = %for.cond.338
  %277 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen365 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %277, i32 0, i32 3
  %278 = load i32, i32* %n_ci_sen365, align 4
  %279 = load i32, i32* %n, align 4
  %add366 = add nsw i32 %279, %278
  store i32 %add366, i32* %n, align 4
  %280 = load i32*, i32** %cdsen_start, align 8
  %281 = bitcast i32* %280 to i8*
  call void @ckd_free(i8* %281)
  %282 = load i32*, i32** %cdsen_end, align 8
  %283 = bitcast i32* %282 to i8*
  call void @ckd_free(i8* %283)
  %284 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  call void @sseq_compress(%struct.mdef_t* %284)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 771, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %285 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone367 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %285, i32 0, i32 0
  %286 = load i32, i32* %n_ciphone367, align 4
  %287 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_phone368 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %287, i32 0, i32 1
  %288 = load i32, i32* %n_phone368, align 4
  %289 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ciphone369 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %289, i32 0, i32 0
  %290 = load i32, i32* %n_ciphone369, align 4
  %sub370 = sub nsw i32 %288, %290
  %291 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_emit_state371 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %291, i32 0, i32 2
  %292 = load i32, i32* %n_emit_state371, align 4
  %293 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_ci_sen372 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %293, i32 0, i32 3
  %294 = load i32, i32* %n_ci_sen372, align 4
  %295 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sen373 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %295, i32 0, i32 4
  %296 = load i32, i32* %n_sen373, align 4
  %297 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  %n_sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %297, i32 0, i32 10
  %298 = load i32, i32* %n_sseq, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.48, i32 0, i32 0), i32 %286, i32 %sub370, i32 %292, i32 %294, i32 %296, i32 %298)
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call374 = call i32 @fclose(%struct._IO_FILE* %299)
  %300 = load %struct.mdef_t*, %struct.mdef_t** %m, align 8
  ret %struct.mdef_t* %300
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__fatal_sys_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @noncomment_line(i8* %line, i32 %size, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %0, i32 %1, %struct._IO_FILE* %2)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 35
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct.hash_table_t* @hash_new(i32, i32) #1

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @parse_base_line(%struct.mdef_t* %m, i8* %line, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %line.addr = alloca i8*, align 8
  %p.addr = alloca i32, align 4
  %wlen = alloca i32, align 4
  %n = alloca i32, align 4
  %word = alloca [1024 x i8], align 16
  %lp = alloca i8*, align 8
  %ci = alloca i8, align 1
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %lp, align 8
  %1 = load i8*, i8** %lp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay, i32* %wlen) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 421, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %2 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %wlen, align 4
  %4 = load i8*, i8** %lp, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %lp, align 8
  %5 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call2 = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %5, i8* %arraydecay1)
  store i8 %call2, i8* %ci, align 1
  %6 = load i8, i8* %ci, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp sge i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 427, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %7 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %9 = load i32, i32* %p.addr, align 4
  call void @ciphone_add(%struct.mdef_t* %8, i8* %arraydecay7, i32 %9)
  %10 = load i32, i32* %p.addr, align 4
  %conv8 = trunc i32 %10 to i8
  store i8 %conv8, i8* %ci, align 1
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %11 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %11, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %lp, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay11, i32* %wlen) #4
  %cmp13 = icmp ne i32 %call12, 1
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call16 = call i32 @strcmp(i8* %arraydecay15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #5
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 436, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %13 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0), i8* %13)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false
  %14 = load i32, i32* %wlen, align 4
  %15 = load i8*, i8** %lp, align 8
  %idx.ext21 = sext i32 %14 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %15, i64 %idx.ext21
  store i8* %add.ptr22, i8** %lp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %16 = load i32, i32* %n, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %lp, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay23, i32* %wlen) #4
  %cmp25 = icmp ne i32 %call24, 1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 442, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %18 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0), i8* %18)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end
  %19 = load i32, i32* %wlen, align 4
  %20 = load i8*, i8** %lp, align 8
  %idx.ext29 = sext i32 %19 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %20, i64 %idx.ext29
  store i8* %add.ptr30, i8** %lp, align 8
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.28
  %21 = load i8, i8* %ci, align 1
  %conv36 = sext i8 %21 to i32
  %idxprom = sext i32 %conv36 to i64
  %22 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %22, i32 0, i32 7
  %23 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %23, i64 %idxprom
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx, i32 0, i32 1
  store i32 1, i32* %filler, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.28
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call38 = call i32 @strcmp(i8* %arraydecay37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.47

if.then.41:                                       ; preds = %if.else
  %24 = load i8, i8* %ci, align 1
  %conv42 = sext i8 %24 to i32
  %idxprom43 = sext i32 %conv42 to i64
  %25 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone44 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %25, i32 0, i32 7
  %26 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone44, align 8
  %arrayidx45 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %26, i64 %idxprom43
  %filler46 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx45, i32 0, i32 1
  store i32 0, i32* %filler46, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %27 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i8* %27)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.35
  %28 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %29 = load i8, i8* %ci, align 1
  %30 = load i32, i32* %p.addr, align 4
  call void @triphone_add(%struct.mdef_t* %28, i8 signext %29, i8 signext -1, i8 signext -1, i32 4, i32 %30)
  %31 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %32 = load i8*, i8** %line.addr, align 8
  %33 = load i8*, i8** %lp, align 8
  %34 = load i8*, i8** %line.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv50 = trunc i64 %sub.ptr.sub to i32
  %35 = load i32, i32* %p.addr, align 4
  call void @parse_tmat_senmap(%struct.mdef_t* %31, i8* %32, i32 %conv50, i32 %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_tri_line(%struct.mdef_t* %m, i8* %line, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %line.addr = alloca i8*, align 8
  %p.addr = alloca i32, align 4
  %wlen = alloca i32, align 4
  %word = alloca [1024 x i8], align 16
  %lp = alloca i8*, align 8
  %ci = alloca i8, align 1
  %lc = alloca i8, align 1
  %rc = alloca i8, align 1
  %wpos = alloca i32, align 4
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 0, i32* %wpos, align 4
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %lp, align 8
  %1 = load i8*, i8** %lp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay, i32* %wlen) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 469, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %2 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %wlen, align 4
  %4 = load i8*, i8** %lp, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %lp, align 8
  %5 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call2 = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %5, i8* %arraydecay1)
  store i8 %call2, i8* %ci, align 1
  %6 = load i8, i8* %ci, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp slt i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 474, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %7 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0), i8* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** %lp, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay7, i32* %wlen) #4
  %cmp9 = icmp ne i32 %call8, 1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 478, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %9 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i8* %9)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  %10 = load i32, i32* %wlen, align 4
  %11 = load i8*, i8** %lp, align 8
  %idx.ext13 = sext i32 %10 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %11, i64 %idx.ext13
  store i8* %add.ptr14, i8** %lp, align 8
  %12 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call16 = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %12, i8* %arraydecay15)
  store i8 %call16, i8* %lc, align 1
  %13 = load i8, i8* %lc, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp slt i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.12
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 482, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %14 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), i8* %14)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.12
  %15 = load i8*, i8** %lp, align 8
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay22, i32* %wlen) #4
  %cmp24 = icmp ne i32 %call23, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 486, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %16 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8* %16)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.21
  %17 = load i32, i32* %wlen, align 4
  %18 = load i8*, i8** %lp, align 8
  %idx.ext28 = sext i32 %17 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %18, i64 %idx.ext28
  store i8* %add.ptr29, i8** %lp, align 8
  %19 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call31 = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %19, i8* %arraydecay30)
  store i8 %call31, i8* %rc, align 1
  %20 = load i8, i8* %rc, align 1
  %conv32 = sext i8 %20 to i32
  %cmp33 = icmp slt i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.27
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 490, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %21 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* %21)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.27
  %22 = load i8*, i8** %lp, align 8
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call38 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay37, i32* %wlen) #4
  %cmp39 = icmp ne i32 %call38, 1
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i64 1
  %23 = load i8, i8* %arrayidx, align 1
  %conv41 = sext i8 %23 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %if.end.36
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 494, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %24 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0), i8* %24)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false
  %25 = load i32, i32* %wlen, align 4
  %26 = load i8*, i8** %lp, align 8
  %idx.ext46 = sext i32 %25 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %26, i64 %idx.ext46
  store i8* %add.ptr47, i8** %lp, align 8
  %arrayidx48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i64 0
  %27 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %27 to i32
  switch i32 %conv49, label %sw.default [
    i32 98, label %sw.bb
    i32 101, label %sw.bb.50
    i32 115, label %sw.bb.51
    i32 105, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end.45
  store i32 0, i32* %wpos, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.45
  store i32 1, i32* %wpos, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.45
  store i32 2, i32* %wpos, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.45
  store i32 3, i32* %wpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.45
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 501, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %28 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0), i8* %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb
  %29 = load i8*, i8** %lp, align 8
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay53, i32* %wlen) #4
  %cmp55 = icmp ne i32 %call54, 1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.epilog
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 506, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %30 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i32 0, i32 0), i8* %30)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %sw.epilog
  %31 = load i32, i32* %wlen, align 4
  %32 = load i8*, i8** %lp, align 8
  %idx.ext59 = sext i32 %31 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %32, i64 %idx.ext59
  store i8* %add.ptr60, i8** %lp, align 8
  %arraydecay61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call62 = call i32 @strcmp(i8* %arraydecay61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)) #5
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %land.lhs.true, label %lor.lhs.false.67

land.lhs.true:                                    ; preds = %if.end.58
  %33 = load i8, i8* %ci, align 1
  %conv65 = sext i8 %33 to i32
  %idxprom = sext i32 %conv65 to i64
  %34 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 7
  %35 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx66 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %35, i64 %idxprom
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx66, i32 0, i32 1
  %36 = load i32, i32* %filler, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.79, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true, %if.end.58
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call69 = call i32 @strcmp(i8* %arraydecay68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #5
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.else

land.lhs.true.72:                                 ; preds = %lor.lhs.false.67
  %37 = load i8, i8* %ci, align 1
  %conv73 = sext i8 %37 to i32
  %idxprom74 = sext i32 %conv73 to i64
  %38 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone75 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %38, i32 0, i32 7
  %39 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone75, align 8
  %arrayidx76 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %39, i64 %idxprom74
  %filler77 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx76, i32 0, i32 1
  %40 = load i32, i32* %filler77, align 4
  %tobool78 = icmp ne i32 %40, 0
  br i1 %tobool78, label %if.else, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.72, %land.lhs.true
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true.72, %lor.lhs.false.67
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %41 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i8* %41)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.79
  %42 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %43 = load i8, i8* %ci, align 1
  %44 = load i8, i8* %lc, align 1
  %45 = load i8, i8* %rc, align 1
  %46 = load i32, i32* %wpos, align 4
  %47 = load i32, i32* %p.addr, align 4
  call void @triphone_add(%struct.mdef_t* %42, i8 signext %43, i8 signext %44, i8 signext %45, i32 %46, i32 %47)
  %48 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %49 = load i8*, i8** %line.addr, align 8
  %50 = load i8*, i8** %lp, align 8
  %51 = load i8*, i8** %line.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv81 = trunc i64 %sub.ptr.sub to i32
  %52 = load i32, i32* %p.addr, align 4
  call void @parse_tmat_senmap(%struct.mdef_t* %48, i8* %49, i32 %conv81, i32 %52)
  ret void
}

declare void @_E__pr_warn(i8*, ...) #1

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sseq_compress(%struct.mdef_t* %m) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %h = alloca %struct.hash_table_t*, align 8
  %sseq = alloca i16**, align 8
  %n_sseq = alloca i32, align 4
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %g = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %he = alloca %struct.hash_entry_s*, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  %0 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %0, i32 0, i32 2
  %1 = load i32, i32* %n_emit_state, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %k, align 4
  %2 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %2, i32 0, i32 1
  %3 = load i32, i32* %n_phone, align 4
  %call = call %struct.hash_table_t* @hash_new(i32 %3, i32 0)
  store %struct.hash_table_t* %call, %struct.hash_table_t** %h, align 8
  store i32 0, i32* %n_sseq, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %p, align 4
  %5 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_phone2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %5, i32 0, i32 1
  %6 = load i32, i32* %n_phone2, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %8 = load i32, i32* %p, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq4 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 9
  %10 = load i16**, i16*** %sseq4, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %10, i64 %idxprom
  %11 = load i16*, i16** %arrayidx, align 8
  %12 = bitcast i16* %11 to i8*
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %n_sseq, align 4
  %call5 = call i32 @hash_enter_bkey(%struct.hash_table_t* %7, i8* %12, i32 %13, i32 %14)
  store i32 %call5, i32* %j, align 4
  %15 = load i32, i32* %n_sseq, align 4
  %cmp6 = icmp eq i32 %call5, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %n_sseq, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %n_sseq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %p, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %19, i32 0, i32 8
  %20 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx9 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %20, i64 %idxprom8
  %ssid = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx9, i32 0, i32 0
  store i32 %17, i32* %ssid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %p, align 4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %n_sseq, align 4
  %23 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state11 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %23, i32 0, i32 2
  %24 = load i32, i32* %n_emit_state11, align 4
  %call12 = call i8** @__ckd_calloc_2d__(i32 %22, i32 %24, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 546)
  %25 = bitcast i8** %call12 to i16**
  store i16** %25, i16*** %sseq, align 8
  %26 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %call13 = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %26, i32* %j)
  store %struct.gnode_s* %call13, %struct.gnode_s** %g, align 8
  %27 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  store %struct.gnode_s* %27, %struct.gnode_s** %gn, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.19, %for.end
  %28 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %28, null
  br i1 %tobool, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.14
  %29 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %29, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %30 = load i8*, i8** %ptr, align 8
  %31 = bitcast i8* %30 to %struct.hash_entry_s*
  store %struct.hash_entry_s* %31, %struct.hash_entry_s** %he, align 8
  %32 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %val = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %32, i32 0, i32 2
  %33 = load i32, i32* %val, align 4
  store i32 %33, i32* %j, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %34 to i64
  %35 = load i16**, i16*** %sseq, align 8
  %arrayidx17 = getelementptr inbounds i16*, i16** %35, i64 %idxprom16
  %36 = load i16*, i16** %arrayidx17, align 8
  %37 = bitcast i16* %36 to i8*
  %38 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %key = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %38, i32 0, i32 0
  %39 = load i8*, i8** %key, align 8
  %40 = load i32, i32* %k, align 4
  %conv18 = sext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 %conv18, i32 1, i1 false)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %41 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %41, i32 0, i32 1
  %42 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %42, %struct.gnode_s** %gn, align 8
  br label %for.cond.14

for.end.20:                                       ; preds = %for.cond.14
  %43 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %43)
  %44 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq21 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %44, i32 0, i32 9
  %45 = load i16**, i16*** %sseq21, align 8
  %46 = bitcast i16** %45 to i8**
  call void @ckd_free_2d(i8** %46)
  %47 = load i16**, i16*** %sseq, align 8
  %48 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq22 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %48, i32 0, i32 9
  store i16** %47, i16*** %sseq22, align 8
  %49 = load i32, i32* %n_sseq, align 4
  %50 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_sseq23 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %50, i32 0, i32 10
  store i32 %49, i32* %n_sseq23, align 4
  %51 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  call void @hash_free(%struct.hash_table_t* %51)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @mdef_sseq2sen_active(%struct.mdef_t* %mdef, i32* %sseq, i32* %sen) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %sseq.addr = alloca i32*, align 8
  %sen.addr = alloca i32*, align 8
  %ss = alloca i32, align 4
  %i = alloca i32, align 4
  %sp = alloca i16*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32* %sseq, i32** %sseq.addr, align 8
  store i32* %sen, i32** %sen.addr, align 8
  store i32 0, i32* %ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %ss, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 10
  %2 = load i32, i32* %n_sseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ss, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %sseq.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %ss, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %sseq2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 9
  %8 = load i16**, i16*** %sseq2, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %8, i64 %idxprom1
  %9 = load i16*, i16** %arrayidx3, align 8
  store i16* %9, i16** %sp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %11, i32 0, i32 2
  %12 = load i32, i32* %n_emit_state, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i16*, i16** %sp, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %14, i64 %idxprom7
  %15 = load i16, i16* %arrayidx8, align 2
  %idxprom9 = sext i16 %15 to i64
  %16 = load i32*, i32** %sen.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %18 = load i32, i32* %ss, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %ss, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mdef_free_recursive_lc(%struct.ph_lc_s* %lc) #0 {
entry:
  %lc.addr = alloca %struct.ph_lc_s*, align 8
  store %struct.ph_lc_s* %lc, %struct.ph_lc_s** %lc.addr, align 8
  %0 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %cmp = icmp eq %struct.ph_lc_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %rclist = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %1, i32 0, i32 1
  %2 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist, align 8
  %tobool = icmp ne %struct.ph_rc_s* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %rclist2 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %3, i32 0, i32 1
  %4 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist2, align 8
  call void @mdef_free_recursive_rc(%struct.ph_rc_s* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %next = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %5, i32 0, i32 2
  %6 = load %struct.ph_lc_s*, %struct.ph_lc_s** %next, align 8
  %tobool4 = icmp ne %struct.ph_lc_s* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %next6 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %7, i32 0, i32 2
  %8 = load %struct.ph_lc_s*, %struct.ph_lc_s** %next6, align 8
  call void @mdef_free_recursive_lc(%struct.ph_lc_s* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %9 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lc.addr, align 8
  %10 = bitcast %struct.ph_lc_s* %9 to i8*
  call void @ckd_free(i8* %10)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @mdef_free_recursive_rc(%struct.ph_rc_s* %rc) #0 {
entry:
  %rc.addr = alloca %struct.ph_rc_s*, align 8
  store %struct.ph_rc_s* %rc, %struct.ph_rc_s** %rc.addr, align 8
  %0 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rc.addr, align 8
  %cmp = icmp eq %struct.ph_rc_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rc.addr, align 8
  %next = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %1, i32 0, i32 2
  %2 = load %struct.ph_rc_s*, %struct.ph_rc_s** %next, align 8
  %tobool = icmp ne %struct.ph_rc_s* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rc.addr, align 8
  %next2 = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %3, i32 0, i32 2
  %4 = load %struct.ph_rc_s*, %struct.ph_rc_s** %next2, align 8
  call void @mdef_free_recursive_rc(%struct.ph_rc_s* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rc.addr, align 8
  %6 = bitcast %struct.ph_rc_s* %5 to i8*
  call void @ckd_free(i8* %6)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @mdef_free(%struct.mdef_t* %m) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  %0 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %tobool = icmp ne %struct.mdef_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.97

if.then:                                          ; preds = %entry
  %1 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone2n_cd_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 13
  %2 = load i32*, i32** %ciphone2n_cd_sen, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone2n_cd_sen3 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %3, i32 0, i32 13
  %4 = load i32*, i32** %ciphone2n_cd_sen3, align 8
  %5 = bitcast i32* %4 to i8*
  call void @ckd_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sen2cimap = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %6, i32 0, i32 12
  %7 = load i8*, i8** %sen2cimap, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sen2cimap6 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %8, i32 0, i32 12
  %9 = load i8*, i8** %sen2cimap6, align 8
  call void @ckd_free(i8* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 11
  %11 = load i16*, i16** %cd2cisen, align 8
  %tobool8 = icmp ne i16* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %cd2cisen10 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %12, i32 0, i32 11
  %13 = load i16*, i16** %cd2cisen10, align 8
  %14 = bitcast i16* %13 to i8*
  call void @ckd_free(i8* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.11
  %15 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %15, 4
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %17, i32 0, i32 0
  %18 = load i32, i32* %n_ciphone, align 4
  %cmp13 = icmp slt i32 %16, %18
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %21, i32 0, i32 15
  %22 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist, align 8
  %arrayidx = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %22, i64 %idxprom15
  %23 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx, align 8
  %arrayidx16 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %23, i64 %idxprom
  %24 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx16, align 8
  %tobool17 = icmp ne %struct.ph_lc_s* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %for.body.14
  %25 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist21 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %27, i32 0, i32 15
  %28 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist21, align 8
  %arrayidx22 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %28, i64 %idxprom20
  %29 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %29, i64 %idxprom19
  %30 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx23, align 8
  %next = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %30, i32 0, i32 2
  %31 = load %struct.ph_lc_s*, %struct.ph_lc_s** %next, align 8
  call void @mdef_free_recursive_lc(%struct.ph_lc_s* %31)
  %32 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist26 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 15
  %35 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist26, align 8
  %arrayidx27 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %35, i64 %idxprom25
  %36 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %36, i64 %idxprom24
  %37 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx28, align 8
  %rclist = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %37, i32 0, i32 1
  %38 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist, align 8
  call void @mdef_free_recursive_rc(%struct.ph_rc_s* %38)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.18, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %40, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.56, %for.end.32
  %41 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %41, 4
  br i1 %cmp34, label %for.body.35, label %for.end.58

for.body.35:                                      ; preds = %for.cond.33
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.53, %for.body.35
  %42 = load i32, i32* %j, align 4
  %43 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone37 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %43, i32 0, i32 0
  %44 = load i32, i32* %n_ciphone37, align 4
  %cmp38 = icmp slt i32 %42, %44
  br i1 %cmp38, label %for.body.39, label %for.end.55

for.body.39:                                      ; preds = %for.cond.36
  %45 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %46 to i64
  %47 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist42 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %47, i32 0, i32 15
  %48 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist42, align 8
  %arrayidx43 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %48, i64 %idxprom41
  %49 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %49, i64 %idxprom40
  %50 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx44, align 8
  %tobool45 = icmp ne %struct.ph_lc_s* %50, null
  br i1 %tobool45, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %for.body.39
  %51 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist49 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %53, i32 0, i32 15
  %54 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist49, align 8
  %arrayidx50 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %54, i64 %idxprom48
  %55 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %55, i64 %idxprom47
  %56 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx51, align 8
  %57 = bitcast %struct.ph_lc_s* %56 to i8*
  call void @ckd_free(i8* %57)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %for.body.39
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %58 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %58, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.36

for.end.55:                                       ; preds = %for.cond.36
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %59 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %59, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.33

for.end.58:                                       ; preds = %for.cond.33
  %60 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist59 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %60, i32 0, i32 15
  %61 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist59, align 8
  %tobool60 = icmp ne %struct.ph_lc_s*** %61, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.end.58
  %62 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist62 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %62, i32 0, i32 15
  %63 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist62, align 8
  %64 = bitcast %struct.ph_lc_s*** %63 to i8*
  %65 = bitcast i8* %64 to i8**
  call void @ckd_free_2d(i8** %65)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.end.58
  %66 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %66, i32 0, i32 9
  %67 = load i16**, i16*** %sseq, align 8
  %tobool64 = icmp ne i16** %67, null
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %68 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq66 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %68, i32 0, i32 9
  %69 = load i16**, i16*** %sseq66, align 8
  %70 = bitcast i16** %69 to i8*
  %71 = bitcast i8* %70 to i8**
  call void @ckd_free_2d(i8** %71)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  %72 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %72, i32 0, i32 8
  %73 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %tobool68 = icmp ne %struct.phone_t* %73, null
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.67
  %74 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone70 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %74, i32 0, i32 8
  %75 = load %struct.phone_t*, %struct.phone_t** %phone70, align 8
  %76 = bitcast %struct.phone_t* %75 to i8*
  call void @ckd_free(i8* %76)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.67
  %77 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone_ht = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %77, i32 0, i32 6
  %78 = load %struct.hash_table_t*, %struct.hash_table_t** %ciphone_ht, align 8
  %tobool72 = icmp ne %struct.hash_table_t* %78, null
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %79 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone_ht74 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %79, i32 0, i32 6
  %80 = load %struct.hash_table_t*, %struct.hash_table_t** %ciphone_ht74, align 8
  call void @hash_free(%struct.hash_table_t* %80)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.89, %if.end.75
  %81 = load i32, i32* %i, align 4
  %82 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone77 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %82, i32 0, i32 0
  %83 = load i32, i32* %n_ciphone77, align 4
  %cmp78 = icmp slt i32 %81, %83
  br i1 %cmp78, label %for.body.79, label %for.end.91

for.body.79:                                      ; preds = %for.cond.76
  %84 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %85, i32 0, i32 7
  %86 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx81 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %86, i64 %idxprom80
  %name = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx81, i32 0, i32 0
  %87 = load i8*, i8** %name, align 8
  %tobool82 = icmp ne i8* %87, null
  br i1 %tobool82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %for.body.79
  %88 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %88 to i64
  %89 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone85 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %89, i32 0, i32 7
  %90 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone85, align 8
  %arrayidx86 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %90, i64 %idxprom84
  %name87 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx86, i32 0, i32 0
  %91 = load i8*, i8** %name87, align 8
  call void @ckd_free(i8* %91)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %for.body.79
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %92 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %92, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.76

for.end.91:                                       ; preds = %for.cond.76
  %93 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone92 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %93, i32 0, i32 7
  %94 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone92, align 8
  %tobool93 = icmp ne %struct.ciphone_t* %94, null
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %for.end.91
  %95 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone95 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %95, i32 0, i32 7
  %96 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone95, align 8
  %97 = bitcast %struct.ciphone_t* %96 to i8*
  call void @ckd_free(i8* %97)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %for.end.91
  %98 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %99 = bitcast %struct.mdef_t* %98 to i8*
  call void @ckd_free(i8* %99)
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %entry
  ret void
}

declare void @ckd_free_2d(i8**) #1

declare void @hash_free(%struct.hash_table_t*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @ciphone_add(%struct.mdef_t* %m, i8* %ci, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %ci.addr = alloca i8*, align 8
  %p.addr = alloca i32, align 4
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8* %ci, i8** %ci.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i8*, i8** %ci.addr, align 8
  %call = call i8* @__ckd_salloc__(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 138)
  %1 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %2, i32 0, i32 7
  %3 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone, align 8
  %arrayidx = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %3, i64 %idxprom
  %name = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx, i32 0, i32 0
  store i8* %call, i8** %name, align 8
  %4 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone_ht = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %4, i32 0, i32 6
  %5 = load %struct.hash_table_t*, %struct.hash_table_t** %ciphone_ht, align 8
  %6 = load i32, i32* %p.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 7
  %8 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone2, align 8
  %arrayidx3 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %8, i64 %idxprom1
  %name4 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx3, i32 0, i32 0
  %9 = load i8*, i8** %name4, align 8
  %10 = load i32, i32* %p.addr, align 4
  %call5 = call i32 @hash_enter(%struct.hash_table_t* %5, i8* %9, i32 %10)
  %11 = load i32, i32* %p.addr, align 4
  %cmp = icmp ne i32 %call5, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %12 = load i32, i32* %p.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %ciphone7 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 7
  %14 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone7, align 8
  %arrayidx8 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %14, i64 %idxprom6
  %name9 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx8, i32 0, i32 0
  %15 = load i8*, i8** %name9, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @triphone_add(%struct.mdef_t* %m, i8 signext %ci, i8 signext %lc, i8 signext %rc, i32 %wpos, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %ci.addr = alloca i8, align 1
  %lc.addr = alloca i8, align 1
  %rc.addr = alloca i8, align 1
  %wpos.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %lcptr = alloca %struct.ph_lc_s*, align 8
  %rcptr = alloca %struct.ph_rc_s*, align 8
  %buf = alloca [4096 x i8], align 16
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8 %ci, i8* %ci.addr, align 1
  store i8 %lc, i8* %lc.addr, align 1
  store i8 %rc, i8* %rc.addr, align 1
  store i32 %wpos, i32* %wpos.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i8, i8* %ci.addr, align 1
  %1 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %2, i32 0, i32 8
  %3 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %3, i64 %idxprom
  %ci1 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 2
  store i8 %0, i8* %ci1, align 1
  %4 = load i8, i8* %lc.addr, align 1
  %5 = load i32, i32* %p.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone3 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %6, i32 0, i32 8
  %7 = load %struct.phone_t*, %struct.phone_t** %phone3, align 8
  %arrayidx4 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %7, i64 %idxprom2
  %lc5 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx4, i32 0, i32 3
  store i8 %4, i8* %lc5, align 1
  %8 = load i8, i8* %rc.addr, align 1
  %9 = load i32, i32* %p.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone7 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 8
  %11 = load %struct.phone_t*, %struct.phone_t** %phone7, align 8
  %arrayidx8 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %11, i64 %idxprom6
  %rc9 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx8, i32 0, i32 4
  store i8 %8, i8* %rc9, align 1
  %12 = load i32, i32* %wpos.addr, align 4
  %13 = load i32, i32* %p.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone11 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %14, i32 0, i32 8
  %15 = load %struct.phone_t*, %struct.phone_t** %phone11, align 8
  %arrayidx12 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %15, i64 %idxprom10
  %wpos13 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx12, i32 0, i32 5
  store i32 %12, i32* %wpos13, align 4
  %16 = load i32, i32* %p.addr, align 4
  %17 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %17, i32 0, i32 0
  %18 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp sge i32 %16, %18
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %entry
  %19 = load i8, i8* %ci.addr, align 1
  %conv = sext i8 %19 to i32
  %idxprom14 = sext i32 %conv to i64
  %20 = load i32, i32* %wpos.addr, align 4
  %idxprom15 = zext i32 %20 to i64
  %21 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %21, i32 0, i32 15
  %22 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist, align 8
  %arrayidx16 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %22, i64 %idxprom15
  %23 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %23, i64 %idxprom14
  %24 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx17, align 8
  %25 = load i8, i8* %lc.addr, align 1
  %call = call %struct.ph_lc_s* @find_ph_lc(%struct.ph_lc_s* %24, i8 signext %25)
  store %struct.ph_lc_s* %call, %struct.ph_lc_s** %lcptr, align 8
  %cmp18 = icmp eq %struct.ph_lc_s* %call, null
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %call21 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 182)
  %26 = bitcast i8* %call21 to %struct.ph_lc_s*
  store %struct.ph_lc_s* %26, %struct.ph_lc_s** %lcptr, align 8
  %27 = load i8, i8* %lc.addr, align 1
  %28 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %lc22 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %28, i32 0, i32 0
  store i8 %27, i8* %lc22, align 1
  %29 = load i8, i8* %ci.addr, align 1
  %conv23 = sext i8 %29 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %30 = load i32, i32* %wpos.addr, align 4
  %idxprom25 = zext i32 %30 to i64
  %31 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist26 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %31, i32 0, i32 15
  %32 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist26, align 8
  %arrayidx27 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %32, i64 %idxprom25
  %33 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %33, i64 %idxprom24
  %34 = load %struct.ph_lc_s*, %struct.ph_lc_s** %arrayidx28, align 8
  %35 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %next = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %35, i32 0, i32 2
  store %struct.ph_lc_s* %34, %struct.ph_lc_s** %next, align 8
  %36 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %37 = load i8, i8* %ci.addr, align 1
  %conv29 = sext i8 %37 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %38 = load i32, i32* %wpos.addr, align 4
  %idxprom31 = zext i32 %38 to i64
  %39 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %wpos_ci_lclist32 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %39, i32 0, i32 15
  %40 = load %struct.ph_lc_s***, %struct.ph_lc_s**** %wpos_ci_lclist32, align 8
  %arrayidx33 = getelementptr inbounds %struct.ph_lc_s**, %struct.ph_lc_s*** %40, i64 %idxprom31
  %41 = load %struct.ph_lc_s**, %struct.ph_lc_s*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds %struct.ph_lc_s*, %struct.ph_lc_s** %41, i64 %idxprom30
  store %struct.ph_lc_s* %36, %struct.ph_lc_s** %arrayidx34, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %42 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %rclist = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %42, i32 0, i32 1
  %43 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist, align 8
  %44 = load i8, i8* %rc.addr, align 1
  %call35 = call %struct.ph_rc_s* @find_ph_rc(%struct.ph_rc_s* %43, i8 signext %44)
  store %struct.ph_rc_s* %call35, %struct.ph_rc_s** %rcptr, align 8
  %cmp36 = icmp ne %struct.ph_rc_s* %call35, null
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end
  %45 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %46 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %pid = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %46, i32 0, i32 1
  %47 = load i32, i32* %pid, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call39 = call i32 @mdef_phone_str(%struct.mdef_t* %45, i32 %47, i8* %arraydecay)
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), i8* %arraydecay40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end
  %call42 = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 194)
  %48 = bitcast i8* %call42 to %struct.ph_rc_s*
  store %struct.ph_rc_s* %48, %struct.ph_rc_s** %rcptr, align 8
  %49 = load i8, i8* %rc.addr, align 1
  %50 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %rc43 = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %50, i32 0, i32 0
  store i8 %49, i8* %rc43, align 1
  %51 = load i32, i32* %p.addr, align 4
  %52 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %pid44 = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %52, i32 0, i32 1
  store i32 %51, i32* %pid44, align 4
  %53 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %rclist45 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %53, i32 0, i32 1
  %54 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rclist45, align 8
  %55 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %next46 = getelementptr inbounds %struct.ph_rc_s, %struct.ph_rc_s* %55, i32 0, i32 2
  store %struct.ph_rc_s* %54, %struct.ph_rc_s** %next46, align 8
  %56 = load %struct.ph_rc_s*, %struct.ph_rc_s** %rcptr, align 8
  %57 = load %struct.ph_lc_s*, %struct.ph_lc_s** %lcptr, align 8
  %rclist47 = getelementptr inbounds %struct.ph_lc_s, %struct.ph_lc_s* %57, i32 0, i32 1
  store %struct.ph_rc_s* %56, %struct.ph_rc_s** %rclist47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.41, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_tmat_senmap(%struct.mdef_t* %m, i8* %line, i32 %off, i32 %p) #0 {
entry:
  %m.addr = alloca %struct.mdef_t*, align 8
  %line.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %wlen = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %word = alloca [1024 x i8], align 16
  %lp = alloca i8*, align 8
  store %struct.mdef_t* %m, %struct.mdef_t** %m.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %off, i32* %off.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i32, i32* %off.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %lp, align 8
  %2 = load i8*, i8** %lp, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32* %n, i32* %wlen) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 381, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %4 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i32, i32* %n, align 4
  %6 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 8
  %8 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %8, i64 %idxprom
  %tmat = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 1
  store i32 %5, i32* %tmat, align 4
  %9 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_tmat = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 5
  %10 = load i32, i32* %n_tmat, align 4
  %11 = load i32, i32* %n, align 4
  %cmp2 = icmp sle i32 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %12 = load i32, i32* %n, align 4
  %13 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_tmat4 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 5
  %14 = load i32, i32* %n_tmat4, align 4
  %15 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.62, i32 0, i32 0), i32 %12, i32 %14, i8* %15)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %16 = load i32, i32* %wlen, align 4
  %17 = load i8*, i8** %lp, align 8
  %idx.ext6 = sext i32 %16 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %17, i64 %idx.ext6
  store i8* %add.ptr7, i8** %lp, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %18 = load i32, i32* %n, align 4
  %19 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %19, i32 0, i32 2
  %20 = load i32, i32* %n_emit_state, align 4
  %cmp8 = icmp slt i32 %18, %20
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %lp, align 8
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32* %s, i32* %wlen) #4
  %cmp10 = icmp ne i32 %call9, 1
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %for.body
  %22 = load i32, i32* %s, align 4
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 390, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %23 = load i32, i32* %n, align 4
  %24 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0), i32 %23, i8* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false.11
  %25 = load i32, i32* %p.addr, align 4
  %26 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %26, i32 0, i32 0
  %27 = load i32, i32* %n_ciphone, align 4
  %cmp15 = icmp slt i32 %25, %27
  br i1 %cmp15, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.14
  %28 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ci_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %28, i32 0, i32 3
  %29 = load i32, i32* %n_ci_sen, align 4
  %30 = load i32, i32* %s, align 4
  %cmp16 = icmp sle i32 %29, %30
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %31 = load i32, i32* %s, align 4
  %32 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_ci_sen18 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %32, i32 0, i32 3
  %33 = load i32, i32* %n_ci_sen18, align 4
  %34 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i32 %31, i32 %33, i8* %34)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.14
  %35 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %35, i32 0, i32 4
  %36 = load i32, i32* %n_sen, align 4
  %37 = load i32, i32* %s, align 4
  %cmp20 = icmp sle i32 %36, %37
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 394, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %38 = load i32, i32* %s, align 4
  %39 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %n_sen22 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %39, i32 0, i32 4
  %40 = load i32, i32* %n_sen22, align 4
  %41 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i32 %38, i32 %40, i8* %41)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  %42 = load i32, i32* %s, align 4
  %conv = trunc i32 %42 to i16
  %43 = load i32, i32* %n, align 4
  %idxprom24 = sext i32 %43 to i64
  %44 = load i32, i32* %p.addr, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load %struct.mdef_t*, %struct.mdef_t** %m.addr, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %45, i32 0, i32 9
  %46 = load i16**, i16*** %sseq, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %46, i64 %idxprom25
  %47 = load i16*, i16** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %47, i64 %idxprom24
  store i16 %conv, i16* %arrayidx27, align 2
  %48 = load i32, i32* %wlen, align 4
  %49 = load i8*, i8** %lp, align 8
  %idx.ext28 = sext i32 %48 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %49, i64 %idx.ext28
  store i8* %add.ptr29, i8** %lp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %50 = load i32, i32* %n, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i8*, i8** %lp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay, i32* %wlen) #4
  %cmp31 = icmp ne i32 %call30, 1
  br i1 %cmp31, label %if.then.38, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %for.end
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call35 = call i32 @strcmp(i8* %arraydecay34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0)) #5
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.33, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 402, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %52 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i32 0, i32 0), i8* %52)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false.33
  %53 = load i32, i32* %wlen, align 4
  %54 = load i8*, i8** %lp, align 8
  %idx.ext40 = sext i32 %53 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %54, i64 %idx.ext40
  store i8* %add.ptr41, i8** %lp, align 8
  %55 = load i8*, i8** %lp, align 8
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %word, i32 0, i32 0
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay42, i32* %wlen) #4
  %cmp44 = icmp eq i32 %call43, 1
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 407, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %56 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0), i8* %56)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.39
  ret void
}

declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

declare i32 @hash_enter(%struct.hash_table_t*, i8*, i32) #1

declare i32 @hash_enter_bkey(%struct.hash_table_t*, i8*, i32, i32) #1

declare %struct.gnode_s* @hash_tolist(%struct.hash_table_t*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @glist_free(%struct.gnode_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
